import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A000038.P13734959004655594922

`2*A000007(n)`
-/

namespace A000038.P13734959004655594922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

end

end A000038.P13734959004655594922

noncomputable section

/-- A000038: Twice A000007.

Offset 0, canonical program `A000038.P13734959004655594922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000038 (n : ℕ) : ℤ :=
  A000038.P13734959004655594922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000064.P7860828275165321121

`∑[A000008(n)]`
-/

namespace A000064.P7860828275165321121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000064.P7860828275165321121

noncomputable section

/-- A000064: Partial sums of (unordered) ways of making change for n cents using coins of 1, 2, 5, 10 cents.

Offset 0, canonical program `A000064.P7860828275165321121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000064 (n : ℕ) : ℤ :=
  A000064.P7860828275165321121.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000168.P4170136352937727920

`2*3^n*A000108(n)/(n+2)`
-/

namespace A000168.P4170136352937727920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 3 ^ n : ℤ) * A000108 n : ℚ) / (n + 2 : ℚ)

end

end A000168.P4170136352937727920

noncomputable section

/-- A000168: a(n) = 2*3^n*(2*n)!/(n!*(n+2)!).

Offset 0, canonical program `A000168.P4170136352937727920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000168 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000168.P4170136352937727920.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000245.P15461013057778681831

`A000108(n+1)-A000108(n)`
-/

namespace A000245.P15461013057778681831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A000108 n

end

end A000245.P15461013057778681831

noncomputable section

/-- A000245: a(n) = 3*(2*n)!/((n+2)!*(n-1)!).

Offset 0, canonical program `A000245.P15461013057778681831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000245 (n : ℕ) : ℤ :=
  A000245.P15461013057778681831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000537.P7887993002585723883

`6*A000332(n+2)+A000217(n)`
-/

namespace A000537.P7887993002585723883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000332 (n + 2) + A000217 n

end

end A000537.P7887993002585723883

noncomputable section

/-- A000537: Sum of first n cubes; or n-th triangular number squared.

Offset 0, canonical program `A000537.P7887993002585723883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000537 (n : ℕ) : ℤ :=
  A000537.P7887993002585723883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000588.P2240156739823594693

`A000108(n+3)-5*A000108(n+2)+6*A000108(n+1)-A000108(n)`
-/

namespace A000588.P2240156739823594693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) - 5 * A000108 (n + 2) + 6 * A000108 (n + 1) - A000108 n

end

end A000588.P2240156739823594693

noncomputable section

/-- A000588: a(n) = 7*binomial(2n,n-3)/(n+4).

Offset 0, canonical program `A000588.P2240156739823594693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000588 (n : ℕ) : ℤ :=
  A000588.P2240156739823594693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000777.P1471641736917558101

`(n+2)*A000108(n)-1`
-/

namespace A000777.P1471641736917558101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000108 n - 1

end

end A000777.P1471641736917558101

noncomputable section

/-- A000777: a(n) = (n+2)*Catalan(n) - 1.

Offset 0, canonical program `A000777.P1471641736917558101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A000777 (n : ℕ) : ℤ :=
  A000777.P1471641736917558101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A000777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000900.P10035068055957689983

`(A000085(n)-A000898(floor(n/2)))/2`
-/

namespace A000900.P10035068055957689983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n - A000898 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 2

end

end A000900.P10035068055957689983

noncomputable section

/-- A000900: Number of solutions to the rook problem on an n X n board having a certain symmetry group (see Robinson for details).

Offset 0, canonical program `A000900.P10035068055957689983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000900.P10035068055957689983.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000914.P446365929464198224

`3*A000332(n+3)-A000292(n)`
-/

namespace A000914.P446365929464198224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 3) - A000292 n

end

end A000914.P446365929464198224

noncomputable section

/-- A000914: Stirling numbers of the first kind: s(n+2, n).

Offset 0, canonical program `A000914.P446365929464198224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000914 (n : ℕ) : ℤ :=
  A000914.P446365929464198224.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000958.P13874304542277531672

`A000957(n+1)+record[A000957(n)]`
-/

namespace A000958.P13874304542277531672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A000958.P13874304542277531672

noncomputable section

/-- A000958: Number of ordered rooted trees with n edges having root of odd degree.

Offset 1, canonical program `A000958.P13874304542277531672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A000958 (n : ℕ) : ℤ :=
  A000958.P13874304542277531672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A000958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000984.P17393449527703609683

`(n+1)*A000108(n)`
-/

namespace A000984.P17393449527703609683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n

end

end A000984.P17393449527703609683

noncomputable section

/-- A000984: Central binomial coefficients: binomial(2*n,n) = (2*n)!/(n!)^2.

Offset 0, canonical program `A000984.P17393449527703609683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000984 (n : ℕ) : ℤ :=
  A000984.P17393449527703609683.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000984.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001043.P18269783162673735460

`A000040(n+1)+A000040(n+2)`
-/

namespace A001043.P18269783162673735460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

end

end A001043.P18269783162673735460

noncomputable section

/-- A001043: Numbers that are the sum of 2 successive primes.

Offset 1, canonical program `A001043.P18269783162673735460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001043 (n : ℕ) : ℤ :=
  A001043.P18269783162673735460.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001246.P6480413615949402633

`A000108(n)²`
-/

namespace A001246.P6480413615949402633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2

end

end A001246.P6480413615949402633

noncomputable section

/-- A001246: Squares of Catalan numbers.

Offset 0, canonical program `A001246.P6480413615949402633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001246 (n : ℕ) : ℤ :=
  A001246.P6480413615949402633.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001246.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001248.P16278241061688229202

`A000040(n+1)²`
-/

namespace A001248.P16278241061688229202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

end

end A001248.P16278241061688229202

noncomputable section

/-- A001248: Squares of primes.

Offset 1, canonical program `A001248.P16278241061688229202`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001248 (n : ℕ) : ℤ :=
  A001248.P16278241061688229202.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001300.P15797380405414889090

`A000064(floor(n/5))`
-/

namespace A001300.P15797380405414889090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000064 ⌊(n : ℚ) / 5⌋.toNat

end

end A001300.P15797380405414889090

noncomputable section

/-- A001300: Number of ways of making change for n cents using coins of 1, 5, 10, 25, 50 cents.

Offset 0, canonical program `A001300.P15797380405414889090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001300 (n : ℕ) : ℤ :=
  A001300.P15797380405414889090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001448.P6676403900796229286

`A000984(2*n)`
-/

namespace A001448.P6676403900796229286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n)

end

end A001448.P6676403900796229286

noncomputable section

/-- A001448: a(n) = binomial(4n,2n) or (4*n)!/((2*n)!*(2*n)!).

Offset 0, canonical program `A001448.P6676403900796229286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001448 (n : ℕ) : ℤ :=
  A001448.P6676403900796229286.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001558.P12122410934121705503

`A000957(n+4)-A000957(n+3)-A000957(n+2)`
-/

namespace A001558.P12122410934121705503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 4) - A000957 (n + 3) - A000957 (n + 2)

end

end A001558.P12122410934121705503

noncomputable section

/-- A001558: Number of hill-free Dyck paths of semilength n+3 and having length of first descent equal to 1 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A001558.P12122410934121705503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001558 (n : ℕ) : ℤ :=
  A001558.P12122410934121705503.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001700.P3870841469958150543

`(2*n+1)*A000108(n)`
-/

namespace A001700.P3870841469958150543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000108 n

end

end A001700.P3870841469958150543

noncomputable section

/-- A001700: a(n) = binomial(2*n+1, n+1): number of ways to put n+1 indistinguishable balls into n+1 distinguishable boxes = number of (n+1)-st degree monomials in n+1 variables = number of monotone maps from 1..n+1 to 1..n+1.

Offset 0, canonical program `A001700.P3870841469958150543`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001700 (n : ℕ) : ℤ :=
  A001700.P3870841469958150543.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001748.P16019639290970068825

`3*A000040(n+1)`
-/

namespace A001748.P16019639290970068825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1)

end

end A001748.P16019639290970068825

noncomputable section

/-- A001748: a(n) = 3 * prime(n).

Offset 1, canonical program `A001748.P16019639290970068825`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001748 (n : ℕ) : ℤ :=
  A001748.P16019639290970068825.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001788.P5561357173935824427

`2*a(n-1)+A001787(n)` with `a(0)=0`
-/

namespace A001788.P5561357173935824427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + A001787 n

end

end A001788.P5561357173935824427

noncomputable section

/-- A001788: a(n) = n*(n+1)*2^(n-2).

Offset 0, canonical program `A001788.P5561357173935824427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001788 (n : ℕ) : ℤ :=
  A001788.P5561357173935824427.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001791.P9713013280951293137

`n*A000108(n)`
-/

namespace A001791.P9713013280951293137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000108 n

end

end A001791.P9713013280951293137

noncomputable section

/-- A001791: a(n) = binomial coefficient C(2n, n-1).

Offset 0, canonical program `A001791.P9713013280951293137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001791 (n : ℕ) : ℤ :=
  A001791.P9713013280951293137.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002057.P1618163800040007133

`2*(n+1)*A000108(n+2)/(n+4)`
-/

namespace A002057.P1618163800040007133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n + 1 : ℤ) * A000108 (n + 2)) : ℚ) / (n + 4 : ℚ)

end

end A002057.P1618163800040007133

noncomputable section

/-- A002057: Fourth convolution of Catalan numbers: a(n) = 4*binomial(2*n+3,n)/(n+4).

Offset 0, canonical program `A002057.P1618163800040007133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002057 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002057.P1618163800040007133.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002324.P17421748272452344756

`A001817(n+1)-A001822(n+1)`
-/

namespace A002324.P17421748272452344756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1) - A001822 (n + 1)

end

end A002324.P17421748272452344756

noncomputable section

/-- A002324: Number of divisors of n == 1 (mod 3) minus number of divisors of n == 2 (mod 3).

Offset 1, canonical program `A002324.P17421748272452344756`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A001822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002324 (n : ℕ) : ℤ :=
  A002324.P17421748272452344756.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A001822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A002324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002448.P16712108532167547424

`(-1)^n*A000122(n)`
-/

namespace A002448.P16712108532167547424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000122 n

end

end A002448.P16712108532167547424

noncomputable section

/-- A002448: Expansion of Jacobi theta function theta_4(x).

Offset 0, canonical program `A002448.P16712108532167547424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002448 (n : ℕ) : ℤ :=
  A002448.P16712108532167547424.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000122, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002448.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002457.P9253550667326779954

`(2*n+1)*A000984(n)`
-/

namespace A002457.P9253550667326779954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000984 n

end

end A002457.P9253550667326779954

noncomputable section

/-- A002457: a(n) = (2n+1)!/n!^2.

Offset 0, canonical program `A002457.P9253550667326779954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002457 (n : ℕ) : ℤ :=
  A002457.P9253550667326779954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002802.P16841612747706247386

`A000911(n)/6`
-/

namespace A002802.P16841612747706247386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000911 n : ℚ) / 6

end

end A002802.P16841612747706247386

noncomputable section

/-- A002802: a(n) = (2*n+3)!/(6*n!*(n+1)!).

Offset 0, canonical program `A002802.P16841612747706247386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002802 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002802.P16841612747706247386.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002802.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002894.P1617164013389837685

`A000984(n)²`
-/

namespace A002894.P1617164013389837685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2

end

end A002894.P1617164013389837685

noncomputable section

/-- A002894: a(n) = binomial(2n, n)^2.

Offset 0, canonical program `A002894.P1617164013389837685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002894 (n : ℕ) : ℤ :=
  A002894.P1617164013389837685.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A003622.P2433366108041755789

`a(n-1)+1+A001468(n)` with `a(0)=1`
-/

namespace A003622.P2433366108041755789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 + A001468 n)

end

end A003622.P2433366108041755789

noncomputable section

/-- A003622: The Wythoff compound sequence AA: a(n) = floor(n*phi^2) - 1, where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A003622.P2433366108041755789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003622 (n : ℕ) : ℤ :=
  A003622.P2433366108041755789.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A003622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004058.P5511295671970083369

`A004057(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A004058.P5511295671970083369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004057 n + 5 * a (n - 1)

end

end A004058.P5511295671970083369

noncomputable section

/-- A004058: Expansion of (1-x)/( (1+x)*(1-2*x)*(1-3*x)*(1-4*x)*(1-5*x)).

Offset 0, canonical program `A004058.P5511295671970083369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A004058 (n : ℕ) : ℤ :=
  A004058.P5511295671970083369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A004058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004736.P10337537277358081527

`A000217(A002024(n+1))-n`
-/

namespace A004736.P10337537277358081527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002024 (n + 1)).toNat - (n : ℤ)

end

end A004736.P10337537277358081527

noncomputable section

/-- A004736: Triangle read by rows: row n lists the first n positive integers in decreasing order.

Offset 1, canonical program `A004736.P10337537277358081527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004736 (n : ℕ) : ℤ :=
  A004736.P10337537277358081527.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004736.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005043.P11838040305800302990

`A001006(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A005043.P11838040305800302990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001006 (n - 1) - a (n - 1)

end

end A005043.P11838040305800302990

noncomputable section

/-- A005043: Riordan numbers: a(n) = (n-1)*(2*a(n-1) + 3*a(n-2))/(n+1).

Offset 0, canonical program `A005043.P11838040305800302990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005043 (n : ℕ) : ℤ :=
  A005043.P11838040305800302990.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005067.P12357016515883756031

`A005064(n+1)-8*n%2`
-/

namespace A005067.P12357016515883756031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - ((8 * (n % 2) : ℕ) : ℤ)

end

end A005067.P12357016515883756031

noncomputable section

/-- A005067: Sum of cubes of odd primes dividing n.

Offset 1, canonical program `A005067.P12357016515883756031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005067 (n : ℕ) : ℤ :=
  A005067.P12357016515883756031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005083.P15372277064922864863

`∑{p}[n+1, A005082(#)²]`
-/

namespace A005083.P15372277064922864863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005082 p ^ 2

end

end A005083.P15372277064922864863

noncomputable section

/-- A005083: Sum of squares of primes = 3 mod 4 dividing n.

Offset 1, canonical program `A005083.P15372277064922864863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005083 (n : ℕ) : ℤ :=
  A005083.P15372277064922864863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005084.P8221435788932631472

`∑{p}[n+1, #*A005083(#)]`
-/

namespace A005084.P8221435788932631472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A005083 p

end

end A005084.P8221435788932631472

noncomputable section

/-- A005084: Sum of cubes of primes = 3 mod 4 dividing n.

Offset 1, canonical program `A005084.P8221435788932631472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005084 (n : ℕ) : ℤ :=
  A005084.P8221435788932631472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005085.P17408966888142263945

`∑{p}[n+1, A005083(#)²]`
-/

namespace A005085.P17408966888142263945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005083 p ^ 2

end

end A005085.P17408966888142263945

noncomputable section

/-- A005085: Sum of 4th powers of primes = 3 mod 4 dividing n.

Offset 1, canonical program `A005085.P17408966888142263945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005085 (n : ℕ) : ℤ :=
  A005085.P17408966888142263945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005159.P15125163162454949925

`A000244(n)*A000108(n)`
-/

namespace A005159.P15125163162454949925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A000108 n

end

end A005159.P15125163162454949925

noncomputable section

/-- A005159: a(n) = 3^n*Catalan(n).

Offset 0, canonical program `A005159.P15125163162454949925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005159 (n : ℕ) : ℤ :=
  A005159.P15125163162454949925.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005430.P18261736114272756047

`n*A000984(n)`
-/

namespace A005430.P18261736114272756047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000984 n

end

end A005430.P18261736114272756047

noncomputable section

/-- A005430: Apéry numbers: n*C(2*n,n).

Offset 0, canonical program `A005430.P18261736114272756047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A005430 (n : ℕ) : ℤ :=
  A005430.P18261736114272756047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A005430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005558.P18386753089207024967

`A000108(floor((n+1)/2))*A000108(floor(n/2))*(2*floor(n/2)+1)`
-/

namespace A005558.P18386753089207024967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat * A000108 ⌊(n : ℚ) / 2⌋.toNat * (2 * ⌊(n : ℚ) / 2⌋ + 1)

end

end A005558.P18386753089207024967

noncomputable section

/-- A005558: a(n) is the number of n-step walks on square lattice such that 0 <= y <= x at each step.

Offset 0, canonical program `A005558.P18386753089207024967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005558 (n : ℕ) : ℤ :=
  A005558.P18386753089207024967.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005566.P10751656552501644587

`(ceil(n/2)+1)*A005558(n)`
-/

namespace A005566.P10751656552501644587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * A005558 n

end

end A005566.P10751656552501644587

noncomputable section

/-- A005566: Number of walks of length n on square lattice, starting at origin, staying in first quadrant.

Offset 0, canonical program `A005566.P10751656552501644587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A005566 (n : ℕ) : ℤ :=
  A005566.P10751656552501644587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A005566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005568.P12626986940016009255

`A000108(n)*A000108(n+1)`
-/

namespace A005568.P12626986940016009255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000108 (n + 1)

end

end A005568.P12626986940016009255

noncomputable section

/-- A005568: Product of two successive Catalan numbers C(n)*C(n+1).

Offset 0, canonical program `A005568.P12626986940016009255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005568 (n : ℕ) : ℤ :=
  A005568.P12626986940016009255.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005568.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005809.P5005780551759923958

`(2*n+1)*A001764(n)`
-/

namespace A005809.P5005780551759923958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A001764 n

end

end A005809.P5005780551759923958

noncomputable section

/-- A005809: a(n) = binomial(3n,n).

Offset 0, canonical program `A005809.P5005780551759923958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005809 (n : ℕ) : ℤ :=
  A005809.P5005780551759923958.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006005.P1228063357782503489

`A000040(n+1)-A000007(n)`
-/

namespace A006005.P1228063357782503489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000007 n

end

end A006005.P1228063357782503489

noncomputable section

/-- A006005: The odd prime numbers together with 1.

Offset 1, canonical program `A006005.P1228063357782503489`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006005 (n : ℕ) : ℤ :=
  A006005.P1228063357782503489.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006093.P2906174024863549003

`A000040(n+1)-1`
-/

namespace A006093.P2906174024863549003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

end

end A006093.P2906174024863549003

noncomputable section

/-- A006093: a(n) = prime(n) - 1.

Offset 1, canonical program `A006093.P2906174024863549003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006093 (n : ℕ) : ℤ :=
  A006093.P2906174024863549003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006095.P3440848967568071249

`a(n-1)+A000217(A000225(n-1))` with `a(0)=0`
-/

namespace A006095.P3440848967568071249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000217 (A000225 (n - 1)).toNat

end

end A006095.P3440848967568071249

noncomputable section

/-- A006095: Gaussian binomial coefficient [n, 2] for q = 2.

Offset 0, canonical program `A006095.P3440848967568071249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006095 (n : ℕ) : ℤ :=
  A006095.P3440848967568071249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006254.P17336495081768971287

`(A000040(n+2)+1)/2`
-/

namespace A006254.P17336495081768971287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) + 1 : ℚ) / 2

end

end A006254.P17336495081768971287

noncomputable section

/-- A006254: Numbers k such that 2k-1 is prime.

Offset 1, canonical program `A006254.P17336495081768971287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006254 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006254.P17336495081768971287.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A006254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A006261.P4266430943369696028

`a(n-1)+A000127(n)` with `a(0)=1`
-/

namespace A006261.P4266430943369696028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000127 n

end

end A006261.P4266430943369696028

noncomputable section

/-- A006261: a(n) = Sum_{k=0..5} binomial(n,k).

Offset 0, canonical program `A006261.P4266430943369696028`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006261 (n : ℕ) : ℤ :=
  A006261.P4266430943369696028.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006333.P758461644222166681

`∑[n+1]/3*∑[A006332(n)]`
-/

namespace A006333.P758461644222166681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006332 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A006333.P758461644222166681

noncomputable section

/-- A006333: From the enumeration of corners.

Offset 0, canonical program `A006333.P758461644222166681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006333 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006333.P758461644222166681.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006480.P12463522902644750404

`A005809(n)*A000984(n)`
-/

namespace A006480.P12463522902644750404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n * A000984 n

end

end A006480.P12463522902644750404

noncomputable section

/-- A006480: De Bruijn's S(3,n): (3n)!/(n!)^3.

Offset 0, canonical program `A006480.P12463522902644750404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006480 (n : ℕ) : ℤ :=
  A006480.P12463522902644750404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006859.P302366829295062184

`A006333(n+1)/2`
-/

namespace A006859.P302366829295062184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006333 (n + 1) : ℚ) / 2

end

end A006859.P302366829295062184

noncomputable section

/-- A006859: From paths in the plane.

Offset 0, canonical program `A006859.P302366829295062184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006859 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006859.P302366829295062184.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007054.P7178060541691833380

`4*A000108(n)-A000108(n+1)`
-/

namespace A007054.P7178060541691833380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000108 n - A000108 (n + 1)

end

end A007054.P7178060541691833380

noncomputable section

/-- A007054: Super ballot numbers: 6(2n)!/(n!(n+2)!).

Offset 0, canonical program `A007054.P7178060541691833380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007054 (n : ℕ) : ℤ :=
  A007054.P7178060541691833380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007123.P7395828226839827993

`(A000108(n)+A001405(n))/2`
-/

namespace A007123.P7395828226839827993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A001405 n : ℚ) / 2

end

end A007123.P7395828226839827993

noncomputable section

/-- A007123: Number of connected unit interval graphs with n nodes; also number of bracelets (turnover necklaces) with n black beads and n-1 white beads.

Offset 1, canonical program `A007123.P7395828226839827993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007123.P7395828226839827993.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007595.P10207835623394486568

`A007123(n+2)-Δ[A001405(n)]`
-/

namespace A007595.P10207835623394486568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007123 (n + 2) - (f1 (n + 1) - f1 n)

end

end A007595.P10207835623394486568

noncomputable section

/-- A007595: a(n) = C_n / 2 if n is even or ( C_n + C_((n-1)/2) ) / 2 if n is odd, where C = Catalan numbers (A000108).

Offset 1, canonical program `A007595.P10207835623394486568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A007595 (n : ℕ) : ℤ :=
  A007595.P10207835623394486568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A007595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008347.P7172351178524916195

`A000040(n)-a(n-1)` with `a(0)=0`
-/

namespace A008347.P7172351178524916195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000040 n - a (n - 1)

end

end A008347.P7172351178524916195

noncomputable section

/-- A008347: a(n) = Sum_{i=0..n-1} (-1)^i * prime(n-i).

Offset 0, canonical program `A008347.P7172351178524916195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008347 (n : ℕ) : ℤ :=
  A008347.P7172351178524916195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008500.P17783133388678695938

`A000580(n+7)-C(n, 7)`
-/

namespace A008500.P17783133388678695938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) - (Nat.choose n 7 : ℤ)

end

end A008500.P17783133388678695938

noncomputable section

/-- A008500: 6-dimensional centered tetrahedral numbers.

Offset 0, canonical program `A008500.P17783133388678695938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008500 (n : ℕ) : ℤ :=
  A008500.P17783133388678695938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008549.P16408123285213414889

`abs(4^n-A001700(n))`
-/

namespace A008549.P16408123285213414889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A001700 n|

end

end A008549.P16408123285213414889

noncomputable section

/-- A008549: Number of ways of choosing at most n-1 items from a set of size 2*n+1.

Offset 0, canonical program `A008549.P16408123285213414889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A008549 (n : ℕ) : ℤ :=
  A008549.P16408123285213414889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A008549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008649.P9304805001018961615

`floor(A000217(floor((n+3)/3)+1)/3)`
-/

namespace A008649.P9304805001018961615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (⌊(n + 3 : ℚ) / 3⌋ + 1).toNat : ℚ) / 3⌋

end

end A008649.P9304805001018961615

noncomputable section

/-- A008649: Molien series of 3 X 3 upper triangular matrices over GF( 3 ).

Offset 0, canonical program `A008649.P9304805001018961615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008649 (n : ℕ) : ℤ :=
  A008649.P9304805001018961615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008778.P5727098079324999072

`A000217(n)+A000292(n+1)`
-/

namespace A008778.P5727098079324999072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000292 (n + 1)

end

end A008778.P5727098079324999072

noncomputable section

/-- A008778: a(n) = (n+1)*(n^2 +8*n +6)/6. Number of n-dimensional partitions of 4. Number of terms in 4th derivative of a function composed with itself n times.

Offset 0, canonical program `A008778.P5727098079324999072`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008778 (n : ℕ) : ℤ :=
  A008778.P5727098079324999072.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008778.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008825.P4707898994030679412

`2*A008740(n)-(n+1)`
-/

namespace A008825.P4707898994030679412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008740 n - (n + 1 : ℤ)

end

end A008825.P4707898994030679412

noncomputable section

/-- A008825: Expansion of (1+2*x^5+x^9)/((1-x)^2*(1-x^9)).

Offset 0, canonical program `A008825.P4707898994030679412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008825 (n : ℕ) : ℤ :=
  A008825.P4707898994030679412.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008859.P14957720110934266118

`a(n-1)+A006261(n-1)` with `a(0)=1`
-/

namespace A008859.P14957720110934266118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A006261 (n - 1)

end

end A008859.P14957720110934266118

noncomputable section

/-- A008859: a(n) = Sum_{k=0..6} binomial(n,k).

Offset 0, canonical program `A008859.P14957720110934266118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008859 (n : ℕ) : ℤ :=
  A008859.P14957720110934266118.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008859.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008864.P9177617808325052279

`A000040(n+1)+1`
-/

namespace A008864.P9177617808325052279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

end

end A008864.P9177617808325052279

noncomputable section

/-- A008864: a(n) = prime(n) + 1.

Offset 1, canonical program `A008864.P9177617808325052279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008864 (n : ℕ) : ℤ :=
  A008864.P9177617808325052279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008864.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008963.P6523085309151912316

`A000030(A000045(n))`
-/

namespace A008963.P6523085309151912316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000045 n).toNat

end

end A008963.P6523085309151912316

noncomputable section

/-- A008963: Initial digit of Fibonacci number F(n).

Offset 0, canonical program `A008963.P6523085309151912316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008963 (n : ℕ) : ℤ :=
  A008963.P6523085309151912316.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008963.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009003.P2901972731917299294

`lt[0, A005078(n+1)]+1`
-/

namespace A009003.P2901972731917299294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A009003.P2901972731917299294

noncomputable section

/-- A009003: Hypotenuse numbers (squares are sums of 2 nonzero squares).

Offset 1, canonical program `A009003.P2901972731917299294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6449 terms. -/
def A009003 (n : ℕ) : ℤ :=
  (A009003.P2901972731917299294.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6449 terms. -/
def A009003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A009281.P16715583283193038702

`(-1)^n*A000387(n)+1`
-/

namespace A009281.P16715583283193038702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000387 n + 1

end

end A009281.P16715583283193038702

noncomputable section

/-- A009281: Expansion of e.g.f. exp(x)*cosh(log(1+x)).

Offset 0, canonical program `A009281.P16715583283193038702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009281 (n : ℕ) : ℤ :=
  A009281.P16715583283193038702.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A009281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010054.P18347828677204923252

`A005369(2*n)`
-/

namespace A010054.P18347828677204923252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n)

end

end A010054.P18347828677204923252

noncomputable section

/-- A010054: a(n) = 1 if n is a triangular number, otherwise 0.

Offset 0, canonical program `A010054.P18347828677204923252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010054 (n : ℕ) : ℤ :=
  A010054.P18347828677204923252.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010696.P309287587077170374

`2*A010684(n)`
-/

namespace A010696.P309287587077170374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010684 n

end

end A010696.P309287587077170374

noncomputable section

/-- A010696: Periodic sequence: Repeat 2,6.

Offset 0, canonical program `A010696.P309287587077170374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010696 (n : ℕ) : ℤ :=
  A010696.P309287587077170374.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010696.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010751.P13596492722488707234

`(-1)^A002024(n+1)*(A007590(A002024(n+1))-n)`
-/

namespace A010751.P13596492722488707234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A002024 (n + 1) : ℤ) * (A007590 (A002024 (n + 1)).toNat - (n : ℤ) : ℚ)

end

end A010751.P13596492722488707234

noncomputable section

/-- A010751: Up once, down twice, up three times, down four times, ...

Offset 0, canonical program `A010751.P13596492722488707234`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010751 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010751.P13596492722488707234.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010883.P6960251526923042269

`A010873(n)+1`
-/

namespace A010883.P6960251526923042269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n + 1

end

end A010883.P6960251526923042269

noncomputable section

/-- A010883: Simple periodic sequence: repeat 1,2,3,4.

Offset 0, canonical program `A010883.P6960251526923042269`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010883 (n : ℕ) : ℤ :=
  A010883.P6960251526923042269.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011974.P2665693327137284562

`A001043(n%a(n-1))` with `a(0)=2`
-/

namespace A011974.P2665693327137284562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001043 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A011974.P2665693327137284562

noncomputable section

/-- A011974: 2 followed by the numbers that are the sum of 2 successive primes.

Offset 1, canonical program `A011974.P2665693327137284562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011974 (n : ℕ) : ℤ :=
  A011974.P2665693327137284562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013989.P5298881847955433932

`A000085(n)*(n+1)`
-/

namespace A013989.P5298881847955433932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n * (n + 1 : ℤ)

end

end A013989.P5298881847955433932

noncomputable section

/-- A013989: a(n) = (n+1)*(a(n-1)/n + a(n-2)), with a(0)=1, a(1)=2.

Offset 0, canonical program `A013989.P5298881847955433932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013989 (n : ℕ) : ℤ :=
  A013989.P5298881847955433932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A013989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014138.P8012092781455815566

`A014137(n)-1`
-/

namespace A014138.P8012092781455815566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - 1

end

end A014138.P8012092781455815566

noncomputable section

/-- A014138: Partial sums of (Catalan numbers starting 1, 2, 5, ...).

Offset 0, canonical program `A014138.P8012092781455815566`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014138 (n : ℕ) : ℤ :=
  A014138.P8012092781455815566.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014140.P3701611324340069420

`∑[A014137(n)]`
-/

namespace A014140.P3701611324340069420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A014140.P3701611324340069420

noncomputable section

/-- A014140: Apply partial sum operator twice to Catalan numbers.

Offset 0, canonical program `A014140.P3701611324340069420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014140 (n : ℕ) : ℤ :=
  A014140.P3701611324340069420.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A014140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014495.P8648755420632744383

`A001405(n)-1`
-/

namespace A014495.P8648755420632744383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - 1

end

end A014495.P8648755420632744383

noncomputable section

/-- A014495: Central binomial coefficient - 1.

Offset 0, canonical program `A014495.P8648755420632744383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014495 (n : ℕ) : ℤ :=
  A014495.P8648755420632744383.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014689.P3456970834266250440

`A006093(n+1)-n`
-/

namespace A014689.P3456970834266250440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (n : ℤ)

end

end A014689.P3456970834266250440

noncomputable section

/-- A014689: a(n) = prime(n)-n, the number of nonprimes less than prime(n).

Offset 1, canonical program `A014689.P3456970834266250440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014689 (n : ℕ) : ℤ :=
  A014689.P3456970834266250440.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A016031.P14727423077537202512

`2^A000295(n)`
-/

namespace A016031.P14727423077537202512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000295 n : ℤ)

end

end A016031.P14727423077537202512

noncomputable section

/-- A016031: De Bruijn's sequence: 2^(2^(n-1) - n): number of ways of arranging 2^n bits in circle so all 2^n consecutive strings of length n are distinct.

Offset 1, canonical program `A016031.P14727423077537202512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016031 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A016031.P14727423077537202512.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A016031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A018252.P16557407491482004301

`record[(n+3)%(2-A000203(n+3))]`
-/

namespace A018252.P16557407491482004301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (2 - A000203 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018252.P16557407491482004301

noncomputable section

/-- A018252: The nonprime numbers: 1 together with the composite numbers, A002808.

Offset 1, canonical program `A018252.P16557407491482004301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018252 (n : ℕ) : ℤ :=
  A018252.P16557407491482004301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A018252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020703.P11598707857609940859

`abs(A001844(floor(sqrt(n)))-n)`
-/

namespace A020703.P11598707857609940859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001844 (Nat.sqrt n) - (n : ℤ)|

end

end A020703.P11598707857609940859

noncomputable section

/-- A020703: Take the sequence of natural numbers (A000027) and reverse successive subsequences of lengths 1,3,5,7,...

Offset 1, canonical program `A020703.P11598707857609940859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020703 (n : ℕ) : ℤ :=
  A020703.P11598707857609940859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020706.P17542088062975438782

`A000045(n+4)+1`
-/

namespace A020706.P17542088062975438782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) + 1

end

end A020706.P17542088062975438782

noncomputable section

/-- A020706: Pisot sequences L(4,6), E(4,6).

Offset 0, canonical program `A020706.P17542088062975438782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020706 (n : ℕ) : ℤ :=
  A020706.P17542088062975438782.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A020706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022088.P13238787405379109622

`5*A000045(n)`
-/

namespace A022088.P13238787405379109622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n

end

end A022088.P13238787405379109622

noncomputable section

/-- A022088: Fibonacci sequence beginning 0, 5.

Offset 0, canonical program `A022088.P13238787405379109622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022088 (n : ℕ) : ℤ :=
  A022088.P13238787405379109622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A022342.P15925885883679049417

`a(n-1)+A001468(n)` with `a(0)=0`
-/

namespace A022342.P15925885883679049417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001468 n

end

end A022342.P15925885883679049417

noncomputable section

/-- A022342: Integers with "even" Zeckendorf expansions (do not end with ... + F_2 = ... + 1) (the Fibonacci-even numbers); also, apart from first term, a(n) = Fibonacci successor to n-1.

Offset 1, canonical program `A022342.P15925885883679049417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022342 (n : ℕ) : ℤ :=
  A022342.P15925885883679049417.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A022342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023531.P13036811505051547859

`A010054(n+1)`
-/

namespace A023531.P13036811505051547859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

end

end A023531.P13036811505051547859

noncomputable section

/-- A023531: a(n) = 1 if n is of the form m(m+3)/2, otherwise 0.

Offset 0, canonical program `A023531.P13036811505051547859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023531 (n : ℕ) : ℤ :=
  A023531.P13036811505051547859.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023531.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A023595.P11716259585214489517

`∑{e}[2*(A006093(n+1)+1)+1, #]`
-/

namespace A023595.P11716259585214489517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006093 (n + 1) + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A023595.P11716259585214489517

noncomputable section

/-- A023595: a(n) = sum of exponents in prime-power factorization of 2*prime(n)+1.

Offset 1, canonical program `A023595.P11716259585214489517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023595 (n : ℕ) : ℤ :=
  (A023595.P11716259585214489517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023857.P527520079518963399

`A023856(n+1)+A008805(n)`
-/

namespace A023857.P527520079518963399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (n + 1) + A008805 n

end

end A023857.P527520079518963399

noncomputable section

/-- A023857: a(n) = 1*(n+3-1) + 2*(n+3-2) + .... + k*(n+3-k), where k=floor((n+1)/2).

Offset 1, canonical program `A023857.P527520079518963399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023857 (n : ℕ) : ℤ :=
  A023857.P527520079518963399.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A023857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024362.P2480877528785072267

`A001221(∏{p}[n+1, and(2, #+2)]!)`
-/

namespace A024362.P2480877528785072267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), Nat.land 2 (p + 2)))

end

end A024362.P2480877528785072267

noncomputable section

/-- A024362: Number of primitive Pythagorean triangles with hypotenuse n.

Offset 1, canonical program `A024362.P2480877528785072267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024362 (n : ℕ) : ℤ :=
  A024362.P2480877528785072267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A024362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024485.P13512264507624773561

`2*A005809(n)/(3*n-1)`
-/

namespace A024485.P13512264507624773561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A005809 n : ℚ) / ((3 * n : ℤ) - 1 : ℚ)

end

end A024485.P13512264507624773561

noncomputable section

/-- A024485: a(n) = (2/(3*n-1))*binomial(3*n,n).

Offset 0, canonical program `A024485.P13512264507624773561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024485 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024485.P13512264507624773561.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A024485.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025174.P11497073020642724255

`floor(A005809(n)/3)`
-/

namespace A025174.P11497073020642724255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005809 n : ℚ) / 3⌋

end

end A025174.P11497073020642724255

noncomputable section

/-- A025174: a(n) = binomial(3n-1, n-1).

Offset 0, canonical program `A025174.P11497073020642724255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A025174 (n : ℕ) : ℤ :=
  A025174.P11497073020642724255.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A025174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025211.P14622325333680508278

`a(n-1)+A016753(n)+a(n-1)` with `a(0)=1`
-/

namespace A025211.P14622325333680508278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A016753 n + a (n - 1))

end

end A025211.P14622325333680508278

noncomputable section

/-- A025211: Expansion of 1/((1-2x)(1-3x)(1-4x)(1-5x)).

Offset 0, canonical program `A025211.P14622325333680508278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A025211 (n : ℕ) : ℤ :=
  A025211.P14622325333680508278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A025211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025581.P420762180635059694

`A004736(n+1)-1`
-/

namespace A025581.P420762180635059694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) - 1

end

end A025581.P420762180635059694

noncomputable section

/-- A025581: Triangle read by rows: T(n, k) = n-k, for 0 <= k <= n.

Offset 0, canonical program `A025581.P420762180635059694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025581 (n : ℕ) : ℤ :=
  A025581.P420762180635059694.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025713.P720326762363745122

`a(n-1)+A020915(n)+n` with `a(0)=1`
-/

namespace A025713.P720326762363745122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A020915 n + (n : ℤ))

end

end A025713.P720326762363745122

noncomputable section

/-- A025713: Index of 6^n within the sequence of the numbers of the form 3^i*6^j.

Offset 0, canonical program `A025713.P720326762363745122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025713 (n : ℕ) : ℤ :=
  A025713.P720326762363745122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025779.P5342029654356109085

`ceil((A008825(n)-A008738(n))/2)`
-/

namespace A025779.P5342029654356109085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008825 n - A008738 n : ℚ) / 2⌉

end

end A025779.P5342029654356109085

noncomputable section

/-- A025779: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)).

Offset 0, canonical program `A025779.P5342029654356109085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025779 (n : ℕ) : ℤ :=
  A025779.P5342029654356109085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025783.P12467581854795835454

`A025771(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A025783.P12467581854795835454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025771 n - a (n - 3)

end

end A025783.P12467581854795835454

noncomputable section

/-- A025783: Expansion of 1/((1-x)(1-x^6)(1-x^11)).

Offset 0, canonical program `A025783.P12467581854795835454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025783 (n : ℕ) : ℤ :=
  A025783.P12467581854795835454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025784.P614315129234418828

`A008725(n)-∑[ceil(n/8)]`
-/

namespace A025784.P614315129234418828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025784.P614315129234418828

noncomputable section

/-- A025784: Expansion of 1/((1-x)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A025784.P614315129234418828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025784 (n : ℕ) : ℤ :=
  A025784.P614315129234418828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025789.P4543356228258914998

`A025774(n)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A025789.P4543356228258914998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  A025774 n - a (n - 4)

end

end A025789.P4543356228258914998

noncomputable section

/-- A025789: Expansion of 1/((1-x)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A025789.P4543356228258914998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025789 (n : ℕ) : ℤ :=
  A025789.P4543356228258914998.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025798.P6201180506434480700

`A008649(n)-a(n-1)` with `a(0)=1`
-/

namespace A025798.P6201180506434480700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008649 n - a (n - 1)

end

end A025798.P6201180506434480700

noncomputable section

/-- A025798: Expansion of g.f. 1/((1 - x^2)*(1 - x^3)*(1 - x^9)).

Offset 0, canonical program `A025798.P6201180506434480700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025798 (n : ℕ) : ℤ :=
  A025798.P6201180506434480700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025801.P18350864034073825742

`A002620(ceil(xor(1, n)/6)+1)`
-/

namespace A025801.P18350864034073825742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (⌈(Nat.xor 1 n : ℚ) / 6⌉ + 1).toNat

end

end A025801.P18350864034073825742

noncomputable section

/-- A025801: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^12)).

Offset 0, canonical program `A025801.P18350864034073825742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025801 (n : ℕ) : ℤ :=
  A025801.P18350864034073825742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025810.P3393383735508697475

`a(n-10)+A008616(n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1`
-/

namespace A025810.P3393383735508697475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1, 1, 1, 1, 1, 1] fun n a =>
  a (n - 10) + A008616 n

end

end A025810.P3393383735508697475

noncomputable section

/-- A025810: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^10)).

Offset 0, canonical program `A025810.P3393383735508697475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025810 (n : ℕ) : ℤ :=
  A025810.P3393383735508697475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A025810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A025816.P2439650168319643290

`A025784(n)-a(n-1)` with `a(0)=1`
-/

namespace A025816.P2439650168319643290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025784 n - a (n - 1)

end

end A025816.P2439650168319643290

noncomputable section

/-- A025816: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A025816.P2439650168319643290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025816 (n : ℕ) : ℤ :=
  A025816.P2439650168319643290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025821.P2677800712095994418

`A025789(n)-a(n-1)` with `a(0)=1`
-/

namespace A025821.P2677800712095994418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025789 n - a (n - 1)

end

end A025821.P2677800712095994418

noncomputable section

/-- A025821: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)).

Offset 0, canonical program `A025821.P2677800712095994418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025821 (n : ℕ) : ℤ :=
  A025821.P2677800712095994418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025825.P5819571536445049629

`A005044(A008611(n)+2)`
-/

namespace A025825.P5819571536445049629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (A008611 n + 2).toNat

end

end A025825.P5819571536445049629

noncomputable section

/-- A025825: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A025825.P5819571536445049629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025825 (n : ℕ) : ℤ :=
  A025825.P5819571536445049629.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025828.P16639115360157314028

`A025796(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025828.P16639115360157314028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025796 n - a (n - 2)

end

end A025828.P16639115360157314028

noncomputable section

/-- A025828: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)).

Offset 0, canonical program `A025828.P16639115360157314028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025828 (n : ℕ) : ℤ :=
  A025828.P16639115360157314028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025830.P14589058213717596571

`A025797(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025830.P14589058213717596571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025797 n - a (n - 2)

end

end A025830.P14589058213717596571

noncomputable section

/-- A025830: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)).

Offset 0, canonical program `A025830.P14589058213717596571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025830 (n : ℕ) : ℤ :=
  A025830.P14589058213717596571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025859.P10802122507911805993

`A025807(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025859.P10802122507911805993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025807 n - a (n - 2)

end

end A025859.P10802122507911805993

noncomputable section

/-- A025859: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)).

Offset 0, canonical program `A025859.P10802122507911805993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025859 (n : ℕ) : ℤ :=
  A025859.P10802122507911805993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025863.P11788053294611047951

`A025811(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025863.P11788053294611047951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025811 n - a (n - 2)

end

end A025863.P11788053294611047951

noncomputable section

/-- A025863: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^11)).

Offset 0, canonical program `A025863.P11788053294611047951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025863 (n : ℕ) : ℤ :=
  A025863.P11788053294611047951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025866.P13846047430702582108

`A025815(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025866.P13846047430702582108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025815 n - a (n - 2)

end

end A025866.P13846047430702582108

noncomputable section

/-- A025866: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A025866.P13846047430702582108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025866 (n : ℕ) : ℤ :=
  A025866.P13846047430702582108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025874.P4781955559004832929

`A025825(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025874.P4781955559004832929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025825 n - a (n - 2)

end

end A025874.P4781955559004832929

noncomputable section

/-- A025874: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A025874.P4781955559004832929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025874 (n : ℕ) : ℤ :=
  A025874.P4781955559004832929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025882.P466723514163051088

`A025859(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A025882.P466723514163051088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  A025859 n - a (n - 4)

end

end A025882.P466723514163051088

noncomputable section

/-- A025882: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)).

Offset 0, canonical program `A025882.P466723514163051088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025882 (n : ℕ) : ℤ :=
  A025882.P466723514163051088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026012.P8146518293460492297

`A000245(n+1)-A000245(n)`
-/

namespace A026012.P8146518293460492297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) - A000245 n

end

end A026012.P8146518293460492297

noncomputable section

/-- A026012: Second differences of Catalan numbers A000108.

Offset 0, canonical program `A026012.P8146518293460492297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026012 (n : ℕ) : ℤ :=
  A026012.P8146518293460492297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026012.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A026013.P4755213788874432283

`A002057(n)+A000588(n+1)`
-/

namespace A026013.P4755213788874432283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 (n + 1)

end

end A026013.P4755213788874432283

noncomputable section

/-- A026013: a(n) = number of (s(0), s(1), ..., s(2n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n, s(0) = 2, s(2n) = 4. Also a(n) = T(2n,n-1), where T is the array defined in A026009.

Offset 1, canonical program `A026013.P4755213788874432283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026013 (n : ℕ) : ℤ :=
  A026013.P4755213788874432283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026054.P10564683423339651880

`A023551(n+1)+4`
-/

namespace A026054.P10564683423339651880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1) + 4

end

end A026054.P10564683423339651880

noncomputable section

/-- A026054: dot product (n,n-1,...2,1).(3,4,...,n,1,2).

Offset 3, canonical program `A026054.P10564683423339651880`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026054 (n : ℕ) : ℤ :=
  A026054.P10564683423339651880.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A026054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A026242.P12591696839412449648

`abs(n+1-Δ[(n+1)*A005206(n)])`
-/

namespace A026242.P12591696839412449648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) - (f1 (n + 1) - f1 n)|

end

end A026242.P12591696839412449648

noncomputable section

/-- A026242: a(n) = j if n is L(j), else a(n) = k if n is U(k), where L = A000201, U = A001950 (lower and upper Wythoff sequences).

Offset 1, canonical program `A026242.P12591696839412449648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026242 (n : ℕ) : ℤ :=
  A026242.P12591696839412449648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026741.P7397200255647832146

`gcd(n, A000217(n))`
-/

namespace A026741.P7397200255647832146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000217 n)

end

end A026741.P7397200255647832146

noncomputable section

/-- A026741: a(n) = n if n odd, n/2 if n even.

Offset 0, canonical program `A026741.P7397200255647832146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026741 (n : ℕ) : ℤ :=
  (A026741.P7397200255647832146.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A026741.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027434.P16908289537741265005

`1+A000267(n)`
-/

namespace A027434.P16908289537741265005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000267 n

end

end A027434.P16908289537741265005

noncomputable section

/-- A027434: a(1) = 2; then defined by property that a(n) = smallest number >= a(n-1) such that successive runs have lengths 1,1,2,2,3,3,4,4.

Offset 1, canonical program `A027434.P16908289537741265005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027434 (n : ℕ) : ℤ :=
  A027434.P16908289537741265005.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027434.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027660.P17055933211785570024

`A000389(n+5)-2*A000332(n+3)`
-/

namespace A027660.P17055933211785570024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) - 2 * A000332 (n + 3)

end

end A027660.P17055933211785570024

noncomputable section

/-- A027660: a(n) = C(n+2, 2) + C(n+2, 3) + C(n+2, 4) + C(n+2, 5).

Offset 0, canonical program `A027660.P17055933211785570024`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027660 (n : ℕ) : ℤ :=
  A027660.P17055933211785570024.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A027660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A027789.P4505283139998274207

`2*A006470(n+1)`
-/

namespace A027789.P4505283139998274207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006470 (n + 1)

end

end A027789.P4505283139998274207

noncomputable section

/-- A027789: a(n) = 2*(n+1)*binomial(n+3,4).

Offset 1, canonical program `A027789.P4505283139998274207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027789 (n : ℕ) : ℤ :=
  A027789.P4505283139998274207.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A027789.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028310.P17100011364110845930

`n+A000007(n)`
-/

namespace A028310.P17100011364110845930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000007 n

end

end A028310.P17100011364110845930

noncomputable section

/-- A028310: Expansion of (1 - x + x^2) / (1 - x)^2 in powers of x.

Offset 0, canonical program `A028310.P17100011364110845930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028310 (n : ℕ) : ℤ :=
  A028310.P17100011364110845930.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A028329.P2723209719397665586

`2*A000984(n)`
-/

namespace A028329.P2723209719397665586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n

end

end A028329.P2723209719397665586

noncomputable section

/-- A028329: Twice central binomial coefficients.

Offset 0, canonical program `A028329.P2723209719397665586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028329 (n : ℕ) : ℤ :=
  A028329.P2723209719397665586.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A028329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A029034.P9715275909230728830

`∑[A025830(n)]`
-/

namespace A029034.P9715275909230728830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029034.P9715275909230728830

noncomputable section

/-- A029034: Expansion of 1/((1-x)*(1-x^3)*(1-x^4)*(1-x^8)).

Offset 0, canonical program `A029034.P9715275909230728830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029034 (n : ℕ) : ℤ :=
  A029034.P9715275909230728830.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029048.P8628271437068557478

`A025783(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029048.P8628271437068557478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025783 n + a (n - 3)

end

end A029048.P8628271437068557478

noncomputable section

/-- A029048: Expansion of 1/((1-x)*(1-x^3)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A029048.P8628271437068557478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029048 (n : ℕ) : ℤ :=
  A029048.P8628271437068557478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029068.P11529397386458974623

`∑[A025863(n)]`
-/

namespace A029068.P11529397386458974623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029068.P11529397386458974623

noncomputable section

/-- A029068: Expansion of 1/((1-x)*(1-x^4)*(1-x^5)*(1-x^11)).

Offset 0, canonical program `A029068.P11529397386458974623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029068 (n : ℕ) : ℤ :=
  A029068.P11529397386458974623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029072.P9773573475305398672

`∑[A025866(n)]`
-/

namespace A029072.P9773573475305398672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029072.P9773573475305398672

noncomputable section

/-- A029072: Expansion of 1/((1-x)*(1-x^4)*(1-x^6)*(1-x^11)).

Offset 0, canonical program `A029072.P9773573475305398672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029072 (n : ℕ) : ℤ :=
  A029072.P9773573475305398672.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029651.P11256932498027878676

`floor(3*A000984(n)/2)`
-/

namespace A029651.P11256932498027878676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((A000984 n : ℚ) / 2)⌋

end

end A029651.P11256932498027878676

noncomputable section

/-- A029651: Central elements of the (1,2)-Pascal triangle A029635.

Offset 0, canonical program `A029651.P11256932498027878676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A029651 (n : ℕ) : ℤ :=
  A029651.P11256932498027878676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A029651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A031131.P2453725465626413076

`A000040(n+3)-A000040(n+1)`
-/

namespace A031131.P2453725465626413076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) - A000040 (n + 1)

end

end A031131.P2453725465626413076

noncomputable section

/-- A031131: Difference between n-th prime and (n+2)-nd prime.

Offset 1, canonical program `A031131.P2453725465626413076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031131 (n : ℕ) : ℤ :=
  A031131.P2453725465626413076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A031131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031385.P17010987493874135659

`A001748(4*n+1)/3`
-/

namespace A031385.P17010987493874135659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (4 * n + 1) : ℚ) / 3

end

end A031385.P17010987493874135659

noncomputable section

/-- A031385: a(n) = prime(4*n-3).

Offset 1, canonical program `A031385.P17010987493874135659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031385 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A031385.P17010987493874135659.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A031385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032092.P17259365878144111399

`∑[∑[A023857(or(1, n))]]`
-/

namespace A032092.P17259365878144111399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023857 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A032092.P17259365878144111399

noncomputable section

/-- A032092: Number of reversible strings with n-1 beads of 2 colors. 5 beads are black. String is not palindromic.

Offset 7, canonical program `A032092.P17259365878144111399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032092 (n : ℕ) : ℤ :=
  A032092.P17259365878144111399.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A032092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A032443.P9008347100965592758

`4*a(n-1)-A000108(n-1)` with `a(0)=1`
-/

namespace A032443.P9008347100965592758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A000108 (n - 1)

end

end A032443.P9008347100965592758

noncomputable section

/-- A032443: a(n) = Sum_{i=0..n} binomial(2*n, i).

Offset 0, canonical program `A032443.P9008347100965592758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032443 (n : ℕ) : ℤ :=
  A032443.P9008347100965592758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A032443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A033183.P3548296153277958657

`A008618(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A033183.P3548296153277958657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008618 n - a (n - 2)

end

end A033183.P3548296153277958657

noncomputable section

/-- A033183: a(n) = number of pairs (p,q) such that 4*p + 9*q = n.

Offset 0, canonical program `A033183.P3548296153277958657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033183 (n : ℕ) : ℤ :=
  A033183.P3548296153277958657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034274.P10410631480567846932

`A000108(n+1)+n*A001700(n)`
-/

namespace A034274.P10410631480567846932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (n : ℤ) * A001700 n

end

end A034274.P10410631480567846932

noncomputable section

/-- A034274: a(n)=f(n,n-1) where f is given in A034261.

Offset 1, canonical program `A034274.P10410631480567846932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A034274 (n : ℕ) : ℤ :=
  A034274.P10410631480567846932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A034274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034275.P13991304222716459800

`(∑[2*n]+1)*A000108(n)`
-/

namespace A034275.P13991304222716459800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A000108 n

end

end A034275.P13991304222716459800

noncomputable section

/-- A034275: a(n) = f(n,n-2) where f is given in A034261.

Offset 1, canonical program `A034275.P13991304222716459800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A034275 (n : ℕ) : ℤ :=
  A034275.P13991304222716459800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A034275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034386.P1755129826133478527

`A007947(A003418(n))`
-/

namespace A034386.P1755129826133478527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003418 n).toNat

end

end A034386.P1755129826133478527

noncomputable section

/-- A034386: Primorial numbers (second definition): n# = product of primes <= n.

Offset 0, canonical program `A034386.P1755129826133478527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034386 (n : ℕ) : ℤ :=
  A034386.P1755129826133478527.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034444.P6574915864346323298

`2^A001221(n+1)`
-/

namespace A034444.P6574915864346323298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A034444.P6574915864346323298

noncomputable section

/-- A034444: a(n) is the number of unitary divisors of n (d such that d divides n, gcd(d, n/d) = 1).

Offset 1, canonical program `A034444.P6574915864346323298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A034444.P6574915864346323298.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A034444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034729.P4778487794034686008

`or(1, ∑{d}[n+1, A000079(n%#)])`
-/

namespace A034729.P4778487794034686008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ d ∈ Nat.divisors (f1 n), A000079 (n % d))

end

end A034729.P4778487794034686008

noncomputable section

/-- A034729: a(n) = Sum_{ k, k|n } 2^(k-1).

Offset 1, canonical program `A034729.P4778487794034686008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034729 (n : ℕ) : ℤ :=
  A034729.P4778487794034686008.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034731.P7299098543500313061

`∑{d}[n+1, A000108(#-1)]`
-/

namespace A034731.P7299098543500313061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1)

end

end A034731.P7299098543500313061

noncomputable section

/-- A034731: Dirichlet convolution of b_n=1 with Catalan numbers.

Offset 1, canonical program `A034731.P7299098543500313061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034731 (n : ℕ) : ℤ :=
  A034731.P7299098543500313061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034737.P1233646584205894789

`∑{d}[n+1, #*A034729((n+1)/#)]`
-/

namespace A034737.P1233646584205894789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P1233646584205894789

noncomputable section

/-- A034737: Dirichlet convolution of b_n=2^(n-1) with sigma(n).

Offset 1, canonical program `A034737.P1233646584205894789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034737 (n : ℕ) : ℤ :=
  A034737.P1233646584205894789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034742.P15572167906451431055

`∑{d}[n+1, A007427(#)*A034731((n+1)/#)]`
-/

namespace A034742.P15572167906451431055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034742.P15572167906451431055

noncomputable section

/-- A034742: Dirichlet convolution of Moebius function mu(n) (A008683) with Catalan numbers (A000108).

Offset 1, canonical program `A034742.P15572167906451431055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034742 (n : ℕ) : ℤ :=
  A034742.P15572167906451431055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A034742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034771.P14136708575511469544

`∑{d}[n+1, A034729(#)]`
-/

namespace A034771.P14136708575511469544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d

end

end A034771.P14136708575511469544

noncomputable section

/-- A034771: Dirichlet convolution of d(n) (# of divisors) with b_n=2^(n-1).

Offset 1, canonical program `A034771.P14136708575511469544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034771 (n : ℕ) : ℤ :=
  A034771.P14136708575511469544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A034771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035214.P16301326444238280714

`A010054(n)+1`
-/

namespace A035214.P16301326444238280714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

end

end A035214.P16301326444238280714

noncomputable section

/-- A035214: 2 followed by a run of n 1's.

Offset 0, canonical program `A035214.P16301326444238280714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035214 (n : ℕ) : ℤ :=
  A035214.P16301326444238280714.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035214.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035336.P16407608833593947395

`2*A003622(n+1)-n`
-/

namespace A035336.P16407608833593947395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003622 (n + 1) - (n : ℤ)

end

end A035336.P16407608833593947395

noncomputable section

/-- A035336: a(n) = 2*floor(n*phi) + n - 1, where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A035336.P16407608833593947395`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035336 (n : ℕ) : ℤ :=
  A035336.P16407608833593947395.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035336.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036234.P2906282677021386800

`A000720(n+1)+1`
-/

namespace A036234.P2906282677021386800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + 1

end

end A036234.P2906282677021386800

noncomputable section

/-- A036234: Number of primes <= n, if 1 is counted as a prime.

Offset 1, canonical program `A036234.P2906282677021386800`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036234 (n : ℕ) : ℤ :=
  A036234.P2906282677021386800.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A036234.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A036439.P376659802180600074

`a(n-1)+A000040(n)` with `a(0)=2`
-/

namespace A036439.P376659802180600074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000040 n

end

end A036439.P376659802180600074

noncomputable section

/-- A036439: a(n) = a(n-1) + prime(n-1), with a(1)=2.

Offset 1, canonical program `A036439.P376659802180600074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036439 (n : ℕ) : ℤ :=
  A036439.P376659802180600074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036453.P17495263989008753229

`A036450(A010553(n+1))`
-/

namespace A036453.P17495263989008753229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036450 (A010553 (n + 1)).toNat

end

end A036453.P17495263989008753229

noncomputable section

/-- A036453: a(n) = d(d(d(d(d(n))))), the 5th iterate of the number-of-divisors function d = A000005, with initial value n.

Offset 1, canonical program `A036453.P17495263989008753229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036453 (n : ℕ) : ℤ :=
  A036453.P17495263989008753229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036467.P9941389810136272924

`A008347(n)+(-1)^n`
-/

namespace A036467.P9941389810136272924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 n + (-1) ^ n

end

end A036467.P9941389810136272924

noncomputable section

/-- A036467: a(n) + a(n-1) = n-th prime.

Offset 0, canonical program `A036467.P9941389810136272924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036467 (n : ℕ) : ℤ :=
  A036467.P9941389810136272924.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038148.P1500552599001130371

`∏{e}[n+1, A006047(#)]`
-/

namespace A038148.P1500552599001130371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006047 (Nat.factorization (f1 n) p)

end

end A038148.P1500552599001130371

noncomputable section

/-- A038148: Number of 3-infinitary divisors of n: if n = Product p(i)^r(i) and d = Product p(i)^s(i), each s(i) has a digit a <= b in its ternary expansion everywhere that the corresponding r(i) has a digit b, then d is a 3-infinitary-divisor of n.

Offset 1, canonical program `A038148.P1500552599001130371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038148 (n : ℕ) : ℤ :=
  A038148.P1500552599001130371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038155.P3945699651781914259

`A038154(n)/2`
-/

namespace A038155.P3945699651781914259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038154 n : ℚ) / 2

end

end A038155.P3945699651781914259

noncomputable section

/-- A038155: a(n) = (n!/2) * Sum_{k=0..n-2} 1/k!.

Offset 0, canonical program `A038155.P3945699651781914259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038155 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A038155.P3945699651781914259.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038155.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A038189.P710315829662968223

`A014707(abs(1-n))`
-/

namespace A038189.P710315829662968223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 |1 - (n : ℤ)|.toNat

end

end A038189.P710315829662968223

noncomputable section

/-- A038189: Bit to left of least significant 1-bit in binary expansion of n.

Offset 0, canonical program `A038189.P710315829662968223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038189 (n : ℕ) : ℤ :=
  A038189.P710315829662968223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038500.P1675534258569796882

`A000244(val(n+1, 3))`
-/

namespace A038500.P1675534258569796882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (n + 1) 3)

end

end A038500.P1675534258569796882

noncomputable section

/-- A038500: Highest power of 3 dividing n.

Offset 1, canonical program `A038500.P1675534258569796882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038500 (n : ℕ) : ℤ :=
  A038500.P1675534258569796882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038721.P7529972670454928615

`2*A016269(n)`
-/

namespace A038721.P7529972670454928615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016269 n

end

end A038721.P7529972670454928615

noncomputable section

/-- A038721: k=2 column of A038719.

Offset 1, canonical program `A038721.P7529972670454928615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038721 (n : ℕ) : ℤ :=
  A038721.P7529972670454928615.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A038721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A039303.P15865620395375190144

`A023105(n)*A039300(n)`
-/

namespace A039303.P15865620395375190144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 n * A039300 n

end

end A039303.P15865620395375190144

noncomputable section

/-- A039303: Number of distinct quadratic residues mod 6^n.

Offset 0, canonical program `A039303.P15865620395375190144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A039303 (n : ℕ) : ℤ :=
  A039303.P15865620395375190144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A039303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039696.P2737647612043200767

`A007947(n+1)+A005361(n+1)`
-/

namespace A039696.P2737647612043200767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + A005361 (n + 1)

end

end A039696.P2737647612043200767

noncomputable section

/-- A039696: If n = Product (p_j^k_j) then a(n) = Product (p_j) + Product (k_j).

Offset 1, canonical program `A039696.P2737647612043200767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A039696 (n : ℕ) : ℤ :=
  A039696.P2737647612043200767.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A039696.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A039702.P9525350324369181383

`A000040(n+1)%4`
-/

namespace A039702.P9525350324369181383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 4

end

end A039702.P9525350324369181383

noncomputable section

/-- A039702: a(n) = n-th prime modulo 4.

Offset 1, canonical program `A039702.P9525350324369181383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039702 (n : ℕ) : ℤ :=
  A039702.P9525350324369181383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039915.P14541109354943719333

`xor(1, A000040(n+1))`
-/

namespace A039915.P14541109354943719333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000040 (n + 1))

end

end A039915.P14541109354943719333

noncomputable section

/-- A039915: Smallest k such that k(p-1)-1 is positive and divisible by p where p = n-th prime.

Offset 1, canonical program `A039915.P14541109354943719333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039915 (n : ℕ) : ℤ :=
  A039915.P14541109354943719333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040976.P11599754272797435513

`A000040(n+1)-2`
-/

namespace A040976.P11599754272797435513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

end

end A040976.P11599754272797435513

noncomputable section

/-- A040976: a(n) = prime(n) - 2.

Offset 1, canonical program `A040976.P11599754272797435513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040976 (n : ℕ) : ℤ :=
  A040976.P11599754272797435513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A040976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A040977.P17094286001024075111

`A000579(n+5)+A000579(n+6)`
-/

namespace A040977.P17094286001024075111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5) + A000579 (n + 6)

end

end A040977.P17094286001024075111

noncomputable section

/-- A040977: a(n) = binomial(n+5,5)*(n+3)/3.

Offset 0, canonical program `A040977.P17094286001024075111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040977 (n : ℕ) : ℤ :=
  A040977.P17094286001024075111.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A040977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A042951.P9394437617427627479

`A018819(round(2*n/3))-a(n-1)` with `a(0)=1`
-/

namespace A042951.P9394437617427627479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018819 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat - a (n - 1)

end

end A042951.P9394437617427627479

noncomputable section

/-- A042951: The sequence e when b=[ 0,1,1,1,1,... ].

Offset 0, canonical program `A042951.P9394437617427627479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042951 (n : ℕ) : ℤ :=
  A042951.P9394437617427627479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043529.P13978693915657788930

`2-A036987(n)`
-/

namespace A043529.P13978693915657788930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A036987 n

end

end A043529.P13978693915657788930

noncomputable section

/-- A043529: Number of distinct base-2 digits of n.

Offset 0, canonical program `A043529.P13978693915657788930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043529 (n : ℕ) : ℤ :=
  A043529.P13978693915657788930.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A043545.P6199121594405564387

`1-A036987(n)`
-/

namespace A043545.P6199121594405564387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A036987 n

end

end A043545.P6199121594405564387

noncomputable section

/-- A043545: (Maximal base-2 digit of n) - (minimal base-2 digit of n).

Offset 0, canonical program `A043545.P6199121594405564387`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043545 (n : ℕ) : ℤ :=
  A043545.P6199121594405564387.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A043545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046080.P8531256422661398959

`∑{d}[n+1, A024362(#)]`
-/

namespace A046080.P8531256422661398959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A024362 d

end

end A046080.P8531256422661398959

noncomputable section

/-- A046080: a(n) is the number of integer-sided right triangles with hypotenuse n.

Offset 1, canonical program `A046080.P8531256422661398959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046080 (n : ℕ) : ℤ :=
  A046080.P8531256422661398959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046161.P11774724709527425901

`2^A005187(n)`
-/

namespace A046161.P11774724709527425901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005187 n : ℤ)

end

end A046161.P11774724709527425901

noncomputable section

/-- A046161: a(n) = denominator of binomial(2n,n)/4^n.

Offset 0, canonical program `A046161.P11774724709527425901`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A046161.P11774724709527425901.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A046161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A046644.P16655248551205198622

`∏{e}[n+1, A046161(#)]`
-/

namespace A046644.P16655248551205198622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A046161 (Nat.factorization (f1 n) p)

end

end A046644.P16655248551205198622

noncomputable section

/-- A046644: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives denominator of b_n.

Offset 1, canonical program `A046644.P16655248551205198622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046644 (n : ℕ) : ℤ :=
  A046644.P16655248551205198622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A046644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046933.P9479947770746769512

`A000040(n+2)-A000040(n+1)-1`
-/

namespace A046933.P9479947770746769512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1) - 1

end

end A046933.P9479947770746769512

noncomputable section

/-- A046933: Number of composites between successive primes.

Offset 1, canonical program `A046933.P9479947770746769512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046933 (n : ℕ) : ℤ :=
  A046933.P9479947770746769512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047994.P3379906037342062945

`A000203((n+1)/∏{p}[n+1, #])*∏{p}[n+1, #-1]`
-/

namespace A047994.P3379906037342062945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A047994.P3379906037342062945

noncomputable section

/-- A047994: Unitary totient (or unitary phi) function uphi(n).

Offset 1, canonical program `A047994.P3379906037342062945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047994 (n : ℕ) : ℤ :=
  A047994.P3379906037342062945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048760.P9900115946027900201

`A000290(A000196(n))`
-/

namespace A048760.P9900115946027900201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000196 n).toNat

end

end A048760.P9900115946027900201

noncomputable section

/-- A048760: Largest square <= n.

Offset 0, canonical program `A048760.P9900115946027900201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048760 (n : ℕ) : ℤ :=
  A048760.P9900115946027900201.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048760.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048766.P6928667735906940915

`∑[A010057(n)]-1`
-/

namespace A048766.P6928667735906940915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A048766.P6928667735906940915

noncomputable section

/-- A048766: Integer part of cube root of n. Or, number of cubes <= n. Or, n appears 3n^2 + 3n + 1 times.

Offset 0, canonical program `A048766.P6928667735906940915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048766 (n : ℕ) : ℤ :=
  A048766.P6928667735906940915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048865.P11145010694177444749

`A000720(n+1)-A001221(n+1)`
-/

namespace A048865.P11145010694177444749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A001221 (n + 1)

end

end A048865.P11145010694177444749

noncomputable section

/-- A048865: a(n) is the number of primes in the reduced residue system mod n.

Offset 1, canonical program `A048865.P11145010694177444749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048865 (n : ℕ) : ℤ :=
  A048865.P11145010694177444749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A048865.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049001.P16714800471455782698

`A001248(n+1)-2`
-/

namespace A049001.P16714800471455782698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 2

end

end A049001.P16714800471455782698

noncomputable section

/-- A049001: a(n) = prime(n)^2 - 2.

Offset 1, canonical program `A049001.P16714800471455782698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049001 (n : ℕ) : ℤ :=
  A049001.P16714800471455782698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A049415.P11594032581258674589

`abs(Δ[A017936(n+1)])`
-/

namespace A049415.P11594032581258674589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A049415.P11594032581258674589

noncomputable section

/-- A049415: Number of squares (of positive integers) with n digits.

Offset 1, canonical program `A049415.P11594032581258674589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A049415 (n : ℕ) : ℤ :=
  A049415.P11594032581258674589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A049415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049416.P18422635801172898222

`∑[A049415(n+1)]`
-/

namespace A049416.P18422635801172898222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049416.P18422635801172898222

noncomputable section

/-- A049416: Largest number whose square has n digits.

Offset 1, canonical program `A049416.P18422635801172898222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A049416 (n : ℕ) : ℤ :=
  A049416.P18422635801172898222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A049416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050140.P7228585505398229594

`2*A005206(n)+n+1`
-/

namespace A050140.P7228585505398229594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005206 n + (n + 1 : ℤ)

end

end A050140.P7228585505398229594

noncomputable section

/-- A050140: a(n) = 2*floor(n*phi)-n, where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A050140.P7228585505398229594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050140 (n : ℕ) : ℤ :=
  A050140.P7228585505398229594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051133.P10428894217481512850

`1/2*A000984(n+1)*A000217(n)`
-/

namespace A051133.P10428894217481512850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000984 (n + 1) : ℚ) * (A000217 n : ℚ)

end

end A051133.P10428894217481512850

noncomputable section

/-- A051133: a(n) = binomial(2n,n)*n*(2n+1)/2.

Offset 0, canonical program `A051133.P10428894217481512850`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051133 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051133.P10428894217481512850.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A051577.P17076629951215720156

`A001147(n+2)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051577.P17076629951215720156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 2) : ℚ) / 3

end

end A051577.P17076629951215720156

noncomputable section

/-- A051577: a(n) = (2*n + 3)!!/3 = A001147(n+2)/3.

Offset 0, canonical program `A051577.P17076629951215720156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A051577.P17076629951215720156.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A051577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A052181.P3293629019242765493

`A027819(n+1)/7`
-/

namespace A052181.P3293629019242765493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027819 (n + 1) : ℚ) / 7

end

end A052181.P3293629019242765493

noncomputable section

/-- A052181: Partial sums of A050483.

Offset 0, canonical program `A052181.P3293629019242765493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052181 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A052181.P3293629019242765493.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A052181.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A052183.P16335580860922368945

`(n+2)*A001764(n)`
-/

namespace A052183.P16335580860922368945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001764 n

end

end A052183.P16335580860922368945

noncomputable section

/-- A052183: a(n) = (n + 2) * binomial(3*n, n) / (2*n + 1).

Offset 0, canonical program `A052183.P16335580860922368945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A052183 (n : ℕ) : ℤ :=
  A052183.P16335580860922368945.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A052183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052203.P1984650257155764096

`A051036(4*n+1)`
-/

namespace A052203.P1984650257155764096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n + 1)

end

end A052203.P1984650257155764096

noncomputable section

/-- A052203: a(n) = (4n+1)*binomial(4n,n)/(3n+1).

Offset 0, canonical program `A052203.P1984650257155764096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A052203 (n : ℕ) : ℤ :=
  A052203.P1984650257155764096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A052203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052938.P3156502007619956031

`A035106(n+3)-A035106(n+2)`
-/

namespace A052938.P3156502007619956031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (n + 3) - A035106 (n + 2)

end

end A052938.P3156502007619956031

noncomputable section

/-- A052938: Expansion of (1 + 2*x - 2*x^2)/( (1+x)*(1-x)^2 ).

Offset 0, canonical program `A052938.P3156502007619956031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052938 (n : ℕ) : ℤ :=
  A052938.P3156502007619956031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A052938.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053129.P7919124711474588781

`8*A000973(n+8)`
-/

namespace A053129.P7919124711474588781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000973 (n + 8)

end

end A053129.P7919124711474588781

noncomputable section

/-- A053129: Binomial coefficients C(2*n-6,7).

Offset 7, canonical program `A053129.P7919124711474588781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053129 (n : ℕ) : ℤ :=
  A053129.P7919124711474588781.a (n - 7)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000973, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053132.P14268853653109633787

`A053127(n+5)/2`
-/

namespace A053132.P14268853653109633787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053127 (n + 5) : ℚ) / 2

end

end A053132.P14268853653109633787

noncomputable section

/-- A053132: One half of binomial coefficients C(2*n-4,5).

Offset 5, canonical program `A053132.P14268853653109633787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053132 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053132.P14268853653109633787.a (n - 5))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053127, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053135.P3881569636335512270

`A000579(2*n+6)`
-/

namespace A053135.P3881569636335512270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (2 * n + 6)

end

end A053135.P3881569636335512270

noncomputable section

/-- A053135: Binomial coefficients C(2*n+6,6).

Offset 0, canonical program `A053135.P3881569636335512270`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053135 (n : ℕ) : ℤ :=
  A053135.P3881569636335512270.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053135.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053136.P3962570685619180111

`A000580(2*n+7)`
-/

namespace A053136.P3962570685619180111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (2 * n + 7)

end

end A053136.P3962570685619180111

noncomputable section

/-- A053136: Binomial coefficients C(2*n+7,7).

Offset 0, canonical program `A053136.P3962570685619180111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053136 (n : ℕ) : ℤ :=
  A053136.P3962570685619180111.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053137.P6825107720318296444

`A000581(2*(n+4))`
-/

namespace A053137.P6825107720318296444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (2 * (n + 4))

end

end A053137.P6825107720318296444

noncomputable section

/-- A053137: Binomial coefficients C(2*n+8,8).

Offset 0, canonical program `A053137.P6825107720318296444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053137 (n : ℕ) : ℤ :=
  A053137.P6825107720318296444.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053138.P4060267663846439734

`A000582(2*n+9)`
-/

namespace A053138.P4060267663846439734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (2 * n + 9)

end

end A053138.P4060267663846439734

noncomputable section

/-- A053138: Binomial coefficients C(2*n+9,9).

Offset 0, canonical program `A053138.P4060267663846439734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053138 (n : ℕ) : ℤ :=
  A053138.P4060267663846439734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053138.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053799.P904661431918655857

`A000982(n)+A008749(n)`
-/

namespace A053799.P904661431918655857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + A008749 n

end

end A053799.P904661431918655857

noncomputable section

/-- A053799: Number of basis partitions of n+9 with Durfee square size 3.

Offset 0, canonical program `A053799.P904661431918655857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053799 (n : ℕ) : ℤ :=
  A053799.P904661431918655857.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053824.P3010568683746929224

`n-4*A027868(n)`
-/

namespace A053824.P3010568683746929224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 * A027868 n

end

end A053824.P3010568683746929224

noncomputable section

/-- A053824: Sum of digits of (n written in base 5).

Offset 0, canonical program `A053824.P3010568683746929224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053824 (n : ℕ) : ℤ :=
  A053824.P3010568683746929224.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A054347.P4966294788488570671

`∑[A004956(n)]-n`
-/

namespace A054347.P4966294788488570671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A054347.P4966294788488570671

noncomputable section

/-- A054347: Partial sums of A000201.

Offset 0, canonical program `A054347.P4966294788488570671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054347 (n : ℕ) : ℤ :=
  A054347.P4966294788488570671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054770.P14264956493222682426

`Δ[A054347(n)+n²]`
-/

namespace A054770.P14264956493222682426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054770.P14264956493222682426

noncomputable section

/-- A054770: Numbers that are not the sum of distinct Lucas numbers 1,3,4,7,11, ... (A000204).

Offset 1, canonical program `A054770.P14264956493222682426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054770 (n : ℕ) : ℤ :=
  A054770.P14264956493222682426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055205.P1652761153594811245

`A048691(n+1)-Δ[A006218(n)]`
-/

namespace A055205.P1652761153594811245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - (f1 (n + 1) - f1 n)

end

end A055205.P1652761153594811245

noncomputable section

/-- A055205: Number of nonsquare divisors of n^2.

Offset 1, canonical program `A055205.P1652761153594811245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055205 (n : ℕ) : ℤ :=
  A055205.P1652761153594811245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055209.P1934713887959445672

`A000178(n)²`
-/

namespace A055209.P1934713887959445672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n ^ 2

end

end A055209.P1934713887959445672

noncomputable section

/-- A055209: a(n) = Product_{i=0..n} i!^2.

Offset 0, canonical program `A055209.P1934713887959445672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055209 (n : ℕ) : ℤ :=
  A055209.P1934713887959445672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A055209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A055634.P12590059432779507175

`(-1)^n*n!/A037223(n)`
-/

namespace A055634.P12590059432779507175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * (Nat.factorial n : ℤ) : ℚ) / (A037223 n : ℚ)

end

end A055634.P12590059432779507175

noncomputable section

/-- A055634: 2-adic factorial function.

Offset 0, canonical program `A055634.P12590059432779507175`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055634.P12590059432779507175.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037223, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A055634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055945.P5963763732554067333

`a(floor(n/2))+n-A038572(n)` with `a(0)=0`
-/

namespace A055945.P5963763732554067333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ) - A038572 n

end

end A055945.P5963763732554067333

noncomputable section

/-- A055945: a(n) = n - (reversal of base-2 digits of n) (and then the result is written in base 10).

Offset 0, canonical program `A055945.P5963763732554067333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055945 (n : ℕ) : ℤ :=
  A055945.P5963763732554067333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056847.P700496860242093391

`n-A000194(n)`
-/

namespace A056847.P700496860242093391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000194 n

end

end A056847.P700496860242093391

noncomputable section

/-- A056847: Nearest integer to n - sqrt(n).

Offset 0, canonical program `A056847.P700496860242093391`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056847 (n : ℕ) : ℤ :=
  A056847.P700496860242093391.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056847.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057427.P3058147525557661423

`1-A000007(n)`
-/

namespace A057427.P3058147525557661423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 n

end

end A057427.P3058147525557661423

noncomputable section

/-- A057427: a(n) = 1 if n > 0, a(n) = 0 if n = 0; series expansion of x/(1-x).

Offset 0, canonical program `A057427.P3058147525557661423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057427 (n : ℕ) : ℤ :=
  A057427.P3058147525557661423.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057428.P2999489532230392221

`-A057427(n)`
-/

namespace A057428.P2999489532230392221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A057427 n

end

end A057428.P2999489532230392221

noncomputable section

/-- A057428: Sign(-n): a(n) = 1 if -n > 0, = -1 if -n < 0, = 0 if n = 0.

Offset 0, canonical program `A057428.P2999489532230392221`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057428 (n : ℕ) : ℤ :=
  A057428.P2999489532230392221.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057660.P9675754224677134609

`2*∑{d}[n+1, A023896(#)]-1`
-/

namespace A057660.P9675754224677134609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A023896 d) - 1

end

end A057660.P9675754224677134609

noncomputable section

/-- A057660: a(n) = Sum_{k=1..n} n/gcd(n,k).

Offset 1, canonical program `A057660.P9675754224677134609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057660 (n : ℕ) : ℤ :=
  A057660.P9675754224677134609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057813.P13879157937402332304

`2*A050533(n)+1`
-/

namespace A057813.P13879157937402332304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050533 n + 1

end

end A057813.P13879157937402332304

noncomputable section

/-- A057813: a(n) = (2*n+1)*(4*n^2+4*n+3)/3.

Offset 0, canonical program `A057813.P13879157937402332304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057813 (n : ℕ) : ℤ :=
  A057813.P13879157937402332304.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057944.P16851463738746886639

`A000217(A003056(n))`
-/

namespace A057944.P16851463738746886639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n).toNat

end

end A057944.P16851463738746886639

noncomputable section

/-- A057944: Largest triangular number less than or equal to n; write m-th triangular number m+1 times.

Offset 0, canonical program `A057944.P16851463738746886639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057944 (n : ℕ) : ℤ :=
  A057944.P16851463738746886639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058183.P4906920629226833825

`A055642(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A058183.P4906920629226833825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (n + 1) + a (n - 1)

end

end A058183.P4906920629226833825

noncomputable section

/-- A058183: Number of digits in concatenation of first n positive integers.

Offset 1, canonical program `A058183.P4906920629226833825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058183 (n : ℕ) : ℤ :=
  A058183.P4906920629226833825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059173.P6167581344001436890

`A046127(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A059173.P6167581344001436890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A046127 (n - 1) + a (n - 1)

end

end A059173.P6167581344001436890

noncomputable section

/-- A059173: Maximal number of regions into which 4-space can be divided by n hyperspheres.

Offset 0, canonical program `A059173.P6167581344001436890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059173 (n : ℕ) : ℤ :=
  A059173.P6167581344001436890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059174.P3103714182843874225

`A059173(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A059174.P3103714182843874225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059173 (n - 1) + a (n - 1)

end

end A059174.P3103714182843874225

noncomputable section

/-- A059174: Maximal number of regions into which 5-space can be divided by n hyperspheres.

Offset 0, canonical program `A059174.P3103714182843874225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059174 (n : ℕ) : ℤ :=
  A059174.P3103714182843874225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059376.P12656735072516275082

`∑{d}[n+1, A001158(#)*A007427((n+1)/#)]`
-/

namespace A059376.P12656735072516275082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P12656735072516275082

noncomputable section

/-- A059376: Jordan function J_3(n).

Offset 1, canonical program `A059376.P12656735072516275082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059376 (n : ℕ) : ℤ :=
  A059376.P12656735072516275082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059377.P4346818254889849577

`∑{d}[n+1, A001159(#)*A007427((n+1)/#)]`
-/

namespace A059377.P4346818254889849577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P4346818254889849577

noncomputable section

/-- A059377: Jordan function J_4(n).

Offset 1, canonical program `A059377.P4346818254889849577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059377 (n : ℕ) : ℤ :=
  A059377.P4346818254889849577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059512.P308334945108769757

`A001906(n-2)+1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A059512.P308334945108769757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001906 (n - 2) + (1 - (1 - a (n - 1) - a (n - 2)))

end

end A059512.P308334945108769757

noncomputable section

/-- A059512: For n>=2, the number of (s(0), s(1), ..., s(n-1)) such that 0 < s(i) < 5 and |s(i) - s(i-1)| <= 1 for i = 1,2,....,n-1, s(0) = 2, s(n-1) = 2.

Offset 0, canonical program `A059512.P308334945108769757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A059512 (n : ℕ) : ℤ :=
  A059512.P308334945108769757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A059512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060157.P3152578421519147225

`∑[A003063(n+3)-1]`
-/

namespace A060157.P3152578421519147225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060157.P3152578421519147225

noncomputable section

/-- A060157: Number of permutations of [n] with 3 sequences.

Offset 3, canonical program `A060157.P3152578421519147225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A060157 (n : ℕ) : ℤ :=
  A060157.P3152578421519147225.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A060157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060546.P1654444225821562750

`A016116(n+1)`
-/

namespace A060546.P1654444225821562750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

end

end A060546.P1654444225821562750

noncomputable section

/-- A060546: a(n) = 2^ceiling(n/2).

Offset 0, canonical program `A060546.P1654444225821562750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060546 (n : ℕ) : ℤ :=
  A060546.P1654444225821562750.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060939.P1361743581261706552

`∑[A008864(n+1)]`
-/

namespace A060939.P1361743581261706552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060939.P1361743581261706552

noncomputable section

/-- A060939: a(n) = (Sum of the first n primes) + n.

Offset 1, canonical program `A060939.P1361743581261706552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060939 (n : ℕ) : ℤ :=
  A060939.P1361743581261706552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061020.P438561261790791314

`∑{d}[n+1, A061019(#)]`
-/

namespace A061020.P438561261790791314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d

end

end A061020.P438561261790791314

noncomputable section

/-- A061020: Negate primes in factorizations of divisors of n, then sum.

Offset 1, canonical program `A061020.P438561261790791314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061020 (n : ℕ) : ℤ :=
  A061020.P438561261790791314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061536.P1966979558929038729

`1+A046992(n+1)`
-/

namespace A061536.P1966979558929038729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A046992 (n + 1)

end

end A061536.P1966979558929038729

noncomputable section

/-- A061536: a(1) = 1 and a(n) = a(n-1) + (the number of primes <= n) for n > 1.

Offset 1, canonical program `A061536.P1966979558929038729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061536 (n : ℕ) : ℤ :=
  A061536.P1966979558929038729.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061601.P16047037002631305352

`10^A055642(n)-(n+1)`
-/

namespace A061601.P16047037002631305352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ) - (n + 1 : ℚ)

end

end A061601.P16047037002631305352

noncomputable section

/-- A061601: 9's complement of n: a(n) = 10^d - 1 - n where d is the number of digits in n. If a is a digit in n replace it with 9 - a.

Offset 0, canonical program `A061601.P16047037002631305352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061601 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061601.P16047037002631305352.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061885.P4567764245783084005

`n+A057944(n)`
-/

namespace A061885.P4567764245783084005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A057944 n

end

end A061885.P4567764245783084005

noncomputable section

/-- A061885: n + largest triangular number less than or equal to n.

Offset 0, canonical program `A061885.P4567764245783084005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061885 (n : ℕ) : ℤ :=
  A061885.P4567764245783084005.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062108.P1540959847004753283

`A061054(n)-n`
-/

namespace A062108.P1540959847004753283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061054 n - (n : ℤ)

end

end A062108.P1540959847004753283

noncomputable section

/-- A062108: a(n) = floor(n^(3/4)).

Offset 0, canonical program `A062108.P1540959847004753283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062108 (n : ℕ) : ℤ :=
  A062108.P1540959847004753283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062157.P11174747228682245844

`A000007(n)-A033999(n)`
-/

namespace A062157.P11174747228682245844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A033999 n

end

end A062157.P11174747228682245844

noncomputable section

/-- A062157: a(n) = 0^n - (-1)^n.

Offset 0, canonical program `A062157.P11174747228682245844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062157 (n : ℕ) : ℤ :=
  A062157.P11174747228682245844.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062157.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062748.P14956383250975312494

`A000292(n+2)-1`
-/

namespace A062748.P14956383250975312494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) - 1

end

end A062748.P14956383250975312494

noncomputable section

/-- A062748: Fourth column (r=3) of FS(3) staircase array A062745.

Offset 0, canonical program `A062748.P14956383250975312494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062748 (n : ℕ) : ℤ :=
  A062748.P14956383250975312494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062756.P1690328074711592095

`val(A006047(n), 2)`
-/

namespace A062756.P1690328074711592095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

end

end A062756.P1690328074711592095

noncomputable section

/-- A062756: Number of 1's in ternary (base-3) expansion of n.

Offset 0, canonical program `A062756.P1690328074711592095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062756 (n : ℕ) : ℤ :=
  (A062756.P1690328074711592095.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062790.P14201526699586204350

`∑{d}[n+1, A001065(#)*A007427((n+1)/#)]`
-/

namespace A062790.P14201526699586204350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P14201526699586204350

noncomputable section

/-- A062790: Moebius transform of the cototient function A051953.

Offset 1, canonical program `A062790.P14201526699586204350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062790 (n : ℕ) : ℤ :=
  A062790.P14201526699586204350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063258.P2123925811815869963

`A000332(n+5)-1`
-/

namespace A063258.P2123925811815869963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 5) - 1

end

end A063258.P2123925811815869963

noncomputable section

/-- A063258: a(n) = binomial(n+5,4) - 1.

Offset 0, canonical program `A063258.P2123925811815869963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063258 (n : ℕ) : ℤ :=
  A063258.P2123925811815869963.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063263.P3578646153030098628

`∑[∑[∑[A062988(n)-2]]]`
-/

namespace A063263.P3578646153030098628
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063263.P3578646153030098628

noncomputable section

/-- A063263: Ninth column (k=8) of sextinomial array A063260.

Offset 0, canonical program `A063263.P3578646153030098628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063263 (n : ℕ) : ℤ :=
  A063263.P3578646153030098628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063418.P3031915557263829765

`∑[A063417(n)-∑[n+1]]`
-/

namespace A063418.P3031915557263829765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063418.P3031915557263829765

noncomputable section

/-- A063418: Tenth column (k=9) of septinomial array A063265.

Offset 0, canonical program `A063418.P3031915557263829765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063418 (n : ℕ) : ℤ :=
  A063418.P3031915557263829765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063445.P5027649940616317829

`∑{d}[n+1, A007427(#)*A057660((n+1)/#)]`
-/

namespace A063445.P5027649940616317829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063445.P5027649940616317829

noncomputable section

/-- A063445: Moebius transform of f(x) = EulerPhi(x^2) function (A002618).

Offset 1, canonical program `A063445.P5027649940616317829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063445 (n : ℕ) : ℤ :=
  A063445.P5027649940616317829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063524.P5631347671191003537

`A000007(abs(n-1))`
-/

namespace A063524.P5631347671191003537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |(n : ℤ) - 1|.toNat

end

end A063524.P5631347671191003537

noncomputable section

/-- A063524: Characteristic function of 1.

Offset 0, canonical program `A063524.P5631347671191003537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063524 (n : ℕ) : ℤ :=
  A063524.P5631347671191003537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063549.P3440238765990311944

`C(or(1, n), n)*A000108(∑[n%2])`
-/

namespace A063549.P3440238765990311944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n : ℤ) * A000108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063549.P3440238765990311944

noncomputable section

/-- A063549: Smallest number of crossing-free matchings on n points in the plane.

Offset 1, canonical program `A063549.P3440238765990311944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A063549 (n : ℕ) : ℤ :=
  A063549.P3440238765990311944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A063549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063946.P14831572246508618093

`xor(n, A053644(floor(n/2)))`
-/

namespace A063946.P14831572246508618093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A053644 ⌊(n : ℚ) / 2⌋.toNat)

end

end A063946.P14831572246508618093

noncomputable section

/-- A063946: Write n in binary and complement second bit (from the left), with a(0)=0 and a(1)=1.

Offset 0, canonical program `A063946.P14831572246508618093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063946 (n : ℕ) : ℤ :=
  A063946.P14831572246508618093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063985.P14214563899391599211

`∑[A016035(n+1)]+n`
-/

namespace A063985.P14214563899391599211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A063985.P14214563899391599211

noncomputable section

/-- A063985: Partial sums of cototient sequence A051953.

Offset 1, canonical program `A063985.P14214563899391599211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063985 (n : ℕ) : ℤ :=
  A063985.P14214563899391599211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064057.P17916192335594862832

`∑[∑[∑[A063258(n)-2]]]`
-/

namespace A064057.P17916192335594862832
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064057.P17916192335594862832

noncomputable section

/-- A064057: Eighth column of quintinomial coefficients.

Offset 0, canonical program `A064057.P17916192335594862832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064057 (n : ℕ) : ℤ :=
  A064057.P17916192335594862832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065043.P15027714353296076488

`A007421(n+1)-1`
-/

namespace A065043.P15027714353296076488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1) - 1

end

end A065043.P15027714353296076488

noncomputable section

/-- A065043: Characteristic function of the numbers with an even number of prime factors (counted with multiplicity): a(n) = 1 if n = A028260(k) for some k then 1 else 0.

Offset 1, canonical program `A065043.P15027714353296076488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065043 (n : ℕ) : ℤ :=
  A065043.P15027714353296076488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065090.P2734464943258358199

`A018252(n%a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A065090.P2734464943258358199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A018252 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A065090.P2734464943258358199

noncomputable section

/-- A065090: Natural numbers which are not odd primes: composites plus 1 and 2.

Offset 1, canonical program `A065090.P2734464943258358199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065090 (n : ℕ) : ℤ :=
  A065090.P2734464943258358199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065310.P13031903484145223612

`Δ[A018252(n+1)]`
-/

namespace A065310.P13031903484145223612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A065310.P13031903484145223612

noncomputable section

/-- A065310: Number of occurrences of n-th prime in A065308, where A065308(j) = prime(j - pi(j)).

Offset 1, canonical program `A065310.P13031903484145223612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065310 (n : ℕ) : ℤ :=
  A065310.P13031903484145223612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065482.P1517657017870815367

`floor(A053639(n+1)/2)`
-/

namespace A065482.P1517657017870815367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A053639 (n + 1) : ℚ) / 2⌋

end

end A065482.P1517657017870815367

noncomputable section

/-- A065482: a(n) = round( 2^n/n ).

Offset 1, canonical program `A065482.P1517657017870815367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A065482 (n : ℕ) : ℤ :=
  A065482.P1517657017870815367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A065482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065730.P12344914159723627506

`A048760(A000040(n+1))`
-/

namespace A065730.P12344914159723627506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A000040 (n + 1)).toNat

end

end A065730.P12344914159723627506

noncomputable section

/-- A065730: Largest square <= n-th prime.

Offset 1, canonical program `A065730.P12344914159723627506`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065730 (n : ℕ) : ℤ :=
  A065730.P12344914159723627506.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065733.P3623888993656221851

`A000093(n)²`
-/

namespace A065733.P3623888993656221851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n ^ 2

end

end A065733.P3623888993656221851

noncomputable section

/-- A065733: Largest square <= n^3.

Offset 0, canonical program `A065733.P3623888993656221851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065733 (n : ℕ) : ℤ :=
  A065733.P3623888993656221851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065764.P714845877274425629

`∑{d}[n+1, A000290(#)*A048250((n+1)/#)]`
-/

namespace A065764.P714845877274425629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A065764.P714845877274425629

noncomputable section

/-- A065764: Sum of divisors of square numbers.

Offset 1, canonical program `A065764.P714845877274425629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065764 (n : ℕ) : ℤ :=
  A065764.P714845877274425629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065855.P16805213270251966039

`A062298(n+1)-1`
-/

namespace A065855.P16805213270251966039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - 1

end

end A065855.P16805213270251966039

noncomputable section

/-- A065855: Number of composites <= n.

Offset 1, canonical program `A065855.P16805213270251966039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065855 (n : ℕ) : ℤ :=
  A065855.P16805213270251966039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062298, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065942.P390798761674384840

`A051033(A032766(n))`
-/

namespace A065942.P390798761674384840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051033 (A032766 n).toNat

end

end A065942.P390798761674384840

noncomputable section

/-- A065942: Central column of triangle A065941.

Offset 0, canonical program `A065942.P390798761674384840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A065942 (n : ℕ) : ℤ :=
  A065942.P390798761674384840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A065942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066829.P3721516859256189271

`1-A065043(n+1)`
-/

namespace A066829.P3721516859256189271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065043 (n + 1)

end

end A066829.P3721516859256189271

noncomputable section

/-- A066829: Parity of Omega(n): a(n) = 1 if n is the product of an odd number of primes; 0 if product of even number of primes.

Offset 1, canonical program `A066829.P3721516859256189271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066829 (n : ℕ) : ℤ :=
  A066829.P3721516859256189271.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067076.P14247190955968615804

`A006254(n+1)-2`
-/

namespace A067076.P14247190955968615804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 2

end

end A067076.P14247190955968615804

noncomputable section

/-- A067076: Numbers k such that 2*k + 3 is a prime.

Offset 1, canonical program `A067076.P14247190955968615804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067076 (n : ℕ) : ℤ :=
  A067076.P14247190955968615804.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006254, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067324.P1061078649515513046

`∑[A002057(n)+A000108(n)]`
-/

namespace A067324.P1061078649515513046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A067324.P1061078649515513046

noncomputable section

/-- A067324: Third column of triangle A067323.

Offset 0, canonical program `A067324.P1061078649515513046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067324 (n : ℕ) : ℤ :=
  A067324.P1061078649515513046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067856.P11218736261645060229

`∑{d}[n+1, A007427(#)*A038712((n+1)/#)]`
-/

namespace A067856.P11218736261645060229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P11218736261645060229

noncomputable section

/-- A067856: Sum_{n >= 1} a(n)/n^s = 1/(Sum_{n >= 1} (-1)^(n + 1)/n^s).

Offset 1, canonical program `A067856.P11218736261645060229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067856 (n : ℕ) : ℤ :=
  A067856.P11218736261645060229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068073.P13340883488754094545

`2-A056594(n)`
-/

namespace A068073.P13340883488754094545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A056594 n

end

end A068073.P13340883488754094545

noncomputable section

/-- A068073: Period 4 sequence [ 1, 2, 3, 2, ...].

Offset 0, canonical program `A068073.P13340883488754094545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068073 (n : ℕ) : ℤ :=
  A068073.P13340883488754094545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068551.P17972203638214812081

`A045621(2*n)`
-/

namespace A068551.P17972203638214812081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n)

end

end A068551.P17972203638214812081

noncomputable section

/-- A068551: a(n) = 4^n - binomial(2*n,n).

Offset 0, canonical program `A068551.P17972203638214812081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068551 (n : ℕ) : ℤ :=
  A068551.P17972203638214812081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068822.P12943702772074128916

`gcd(n+1, A061601(n))`
-/

namespace A068822.P12943702772074128916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A061601 n)

end

end A068822.P12943702772074128916

noncomputable section

/-- A068822: a(n) = gcd(n,c(n)), where c(n) is the 10's complement of n.

Offset 1, canonical program `A068822.P12943702772074128916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068822 (n : ℕ) : ℤ :=
  (A068822.P12943702772074128916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069091.P1979038829960387113

`∑{d}[n+1, A007427(#)*A013954((n+1)/#)]`
-/

namespace A069091.P1979038829960387113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P1979038829960387113

noncomputable section

/-- A069091: Jordan function J_6(n).

Offset 1, canonical program `A069091.P1979038829960387113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069091 (n : ℕ) : ℤ :=
  A069091.P1979038829960387113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070031.P4889884996952388328

`2*A000245(n+1)-A000108(n+1)`
-/

namespace A070031.P4889884996952388328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000245 (n + 1) - A000108 (n + 1)

end

end A070031.P4889884996952388328

noncomputable section

/-- A070031: Expansion of (1+x*C)*C^3, where C = (1-sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A070031.P4889884996952388328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070031 (n : ℕ) : ℤ :=
  A070031.P4889884996952388328.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070031.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070750.P13196581040963341553

`2-A039702(n+1)`
-/

namespace A070750.P13196581040963341553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A039702 (n + 1)

end

end A070750.P13196581040963341553

noncomputable section

/-- A070750: 0 if n-th prime is even, 1 if n-th prime is == 1 (mod 4), and -1 if n-th prime is == 3 (mod 4).

Offset 1, canonical program `A070750.P13196581040963341553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070750 (n : ℕ) : ℤ :=
  A070750.P13196581040963341553.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039702, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A070857.P5345200539959730910

`2*A002057(n)-A000245(n+1)`
-/

namespace A070857.P5345200539959730910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002057 n - A000245 (n + 1)

end

end A070857.P5345200539959730910

noncomputable section

/-- A070857: Expansion of (1+x*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A070857.P5345200539959730910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070857 (n : ℕ) : ℤ :=
  A070857.P5345200539959730910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071542.P757842115832045753

`1+a(A011371(n))` with `a(0)=0`
-/

namespace A071542.P757842115832045753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A011371 n).toNat

end

end A071542.P757842115832045753

noncomputable section

/-- A071542: Number of steps to reach 0 starting with n and using the iterated process : x -> x - (number of 1's in binary representation of x).

Offset 0, canonical program `A071542.P757842115832045753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071542 (n : ℕ) : ℤ :=
  (A071542.P757842115832045753.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071721.P8058538894146431473

`Δ[gcd(6, 2^n)*A000108(n)]`
-/

namespace A071721.P8058538894146431473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (2 ^ n) : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071721.P8058538894146431473

noncomputable section

/-- A071721: Expansion of (1+x^2*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071721.P8058538894146431473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071721 (n : ℕ) : ℤ :=
  A071721.P8058538894146431473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071725.P14742020930531540904

`6*(n²+1)/((n+2)*(n+3))*A000108(n)`
-/

namespace A071725.P14742020930531540904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n ^ 2 + 1 : ℚ) / ((n + 2) * (n + 3) : ℚ) * (A000108 n : ℚ))

end

end A071725.P14742020930531540904

noncomputable section

/-- A071725: Expansion of (1+x^2*C^4)*C, where C = (1 - sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071725.P14742020930531540904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071725.P14742020930531540904.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071726.P12729125227773311374

`A000108(n)+A000108(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A071726.P12729125227773311374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000108 n + Int.tmod (A000108 (n - 2)) (a (n - 1))

end

end A071726.P12729125227773311374

noncomputable section

/-- A071726: Expansion of (1+x^3*C)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071726.P12729125227773311374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A071726 (n : ℕ) : ℤ :=
  A071726.P12729125227773311374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A071726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071737.P12356561809484092700

`A002057(n)+A000588(n)`
-/

namespace A071737.P12356561809484092700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 n

end

end A071737.P12356561809484092700

noncomputable section

/-- A071737: Expansion of (1+x^3*C^3)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071737.P12356561809484092700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071737 (n : ℕ) : ℤ :=
  A071737.P12356561809484092700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A071737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071738.P7757935969038714407

`abs(Δ[A000245(abs(1-n))])`
-/

namespace A071738.P7757935969038714407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A071738.P7757935969038714407

noncomputable section

/-- A071738: Expansion of (1+x^3*C^4)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071738.P7757935969038714407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071738 (n : ℕ) : ℤ :=
  A071738.P7757935969038714407.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072504.P15978785907571623922

`gcd(A003418(A000194(n)), n+1)`
-/

namespace A072504.P15978785907571623922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A000194 n).toNat) (n + 1 : ℤ)

end

end A072504.P15978785907571623922

noncomputable section

/-- A072504: a(n) = LCM of divisors of n which are <= sqrt(n).

Offset 1, canonical program `A072504.P15978785907571623922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072504 (n : ℕ) : ℤ :=
  (A072504.P15978785907571623922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072643.P10513511673986297728

`∑[char[A014137(n)]]`
-/

namespace A072643.P10513511673986297728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072643.P10513511673986297728

noncomputable section

/-- A072643: Half of the binary width of the terms of A014486, the number of digits in A063171(n)/2.

Offset 0, canonical program `A072643.P10513511673986297728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072643 (n : ℕ) : ℤ :=
  (A072643.P10513511673986297728.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073189.P2936447101762913504

`n-A001840(A073188(n))`
-/

namespace A073189.P2936447101762913504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001840 (A073188 n).toNat

end

end A073189.P2936447101762913504

noncomputable section

/-- A073189: Integers 0..k three times, then 0..k+1 three times, etc.

Offset 0, canonical program `A073189.P2936447101762913504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073189 (n : ℕ) : ℤ :=
  A073189.P2936447101762913504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074147.P16699189592433911745

`ceil(((2*n+1)/A002024(n+1))²/2)`
-/

namespace A074147.P16699189592433911745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℚ) / (A002024 (n + 1) : ℚ)) ^ 2 / 2⌉

end

end A074147.P16699189592433911745

noncomputable section

/-- A074147: (2n-1) odd numbers followed by 2n even numbers.

Offset 1, canonical program `A074147.P16699189592433911745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074147 (n : ℕ) : ℤ :=
  A074147.P16699189592433911745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074400.P16312391460013478761

`2*A000203(n+1)`
-/

namespace A074400.P16312391460013478761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1)

end

end A074400.P16312391460013478761

noncomputable section

/-- A074400: Sum of the even divisors of 2n.

Offset 1, canonical program `A074400.P16312391460013478761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074400 (n : ℕ) : ℤ :=
  A074400.P16312391460013478761.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075059.P13005941669399506084

`1+A003418(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075059.P13005941669399506084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A003418 n

end

end A075059.P13005941669399506084

noncomputable section

/-- A075059: a(n) = 1 + lcm(1, 2, ..., n) = 1 + A003418(n).

Offset 0, canonical program `A075059.P13005941669399506084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075059 (n : ℕ) : ℤ :=
  A075059.P13005941669399506084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076411.P17634982879801196163

`n-∑[char[A007916(n+1)]]`
-/

namespace A076411.P17634982879801196163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076411.P17634982879801196163

noncomputable section

/-- A076411: Number of perfect powers < n.

Offset 1, canonical program `A076411.P17634982879801196163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076411 (n : ℕ) : ℤ :=
  A076411.P17634982879801196163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076792.P18377218725901081931

`∑{d}[n+1, #*A061019(#)]`
-/

namespace A076792.P18377218725901081931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A061019 d

end

end A076792.P18377218725901081931

noncomputable section

/-- A076792: Sum_{d divides n} d^2*(-1)^bigomega(d), where bigomega(n) = A001222(n).

Offset 1, canonical program `A076792.P18377218725901081931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076792 (n : ℕ) : ℤ :=
  A076792.P18377218725901081931.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077107.P2088776491079219285

`A048763(n²)`
-/

namespace A077107.P2088776491079219285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (n ^ 2)

end

end A077107.P2088776491079219285

noncomputable section

/-- A077107: Least integer cube >= n^2.

Offset 0, canonical program `A077107.P2088776491079219285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077107 (n : ℕ) : ℤ :=
  A077107.P2088776491079219285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077855.P16978286041471467054

`A005251(n+4)-1`
-/

namespace A077855.P16978286041471467054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 4) - 1

end

end A077855.P16978286041471467054

noncomputable section

/-- A077855: Expansion of 1/((1-2*x+x^2-x^3)*(1-x)).

Offset 0, canonical program `A077855.P16978286041471467054`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077855 (n : ℕ) : ℤ :=
  A077855.P16978286041471467054.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077925.P7355982550096922997

`(-1)^n*A001045(n+1)`
-/

namespace A077925.P7355982550096922997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001045 (n + 1)

end

end A077925.P7355982550096922997

noncomputable section

/-- A077925: Expansion of 1/((1-x)*(1+2*x)).

Offset 0, canonical program `A077925.P7355982550096922997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077925 (n : ℕ) : ℤ :=
  A077925.P7355982550096922997.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078708.P2046422541307744580

`∑{d}[n+1, #-A000292(#)%#]`
-/

namespace A078708.P2046422541307744580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - Int.tmod (A000292 d) (d : ℤ))

end

end A078708.P2046422541307744580

noncomputable section

/-- A078708: Sum of divisors d of n such that n/d is not congruent to 0 mod 3.

Offset 1, canonical program `A078708.P2046422541307744580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078708 (n : ℕ) : ℤ :=
  A078708.P2046422541307744580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080066.P16360937105414831017

`A000966(n+2)-A000966(n+1)`
-/

namespace A080066.P16360937105414831017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 2) - A000966 (n + 1)

end

end A080066.P16360937105414831017

noncomputable section

/-- A080066: First differences of A000966 (number of zeros that n! will never end in).

Offset 1, canonical program `A080066.P16360937105414831017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080066 (n : ℕ) : ℤ :=
  A080066.P16360937105414831017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080304.P9910366703239988167

`n%(A055615(n+1)+1)+1`
-/

namespace A080304.P9910366703239988167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A055615 (n + 1) + 1) + 1

end

end A080304.P9910366703239988167

noncomputable section

/-- A080304: Numerator of n^mu(n), where mu is the Moebius function (A008683).

Offset 1, canonical program `A080304.P9910366703239988167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080304 (n : ℕ) : ℤ :=
  A080304.P9910366703239988167.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080846.P6350490556575780844

`(A062756(n)-A062756(n+1)+1)/2`
-/

namespace A080846.P6350490556575780844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062756 n - A062756 (n + 1) + 1 : ℚ) / 2

end

end A080846.P6350490556575780844

noncomputable section

/-- A080846: Fixed point of the morphism 0->010, 1->011, starting from a(1) = 0.

Offset 1, canonical program `A080846.P6350490556575780844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080846 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080846.P6350490556575780844.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080846.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080883.P9881556766966149884

`abs(A048761(n+1)-n)`
-/

namespace A080883.P9881556766966149884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048761 (n + 1) - (n : ℤ)|

end

end A080883.P9881556766966149884

noncomputable section

/-- A080883: Distance of n to next square.

Offset 0, canonical program `A080883.P9881556766966149884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080883 (n : ℕ) : ℤ :=
  A080883.P9881556766966149884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080956.P12689175688767201437

`n+1-A000217(n)`
-/

namespace A080956.P12689175688767201437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 n

end

end A080956.P12689175688767201437

noncomputable section

/-- A080956: a(n) = (n+1)*(2-n)/2.

Offset 0, canonical program `A080956.P12689175688767201437`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080956 (n : ℕ) : ℤ :=
  A080956.P12689175688767201437.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081293.P4681464809512952339

`A000108(n)+A014137(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081293.P4681464809512952339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A014137 n

end

end A081293.P4681464809512952339

noncomputable section

/-- A081293: a(n) = A000108(n) + A014137(n).

Offset 0, canonical program `A081293.P4681464809512952339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081293 (n : ℕ) : ℤ :=
  A081293.P4681464809512952339.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081668.P14726056176343545514

`A000984(gcd(ceil(n²/2), ∑[n]))`
-/

namespace A081668.P14726056176343545514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (Int.gcd ⌈(n ^ 2 : ℚ) / 2⌉ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A081668.P14726056176343545514

noncomputable section

/-- A081668: Expansion of 2*sinh(x) + BesselI_0(2*x).

Offset 0, canonical program `A081668.P14726056176343545514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A081668 (n : ℕ) : ℤ :=
  A081668.P14726056176343545514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A081668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081759.P335554766721588986

`A024894(n+1)-1`
-/

namespace A081759.P335554766721588986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - 1

end

end A081759.P335554766721588986

noncomputable section

/-- A081759: Numbers k such that 5*k+6 is prime.

Offset 1, canonical program `A081759.P335554766721588986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081759 (n : ℕ) : ℤ :=
  A081759.P335554766721588986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082023.P820682903743471019

`ceil(A016035(abs(1-n)+1)/2)`
-/

namespace A082023.P820682903743471019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016035 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌉

end

end A082023.P820682903743471019

noncomputable section

/-- A082023: Number of partitions of n into 2 parts which are not relatively prime.

Offset 0, canonical program `A082023.P820682903743471019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082023 (n : ℕ) : ℤ :=
  A082023.P820682903743471019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082375.P10619414030953908215

`A055086(n)-2*A055087(n)`
-/

namespace A082375.P10619414030953908215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n - 2 * A055087 n

end

end A082375.P10619414030953908215

noncomputable section

/-- A082375: Irregular triangle read by rows: row n begins with n and decreases by 2 until 0 or 1 is reached, for n >= 0.

Offset 0, canonical program `A082375.P10619414030953908215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082375 (n : ℕ) : ℤ :=
  A082375.P10619414030953908215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084920.P18008529996685256336

`A001248(n+1)-1`
-/

namespace A084920.P18008529996685256336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 1

end

end A084920.P18008529996685256336

noncomputable section

/-- A084920: a(n) = (prime(n)-1)*(prime(n)+1).

Offset 1, canonical program `A084920.P18008529996685256336`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084920 (n : ℕ) : ℤ :=
  A084920.P18008529996685256336.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084920.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085386.P10561297622637148624

`(A000085(n)+A001464(n))/2`
-/

namespace A085386.P10561297622637148624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n + A001464 n : ℚ) / 2

end

end A085386.P10561297622637148624

noncomputable section

/-- A085386: E.g.f. cosh(x+x^2/2).

Offset 0, canonical program `A085386.P10561297622637148624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085386 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085386.P10561297622637148624.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085787.P3517297855662886866

`A002378(n)-A001318(n)`
-/

namespace A085787.P3517297855662886866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A001318 n

end

end A085787.P3517297855662886866

noncomputable section

/-- A085787: Generalized heptagonal numbers: m*(5*m - 3)/2, m = 0, +-1, +-2 +-3, ...

Offset 0, canonical program `A085787.P3517297855662886866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085787 (n : ℕ) : ℤ :=
  A085787.P3517297855662886866.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085787.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086602.P17561333100341916164

`A000217(A000217(n))-n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086602.P17561333100341916164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat - (n ^ 2 : ℤ)

end

end A086602.P17561333100341916164

noncomputable section

/-- A086602: a(n) = A000217(A000217(n))-n^2.

Offset 0, canonical program `A086602.P17561333100341916164`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n))-n²` (program `A086602.P17561333100341916164`, by `A086602.P17561333100341916164.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A086602 (n : ℕ) : ℤ :=
  A086602.P17561333100341916164.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n))-n²` (program `A086602.P17561333100341916164`, by `A086602.P17561333100341916164.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A086602.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A087691.P847001691907876156

`A002145(n+1)²`
-/

namespace A087691.P847001691907876156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) ^ 2

end

end A087691.P847001691907876156

noncomputable section

/-- A087691: Squares of primes of the form 4*k+3.

Offset 1, canonical program `A087691.P847001691907876156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087691 (n : ℕ) : ℤ :=
  A087691.P847001691907876156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087691.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087811.P8717670463538044569

`A024206(n+1)+1`
-/

namespace A087811.P8717670463538044569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) + 1

end

end A087811.P8717670463538044569

noncomputable section

/-- A087811: Numbers k such that ceiling(sqrt(k)) divides k.

Offset 1, canonical program `A087811.P8717670463538044569`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087811 (n : ℕ) : ℤ :=
  A087811.P8717670463538044569.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A088133.P7364122066664671483

`A000030(n)+A010879(n)`
-/

namespace A088133.P7364122066664671483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n + A010879 n

end

end A088133.P7364122066664671483

noncomputable section

/-- A088133: Sum of first and last digits of n. Different from A115299.

Offset 0, canonical program `A088133.P7364122066664671483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088133 (n : ℕ) : ℤ :=
  A088133.P7364122066664671483.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088580.P3089093194242277422

`1+A000203(n+1)`
-/

namespace A088580.P3089093194242277422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1)

end

end A088580.P3089093194242277422

noncomputable section

/-- A088580: a(n) = 1 + sigma(n).

Offset 1, canonical program `A088580.P3089093194242277422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088580 (n : ℕ) : ℤ :=
  A088580.P3089093194242277422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A088580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089071.P5040348556766612571

`A022856(n+3)`
-/

namespace A089071.P5040348556766612571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (n + 3)

end

end A089071.P5040348556766612571

noncomputable section

/-- A089071: Number of liberties a big eye of size n gives in the game of Go.

Offset 1, canonical program `A089071.P5040348556766612571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089071 (n : ℕ) : ℤ :=
  A089071.P5040348556766612571.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089071.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089237.P17268930472736484206

`∪[A000040(n+1), n²]`
-/

namespace A089237.P17268930472736484206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A089237.P17268930472736484206

noncomputable section

/-- A089237: List of primes and squares.

Offset 1, canonical program `A089237.P17268930472736484206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089237 (n : ℕ) : ℤ :=
  (A089237.P17268930472736484206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089643.P7852096906189222102

`A054861(3*n)-A054861(2*n)-A054861(n)`
-/

namespace A089643.P7852096906189222102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (3 * n) - A054861 (2 * n) - A054861 n

end

end A089643.P7852096906189222102

noncomputable section

/-- A089643: 3^a(n) divides C(3n,n); 3-adic valuation of A005809.

Offset 0, canonical program `A089643.P7852096906189222102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089643 (n : ℕ) : ℤ :=
  A089643.P7852096906189222102.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090178.P13820832381306663161

`A000040(n%a(n-1))+n+1` with `a(0)=2`
-/

namespace A090178.P13820832381306663161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat + (n + 1 : ℤ)

end

end A090178.P13820832381306663161

noncomputable section

/-- A090178: a(1) = 2; for n > 1, a(n) = n + prime(n-1).

Offset 1, canonical program `A090178.P13820832381306663161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090178 (n : ℕ) : ℤ :=
  A090178.P13820832381306663161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091369.P3969440163011087150

`(n+1)²-A063985(n+1)`
-/

namespace A091369.P3969440163011087150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A063985 (n + 1)

end

end A091369.P3969440163011087150

noncomputable section

/-- A091369: a(n) = Sum_{i=1..n} phi(i)*ceiling(n/i).

Offset 1, canonical program `A091369.P3969440163011087150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091369 (n : ℕ) : ℤ :=
  A091369.P3969440163011087150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092509.P8072479887117834933

`A014683(n+1)-A048671(n+1)`
-/

namespace A092509.P8072479887117834933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) - A048671 (n + 1)

end

end A092509.P8072479887117834933

noncomputable section

/-- A092509: Möbius transform of sequence A008475.

Offset 1, canonical program `A092509.P8072479887117834933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092509 (n : ℕ) : ℤ :=
  A092509.P8072479887117834933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094114.P17319484531371158423

`A065361(A004526(n+1)+n)-A065361(n)`
-/

namespace A094114.P17319484531371158423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A004526 (n + 1) + (n : ℤ)).toNat - A065361 n

end

end A094114.P17319484531371158423

noncomputable section

/-- A094114: a(n) = -Sum_{i=1..n-1} (-1)^i*2^valuation(i,3).

Offset 1, canonical program `A094114.P17319484531371158423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A094114 (n : ℕ) : ℤ :=
  A094114.P17319484531371158423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A094114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094761.P14380524267373049670

`n+A053186(n)`
-/

namespace A094761.P14380524267373049670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A053186 n

end

end A094761.P14380524267373049670

noncomputable section

/-- A094761: a(n) = n + (square excess of n).

Offset 0, canonical program `A094761.P14380524267373049670`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094761 (n : ℕ) : ℤ :=
  A094761.P14380524267373049670.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094761.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094854.P13897041044567914249

`A061551(2*n)`
-/

namespace A094854.P13897041044567914249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061551 (2 * n)

end

end A094854.P13897041044567914249

noncomputable section

/-- A094854: Number of (s(0), s(1), ..., s(2n)) such that 0 < s(i) < 9 and |s(i) - s(i-1)| = 1 for i = 1,2,...,2n, s(0) = 4, s(2n) = 4.

Offset 0, canonical program `A094854.P13897041044567914249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094854 (n : ℕ) : ℤ :=
  A094854.P13897041044567914249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A095112.P14061564638786358280

`∑{d}[n+1, #*A069513((n+1)/#)]`
-/

namespace A095112.P14061564638786358280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A095112.P14061564638786358280

noncomputable section

/-- A095112: a(n) is the sum of n/k over all prime powers k > 1 which divide n.

Offset 1, canonical program `A095112.P14061564638786358280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095112 (n : ℕ) : ℤ :=
  A095112.P14061564638786358280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A095112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098658.P14881965061736061030

`3^n*A000984(n)`
-/

namespace A098658.P14881965061736061030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000984 n

end

end A098658.P14881965061736061030

noncomputable section

/-- A098658: a(n) = 3^n*(2*n)!/(n!)^2.

Offset 0, canonical program `A098658.P14881965061736061030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098658 (n : ℕ) : ℤ :=
  A098658.P14881965061736061030.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A098658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099111.P13506567770673264388

`∑[A004058(n)]`
-/

namespace A099111.P13506567770673264388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099111.P13506567770673264388

noncomputable section

/-- A099111: Expansion of 1 / ((1+x)*(1-2*x)*(1-3*x)*(1-4*x)*(1-5*x)).

Offset 0, canonical program `A099111.P13506567770673264388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A099111 (n : ℕ) : ℤ :=
  A099111.P13506567770673264388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A099111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099375.P13700148065993022910

`2*A004736(n+1)-1`
-/

namespace A099375.P13700148065993022910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (n + 1) - 1

end

end A099375.P13700148065993022910

noncomputable section

/-- A099375: Sequence matrix for odd numbers.

Offset 0, canonical program `A099375.P13700148065993022910`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099375 (n : ℕ) : ℤ :=
  A099375.P13700148065993022910.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A099376.P5902379968883628035

`A000108(n+2)-2*A000108(n+1)`
-/

namespace A099376.P5902379968883628035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) - 2 * A000108 (n + 1)

end

end A099376.P5902379968883628035

noncomputable section

/-- A099376: An inverse Chebyshev transform of x^3.

Offset 0, canonical program `A099376.P5902379968883628035`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099376 (n : ℕ) : ℤ :=
  A099376.P5902379968883628035.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A099376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100071.P8396180016226964810

`n*A001405(abs(1-n))`
-/

namespace A100071.P8396180016226964810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001405 |1 - (n : ℤ)|.toNat

end

end A100071.P8396180016226964810

noncomputable section

/-- A100071: a(n) = n * binomial(n-1, floor((n-1)/2)) = n * max_{i=0..n} binomial(n-1, i).

Offset 0, canonical program `A100071.P8396180016226964810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A100071 (n : ℕ) : ℤ :=
  A100071.P8396180016226964810.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A100071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100196.P5989948745544554590

`A077113(n)-1`
-/

namespace A100196.P5989948745544554590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077113 n - 1

end

end A100196.P5989948745544554590

noncomputable section

/-- A100196: Number of positive integer cubes <= n^2.

Offset 0, canonical program `A100196.P5989948745544554590`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100196 (n : ℕ) : ℤ :=
  A100196.P5989948745544554590.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100479.P528344171557188665

`A001043(2*n+1)`
-/

namespace A100479.P528344171557188665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (2 * n + 1)

end

end A100479.P528344171557188665

noncomputable section

/-- A100479: a(n) = prime(2n-1) + prime(2n).

Offset 1, canonical program `A100479.P528344171557188665`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100479 (n : ℕ) : ℤ :=
  A100479.P528344171557188665.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100789.P571457685267019163

`Δ[A000543(n)]`
-/

namespace A100789.P571457685267019163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A100789.P571457685267019163

noncomputable section

/-- A100789: First differences of A000543.

Offset 0, canonical program `A100789.P571457685267019163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100789 (n : ℕ) : ℤ :=
  A100789.P571457685267019163.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A100789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101035.P3462403393033249231

`∑{d}[n+1, #*A007427(#)]`
-/

namespace A101035.P3462403393033249231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007427 d

end

end A101035.P3462403393033249231

noncomputable section

/-- A101035: Dirichlet inverse of the gcd-sum function (A018804).

Offset 1, canonical program `A101035.P3462403393033249231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101035 (n : ℕ) : ℤ :=
  A101035.P3462403393033249231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101264.P18132826973570150985

`A057427(A085090(n+1))`
-/

namespace A101264.P18132826973570150985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A085090 (n + 1)).toNat

end

end A101264.P18132826973570150985

noncomputable section

/-- A101264: a(n) = 1 if 2*n + 1 is prime, otherwise a(n) = 0.

Offset 0, canonical program `A101264.P18132826973570150985`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101264 (n : ℕ) : ℤ :=
  A101264.P18132826973570150985.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085090, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101264.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101566.P11526131365689363908

`A018819(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A101566.P11526131365689363908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A101566.P11526131365689363908

noncomputable section

/-- A101566: Binary partition sequence matrix.

Offset 0, canonical program `A101566.P11526131365689363908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101566 (n : ℕ) : ℤ :=
  A101566.P11526131365689363908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101600.P17060745838590597259

`3^n*A000108(n+1)`
-/

namespace A101600.P17060745838590597259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000108 (n + 1)

end

end A101600.P17060745838590597259

noncomputable section

/-- A101600: Expansion of g.f. c(3x)^2, where c(x) is the g.f. of A000108.

Offset 0, canonical program `A101600.P17060745838590597259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101600 (n : ℕ) : ℤ :=
  A101600.P17060745838590597259.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103355.P17909756641454416049

`n+1-floor(sqrt(A000040(n+1)))`
-/

namespace A103355.P17909756641454416049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.sqrt (A000040 (n + 1))

end

end A103355.P17909756641454416049

noncomputable section

/-- A103355: a(n) = n - floor( sqrt(prime(n) ) ).

Offset 1, canonical program `A103355.P17909756641454416049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103355 (n : ℕ) : ℤ :=
  A103355.P17909756641454416049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103390.P2202769410101344544

`n*A005451(abs(1-n)+1)`
-/

namespace A103390.P2202769410101344544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005451 (|1 - (n : ℤ)| + 1).toNat

end

end A103390.P2202769410101344544

noncomputable section

/-- A103390: Natural numbers but with nonprimes squared.

Offset 1, canonical program `A103390.P2202769410101344544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103390 (n : ℕ) : ℤ :=
  A103390.P2202769410101344544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103416.P11972475855525546389

`A103355(n+1)-1`
-/

namespace A103416.P11972475855525546389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103355 (n + 1) - 1

end

end A103416.P11972475855525546389

noncomputable section

/-- A103416: a(n) = n - ceiling(sqrt(prime(n))).

Offset 0, canonical program `A103416.P11972475855525546389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103416 (n : ℕ) : ℤ :=
  A103416.P11972475855525546389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103452.P9591001737205339396

`Δ[A073424(n)]`
-/

namespace A103452.P9591001737205339396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A103452.P9591001737205339396

noncomputable section

/-- A103452: Inverse of number triangle A103451.

Offset 0, canonical program `A103452.P9591001737205339396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103452 (n : ℕ) : ℤ :=
  A103452.P9591001737205339396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A103452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104103.P17142170085833821437

`A000196(A000040(n+1))+1`
-/

namespace A104103.P17142170085833821437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000040 (n + 1)).toNat + 1

end

end A104103.P17142170085833821437

noncomputable section

/-- A104103: a(n) = ceiling(sqrt(prime(n))).

Offset 1, canonical program `A104103.P17142170085833821437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104103 (n : ℕ) : ℤ :=
  A104103.P17142170085833821437.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104103.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104629.P11080252807694944211

`A000957(n+3)`
-/

namespace A104629.P11080252807694944211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 3)

end

end A104629.P11080252807694944211

noncomputable section

/-- A104629: Expansion of (1-2*x-sqrt(1-4*x))/(x^2 * (1+2*x+sqrt(1-4*x))).

Offset 0, canonical program `A104629.P11080252807694944211`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104629 (n : ℕ) : ℤ :=
  A104629.P11080252807694944211.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104629.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105519.P16876643181777690168

`∑[C(A008963(n), 9)]`
-/

namespace A105519.P16876643181777690168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008963 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105519.P16876643181777690168

noncomputable section

/-- A105519: Number of times 9 is the leading digit of the first n+1 Fibonacci numbers in decimal representation.

Offset 0, canonical program `A105519.P16876643181777690168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105519 (n : ℕ) : ℤ :=
  (A105519.P16876643181777690168.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105720.P4544392983901701878

`A036439(2*n+3)-A036439(n+1)`
-/

namespace A105720.P4544392983901701878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * n + 3) - A036439 (n + 1)

end

end A105720.P4544392983901701878

noncomputable section

/-- A105720: Triangular matchstick numbers in the class of prime numbers: sum of n-th and next n primes.

Offset 1, canonical program `A105720.P4544392983901701878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105720 (n : ℕ) : ℤ :=
  A105720.P4544392983901701878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A105720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106271.P8734074727395476678

`1-A014138(n)`
-/

namespace A106271.P8734074727395476678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014138 n

end

end A106271.P8734074727395476678

noncomputable section

/-- A106271: Row sums of number triangle A106270.

Offset 0, canonical program `A106271.P8734074727395476678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106271 (n : ℕ) : ℤ :=
  A106271.P8734074727395476678.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A106271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A106594.P7438179704489849897

`A031358(n+1)/2`
-/

namespace A106594.P7438179704489849897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 (n + 1) : ℚ) / 2

end

end A106594.P7438179704489849897

noncomputable section

/-- A106594: a(n) = number of primitive solutions to 4n+1 = x^2 + y^2.

Offset 1, canonical program `A106594.P7438179704489849897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A106594 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106594.P7438179704489849897.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A106594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107231.P17294312273811050320

`∑[n+1]*A001405(n)`
-/

namespace A107231.P17294312273811050320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001405 n

end

end A107231.P17294312273811050320

noncomputable section

/-- A107231: a(n) = C(n+2,2)*C(n,floor(n/2)).

Offset 0, canonical program `A107231.P17294312273811050320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A107231 (n : ℕ) : ℤ :=
  A107231.P17294312273811050320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A107231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107421.P15477046414225489138

`∑[A051745(n+1)-(n+1)]*A000582(n+9)`
-/

namespace A107421.P15477046414225489138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000582 (n + 9)

end

end A107421.P15477046414225489138

noncomputable section

/-- A107421: a(n) = binomial(n+6,6)*binomial(n+9,9).

Offset 0, canonical program `A107421.P15477046414225489138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107421 (n : ℕ) : ℤ :=
  A107421.P15477046414225489138.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109607.P12964960874719585389

`A023896(abs(1-n)+1)-1`
-/

namespace A109607.P12964960874719585389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A109607.P12964960874719585389

noncomputable section

/-- A109607: Sum of coprimes of n greater than 1.

Offset 0, canonical program `A109607.P12964960874719585389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109607 (n : ℕ) : ℤ :=
  A109607.P12964960874719585389.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109975.P6480111214704536251

`record[A034007(n)]`
-/

namespace A109975.P6480111214704536251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109975.P6480111214704536251

noncomputable section

/-- A109975: Second differences of A045623, prefixed by an initial 1.

Offset 0, canonical program `A109975.P6480111214704536251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A109975 (n : ℕ) : ℤ :=
  A109975.P6480111214704536251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A109975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110001.P16280007747613036978

`A008621(n)^(and(3, n)+1)`
-/

namespace A110001.P16280007747613036978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n ^ (Nat.land 3 n + 1)

end

end A110001.P16280007747613036978

noncomputable section

/-- A110001: n followed by n^2 followed by n^3 followed by n^4.

Offset 1, canonical program `A110001.P16280007747613036978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110001 (n : ℕ) : ℤ :=
  A110001.P16280007747613036978.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110004.P6947858922265010117

`A110001(A056699(n+1))`
-/

namespace A110004.P6947858922265010117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110001 (A056699 (n + 1)).toNat

end

end A110004.P6947858922265010117

noncomputable section

/-- A110004: n followed by n^3 followed by n^4 followed by n^2.

Offset 1, canonical program `A110004.P6947858922265010117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110004 (n : ℕ) : ℤ :=
  A110004.P6947858922265010117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110609.P15836528026083436779

`n²*A000108(n)`
-/

namespace A110609.P15836528026083436779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000108 n

end

end A110609.P15836528026083436779

noncomputable section

/-- A110609: a(n) = n * binomial(2*n, n-1).

Offset 0, canonical program `A110609.P15836528026083436779`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110609 (n : ℕ) : ℤ :=
  A110609.P15836528026083436779.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110655.P2308384762504973839

`A110654(A110654(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110655.P2308384762504973839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 n).toNat

end

end A110655.P2308384762504973839

noncomputable section

/-- A110655: a(n) = A110654(A110654(n)).

Offset 0, canonical program `A110655.P2308384762504973839`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A110654(A110654(n))` (program `A110655.P2308384762504973839`, by `A110655.P2308384762504973839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A110655 (n : ℕ) : ℤ :=
  A110655.P2308384762504973839.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A110654(A110654(n))` (program `A110655.P2308384762504973839`, by `A110655.P2308384762504973839.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A110655.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A110657.P7617019695067142471

`A028242(A028242(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A110657.P7617019695067142471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A028242 n).toNat

end

end A110657.P7617019695067142471

noncomputable section

/-- A110657: a(n) = A028242(A028242(n)).

Offset 0, canonical program `A110657.P7617019695067142471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110657 (n : ℕ) : ℤ :=
  A110657.P7617019695067142471.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A110657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A110923.P9641699143134640492

`A000040(n+1)%(4/(1/5)²)`
-/

namespace A110923.P9641699143134640492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (SequenceMachineLib.roundAway (4 / ((1 : ℚ) / 5) ^ 2))

end

end A110923.P9641699143134640492

noncomputable section

/-- A110923: Final two digits of prime(n), with leading zero omitted.

Offset 1, canonical program `A110923.P9641699143134640492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110923 (n : ℕ) : ℤ :=
  A110923.P9641699143134640492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111144.P12188021970188586673

`A000292(n)+4*n²+30*n`
-/

namespace A111144.P12188021970188586673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (4 * n ^ 2 : ℤ) + (30 * n : ℤ)

end

end A111144.P12188021970188586673

noncomputable section

/-- A111144: a(n) = n*(n+13)*(n+14)/6.

Offset 0, canonical program `A111144.P12188021970188586673`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111144 (n : ℕ) : ℤ :=
  A111144.P12188021970188586673.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A111144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A111954.P2161245122123074090

`A000129(n)+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A111954.P2161245122123074090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (-1) ^ n

end

end A111954.P2161245122123074090

noncomputable section

/-- A111954: a(n) = A000129(n) + (-1)^n.

Offset 0, canonical program `A111954.P2161245122123074090`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+(-1)^n` (program `A111954.P2161245122123074090`, by `A111954.P2161245122123074090.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A111954 (n : ℕ) : ℤ :=
  A111954.P2161245122123074090.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+(-1)^n` (program `A111954.P2161245122123074090`, by `A111954.P2161245122123074090.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A111954.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A112045.P4691997246529510817

`A028391(A000040(n+1))`
-/

namespace A112045.P4691997246529510817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A000040 (n + 1)).toNat

end

end A112045.P4691997246529510817

noncomputable section

/-- A112045: Positions of primes (A000040) among nonsquares A000037.

Offset 1, canonical program `A112045.P4691997246529510817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112045 (n : ℕ) : ℤ :=
  A112045.P4691997246529510817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112367.P5378126856570841990

`A000217(n-A057944(n))`
-/

namespace A112367.P5378126856570841990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A057944 n).toNat

end

end A112367.P5378126856570841990

noncomputable section

/-- A112367: a(n) = A000217(n-k), where k is the largest triangular number less than n.

Offset 0, canonical program `A112367.P5378126856570841990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112367 (n : ℕ) : ℤ :=
  A112367.P5378126856570841990.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A113061.P11150295760055610552

`∑{d}[n+1, #*A010057(#)]`
-/

namespace A113061.P11150295760055610552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010057 d

end

end A113061.P11150295760055610552

noncomputable section

/-- A113061: Sum of cube divisors of n.

Offset 1, canonical program `A113061.P11150295760055610552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113061 (n : ℕ) : ℤ :=
  A113061.P11150295760055610552.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113473.P7804708315665494230

`A029837(n+2)`
-/

namespace A113473.P7804708315665494230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2)

end

end A113473.P7804708315665494230

noncomputable section

/-- A113473: n repeated 2^(n-1) times.

Offset 1, canonical program `A113473.P7804708315665494230`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113473 (n : ℕ) : ℤ :=
  A113473.P7804708315665494230.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029837, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113646.P14709912826224621284

`A014683(n+1)%a(n-3)²` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A113646.P14709912826224621284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4, 4] fun n a =>
  Int.tmod (A014683 (n + 1)) (a (n - 3) ^ 2)

end

end A113646.P14709912826224621284

noncomputable section

/-- A113646: a(n) is the smallest composite integer which is >= n.

Offset 1, canonical program `A113646.P14709912826224621284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113646 (n : ℕ) : ℤ :=
  A113646.P14709912826224621284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114277.P12604113063236569068

`∑[A002057(n)]`
-/

namespace A114277.P12604113063236569068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A114277.P12604113063236569068

noncomputable section

/-- A114277: Sum of the lengths of the second ascents in all Dyck paths of semilength n+2.

Offset 0, canonical program `A114277.P12604113063236569068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114277 (n : ℕ) : ℤ :=
  A114277.P12604113063236569068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A114277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114775.P15943096779423709636

`A000931(((n+1)%4+n+1)/2)`
-/

namespace A114775.P15943096779423709636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (SequenceMachineLib.roundAway ((((n + 1) % 4 + (n + 1) : ℕ) : ℚ) / 2)).toNat

end

end A114775.P15943096779423709636

noncomputable section

/-- A114775: Expansion of x^2*(1+x^2)*(1 - x^4 + x^7)/((1 - x^4 + x^6)*(1 - x^4 - x^6)).

Offset 0, canonical program `A114775.P15943096779423709636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1649 terms. -/
def A114775 (n : ℕ) : ℤ :=
  A114775.P15943096779423709636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1649 terms. -/
def A114775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115140.P12775726939612743797

`floor(2/3^n)-A000108(abs(1-n))`
-/

namespace A115140.P12775726939612743797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (3 ^ n : ℚ)⌋ - A000108 |1 - (n : ℤ)|.toNat

end

end A115140.P12775726939612743797

noncomputable section

/-- A115140: O.g.f. inverse of Catalan A000108 o.g.f.

Offset 0, canonical program `A115140.P12775726939612743797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115140 (n : ℕ) : ℤ :=
  A115140.P12775726939612743797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115141.P16815087321721103220

`xor(A063524(n), A115140(n))`
-/

namespace A115141.P16815087321721103220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A115140 n)

end

end A115141.P16815087321721103220

noncomputable section

/-- A115141: Convolution of A115140 with itself.

Offset 0, canonical program `A115141.P16815087321721103220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115141 (n : ℕ) : ℤ :=
  A115141.P16815087321721103220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A115141.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115224.P1763659109622953996

`(n+1)²*A059376(n+1)`
-/

namespace A115224.P1763659109622953996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A059376 (n + 1)

end

end A115224.P1763659109622953996

noncomputable section

/-- A115224: Number of 3 X 3 symmetric matrices over Z(n) having determinant 1.

Offset 1, canonical program `A115224.P1763659109622953996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115224 (n : ℕ) : ℤ :=
  A115224.P1763659109622953996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115567.P11023452699986458031

`A000579(n)+A057703(n)`
-/

namespace A115567.P11023452699986458031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + A057703 n

end

end A115567.P11023452699986458031

noncomputable section

/-- A115567: a(n) = C(n,6) + C(n,5) + C(n,4) + C(n,3) + C(n,2) + C(n,1).

Offset 0, canonical program `A115567.P11023452699986458031`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115567 (n : ℕ) : ℤ :=
  A115567.P11023452699986458031.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115714.P5666176158533524256

`Δ[A059169(n+2)]-and(4, A047399(n+1))`
-/

namespace A115714.P5666176158533524256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.land 4 (A047399 (n + 1))

end

end A115714.P5666176158533524256

noncomputable section

/-- A115714: Periodic {1,-1,-3,0,1,-5,1,0,-3,-1,1,-4}.

Offset 0, canonical program `A115714.P5666176158533524256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A115714 (n : ℕ) : ℤ :=
  A115714.P5666176158533524256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A115714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116385.P5361191380306114926

`A001405(n+3)-3*A001405(n+1)`
-/

namespace A116385.P5361191380306114926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 3) - 3 * A001405 (n + 1)

end

end A116385.P5361191380306114926

noncomputable section

/-- A116385: Expansion of e.g.f. Bessel_I(2,2x) + 2*Bessel_I(3,2x) + Bessel_I(4,2x).

Offset 0, canonical program `A116385.P5361191380306114926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116385 (n : ℕ) : ℤ :=
  A116385.P5361191380306114926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A116385.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A117120.P9394178660501111264

`A063946(A004756(n+1)-(2*n+3))`
-/

namespace A117120.P9394178660501111264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004756 (n + 1) - (2 * n + 3 : ℤ)).toNat

end

end A117120.P9394178660501111264

noncomputable section

/-- A117120: a(1)=1. a(n) is smallest positive integer not occurring earlier in the sequence where a(n) is congruent to -1 (mod a(n-1)).

Offset 1, canonical program `A117120.P9394178660501111264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117120 (n : ℕ) : ℤ :=
  A117120.P9394178660501111264.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117186.P16189362140189374884

`A045621(n)+A027306(n)`
-/

namespace A117186.P16189362140189374884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n + A027306 n

end

end A117186.P16189362140189374884

noncomputable section

/-- A117186: Expansion of (1+x)c(x^2)/((1-xc(x^2))*sqrt(1-4x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117186.P16189362140189374884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A117186 (n : ℕ) : ℤ :=
  A117186.P16189362140189374884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A117186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118742.P10284877803935730397

`lt[A001414(n+1), n+1]`
-/

namespace A118742.P10284877803935730397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118742.P10284877803935730397

noncomputable section

/-- A118742: Numbers n for which the expression n!/(n+1) is an integer.

Offset 0, canonical program `A118742.P10284877803935730397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118742 (n : ℕ) : ℤ :=
  (A118742.P10284877803935730397.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118973.P16395577257869652124

`A000957(n+1)+A000958(n+1)-A000108(n)`
-/

namespace A118973.P16395577257869652124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1) + (A000958 (n + 1) - A000108 n)

end

end A118973.P16395577257869652124

noncomputable section

/-- A118973: Number of hill-free Dyck paths of semilength n+2 and having length of first descent equal to 2 (a hill in a Dyck path is a peak at level 1).

Offset 0, canonical program `A118973.P16395577257869652124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A118973 (n : ℕ) : ℤ :=
  A118973.P16395577257869652124.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A118973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119578.P16414005969838283328

`A000217(n)*A000984(n)`
-/

namespace A119578.P16414005969838283328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000984 n

end

end A119578.P16414005969838283328

noncomputable section

/-- A119578: a(n) = (n + n^2)*binomial(2*n,n)/2.

Offset 0, canonical program `A119578.P16414005969838283328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119578 (n : ℕ) : ℤ :=
  A119578.P16414005969838283328.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119578.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A119749.P8910904632272446904

`A101400(n)-A092886(n)`
-/

namespace A119749.P8910904632272446904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101400 n - A092886 n

end

end A119749.P8910904632272446904

noncomputable section

/-- A119749: Number of compositions of n into odd blocks with one element in each block distinguished.

Offset 1, canonical program `A119749.P8910904632272446904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A119749 (n : ℕ) : ℤ :=
  A119749.P8910904632272446904.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. -/
def A119749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120304.P16195813583233364787

`A000108(n)-2`
-/

namespace A120304.P16195813583233364787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - 2

end

end A120304.P16195813583233364787

noncomputable section

/-- A120304: Catalan numbers minus 2.

Offset 0, canonical program `A120304.P16195813583233364787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120304 (n : ℕ) : ℤ :=
  A120304.P16195813583233364787.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A120304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A120588.P13914353350146187734

`abs(A115140(n))`
-/

namespace A120588.P13914353350146187734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A115140 n|

end

end A120588.P13914353350146187734

noncomputable section

/-- A120588: G.f. is 1 + x*c(x), where c(x) is the g.f. of the Catalan numbers (A000108).

Offset 0, canonical program `A120588.P13914353350146187734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A120588 (n : ℕ) : ℤ :=
  A120588.P13914353350146187734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A120588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120989.P9429380718523382807

`∑[A070859(n+1)]`
-/

namespace A120989.P9429380718523382807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A120989.P9429380718523382807

noncomputable section

/-- A120989: Level of the first leaf (in preorder traversal) of a binary tree, summed over all binary trees with n edges. A binary tree is a rooted tree in which each vertex has at most two children and each child of a vertex is designated as its left or right child.

Offset 1, canonical program `A120989.P9429380718523382807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A120989 (n : ℕ) : ℤ :=
  A120989.P9429380718523382807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A120989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121048.P13454747914847034149

`3*(n+1)-A053158(n+1)`
-/

namespace A121048.P13454747914847034149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A053158 (n + 1)

end

end A121048.P13454747914847034149

noncomputable section

/-- A121048: a(n) = n + phi(n), where phi is the Euler totient function.

Offset 1, canonical program `A121048.P13454747914847034149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121048 (n : ℕ) : ℤ :=
  A121048.P13454747914847034149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121315.P16124477484499742507

`(eq[1, A001221(n+1)]+1)*(lt[A001221(n+1), 2]+1)`
-/

namespace A121315.P16124477484499742507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) * (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1)

end

end A121315.P16124477484499742507

noncomputable section

/-- A121315: Products of two consecutive prime powers.

Offset 1, canonical program `A121315.P16124477484499742507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5217 terms. -/
def A121315 (n : ℕ) : ℤ :=
  (A121315.P16124477484499742507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5217 terms. -/
def A121315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126930.P10974584581349947886

`(-1)^n*A001405(n)`
-/

namespace A126930.P10974584581349947886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001405 n

end

end A126930.P10974584581349947886

noncomputable section

/-- A126930: Inverse binomial transform of A005043.

Offset 0, canonical program `A126930.P10974584581349947886`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126930 (n : ℕ) : ℤ :=
  A126930.P10974584581349947886.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A126930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A126983.P5512643725349819796

`A000007(n)-A000957(n)`
-/

namespace A126983.P5512643725349819796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A000957 n

end

end A126983.P5512643725349819796

noncomputable section

/-- A126983: Expansion of 1/(1+x*c(x)), c(x) the g.f. of Catalan numbers A000108.

Offset 0, canonical program `A126983.P5512643725349819796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A126983 (n : ℕ) : ℤ :=
  A126983.P5512643725349819796.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A126983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128014.P14973855882904292349

`A000984(floor(n/2))`
-/

namespace A128014.P14973855882904292349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ⌊(n : ℚ) / 2⌋.toNat

end

end A128014.P14973855882904292349

noncomputable section

/-- A128014: Central binomial coefficients C(2k,k) repeated.

Offset 0, canonical program `A128014.P14973855882904292349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128014 (n : ℕ) : ℤ :=
  A128014.P14973855882904292349.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A128014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A128227.P3230400421110190082

`gcd(a(n-1)+1, Δ[A010054(n)])` with `a(0)=1`
-/

namespace A128227.P3230400421110190082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A128227.P3230400421110190082

noncomputable section

/-- A128227: Right border (1,1,1,...) added to A002260.

Offset 0, canonical program `A128227.P3230400421110190082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128227 (n : ℕ) : ℤ :=
  (A128227.P3230400421110190082.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129889.P4892323476713999206

`a(n-2)+A124625(n)` with `a(0)=0, a(1)=0`
-/

namespace A129889.P4892323476713999206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + A124625 n

end

end A129889.P4892323476713999206

noncomputable section

/-- A129889: Write down n, then n*(n+1).

Offset 0, canonical program `A129889.P4892323476713999206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129889 (n : ℕ) : ℤ :=
  A129889.P4892323476713999206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A130194.P2127097529341530346

`A009531(A004736(n+1))`
-/

namespace A130194.P2127097529341530346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A004736 (n + 1)).toNat

end

end A130194.P2127097529341530346

noncomputable section

/-- A130194: Let M = lower triangular matrix with 1's on and below the main diagonal, with columns multiplied by +1, +1, -1, -1, repeated; form M^2; read across rows of resulting triangle.

Offset 1, canonical program `A130194.P2127097529341530346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130194 (n : ℕ) : ℤ :=
  A130194.P2127097529341530346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131575.P55044588801403838

`A131572(n+1)-A131572(n)`
-/

namespace A131575.P55044588801403838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 1) - A131572 n

end

end A131575.P55044588801403838

noncomputable section

/-- A131575: First differences of A131572.

Offset 0, canonical program `A131575.P55044588801403838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131575 (n : ℕ) : ℤ :=
  A131575.P55044588801403838.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131575.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A132366.P7609112223921373864

`A006007(n)+A006007(n+1)`
-/

namespace A132366.P7609112223921373864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + A006007 (n + 1)

end

end A132366.P7609112223921373864

noncomputable section

/-- A132366: Partial sum of centered tetrahedral numbers A005894.

Offset 0, canonical program `A132366.P7609112223921373864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132366 (n : ℕ) : ℤ :=
  A132366.P7609112223921373864.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A132366.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133179.P3707293303286959824

`A087745(A006257(n))`
-/

namespace A133179.P3707293303286959824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087745 (A006257 n).toNat

end

end A133179.P3707293303286959824

noncomputable section

/-- A133179: A modular binomial sum transform of 2^n .

Offset 0, canonical program `A133179.P3707293303286959824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A133179 (n : ℕ) : ℤ :=
  A133179.P3707293303286959824.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 845 terms. -/
def A133179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133196.P16440954679324344778

`A003056(n)+3`
-/

namespace A133196.P16440954679324344778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + 3

end

end A133196.P16440954679324344778

noncomputable section

/-- A133196: n+2 repeated n times.

Offset 1, canonical program `A133196.P16440954679324344778`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133196 (n : ℕ) : ℤ :=
  A133196.P16440954679324344778.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133280.P1210636766669220191

`A005408(n)-A002024(n+1)`
-/

namespace A133280.P1210636766669220191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A002024 (n + 1)

end

end A133280.P1210636766669220191

noncomputable section

/-- A133280: Triangle formed by: 1 even, 2 odd, 3 even, 4 odd, ... starting with zero.

Offset 0, canonical program `A133280.P1210636766669220191`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133280 (n : ℕ) : ℤ :=
  A133280.P1210636766669220191.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133280.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133641.P13929604108559388108

`∑[C(2, n²)+A000032(n+1)-1]`
-/

namespace A133641.P13929604108559388108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n ^ 2) : ℤ) + (A000032 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133641.P13929604108559388108

noncomputable section

/-- A133641: a(n) = 2*L(n) + L(n-1) - n, L(n) = n-th Lucas number A000204(n).

Offset 1, canonical program `A133641.P13929604108559388108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A133641 (n : ℕ) : ℤ :=
  A133641.P13929604108559388108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. -/
def A133641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134422.P8034551626620170611

`A009003(n+1)²`
-/

namespace A134422.P8034551626620170611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1) ^ 2

end

end A134422.P8034551626620170611

noncomputable section

/-- A134422: Square numbers which are sums of 2 distinct nonzero squares.

Offset 1, canonical program `A134422.P8034551626620170611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134422 (n : ℕ) : ℤ :=
  A134422.P8034551626620170611.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134515.P387095092634577795

`(n+2)*(n+1)/2*A000757(n)`
-/

namespace A134515.P387095092634577795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / 2 * (A000757 n : ℚ)

end

end A134515.P387095092634577795

noncomputable section

/-- A134515: Third column (k=2) of triangle A134832 (circular succession numbers).

Offset 0, canonical program `A134515.P387095092634577795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134515.P387095092634577795.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135336.P8279202122990715746

`∑[A000957(n+1)]`
-/

namespace A135336.P8279202122990715746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135336.P8279202122990715746

noncomputable section

/-- A135336: Number of Dyck paths of semilength n with no UUDU's starting at level 0.

Offset 0, canonical program `A135336.P8279202122990715746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A135336 (n : ℕ) : ℤ :=
  A135336.P8279202122990715746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A135336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135401.P14093664586731084065

`A000898(floor(n/2))`
-/

namespace A135401.P14093664586731084065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000898 ⌊(n : ℚ) / 2⌋.toNat

end

end A135401.P14093664586731084065

noncomputable section

/-- A135401: a(n) = number of permutations (p(1),p(2),p(3),...,p(n)) of (1,2,3,...n) each of which is its own inverse and is such that p(k) = n + 1 - p(n+1-k) for all k in the range 1 <= k <= n.

Offset 0, canonical program `A135401.P14093664586731084065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135401 (n : ℕ) : ℤ :=
  A135401.P14093664586731084065.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135661.P12588423931076707335

`A132914(n+1)+A135660(n+1)-A132913(n+1)`
-/

namespace A135661.P12588423931076707335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132914 (n + 1) + (A135660 (n + 1) - A132913 (n + 1))

end

end A135661.P12588423931076707335

noncomputable section

/-- A135661: a(n) = floor(sqrt(n) - n^(1/3)).

Offset 1, canonical program `A135661.P12588423931076707335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135661 (n : ℕ) : ℤ :=
  A135661.P12588423931076707335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135799.P17184054697667347209

`(n+1)*A000757(n)`
-/

namespace A135799.P17184054697667347209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000757 n

end

end A135799.P17184054697667347209

noncomputable section

/-- A135799: Second column (k=1) of triangle A134832 (circular succession numbers).

Offset 0, canonical program `A135799.P17184054697667347209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135799 (n : ℕ) : ℤ :=
  A135799.P17184054697667347209.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A135799.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A135908.P10742750767115336838

`A000792(n)-(char[2]+1)`
-/

namespace A135908.P10742750767115336838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 n - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A135908.P10742750767115336838

noncomputable section

/-- A135908: Clique number of commuting graph of symmetric group S_n.

Offset 0, canonical program `A135908.P10742750767115336838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A135908 (n : ℕ) : ℤ :=
  A135908.P10742750767115336838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. -/
def A135908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137688.P9746695207037186753

`2^A003056(n)`
-/

namespace A137688.P9746695207037186753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A003056 n : ℤ)

end

end A137688.P9746695207037186753

noncomputable section

/-- A137688: 2^A003056: 2^n appears n+1 times.

Offset 0, canonical program `A137688.P9746695207037186753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137688 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137688.P9746695207037186753.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A137688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138950.P17312000599504240579

`∑{d}[n+1, A056594(#-1)*A061347((n+1)/#)]`
-/

namespace A138950.P17312000599504240579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) * A061347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A138950.P17312000599504240579

noncomputable section

/-- A138950: Expansion of (2 - 3 * phi(q^3)^2 + phi(q)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A138950.P17312000599504240579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138950 (n : ℕ) : ℤ :=
  A138950.P17312000599504240579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138999.P3567067932637558928

`A138988(n+2)-A138988(n+1)`
-/

namespace A138999.P3567067932637558928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (n + 2) - A138988 (n + 1)

end

end A138999.P3567067932637558928

noncomputable section

/-- A138999: First differences of Frobenius numbers for 8 successive numbers A138988.

Offset 1, canonical program `A138999.P3567067932637558928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138999 (n : ℕ) : ℤ :=
  A138999.P3567067932637558928.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138999.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139550.P7288531121830713770

`A003418(floor(n/2))`
-/

namespace A139550.P7288531121830713770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 ⌊(n : ℚ) / 2⌋.toNat

end

end A139550.P7288531121830713770

noncomputable section

/-- A139550: a(n) = lcm(1..floor(n/2)).

Offset 0, canonical program `A139550.P7288531121830713770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139550 (n : ℕ) : ℤ :=
  A139550.P7288531121830713770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140211.P16537942396198288479

`∏{d}[n+1, A028310(#%A062828(#))]`
-/

namespace A140211.P16537942396198288479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A028310 (Int.tmod (d : ℤ) (A062828 d)).toNat

end

end A140211.P16537942396198288479

noncomputable section

/-- A140211: a(n) = Product_{d == 3 (mod 4) and d|n} d.

Offset 1, canonical program `A140211.P16537942396198288479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140211 (n : ℕ) : ℤ :=
  A140211.P16537942396198288479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140354.P14697721720665533389

`2*a(n-1)+A140325(n)` with `a(0)=1`
-/

namespace A140354.P14697721720665533389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A140325 n

end

end A140354.P14697721720665533389

noncomputable section

/-- A140354: a(n) = binomial(n+9,9)*2^n.

Offset 0, canonical program `A140354.P14697721720665533389`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140354 (n : ℕ) : ℤ :=
  A140354.P14697721720665533389.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140325, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140513.P13579608035938851890

`2*A137688(n)`
-/

namespace A140513.P13579608035938851890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137688 n

end

end A140513.P13579608035938851890

noncomputable section

/-- A140513: Repeat 2^n n times.

Offset 0, canonical program `A140513.P13579608035938851890`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140513 (n : ℕ) : ℤ :=
  A140513.P13579608035938851890.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140697.P6410494480729606754

`∑{d}[n+1, A007427(#)*A065764((n+1)/#)]`
-/

namespace A140697.P6410494480729606754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140697.P6410494480729606754

noncomputable section

/-- A140697: Mobius transform of A000082.

Offset 1, canonical program `A140697.P6410494480729606754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140697 (n : ℕ) : ℤ :=
  A140697.P6410494480729606754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141351.P15521239837132020654

`A000108(n)+A057427(n)`
-/

namespace A141351.P15521239837132020654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A057427 n

end

end A141351.P15521239837132020654

noncomputable section

/-- A141351: a(n) = C(n) + 1 - 0^n where C(n) = A000108(n).

Offset 0, canonical program `A141351.P15521239837132020654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141351 (n : ℕ) : ℤ :=
  A141351.P15521239837132020654.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A141351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A141459.P15198710371829255089

`∏{d}[n, A090585(#)]`
-/

namespace A141459.P15198710371829255089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A090585 d

end

end A141459.P15198710371829255089

noncomputable section

/-- A141459: a(n) = Product_{p-1 divides n} p, where p is an odd prime.

Offset 0, canonical program `A141459.P15198710371829255089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141459 (n : ℕ) : ℤ :=
  A141459.P15198710371829255089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143051.P11266558245887559525

`Δ[A068527(abs(1-n))]+n`
-/

namespace A143051.P11266558245887559525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A143051.P11266558245887559525

noncomputable section

/-- A143051: Smallest number not occurring earlier and smaller than the largest square so far, the next square if no such number exists.

Offset 0, canonical program `A143051.P11266558245887559525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143051 (n : ℕ) : ℤ :=
  A143051.P11266558245887559525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143955.P2620701624282528188

`A000245(n)-A014138(n)`
-/

namespace A143955.P2620701624282528188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A014138 n

end

end A143955.P2620701624282528188

noncomputable section

/-- A143955: Sum of the altitudes of the leftmost valleys of all Dyck paths of semilength n (if path has no valley, then this altitude is taken to be 0).

Offset 0, canonical program `A143955.P2620701624282528188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A143955 (n : ℕ) : ℤ :=
  A143955.P2620701624282528188.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A143955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145341.P9118573918497510855

`A062383(n)+n-A055945(n)`
-/

namespace A145341.P9118573918497510855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + ((n : ℤ) - A055945 n)

end

end A145341.P9118573918497510855

noncomputable section

/-- A145341: Convert 2n-1 to binary. Reverse its digits. Convert back to decimal to get a(n).

Offset 1, canonical program `A145341.P9118573918497510855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145341 (n : ℕ) : ℤ :=
  A145341.P9118573918497510855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145445.P2754052225407888285

`A104103(n+1)²`
-/

namespace A145445.P2754052225407888285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) ^ 2

end

end A145445.P2754052225407888285

noncomputable section

/-- A145445: a(n) = the smallest square > n-th prime.

Offset 1, canonical program `A145445.P2754052225407888285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145445 (n : ℕ) : ℤ :=
  A145445.P2754052225407888285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A151379.P18367321496078500137

`C(n, floor(n/2))*A000108(n)`
-/

namespace A151379.P18367321496078500137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A000108 n

end

end A151379.P18367321496078500137

noncomputable section

/-- A151379: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, 0), (1, -1), (1, 1)}.

Offset 0, canonical program `A151379.P18367321496078500137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A151379 (n : ℕ) : ℤ :=
  A151379.P18367321496078500137.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A151379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152677.P14318358057896606068

`∑{d}[A028982(n+1), #]`
-/

namespace A152677.P14318358057896606068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A152677.P14318358057896606068

noncomputable section

/-- A152677: Subsequence of odd terms in A000203 (sum-of-divisors function sigma), in the order in which they occur and with repetitions.

Offset 1, canonical program `A152677.P14318358057896606068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A152677 (n : ℕ) : ℤ :=
  (A152677.P14318358057896606068.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1706 terms. -/
def A152677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153151.P8879406724937797492

`and(A003817(n), A004760(n+1))`
-/

namespace A153151.P8879406724937797492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A004760 (n + 1))

end

end A153151.P8879406724937797492

noncomputable section

/-- A153151: Rotated binary decrementing: For n

Offset 0, canonical program `A153151.P8879406724937797492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153151 (n : ℕ) : ℤ :=
  A153151.P8879406724937797492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153152.P16824677220979759351

`n+1-Δ[A053644(n)]`
-/

namespace A153152.P16824677220979759351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A153152.P16824677220979759351

noncomputable section

/-- A153152: Rotated binary incrementing: For n

Offset 0, canonical program `A153152.P16824677220979759351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153152 (n : ℕ) : ℤ :=
  A153152.P16824677220979759351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153231.P4161722255829809210

`(n+1)*A000309(n)`
-/

namespace A153231.P4161722255829809210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000309 n

end

end A153231.P4161722255829809210

noncomputable section

/-- A153231: a(n) = 2^n * binomial(3n,n)/(2n+1).

Offset 0, canonical program `A153231.P4161722255829809210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153231 (n : ℕ) : ℤ :=
  A153231.P4161722255829809210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A153231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A154589.P3879680968054244063

`A154570(n)+A154570(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154589.P3879680968054244063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 n + A154570 (n + 1)

end

end A154589.P3879680968054244063

noncomputable section

/-- A154589: a(n) = A154570(n) + A154570(n+1).

Offset 0, canonical program `A154589.P3879680968054244063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154589 (n : ℕ) : ℤ :=
  A154589.P3879680968054244063.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A154589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A158611.P9275629407611603775

`A000040(n-a(gcd(n, n+1)))` with `a(0)=0, a(1)=1`
-/

namespace A158611.P9275629407611603775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 ((n : ℤ) - a (Nat.gcd n (n + 1))).toNat

end

end A158611.P9275629407611603775

noncomputable section

/-- A158611: 0, 1 and the primes.

Offset 1, canonical program `A158611.P9275629407611603775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158611 (n : ℕ) : ℤ :=
  A158611.P9275629407611603775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158927.P1567743042161337607

`(-1)^(n+1)*A157823(n)-A099838(n+3)`
-/

namespace A158927.P1567743042161337607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A157823 n - A099838 (n + 3)

end

end A158927.P1567743042161337607

noncomputable section

/-- A158927: a(n) = -3a(n-1) - 3a(n-2) - 2a(n-3), n > 3.

Offset 0, canonical program `A158927.P1567743042161337607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158927 (n : ℕ) : ℤ :=
  A158927.P1567743042161337607.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099838, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158927.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A159035.P16587480534937130279

`A117189((n-1)%(n+1))`
-/

namespace A159035.P16587480534937130279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A159035.P16587480534937130279

noncomputable section

/-- A159035: a(0)=1=a(1), a(2)=2, a(3)=5; thereafter a(n+3)=4*a(n+2)-4*a(n+1)+2*a(n) for n>=1.

Offset 0, canonical program `A159035.P16587480534937130279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A159035 (n : ℕ) : ℤ :=
  A159035.P16587480534937130279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A159035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160094.P14962074149469739945

`1+A122840(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160094.P14962074149469739945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A122840 (n + 1)

end

end A160094.P14962074149469739945

noncomputable section

/-- A160094: a(n) = 1 + A122840(n).

Offset 1, canonical program `A160094.P14962074149469739945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160094 (n : ℕ) : ℤ :=
  A160094.P14962074149469739945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122840, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160664.P14996881624845338289

`a(n-1)+A000203(n)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160664.P14996881624845338289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000203 n

end

end A160664.P14996881624845338289

noncomputable section

/-- A160664: a(n) = a(n-1) + A000203(n), a(0)=1.

Offset 0, canonical program `A160664.P14996881624845338289`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000203(n)` (program `A160664.P14996881624845338289`, by `A160664.P14996881624845338289.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160664 (n : ℕ) : ℤ :=
  A160664.P14996881624845338289.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000203(n)` (program `A160664.P14996881624845338289`, by `A160664.P14996881624845338289.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A160664.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A161203.P4346863006830516735

`record[abs(A055615(n+1))]+(n+1)²`
-/

namespace A161203.P4346863006830516735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1) ^ 2 : ℤ)

end

end A161203.P4346863006830516735

noncomputable section

/-- A161203: n-th square plus n-th squarefree number.

Offset 1, canonical program `A161203.P4346863006830516735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161203 (n : ℕ) : ℤ :=
  A161203.P4346863006830516735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161463.P3939391229577481426

`A036439(2*(n+1))-A036439(n+1)`
-/

namespace A161463.P3939391229577481426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (2 * (n + 1)) - A036439 (n + 1)

end

end A161463.P3939391229577481426

noncomputable section

/-- A161463: Sum of all primes from n-th prime to (2*n-1)-th prime.

Offset 1, canonical program `A161463.P3939391229577481426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161463 (n : ℕ) : ℤ :=
  A161463.P3939391229577481426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161847.P7260317161909887223

`A000040(n+1)%A109256(n)`
-/

namespace A161847.P7260317161909887223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A109256 n)

end

end A161847.P7260317161909887223

noncomputable section

/-- A161847: Denominator of the ratio (prime((n+1)^2) - prime(n^2))/prime(n).

Offset 1, canonical program `A161847.P7260317161909887223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161847 (n : ℕ) : ℤ :=
  A161847.P7260317161909887223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162551.P10524967716150044895

`2*A001791(n)`
-/

namespace A162551.P10524967716150044895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001791 n

end

end A162551.P10524967716150044895

noncomputable section

/-- A162551: a(n) = 2 * C(2*n,n-1).

Offset 0, canonical program `A162551.P10524967716150044895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162551 (n : ℕ) : ℤ :=
  A162551.P10524967716150044895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162551.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162969.P4444035939304920594

`A000166(floor(n/2))+A000166(A065033(n))`
-/

namespace A162969.P4444035939304920594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 ⌊(n : ℚ) / 2⌋.toNat + A000166 (A065033 n).toNat

end

end A162969.P4444035939304920594

noncomputable section

/-- A162969: Number of permutations of {1,2,...,n} in which the fixed points and the non-fixed points alternate.

Offset 0, canonical program `A162969.P4444035939304920594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A162969 (n : ℕ) : ℤ :=
  A162969.P4444035939304920594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A162969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163746.P11873531576928395858

`abs(A138950(n+1))`
-/

namespace A163746.P11873531576928395858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138950 (n + 1)|

end

end A163746.P11873531576928395858

noncomputable section

/-- A163746: Expansion of (theta_3(q)^2 + 3 * theta_3(q^3)^2) / 4 - 1 in powers of q.

Offset 1, canonical program `A163746.P11873531576928395858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163746 (n : ℕ) : ℤ :=
  A163746.P11873531576928395858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165233.P2827086617515235092

`A057077(n)*A000142(n)`
-/

namespace A165233.P2827086617515235092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A000142 n

end

end A165233.P2827086617515235092

noncomputable section

/-- A165233: Signed denominators of terms in series expansion of cos(x)+sin(x).

Offset 0, canonical program `A165233.P2827086617515235092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165233 (n : ℕ) : ℤ :=
  A165233.P2827086617515235092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165233.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165618.P9072305756681628807

`A000581(n+8)-1`
-/

namespace A165618.P9072305756681628807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) - 1

end

end A165618.P9072305756681628807

noncomputable section

/-- A165618: a(n) = binomial(n+8,8) - 1.

Offset 0, canonical program `A165618.P9072305756681628807`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165618 (n : ℕ) : ℤ :=
  A165618.P9072305756681628807.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000581, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165618.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166010.P2251698158040960203

`A001248(n+1)-4`
-/

namespace A166010.P2251698158040960203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - 4

end

end A166010.P2251698158040960203

noncomputable section

/-- A166010: a(n) = prime(n)^2-4.

Offset 1, canonical program `A166010.P2251698158040960203`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166010 (n : ℕ) : ℤ :=
  A166010.P2251698158040960203.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001248, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A166010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166142.P10122674445425206392

`∏{d}[n+1, A080304(#)]`
-/

namespace A166142.P10122674445425206392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A080304 d

end

end A166142.P10122674445425206392

noncomputable section

/-- A166142: Row products of A166141; Product of such divisors of n that are squarefree and have an even number of prime factors.

Offset 1, canonical program `A166142.P10122674445425206392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166142 (n : ℕ) : ℤ :=
  A166142.P10122674445425206392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166931.P10593389537129159251

`35*12*(A016921(n)+5)-1`
-/

namespace A166931.P10593389537129159251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * (12 * (A016921 n + 5)) - 1

end

end A166931.P10593389537129159251

noncomputable section

/-- A166931: Numbers m such that m mod k is k-1 for all k = 2..9.

Offset 1, canonical program `A166931.P10593389537129159251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166931 (n : ℕ) : ℤ :=
  A166931.P10593389537129159251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168049.P8332189401244449518

`A001006(floor(n-atan(n)))-char[1]`
-/

namespace A168049.P8332189401244449518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A168049.P8332189401244449518

noncomputable section

/-- A168049: Expansion of (3 -x -sqrt(1-2*x-3*x^2))/2.

Offset 0, canonical program `A168049.P8332189401244449518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A168049 (n : ℕ) : ℤ :=
  A168049.P8332189401244449518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A168049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168491.P1156082334228349470

`(-1)^n*A000108(n)`
-/

namespace A168491.P1156082334228349470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000108 n

end

end A168491.P1156082334228349470

noncomputable section

/-- A168491: a(n) = (-1)^n*Catalan(n).

Offset 0, canonical program `A168491.P1156082334228349470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168491 (n : ℕ) : ℤ :=
  A168491.P1156082334228349470.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A168491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A169695.P2980267079696158606

`2-A010052(n)`
-/

namespace A169695.P2980267079696158606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A010052 n

end

end A169695.P2980267079696158606

noncomputable section

/-- A169695: a(n) = 1 if n is a square, otherwise a(n) = 2.

Offset 0, canonical program `A169695.P2980267079696158606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169695 (n : ℕ) : ℤ :=
  A169695.P2980267079696158606.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A169695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A170826.P3479579713280450916

`(n+1)²-A072230(n+1)`
-/

namespace A170826.P3479579713280450916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A072230 (n + 1)

end

end A170826.P3479579713280450916

noncomputable section

/-- A170826: a(n) = gcd(n^2, n!).

Offset 1, canonical program `A170826.P3479579713280450916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A170826 (n : ℕ) : ℤ :=
  A170826.P3479579713280450916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9790 terms. -/
def A170826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171581.P14375995751855154974

`A122825(n+1)-A157928(n)`
-/

namespace A171581.P14375995751855154974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122825 (n + 1) - A157928 n

end

end A171581.P14375995751855154974

noncomputable section

/-- A171581: The natural numbers without primes > 3.

Offset 1, canonical program `A171581.P14375995751855154974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171581 (n : ℕ) : ℤ :=
  A171581.P14375995751855154974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171977.P14092944863121073856

`A038712(n+1)+1`
-/

namespace A171977.P14092944863121073856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) + 1

end

end A171977.P14092944863121073856

noncomputable section

/-- A171977: a(n) = 2^(k+1) where 2^k is the highest power of 2 dividing n.

Offset 1, canonical program `A171977.P14092944863121073856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171977 (n : ℕ) : ℤ :=
  A171977.P14092944863121073856.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A171977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172087.P4108028179192671906

`A141459(and(n, -2))`
-/

namespace A172087.P4108028179192671906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (Int.land (n : ℤ) (-2)).toNat

end

end A172087.P4108028179192671906

noncomputable section

/-- A172087: A001897 with terms repeated.

Offset 0, canonical program `A172087.P4108028179192671906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A172087 (n : ℕ) : ℤ :=
  A172087.P4108028179192671906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. -/
def A172087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172392.P14099812267270023863

`(n+1)*A005568(n)`
-/

namespace A172392.P14099812267270023863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005568 n

end

end A172392.P14099812267270023863

noncomputable section

/-- A172392: a(n) = C(2n,n)*C(2n+2,n+1)/(n+2).

Offset 0, canonical program `A172392.P14099812267270023863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172392 (n : ℕ) : ℤ :=
  A172392.P14099812267270023863.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A172392.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A172414.P18140129355790672352

`A000108(floor(sqrt(n)))`
-/

namespace A172414.P18140129355790672352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.sqrt n)

end

end A172414.P18140129355790672352

noncomputable section

/-- A172414: Triangle read by rows: Catalan number C(n) repeated 2*n+1 times.

Offset 0, canonical program `A172414.P18140129355790672352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172414 (n : ℕ) : ℤ :=
  A172414.P18140129355790672352.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173557.P15666735857375843373

`(-1)^A001221(n+1)*A023900(n+1)`
-/

namespace A173557.P15666735857375843373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * (A023900 (n + 1) : ℚ)

end

end A173557.P15666735857375843373

noncomputable section

/-- A173557: a(n) = Product_{primes p dividing n} (p-1).

Offset 1, canonical program `A173557.P15666735857375843373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A173557.P15666735857375843373.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174783.P12683386541777257962

`∑[A001405(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A174783.P12683386541777257962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A001405 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174783.P12683386541777257962

noncomputable section

/-- A174783: Expansion of (1+2x-sqrt(1-4x^2))/(2(1-x^2)*sqrt(1-4x^2)).

Offset 0, canonical program `A174783.P12683386541777257962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A174783 (n : ℕ) : ℤ :=
  A174783.P12683386541777257962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A174783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174891.P1764680800722521875

`lt[0, A061669(n+1)]+1`
-/

namespace A174891.P1764680800722521875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A174891.P1764680800722521875

noncomputable section

/-- A174891: All positive numbers except those that are the product of an odd number of distinct primes.

Offset 1, canonical program `A174891.P1764680800722521875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174891 (n : ℕ) : ℤ :=
  (A174891.P1764680800722521875.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175851.P13592010490707745070

`gcd(a(n-1)+1, A061007(n+1))` with `a(0)=1`
-/

namespace A175851.P13592010490707745070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A061007 (n + 1))

end

end A175851.P13592010490707745070

noncomputable section

/-- A175851: a(n) = 1 for noncomposite n, a(n) = n - previousprime(n) + 1 for composite n.

Offset 1, canonical program `A175851.P13592010490707745070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175851 (n : ℕ) : ℤ :=
  (A175851.P13592010490707745070.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175919.P9342082527365393068

`xor(n, n-A055945(n))`
-/

namespace A175919.P9342082527365393068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - A055945 n)

end

end A175919.P9342082527365393068

noncomputable section

/-- A175919: Convert n to binary. XOR each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175919.P9342082527365393068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175919 (n : ℕ) : ℤ :=
  A175919.P9342082527365393068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176095.P15886254613354820992

`A053158(2*(n+1))%(n+1)`
-/

namespace A176095.P15886254613354820992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053158 (2 * (n + 1))) (n + 1 : ℤ)

end

end A176095.P15886254613354820992

noncomputable section

/-- A176095: a(n) = n - phi(2*n), where phi() is the Euler totient A000010().

Offset 1, canonical program `A176095.P15886254613354820992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176095 (n : ℕ) : ℤ :=
  A176095.P15886254613354820992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A178914.P15550462812133884735

`A061601(n)+1`
-/

namespace A178914.P15550462812133884735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n + 1

end

end A178914.P15550462812133884735

noncomputable section

/-- A178914: 10's complement of nonnegative numbers.

Offset 0, canonical program `A178914.P15550462812133884735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178914 (n : ℕ) : ℤ :=
  A178914.P15550462812133884735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A178914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180000.P9582620330911628146

`A003418(n)/A056040(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A180000.P9582620330911628146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A056040 n : ℚ)

end

end A180000.P9582620330911628146

noncomputable section

/-- A180000: a(n) = lcm{1,2,...,n} / swinging_factorial(n) = A003418(n) / A056040(n).

Offset 0, canonical program `A180000.P9582620330911628146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180000 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A180000.P9582620330911628146.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180017.P1955405444060819929

`A011371(n)-2*A054861(n)`
-/

namespace A180017.P1955405444060819929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - 2 * A054861 n

end

end A180017.P1955405444060819929

noncomputable section

/-- A180017: Difference of sums of digits of n in ternary and in binary.

Offset 0, canonical program `A180017.P1955405444060819929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180017 (n : ℕ) : ℤ :=
  A180017.P1955405444060819929.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A180017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A180201.P8787023281284758013

`xor(n, floor(A035327(n)/2))`
-/

namespace A180201.P8787023281284758013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(A035327 n : ℚ) / 2⌋

end

end A180201.P8787023281284758013

noncomputable section

/-- A180201: Inverse permutation to A180200.

Offset 0, canonical program `A180201.P8787023281284758013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180201 (n : ℕ) : ℤ :=
  A180201.P8787023281284758013.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180714.P5061028925191492414

`∑[A062157(A000194(n))]`
-/

namespace A180714.P5061028925191492414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000194 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A180714.P5061028925191492414

noncomputable section

/-- A180714: Sum of the x- and y-coordinates of a point moving in a clockwise spiral.

Offset 0, canonical program `A180714.P5061028925191492414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180714 (n : ℕ) : ℤ :=
  A180714.P5061028925191492414.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181819.P321170191650223203

`∏{e}[n+1, A000040(#)]`
-/

namespace A181819.P321170191650223203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)

end

end A181819.P321170191650223203

noncomputable section

/-- A181819: Prime shadow of n: a(1) = 1; for n>1, if n = Product prime(i)^e(i), then a(n) = Product prime(e(i)).

Offset 1, canonical program `A181819.P321170191650223203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181819 (n : ℕ) : ℤ :=
  A181819.P321170191650223203.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182324.P68523715600839783

`n+A000030(n)`
-/

namespace A182324.P68523715600839783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000030 n

end

end A182324.P68523715600839783

noncomputable section

/-- A182324: n + (initial digit of n) in decimal representation.

Offset 0, canonical program `A182324.P68523715600839783`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182324 (n : ℕ) : ℤ :=
  A182324.P68523715600839783.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A182324.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A183094.P2300528291682876645

`A005361(n+1)-1`
-/

namespace A183094.P2300528291682876645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) - 1

end

end A183094.P2300528291682876645

noncomputable section

/-- A183094: a(n) = number of powerful divisors d (excluding 1) of n.

Offset 1, canonical program `A183094.P2300528291682876645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183094 (n : ℕ) : ℤ :=
  A183094.P2300528291682876645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A183094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A184589.P13295183854008059946

`abs(1-A022843(n+1))`
-/

namespace A184589.P13295183854008059946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A022843 (n + 1)|

end

end A184589.P13295183854008059946

noncomputable section

/-- A184589: floor(n*e-1); complement of A184590.

Offset 1, canonical program `A184589.P13295183854008059946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184589 (n : ℕ) : ℤ :=
  A184589.P13295183854008059946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A184976.P5743174411028907580

`-∑[∑[-Δ[A022843(n)]]]`
-/

namespace A184976.P5743174411028907580
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184976.P5743174411028907580

noncomputable section

/-- A184976: a(n) = [e]+[2*e]+...+[n*e], where []=floor.

Offset 1, canonical program `A184976.P5743174411028907580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184976 (n : ℕ) : ℤ :=
  A184976.P5743174411028907580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A184976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185594.P14557115003407917742

`∑[A016789(n)]-A008621(A065033(n))`
-/

namespace A185594.P14557115003407917742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008621 (A065033 n).toNat

end

end A185594.P14557115003407917742

noncomputable section

/-- A185594: a(n) = floor((n^2+n)^(3/2)-n^3).

Offset 1, canonical program `A185594.P14557115003407917742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185594 (n : ℕ) : ℤ :=
  A185594.P14557115003407917742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A185594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A186497.P7946603808634787494

`A000703(n)-3+n`
-/

namespace A186497.P7946603808634787494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000703 n - 3 + (n : ℤ)

end

end A186497.P7946603808634787494

noncomputable section

/-- A186497: Adjusted joint rank sequence of (f(i)) and (g(j)) with f(i) before g(j) when f(i)=g(j), where f(i)=3i-2 and g(j)=j-th triangular number. Complement of A186498.

Offset 1, canonical program `A186497.P7946603808634787494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186497 (n : ℕ) : ℤ :=
  A186497.P7946603808634787494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A186497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188170.P7143844993511574485

`∑{d}[n+1, and(1, #*A122046(#))]`
-/

namespace A188170.P7143844993511574485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 ((d : ℤ) * A122046 d)

end

end A188170.P7143844993511574485

noncomputable section

/-- A188170: The number of divisors d of n of the form d == 3 (mod 8).

Offset 1, canonical program `A188170.P7143844993511574485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188170 (n : ℕ) : ℤ :=
  A188170.P7143844993511574485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188378.P151460169206964493

`A002878(n)+1`
-/

namespace A188378.P151460169206964493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + 1

end

end A188378.P151460169206964493

noncomputable section

/-- A188378: Partial sums of A005248.

Offset 0, canonical program `A188378.P151460169206964493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188378 (n : ℕ) : ℤ :=
  A188378.P151460169206964493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A188378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A188556.P2471542906957635104

`∑[A188555(n)]+5`
-/

namespace A188556.P2471542906957635104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A188556.P2471542906957635104

noncomputable section

/-- A188556: Number of 5 X n binary arrays without the pattern 0 1 diagonally, vertically, antidiagonally or horizontally.

Offset 1, canonical program `A188556.P2471542906957635104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188556 (n : ℕ) : ℤ :=
  A188556.P2471542906957635104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188652.P6970778430024566218

`A000463(n+2)-A000463(n+1)`
-/

namespace A188652.P6970778430024566218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 2) - A000463 (n + 1)

end

end A188652.P6970778430024566218

noncomputable section

/-- A188652: First differences of A000463.

Offset 1, canonical program `A188652.P6970778430024566218`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188652 (n : ℕ) : ℤ :=
  A188652.P6970778430024566218.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000463, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A188652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A189021.P12232973685281309927

`∏{e}[n+1, A154955(#)]`
-/

namespace A189021.P12232973685281309927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A154955 (Nat.factorization (f1 n) p)

end

end A189021.P12232973685281309927

noncomputable section

/-- A189021: Apostol's second order Möbius (or Moebius) function mu_2(n).

Offset 1, canonical program `A189021.P12232973685281309927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189021 (n : ℕ) : ℤ :=
  A189021.P12232973685281309927.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189176.P2914353405765729826

`floor((n+3)/2*A000108(n))`
-/

namespace A189176.P2914353405765729826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 2 * (A000108 n : ℚ)⌋

end

end A189176.P2914353405765729826

noncomputable section

/-- A189176: Row sums of the Riordan matrix (1+x/sqrt(1-4*x),(1-sqrt(1-4*x))/2) (A189175).

Offset 0, canonical program `A189176.P2914353405765729826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A189176 (n : ℕ) : ℤ :=
  A189176.P2914353405765729826.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A189176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191394.P2196182716254979201

`A000975(n)-A174783(n)`
-/

namespace A191394.P2196182716254979201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n - A174783 n

end

end A191394.P2196182716254979201

noncomputable section

/-- A191394: Number of base pyramids in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0)-steps at positive heights).

Offset 0, canonical program `A191394.P2196182716254979201`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174783, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191394 (n : ℕ) : ℤ :=
  A191394.P2196182716254979201.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174783, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A191394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A191529.P15028808747650929508

`Δ[Δ[A001405(abs(2-n))]]`
-/

namespace A191529.P15028808747650929508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191529.P15028808747650929508

noncomputable section

/-- A191529: Number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights) with no initial and no final (1,0)-steps.

Offset 0, canonical program `A191529.P15028808747650929508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A191529 (n : ℕ) : ℤ :=
  A191529.P15028808747650929508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A191529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191967.P17717380817675792771

`A000326(n)-A142150(n)`
-/

namespace A191967.P17717380817675792771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n - A142150 n

end

end A191967.P17717380817675792771

noncomputable section

/-- A191967: n * (numbers that are not divisible by 3).

Offset 0, canonical program `A191967.P17717380817675792771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191967 (n : ℕ) : ℤ :=
  A191967.P17717380817675792771.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A191967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A192472.P9711165989484467876

`2*A059512(n+2)+1`
-/

namespace A192472.P9711165989484467876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059512 (n + 2) + 1

end

end A192472.P9711165989484467876

noncomputable section

/-- A192472: Constant term of the reduction by x^2->x+1 of the polynomial p(n,x)=1+x^n+x^(2n+2).

Offset 1, canonical program `A192472.P9711165989484467876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A192472 (n : ℕ) : ℤ :=
  A192472.P9711165989484467876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A192472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A192543.P5385280127348229963

`A034887(n)-A000007(n)`
-/

namespace A192543.P5385280127348229963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n - A000007 n

end

end A192543.P5385280127348229963

noncomputable section

/-- A192543: Let r be the largest real zero of x^n - x^(n-1) - x^(n-2) - ... - 1 = 0. Then a(n) is the value of k which satisfies the equation 0.5/10^k < 2 - r < 5/10^k.

Offset 1, canonical program `A192543.P5385280127348229963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192543 (n : ℕ) : ℤ :=
  A192543.P5385280127348229963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A192543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193056.P6449544040074946363

`A100995(n+1)-A157658(n+1)`
-/

namespace A193056.P6449544040074946363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (n + 1) - A157658 (n + 1)

end

end A193056.P6449544040074946363

noncomputable section

/-- A193056: Reciprocals are the complement to logarithm of Riemann zeta. a(1)=0, for n>1: a(n) = A008683(n) + A100995(n).

Offset 1, canonical program `A193056.P6449544040074946363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193056 (n : ℕ) : ℤ :=
  A193056.P6449544040074946363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193215.P13640404979239094247

`A135336(n)+A135336(n)-A000108(n)`
-/

namespace A193215.P13640404979239094247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135336 n + (A135336 n - A000108 n)

end

end A193215.P13640404979239094247

noncomputable section

/-- A193215: Number of Dyck paths of semilength n having the property that the heights of the first and the last peaks do not disagree.

Offset 0, canonical program `A193215.P13640404979239094247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A193215 (n : ℕ) : ℤ :=
  A193215.P13640404979239094247.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A193215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193564.P10859496068576138660

`A026242(n+1)-1`
-/

namespace A193564.P10859496068576138660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (n + 1) - 1

end

end A193564.P10859496068576138660

noncomputable section

/-- A193564: In A014675, replace the n-th occurrence of 1 with n-1 and also replace the n-th occurrence of 2 with n-1.

Offset 1, canonical program `A193564.P10859496068576138660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193564 (n : ℕ) : ℤ :=
  A193564.P10859496068576138660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194590.P17962312816026059699

`(-1)^n*(A056040(n+1)*A152271(n)-2^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A194590.P17962312816026059699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) * ((A056040 (n + 1) * A152271 n - (2 ^ n : ℤ) : ℚ) / 2)

end

end A194590.P17962312816026059699

noncomputable section

/-- A194590: a(n) = (-1)^n*(A056040(n+1)*A152271(n)-2^n)/2.

Offset 0, canonical program `A194590.P17962312816026059699`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194590 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A194590.P17962312816026059699.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A194590.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A195437.P1577430008667448515

`∑[A073424(n)+2]`
-/

namespace A195437.P1577430008667448515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195437.P1577430008667448515

noncomputable section

/-- A195437: Triangle formed by: 1 even, 2 odd, 3 even, 4 odd... starting with 2.

Offset 0, canonical program `A195437.P1577430008667448515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A195437 (n : ℕ) : ℤ :=
  A195437.P1577430008667448515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A195437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195459.P676028519467690481

`∑{d}[n+1, #*A156277((n+1)/#)]`
-/

namespace A195459.P676028519467690481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A156277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A195459.P676028519467690481

noncomputable section

/-- A195459: a(n) = phi(3*n)/2.

Offset 1, canonical program `A195459.P676028519467690481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195459 (n : ℕ) : ℤ :=
  A195459.P676028519467690481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198954.P2690440958221023727

`A053187(2*n+1)-A053187(2*n)`
-/

namespace A198954.P2690440958221023727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 (2 * n + 1) - A053187 (2 * n)

end

end A198954.P2690440958221023727

noncomputable section

/-- A198954: Expansion of the rotational partition function for a heteronuclear diatomic molecule.

Offset 0, canonical program `A198954.P2690440958221023727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A198954 (n : ℕ) : ℤ :=
  A198954.P2690440958221023727.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A198954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A199804.P15884299299135542991

`(-1)^n*A000930(n)`
-/

namespace A199804.P15884299299135542991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000930 n

end

end A199804.P15884299299135542991

noncomputable section

/-- A199804: G.f.: 1/(1+x+x^3).

Offset 0, canonical program `A199804.P15884299299135542991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A199804 (n : ℕ) : ℤ :=
  A199804.P15884299299135542991.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A199804.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A200541.P7698192799478556186

`A000045(n+1)*A000073(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A200541.P7698192799478556186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000073 (n + 2)

end

end A200541.P7698192799478556186

noncomputable section

/-- A200541: Product of Fibonacci and tribonacci numbers: a(n) = A000045(n+1)*A000073(n+2).

Offset 0, canonical program `A200541.P7698192799478556186`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000073(n+2)` (program `A200541.P7698192799478556186`, by `A200541.P7698192799478556186.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200541 (n : ℕ) : ℤ :=
  A200541.P7698192799478556186.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000073(n+2)` (program `A200541.P7698192799478556186`, by `A200541.P7698192799478556186.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A200541.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A200905.P4388094907414912323

`3*(A121048(n+1)-(n+1))`
-/

namespace A200905.P4388094907414912323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A121048 (n + 1) - (n + 1 : ℤ))

end

end A200905.P4388094907414912323

noncomputable section

/-- A200905: a(n) = 3*phi(n), where phi (A000010) is the Euler totient function.

Offset 1, canonical program `A200905.P4388094907414912323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200905 (n : ℕ) : ℤ :=
  A200905.P4388094907414912323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A200905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206369.P2534442500048428716

`abs(A061020(n+1))`
-/

namespace A206369.P2534442500048428716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061020 (n + 1)|

end

end A206369.P2534442500048428716

noncomputable section

/-- A206369: a(p^k) = p^k - p^(k-1) + p^(k-2) - ... +- 1, and then extend by multiplicativity.

Offset 1, canonical program `A206369.P2534442500048428716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206369 (n : ℕ) : ℤ :=
  A206369.P2534442500048428716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061020, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206787.P5835391057460083436

`A048250(n+1)/A010684(n)`
-/

namespace A206787.P5835391057460083436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A206787.P5835391057460083436

noncomputable section

/-- A206787: Sum of the odd squarefree divisors of n.

Offset 1, canonical program `A206787.P5835391057460083436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206787 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A206787.P5835391057460083436.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A206787.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A206805.P18067010656320229901

`Δ[A025713(n)]-1`
-/

namespace A206805.P18067010656320229901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A206805.P18067010656320229901

noncomputable section

/-- A206805: Position of 2^n when {2^j} and {3^k} are jointly ranked; complement of A206807.

Offset 1, canonical program `A206805.P18067010656320229901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206805 (n : ℕ) : ℤ :=
  A206805.P18067010656320229901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A206805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208355.P6360215552861429744

`A000108(floor((n+1)/2))`
-/

namespace A208355.P6360215552861429744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 ⌊(n + 1 : ℚ) / 2⌋.toNat

end

end A208355.P6360215552861429744

noncomputable section

/-- A208355: Right edge of the triangle in A208101.

Offset 0, canonical program `A208355.P6360215552861429744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208355 (n : ℕ) : ℤ :=
  A208355.P6360215552861429744.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A208976.P11107744502091880902

`A001405(n)+A001405(n+1)-1`
-/

namespace A208976.P11107744502091880902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + A001405 (n + 1) - 1

end

end A208976.P11107744502091880902

noncomputable section

/-- A208976: Row sums of the triangle in A208101.

Offset 0, canonical program `A208976.P11107744502091880902`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208976 (n : ℕ) : ℤ :=
  A208976.P11107744502091880902.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A208976.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A209639.P14677286529692214251

`A004524(n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` with `a(0)=1`
-/

namespace A209639.P14677286529692214251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004524 (((n % 2 : ℕ) : ℤ) + ((3 - (-1) ^ n) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n))).toNat

end

end A209639.P14677286529692214251

noncomputable section

/-- A209639: Bisection of A209859.

Offset 0, canonical program `A209639.P14677286529692214251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A209639 (n : ℕ) : ℤ :=
  A209639.P14677286529692214251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A209639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209859.P17593637001217111861

`floor(A209639(n)/2)`
-/

namespace A209859.P17593637001217111861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209639 n : ℚ) / 2⌋

end

end A209859.P17593637001217111861

noncomputable section

/-- A209859: Rewrite the binary expansion of n from the most significant end, 1 -> 1, 0+1 (one or more zeros followed by one) -> 0, drop the trailing zeros of the original n.

Offset 0, canonical program `A209859.P17593637001217111861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A209859 (n : ℕ) : ℤ :=
  A209859.P17593637001217111861.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A209859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209971.P2063977723074773376

`A000129(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209971.P2063977723074773376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (n : ℤ)

end

end A209971.P2063977723074773376

noncomputable section

/-- A209971: a(n) = A000129(n) + n.

Offset 0, canonical program `A209971.P2063977723074773376`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+n` (program `A209971.P2063977723074773376`, by `A209971.P2063977723074773376.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A209971 (n : ℕ) : ℤ :=
  A209971.P2063977723074773376.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n)+n` (program `A209971.P2063977723074773376`, by `A209971.P2063977723074773376.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A209971.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A210736.P1250447749793702526

`A001405(abs(1-n))`
-/

namespace A210736.P1250447749793702526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 |1 - (n : ℤ)|.toNat

end

end A210736.P1250447749793702526

noncomputable section

/-- A210736: Expansion of (1 + sqrt( (1 + 2*x) / (1 - 2*x))) / 2 in powers of x.

Offset 0, canonical program `A210736.P1250447749793702526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A210736 (n : ℕ) : ℤ :=
  A210736.P1250447749793702526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A210736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A211422.P3375844337516987615

`A017077(∑[A064727(A008574(n))])`
-/

namespace A211422.P3375844337516987615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211422.P3375844337516987615

noncomputable section

/-- A211422: Number of ordered triples (w,x,y) with all terms in {-n,...,0,...,n} and w^2 + x*y = 0.

Offset 0, canonical program `A211422.P3375844337516987615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A211422 (n : ℕ) : ℤ :=
  A211422.P3375844337516987615.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A211422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212403.P8335326655319848486

`4*a(n-1)-A000108(n)` with `a(0)=5`
-/

namespace A212403.P8335326655319848486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  4 * a (n - 1) - A000108 n

end

end A212403.P8335326655319848486

noncomputable section

/-- A212403: Number of binary arrays of length 2*n+1 with no more than n ones in any length 2n subsequence (=50% duty cycle).

Offset 1, canonical program `A212403.P8335326655319848486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A212403 (n : ℕ) : ℤ :=
  A212403.P8335326655319848486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A212403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A212445.P8816650629302892090

`A000195(n+1)+1+n`
-/

namespace A212445.P8816650629302892090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1) + 1 + (n : ℤ)

end

end A212445.P8816650629302892090

noncomputable section

/-- A212445: a(n) = floor( n + log(n) ).

Offset 1, canonical program `A212445.P8816650629302892090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212445 (n : ℕ) : ℤ :=
  A212445.P8816650629302892090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A212445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A213709.P17085692847900461859

`A071542(2^(n+1)-1)-A071542(2^n-1)`
-/

namespace A213709.P17085692847900461859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (2 ^ (n + 1) - 1) - A071542 (2 ^ n - 1)

end

end A213709.P17085692847900461859

noncomputable section

/-- A213709: Number of steps to go from 2^(n+1)-1 to (2^n)-1 using the iterative process described in A071542.

Offset 0, canonical program `A213709.P17085692847900461859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213709 (n : ℕ) : ℤ :=
  A213709.P17085692847900461859.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071542, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A213709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A214077.P943174614484166143

`A214076(n+1)-1`
-/

namespace A214077.P943174614484166143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214076 (n + 1) - 1

end

end A214077.P943174614484166143

noncomputable section

/-- A214077: a(n) = floor(e^(n/3)).

Offset 1, canonical program `A214077.P943174614484166143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A214077 (n : ℕ) : ℤ :=
  A214077.P943174614484166143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A214077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214304.P9342972882783353441

`A000122(gcd(n, ∑[n]))`
-/

namespace A214304.P9342972882783353441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A214304.P9342972882783353441

noncomputable section

/-- A214304: Expansion of phi(q) + phi(q^2) - phi(q^4) in powers of q where phi() is a Ramanujan theta function.

Offset 0, canonical program `A214304.P9342972882783353441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214304 (n : ℕ) : ℤ :=
  A214304.P9342972882783353441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A214304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A214824.P7114462778934576427

`A000917(n)-A002057(n)`
-/

namespace A214824.P7114462778934576427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - A002057 n

end

end A214824.P7114462778934576427

noncomputable section

/-- A214824: Number of solid standard Young tableaux of shape [[(2)^n],[2]].

Offset 1, canonical program `A214824.P7114462778934576427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A214824 (n : ℕ) : ℤ :=
  A214824.P7114462778934576427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A214824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216345.P281146645686861327

`a(n-1)+gcd(2, A156253(n))` with `a(0)=1`
-/

namespace A216345.P281146645686861327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd 2 (A156253 n)

end

end A216345.P281146645686861327

noncomputable section

/-- A216345: Position of the beginning of the n-th run in A000002.

Offset 1, canonical program `A216345.P281146645686861327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216345 (n : ℕ) : ℤ :=
  (A216345.P281146645686861327.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A216345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216779.P8327685950018764789

`(A000166(n)+n-1)/2`
-/

namespace A216779.P8327685950018764789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000166 n + ((n : ℤ) - 1) : ℚ) / 2

end

end A216779.P8327685950018764789

noncomputable section

/-- A216779: Number of derangements on n elements with an odd number of cycles.

Offset 0, canonical program `A216779.P8327685950018764789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216779 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A216779.P8327685950018764789.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A216779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A217657.P597514317876169782

`n%(10^A055642(n)/10)`
-/

namespace A217657.P597514317876169782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A055642 n : ℤ) / 10))

end

end A217657.P597514317876169782

noncomputable section

/-- A217657: Delete the initial digit in decimal representation of n.

Offset 0, canonical program `A217657.P597514317876169782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217657 (n : ℕ) : ℤ :=
  A217657.P597514317876169782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A217657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219009.P4084313568037727888

`∑{d}[n+1, A007427(#)*A063775((n+1)/#)]`
-/

namespace A219009.P4084313568037727888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A063775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A219009.P4084313568037727888

noncomputable section

/-- A219009: Coefficients of the Dirichlet series for zeta(4s)/zeta(s).

Offset 1, canonical program `A219009.P4084313568037727888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219009 (n : ℕ) : ℤ :=
  A219009.P4084313568037727888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A219839.P1850322905401694183

`floor(A176095(n+1)/2)`
-/

namespace A219839.P1850322905401694183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176095 (n + 1) : ℚ) / 2⌋

end

end A219839.P1850322905401694183

noncomputable section

/-- A219839: a(n) is the number of odd integers in 2..(n-1) that have a common factor (other than 1) with n.

Offset 1, canonical program `A219839.P1850322905401694183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219839 (n : ℕ) : ℤ :=
  A219839.P1850322905401694183.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A219839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A226649.P15664765570718738223

`A000045(floor((n-1)/2))+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A226649.P15664765570718738223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000045 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 2)

end

end A226649.P15664765570718738223

noncomputable section

/-- A226649: Fibonacci shuffles: a(2n) = A000071(n) and a(2n+1) = A001611(n+2).

Offset 0, canonical program `A226649.P15664765570718738223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A226649 (n : ℕ) : ℤ :=
  A226649.P15664765570718738223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. -/
def A226649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228484.P202728195289297954

`2^n*A005809(n)`
-/

namespace A228484.P202728195289297954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005809 n

end

end A228484.P202728195289297954

noncomputable section

/-- A228484: a(n) = 2^n*(3*n)!/(n!*(2*n)!).

Offset 0, canonical program `A228484.P202728195289297954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228484 (n : ℕ) : ℤ :=
  A228484.P202728195289297954.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A228484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230196.P2469351753429117259

`A011960(n+1)-A178146(n+1)`
-/

namespace A230196.P2469351753429117259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (n + 1) - A178146 (n + 1)

end

end A230196.P2469351753429117259

noncomputable section

/-- A230196: Number of pairs (p,q) such that 2*p + 3*q = n and p != q.

Offset 1, canonical program `A230196.P2469351753429117259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230196 (n : ℕ) : ℤ :=
  A230196.P2469351753429117259.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232091.P4560155968691293298

`A008238(A027709(n))`
-/

namespace A232091.P4560155968691293298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A027709 n).toNat

end

end A232091.P4560155968691293298

noncomputable section

/-- A232091: Smallest square or promic (oblong) number greater than or equal to n.

Offset 0, canonical program `A232091.P4560155968691293298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232091 (n : ℕ) : ℤ :=
  A232091.P4560155968691293298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234040.P6629158530363296472

`A028303(A042964(n+1))`
-/

namespace A234040.P6629158530363296472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A042964 (n + 1)).toNat

end

end A234040.P6629158530363296472

noncomputable section

/-- A234040: a(n) = binomial(2*(n+1),n) * gcd(n,2)/(2*(n+1)).

Offset 0, canonical program `A234040.P6629158530363296472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A234040 (n : ℕ) : ℤ :=
  A234040.P6629158530363296472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A234040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234959.P12234400082203346417

`6^A122841(n+1)`
-/

namespace A234959.P12234400082203346417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A122841 (n + 1) : ℤ)

end

end A234959.P12234400082203346417

noncomputable section

/-- A234959: Highest power of 6 dividing n.

Offset 1, canonical program `A234959.P12234400082203346417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234959 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234959.P12234400082203346417.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A234959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A235963.P8917601203416474347

`A180447(n)+A085141(n)`
-/

namespace A235963.P8917601203416474347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 n + A085141 n

end

end A235963.P8917601203416474347

noncomputable section

/-- A235963: n appears (n+1)/(1 + (n mod 2)) times.

Offset 0, canonical program `A235963.P8917601203416474347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235963 (n : ℕ) : ℤ :=
  A235963.P8917601203416474347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236191.P6410617248716895503

`A000045(n)*A033999(A004482(n))`
-/

namespace A236191.P6410617248716895503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A033999 (A004482 n).toNat

end

end A236191.P6410617248716895503

noncomputable section

/-- A236191: a(n) = (-1)^floor( (n-1) / 3 ) * F(n), where F = Fibonacci.

Offset 0, canonical program `A236191.P6410617248716895503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A236191 (n : ℕ) : ℤ :=
  A236191.P6410617248716895503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A236191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237884.P1196767609388771144

`A056040(n)*floor(n/2)/(floor(n/2)+1)`
-/

namespace A237884.P1196767609388771144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n * ⌊(n : ℚ) / 2⌋ : ℚ) / (⌊(n : ℚ) / 2⌋ + 1 : ℚ)

end

end A237884.P1196767609388771144

noncomputable section

/-- A237884: a(n) = (n!*m)/(m!*(m+1)!) where m = floor(n/2).

Offset 0, canonical program `A237884.P1196767609388771144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A237884.P1196767609388771144.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238468.P4933202717561499868

`∑[-A234044(abs(4-n))]`
-/

namespace A238468.P4933202717561499868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A234044 |4 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238468.P4933202717561499868

noncomputable section

/-- A238468: Period 7: repeat [0, 0, -1, 1, -1, 1, 0].

Offset 0, canonical program `A238468.P4933202717561499868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238468 (n : ℕ) : ℤ :=
  A238468.P4933202717561499868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239050.P12685587340824370499

`2*A074400(n+1)`
-/

namespace A239050.P12685587340824370499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074400 (n + 1)

end

end A239050.P12685587340824370499

noncomputable section

/-- A239050: a(n) = 4*sigma(n).

Offset 1, canonical program `A239050.P12685587340824370499`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239050 (n : ℕ) : ℤ :=
  A239050.P12685587340824370499.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240025.P6086676864116806394

`A000007(A055087(n))`
-/

namespace A240025.P6086676864116806394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A055087 n).toNat

end

end A240025.P6086676864116806394

noncomputable section

/-- A240025: Characteristic function of quarter squares, cf. A002620.

Offset 0, canonical program `A240025.P6086676864116806394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240025 (n : ℕ) : ℤ :=
  A240025.P6086676864116806394.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241205.P15385239283493477032

`∑[∑[C(A002522(n), 3)/10]]`
-/

namespace A241205.P15385239283493477032
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002522 n).toNat 3 : ℚ) / 10

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241205.P15385239283493477032

noncomputable section

/-- A241205: Sum of x*y^2*z^3 for positive integers x,y,z with x + y + z = n.

Offset 1, canonical program `A241205.P15385239283493477032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241205 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A241205.P15385239283493477032.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242172.P14720321246685490122

`A100071(n+2)/2`
-/

namespace A242172.P14720321246685490122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (n + 2) : ℚ) / 2

end

end A242172.P14720321246685490122

noncomputable section

/-- A242172: a(n) = 2^n*binomial((n + 1 + (n mod 2))/2, 1/2).

Offset 0, canonical program `A242172.P14720321246685490122`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242172.P14720321246685490122.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A242172.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242818.P12293616583883546733

`A000898(n)/2^ceil(n/2)`
-/

namespace A242818.P12293616583883546733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A242818.P12293616583883546733

noncomputable section

/-- A242818: a(n) = 2^floor(n/2) n! [x^n] exp(x+x^2/4), where [x^n] f(x) denotes the coefficient of x^n in the expansion of f(x).

Offset 0, canonical program `A242818.P12293616583883546733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A242818 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242818.P12293616583883546733.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A242818.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A246394.P5096704532663512882

`A004083(n+1)-1`
-/

namespace A246394.P5096704532663512882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004083 (n + 1) - 1

end

end A246394.P5096704532663512882

noncomputable section

/-- A246394: Nonnegative integers k satisfying cos(k) <= 0 and cos(k+1) >= 0.

Offset 0, canonical program `A246394.P5096704532663512882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246394 (n : ℕ) : ℤ :=
  A246394.P5096704532663512882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246604.P5603396420743086449

`A000108(n)-n`
-/

namespace A246604.P5603396420743086449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (n : ℤ)

end

end A246604.P5603396420743086449

noncomputable section

/-- A246604: a(n) = Catalan(n) - n.

Offset 0, canonical program `A246604.P5603396420743086449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A246604 (n : ℕ) : ℤ :=
  A246604.P5603396420743086449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A246604.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A247343.P16054937885260863727

`∑{d}[n+1, A007427(#)*A007427((n+1)/#)]`
-/

namespace A247343.P16054937885260863727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P16054937885260863727

noncomputable section

/-- A247343: Moebius transform applied four times to sequence 1,0,0,0,....

Offset 1, canonical program `A247343.P16054937885260863727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247343 (n : ℕ) : ℤ :=
  A247343.P16054937885260863727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249115.P7089744513325153682

`∑[2-A114986(n)]`
-/

namespace A249115.P7089744513325153682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249115.P7089744513325153682

noncomputable section

/-- A249115: Floor(r*n), where r = (5 - sqrt(5))/2; the Beatty complement of A003231.

Offset 1, canonical program `A249115.P7089744513325153682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249115 (n : ℕ) : ℤ :=
  A249115.P7089744513325153682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249728.P8976673975456800970

`∑[char[A061536(n+1)]]+1`
-/

namespace A249728.P8976673975456800970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A249728.P8976673975456800970

noncomputable section

/-- A249728: After a(1) = 1 each n appears A000720(n) times.

Offset 1, canonical program `A249728.P8976673975456800970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249728 (n : ℕ) : ℤ :=
  (A249728.P8976673975456800970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251655.P6827696213836453210

`A000078(n+2)-A000078(n)`
-/

namespace A251655.P6827696213836453210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 2) - A000078 n

end

end A251655.P6827696213836453210

noncomputable section

/-- A251655: 4-step Fibonacci sequence starting with 0, 1, 1, 1.

Offset 0, canonical program `A251655.P6827696213836453210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251655 (n : ℕ) : ℤ :=
  A251655.P6827696213836453210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251656.P5740695371282096240

`A000078(n+3)-A000078(n+2)-2*A000078(n)`
-/

namespace A251656.P5740695371282096240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - A000078 (n + 2) - 2 * A000078 n

end

end A251656.P5740695371282096240

noncomputable section

/-- A251656: 4-step Fibonacci sequence starting with 1,0,1,0.

Offset 0, canonical program `A251656.P5740695371282096240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251656 (n : ℕ) : ℤ :=
  A251656.P5740695371282096240.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251703.P11193644302280101743

`A000078(n+3)-2*A000078(n+1)-2*A000078(n)`
-/

namespace A251703.P11193644302280101743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - 2 * A000078 (n + 1) - 2 * A000078 n

end

end A251703.P11193644302280101743

noncomputable section

/-- A251703: 4-step Fibonacci sequence starting with 1,1,0,0.

Offset 0, canonical program `A251703.P11193644302280101743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251703 (n : ℕ) : ℤ :=
  A251703.P11193644302280101743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251703.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253122.P10577464860156726926

`4*A051437(n)`
-/

namespace A253122.P10577464860156726926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051437 n

end

end A253122.P10577464860156726926

noncomputable section

/-- A253122: Number of length n+2 0..1 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A253122.P10577464860156726926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A253122 (n : ℕ) : ℤ :=
  A253122.P10577464860156726926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A253122.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A253769.P2452333697715072660`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253769 (n : ℕ) : ℤ :=
  A253769.P2452333697715072660.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A006218, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A253769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A253947.P18190009878537455231

`6*A000580(n+7)`
-/

namespace A253947.P18190009878537455231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000580 (n + 7)

end

end A253947.P18190009878537455231

noncomputable section

/-- A253947: a(n) = 6*binomial(n+1,7).

Offset 6, canonical program `A253947.P18190009878537455231`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253947 (n : ℕ) : ℤ :=
  A253947.P18190009878537455231.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000580, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A253947.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A256281.P16115446406874101517

`∑{d}[n+1, A000129(#)]`
-/

namespace A256281.P16115446406874101517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000129 d

end

end A256281.P16115446406874101517

noncomputable section

/-- A256281: Inverse Moebius transform of Pell numbers.

Offset 1, canonical program `A256281.P16115446406874101517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A256281 (n : ℕ) : ℤ :=
  A256281.P16115446406874101517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A256281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256956.P5934166374789852245

`A000720(n+1)*A000720(n+2)`
-/

namespace A256956.P5934166374789852245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A000720 (n + 2)

end

end A256956.P5934166374789852245

noncomputable section

/-- A256956: a(n) = pi(n) * pi(n+1), where pi(n) is the number of primes <= n.

Offset 1, canonical program `A256956.P5934166374789852245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256956 (n : ℕ) : ℤ :=
  A256956.P5934166374789852245.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259361.P16495577185531896410

`A000194(n+1)-1`
-/

namespace A259361.P16495577185531896410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) - 1

end

end A259361.P16495577185531896410

noncomputable section

/-- A259361: n occurs 2n+2 times.

Offset 0, canonical program `A259361.P16495577185531896410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259361 (n : ℕ) : ℤ :=
  A259361.P16495577185531896410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259361.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A263794.P2113053867351144171

`A004006(floor(n/2)+2)`
-/

namespace A263794.P2113053867351144171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A263794.P2113053867351144171

noncomputable section

/-- A263794: Number of (n+1) X (3+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

Offset 1, canonical program `A263794.P2113053867351144171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263794 (n : ℕ) : ℤ :=
  A263794.P2113053867351144171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265263.P13560857298709796040

`and(n, A066194(n+1)-1)`
-/

namespace A265263.P13560857298709796040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A066194 (n + 1) - 1)

end

end A265263.P13560857298709796040

noncomputable section

/-- A265263: Change every other 1 bit in binary expansion of n to 0.

Offset 0, canonical program `A265263.P13560857298709796040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265263 (n : ℕ) : ℤ :=
  A265263.P13560857298709796040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265263.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A266491.P10525690315640493419

`a(n-4)+4*A130658(n)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A266491.P10525690315640493419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6] fun n a =>
  a (n - 4) + 4 * A130658 n

end

end A266491.P10525690315640493419

noncomputable section

/-- A266491: a(n) = n*A130658(n).

Offset 0, canonical program `A266491.P10525690315640493419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266491 (n : ℕ) : ℤ :=
  A266491.P10525690315640493419.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270577.P11460174371161535537

`A000108(2*n)*A000984(n)`
-/

namespace A270577.P11460174371161535537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A000984 n

end

end A270577.P11460174371161535537

noncomputable section

/-- A270577: Generalized Catalan numbers C(3,n), where the (m,n)-th Catalan is the number of paths in R^m from the origin to the point (n,...,n,(m-1)n) with m kinds of moves such that the path never rises above the hyperplane x_m = x_1+...+x_{m-1}.

Offset 0, canonical program `A270577.P11460174371161535537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270577 (n : ℕ) : ℤ :=
  A270577.P11460174371161535537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270577.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A272027.P17950759033993077215

`3*A000203(n+1)`
-/

namespace A272027.P17950759033993077215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000203 (n + 1)

end

end A272027.P17950759033993077215

noncomputable section

/-- A272027: a(n) = 3*sigma(n).

Offset 1, canonical program `A272027.P17950759033993077215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272027 (n : ℕ) : ℤ :=
  A272027.P17950759033993077215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274206.P16201747773322554499

`(n+1)%(10^A160094(n+1))`
-/

namespace A274206.P16201747773322554499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A160094 (n + 1) : ℤ)))

end

end A274206.P16201747773322554499

noncomputable section

/-- A274206: a(n) = the last nonzero digit of n followed by all the trailing zeros of n.

Offset 1, canonical program `A274206.P16201747773322554499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274206 (n : ℕ) : ℤ :=
  A274206.P16201747773322554499.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274535.P4233430454223343819

`5*A000203(n+1)`
-/

namespace A274535.P4233430454223343819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000203 (n + 1)

end

end A274535.P4233430454223343819

noncomputable section

/-- A274535: a(n) = 5*sigma(n).

Offset 1, canonical program `A274535.P4233430454223343819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274535 (n : ℕ) : ℤ :=
  A274535.P4233430454223343819.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276859.P14467022770255802899

`abs(Δ[A022843(n)])`
-/

namespace A276859.P14467022770255802899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276859.P14467022770255802899

noncomputable section

/-- A276859: First differences of the Beatty sequence A022843 for e.

Offset 1, canonical program `A276859.P14467022770255802899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276859 (n : ℕ) : ℤ :=
  A276859.P14467022770255802899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279054.P14839410525152240936

`A247426(n+1)-1`
-/

namespace A279054.P14839410525152240936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247426 (n + 1) - 1

end

end A279054.P14839410525152240936

noncomputable section

/-- A279054: Largest integer m for which binomial(m,n-1) > binomial(m-1,n).

Offset 1, canonical program `A279054.P14839410525152240936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279054 (n : ℕ) : ℤ :=
  A279054.P14839410525152240936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279607.P18326851773898549082

`ceil(A184589(n+1)/2)`
-/

namespace A279607.P18326851773898549082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184589 (n + 1) : ℚ) / 2⌉

end

end A279607.P18326851773898549082

noncomputable section

/-- A279607: Beatty sequence for e/2; i.e., a(n) = floor(n*e/2).

Offset 1, canonical program `A279607.P18326851773898549082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279607 (n : ℕ) : ℤ :=
  A279607.P18326851773898549082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281006.P4753203276795461863

`A000203(n+1)-A052928(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A281006.P4753203276795461863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A052928 n

end

end A281006.P4753203276795461863

noncomputable section

/-- A281006: a(n) = A000203(n) - A052928(n-1).

Offset 1, canonical program `A281006.P4753203276795461863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281006 (n : ℕ) : ℤ :=
  A281006.P4753203276795461863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281375.P13759685335242621079

`A053639(n+1)-A043545(n)`
-/

namespace A281375.P13759685335242621079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 (n + 1) - A043545 n

end

end A281375.P13759685335242621079

noncomputable section

/-- A281375: a(n) = floor(2^(n+1)/n).

Offset 1, canonical program `A281375.P13759685335242621079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A281375 (n : ℕ) : ℤ :=
  A281375.P13759685335242621079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A281375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281500.P2681938232247418297

`a(n-2)+A117856(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A281500.P2681938232247418297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + A117856 (n + 1)

end

end A281500.P2681938232247418297

noncomputable section

/-- A281500: Reduced denominators of f(n) = (n+1)/(2^(2+n)-2) with A026741(n+1) as numerators.

Offset 0, canonical program `A281500.P2681938232247418297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281500 (n : ℕ) : ℤ :=
  A281500.P2681938232247418297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284117.P13830945115724323163

`∑{d}[n+1, #*A268340(#)]`
-/

namespace A284117.P13830945115724323163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A268340 d

end

end A284117.P13830945115724323163

noncomputable section

/-- A284117: Sum of proper prime power divisors of n.

Offset 1, canonical program `A284117.P13830945115724323163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284117 (n : ℕ) : ℤ :=
  A284117.P13830945115724323163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284624.P2118528827355321266

`A000027(A026352(n)+1+n)`
-/

namespace A284624.P2118528827355321266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A026352 n + 1 + (n : ℤ)).toNat

end

end A284624.P2118528827355321266

noncomputable section

/-- A284624: Positions of 1 in A284749.

Offset 1, canonical program `A284624.P2118528827355321266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284624 (n : ℕ) : ℤ :=
  A284624.P2118528827355321266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285099.P14812426102409343108

`val(A008486(and(n, n-1)), 2)`
-/

namespace A285099.P14812426102409343108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008486 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat 2

end

end A285099.P14812426102409343108

noncomputable section

/-- A285099: a(n) is the zero-based index of the second least significant 1-bit in the base-2 representation of n, or 0 if there are fewer than two 1-bits in n.

Offset 0, canonical program `A285099.P14812426102409343108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285099 (n : ℕ) : ℤ :=
  (A285099.P14812426102409343108.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285679.P7008390562928459721

`abs(3*A026351(n)-n)`
-/

namespace A285679.P7008390562928459721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A026351 n - (n : ℤ)|

end

end A285679.P7008390562928459721

noncomputable section

/-- A285679: Positions of 2 in A285677.

Offset 1, canonical program `A285679.P7008390562928459721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285679 (n : ℕ) : ℤ :=
  A285679.P7008390562928459721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285682.P14811825003316370073

`abs(2*A284624(n+1)-2-n)`
-/

namespace A285682.P14811825003316370073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A284624 (n + 1) - 2 - (n : ℤ)|

end

end A285682.P14811825003316370073

noncomputable section

/-- A285682: Positions of 1 in A285680.

Offset 1, canonical program `A285682.P14811825003316370073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285682 (n : ℕ) : ℤ :=
  A285682.P14811825003316370073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287775.P13905753593983467473

`A000201(A008619(n))+1+n`
-/

namespace A287775.P13905753593983467473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A008619 n).toNat + 1 + (n : ℤ)

end

end A287775.P13905753593983467473

noncomputable section

/-- A287775: Positions of 0 in A287772; complement of A050140 (conjectured and proved).

Offset 1, canonical program `A287775.P13905753593983467473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287775 (n : ℕ) : ℤ :=
  A287775.P13905753593983467473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288709.P8804272716824744838

`xor(1, 2*A026352(n))`
-/

namespace A288709.P8804272716824744838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A026352 n)

end

end A288709.P8804272716824744838

noncomputable section

/-- A288709: Positions of 1's in A288707; complement of A288708.

Offset 1, canonical program `A288709.P8804272716824744838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288709 (n : ℕ) : ℤ :=
  A288709.P8804272716824744838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288709.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A292647.P7577445348216488322

`∑[Δ[A032634(n)]+2]`
-/

namespace A292647.P7577445348216488322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292647.P7577445348216488322

noncomputable section

/-- A292647: Rank of (e+1)*n when all the numbers e*j and (e+1)*k, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292647.P7577445348216488322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292647 (n : ℕ) : ℤ :=
  A292647.P7577445348216488322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293125.P13067584911367898446

`(-1)^n*A000262(n)`
-/

namespace A293125.P13067584911367898446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000262 n

end

end A293125.P13067584911367898446

noncomputable section

/-- A293125: Expansion of e.g.f.: exp(-x/(1+x)).

Offset 0, canonical program `A293125.P13067584911367898446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293125 (n : ℕ) : ℤ :=
  A293125.P13067584911367898446.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294175.P1326977934770168492

`A027306(n)-A001405(n)`
-/

namespace A294175.P1326977934770168492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - A001405 n

end

end A294175.P1326977934770168492

noncomputable section

/-- A294175: a(n) = 2^(n-1) + ((1+(-1)^n)/4)*binomial(n, n/2) - binomial(n, floor(n/2)).

Offset 0, canonical program `A294175.P1326977934770168492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A294175 (n : ℕ) : ℤ :=
  A294175.P1326977934770168492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A294175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294273.P3284638066771822649

`A001014(∑[n]%(n+1))+A000540(n)`
-/

namespace A294273.P3284638066771822649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000540 n

end

end A294273.P3284638066771822649

noncomputable section

/-- A294273: Sum of the sixth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294273.P3284638066771822649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294273 (n : ℕ) : ℤ :=
  A294273.P3284638066771822649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294273.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A294937.P16064831210993750001

`1-A294935(n+1)`
-/

namespace A294937.P16064831210993750001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294935 (n + 1)

end

end A294937.P16064831210993750001

noncomputable section

/-- A294937: Characteristic function for abundant numbers (A005101): a(n) = 1 if A001065(n) > n, 0 otherwise.

Offset 1, canonical program `A294937.P16064831210993750001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294937 (n : ℕ) : ℤ :=
  A294937.P16064831210993750001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295294.P6897836306640432770

`A000203(n+1)/A092261(n+1)`
-/

namespace A295294.P6897836306640432770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A295294.P6897836306640432770

noncomputable section

/-- A295294: Sum of the divisors of the powerful part of n: a(n) = A000203(A057521(n)).

Offset 1, canonical program `A295294.P6897836306640432770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295294 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295294.P6897836306640432770.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092261, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295294.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A297109.P3226708849595875613

`A230980(A020500(n+1))`
-/

namespace A297109.P3226708849595875613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A020500 (n + 1)).toNat

end

end A297109.P3226708849595875613

noncomputable section

/-- A297109: If n is prime(k)^e, e >= 1, then a(n) = k, otherwise 0.

Offset 1, canonical program `A297109.P3226708849595875613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297109 (n : ℕ) : ℤ :=
  A297109.P3226708849595875613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297109.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A300222.P16406266268068730929

`2*A005836(1+A289814(n))`
-/

namespace A300222.P16406266268068730929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (1 + A289814 n).toNat

end

end A300222.P16406266268068730929

noncomputable section

/-- A300222: In ternary (base-3) representation of n, replace 1's with 0's.

Offset 0, canonical program `A300222.P16406266268068730929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300222 (n : ℕ) : ℤ :=
  A300222.P16406266268068730929.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301739.P6947186573899325127

`A000601(n)+∑[ceil((n+1)/2)²]`
-/

namespace A301739.P6947186573899325127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / 2⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301739.P6947186573899325127

noncomputable section

/-- A301739: The number of trees with 4 nodes labeled by positive integers, where each tree's label sum is n.

Offset 4, canonical program `A301739.P6947186573899325127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301739 (n : ℕ) : ℤ :=
  A301739.P6947186573899325127.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302777.P12979743537694390003

`A209229(A100995(n+1))`
-/

namespace A302777.P12979743537694390003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A100995 (n + 1)).toNat

end

end A302777.P12979743537694390003

noncomputable section

/-- A302777: a(n) = 1 if n is of the form p^(2^k) where p is prime and k >= 0, otherwise 0.

Offset 1, canonical program `A302777.P12979743537694390003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302777 (n : ℕ) : ℤ :=
  A302777.P12979743537694390003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302777.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A304411.P4036889141773001327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304411 (n : ℕ) : ℤ :=
  A304411.P4036889141773001327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304909.P3593984619417138488

`n*A018819(n)`
-/

namespace A304909.P3593984619417138488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018819 n

end

end A304909.P3593984619417138488

noncomputable section

/-- A304909: Expansion of x * (d/dx) Product_{k>=0} 1/(1 - x^(2^k)).

Offset 0, canonical program `A304909.P3593984619417138488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304909 (n : ℕ) : ℤ :=
  A304909.P3593984619417138488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304973.P4987803302753247775

`A182522(n)-A016116(n)`
-/

namespace A304973.P4987803302753247775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n - A016116 n

end

end A304973.P4987803302753247775

noncomputable section

/-- A304973: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 3 colors (sets).

Offset 0, canonical program `A304973.P4987803302753247775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A304973 (n : ℕ) : ℤ :=
  A304973.P4987803302753247775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A304973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307768.P13717369919277474039

`2^n-A063886(n)`
-/

namespace A307768.P13717369919277474039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A063886 n

end

end A307768.P13717369919277474039

noncomputable section

/-- A307768: Number of n-step random walks on a line starting from the origin and returning to it at least once.

Offset 0, canonical program `A307768.P13717369919277474039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307768 (n : ℕ) : ℤ :=
  A307768.P13717369919277474039.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307768.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318828.P5506889447747921512

`1-A063994(n+1)+n`
-/

namespace A318828.P5506889447747921512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A063994 (n + 1) + (n : ℤ)

end

end A318828.P5506889447747921512

noncomputable section

/-- A318828: a(n) = n - A063994(n) = n - Product_{primes p dividing n} gcd(p-1, n-1).

Offset 1, canonical program `A318828.P5506889447747921512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318828 (n : ℕ) : ℤ :=
  A318828.P5506889447747921512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319866.P15824373507839325677

`a(n-2)+2*A128918(n)` with `a(0)=2, a(1)=2`
-/

namespace A319866.P15824373507839325677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + 2 * A128918 n

end

end A319866.P15824373507839325677

noncomputable section

/-- A319866: a(n) = 2*1 + 4*3 + 6*5 + 8*7 + 10*9 + 12*11 + ... + (up to the n-th term).

Offset 1, canonical program `A319866.P15824373507839325677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319866 (n : ℕ) : ℤ :=
  A319866.P15824373507839325677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320486.P7452552774313601492

`A289207(A320485(n)+2)`
-/

namespace A320486.P7452552774313601492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A320485 n + 2).toNat

end

end A320486.P7452552774313601492

noncomputable section

/-- A320486: Keep just the digits of n that appear exactly once; write 0 if all digits disappear.

Offset 0, canonical program `A320486.P7452552774313601492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320486 (n : ℕ) : ℤ :=
  A320486.P7452552774313601492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321322.P14680156201706380527

`∑{d}[n+1, A000290(#)*A007427((n+1)/#)]`
-/

namespace A321322.P14680156201706380527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P14680156201706380527

noncomputable section

/-- A321322: a(n) = Sum_{d|n} mu(n/d)*J_2(d), where J_2() is the Jordan function (A007434).

Offset 1, canonical program `A321322.P14680156201706380527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321322 (n : ℕ) : ℤ :=
  A321322.P14680156201706380527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321322.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A326399.P10632042506971658356

`∑{d}[n+1, #*A079978((n+1)/#-1)]`
-/

namespace A326399.P10632042506971658356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079978 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A326399.P10632042506971658356

noncomputable section

/-- A326399: Expansion of Sum_{k>=1} k * x^k / (1 - x^(3*k)).

Offset 1, canonical program `A326399.P10632042506971658356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326399 (n : ℕ) : ℤ :=
  A326399.P10632042506971658356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326399.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A331176.P4521409389125986584

`n-floor(n/A009195(n+1))`
-/

namespace A331176.P4521409389125986584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A009195 (n + 1) : ℚ)⌋

end

end A331176.P4521409389125986584

noncomputable section

/-- A331176: a(n) = n - n/gcd(n, phi(n)), where phi is Euler totient function.

Offset 1, canonical program `A331176.P4521409389125986584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331176 (n : ℕ) : ℤ :=
  A331176.P4521409389125986584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331176.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A332732.P2456103261483867088

`∏{e}[n+1, A000484(#+2)]`
-/

namespace A332732.P2456103261483867088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000484 (Nat.factorization (f1 n) p + 2)

end

end A332732.P2456103261483867088

noncomputable section

/-- A332732: Dirichlet g.f.: zeta(6*s) / (zeta(s) * zeta(2*s) * zeta(3*s)).

Offset 1, canonical program `A332732.P2456103261483867088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332732 (n : ℕ) : ℤ :=
  A332732.P2456103261483867088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333320.P6787680048393939661

`A000332(∑[n%2])*A004526(n)`
-/

namespace A333320.P6787680048393939661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j) * A004526 n

end

end A333320.P6787680048393939661

noncomputable section

/-- A333320: a(n) is the number of subsets of {1..n} that contain exactly 4 odd and 1 even numbers.

Offset 0, canonical program `A333320.P6787680048393939661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333320 (n : ℕ) : ℤ :=
  A333320.P6787680048393939661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335111.P10838613545657729623

`A000023(n)-A122803(n)`
-/

namespace A335111.P10838613545657729623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000023 n - A122803 n

end

end A335111.P10838613545657729623

noncomputable section

/-- A335111: a(n) = n! * Sum_{k=0..n-1} (-2)^k / k!.

Offset 0, canonical program `A335111.P10838613545657729623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335111 (n : ℕ) : ℤ :=
  A335111.P10838613545657729623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A335111.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A337101.P14807229277713174019

`A064727(A022998(n+1))`
-/

namespace A337101.P14807229277713174019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A022998 (n + 1)).toNat

end

end A337101.P14807229277713174019

noncomputable section

/-- A337101: Number of partitions of n into two positive parts (s,t), s <= t, such that the harmonic mean of s and t is an integer.

Offset 1, canonical program `A337101.P14807229277713174019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A337101 (n : ℕ) : ℤ :=
  A337101.P14807229277713174019.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A337101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337896.P8754615183862050880

`A002415(n+1)+A033488(n)*A050534(n+1)`
-/

namespace A337896.P8754615183862050880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + A033488 n * A050534 (n + 1)

end

end A337896.P8754615183862050880

noncomputable section

/-- A337896: Number of chiral pairs of colorings of the 8 triangular faces of a regular octahedron or the 8 vertices of a cube using n or fewer colors.

Offset 1, canonical program `A337896.P8754615183862050880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A337896 (n : ℕ) : ℤ :=
  A337896.P8754615183862050880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A337896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338192.P8906844135182273752

`A000073(n)+A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338192.P8906844135182273752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n + A000045 n

end

end A338192.P8906844135182273752

noncomputable section

/-- A338192: Sum of Fibonacci and tribonacci numbers: a(n) = A000073(n) + A000045(n).

Offset 0, canonical program `A338192.P8906844135182273752`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000073(n)+A000045(n)` (program `A338192.P8906844135182273752`, by `A338192.P8906844135182273752.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A338192 (n : ℕ) : ℤ :=
  A338192.P8906844135182273752.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000073(n)+A000045(n)` (program `A338192.P8906844135182273752`, by `A338192.P8906844135182273752.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A338192.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A340507.P13308749696070402216

`floor(sqrt(2*n))-A003056(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340507.P13308749696070402216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * n) : ℤ) - A003056 n

end

end A340507.P13308749696070402216

noncomputable section

/-- A340507: a(n) = floor(sqrt(2*n)) - A003056(n).

Offset 0, canonical program `A340507.P13308749696070402216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340507 (n : ℕ) : ℤ :=
  A340507.P13308749696070402216.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A340507.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A341522.P9890293250577660605

`1+n+A086799(1+n)`
-/

namespace A341522.P9890293250577660605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ((n : ℤ) + A086799 (1 + n))

end

end A341522.P9890293250577660605

noncomputable section

/-- A341522: a(n) = A156552(3*A005940(1+n)).

Offset 0, canonical program `A341522.P9890293250577660605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341522 (n : ℕ) : ℤ :=
  A341522.P9890293250577660605.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A341522.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A343110.P14036708916110220053

`eq[0, A188172(n+1)]+1`
-/

namespace A343110.P14036708916110220053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343110.P14036708916110220053

noncomputable section

/-- A343110: Numbers having no divisor of the form 8*k + 7.

Offset 1, canonical program `A343110.P14036708916110220053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4347 terms. -/
def A343110 (n : ℕ) : ℤ :=
  (A343110.P14036708916110220053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4347 terms. -/
def A343110.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A344574.P13987926843258273889

`∑{d}[n+1, A157658(#)*A161680((n+1)/#-1)]`
-/

namespace A344574.P13987926843258273889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A161680 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A344574.P13987926843258273889

noncomputable section

/-- A344574: Number of ordered pairs (i,j) with 0 < i < j < n such that gcd(i,j,n) > 1.

Offset 1, canonical program `A344574.P13987926843258273889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344574 (n : ℕ) : ℤ :=
  A344574.P13987926843258273889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A344574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A344853.P1953230496886263085

`2*A054861(n)`
-/

namespace A344853.P1953230496886263085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054861 n

end

end A344853.P1953230496886263085

noncomputable section

/-- A344853: a(n) = n minus (sum of digits of n in base 3).

Offset 0, canonical program `A344853.P1953230496886263085`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344853 (n : ℕ) : ℤ :=
  A344853.P1953230496886263085.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A344853.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A348257.P15552577477380916611

`A000554(n+4)/2`
-/

namespace A348257.P15552577477380916611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000554 (n + 4) : ℚ) / 2

end

end A348257.P15552577477380916611

noncomputable section

/-- A348257: Number of ways we can write [n] as the union of 2 sets of sizes i, j which intersect in exactly 2 elements (2 < i,j < n; i = j allowed).

Offset 4, canonical program `A348257.P15552577477380916611`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348257.P15552577477380916611.a (n - 4))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000554, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349371.P16064680490200094377

`∑{d}[n+1, A088705(#)*A140472((n+1)/#)]`
-/

namespace A349371.P16064680490200094377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A140472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349371.P16064680490200094377

noncomputable section

/-- A349371: Inverse Möbius transform of Kimberling's paraphrase, A003602.

Offset 1, canonical program `A349371.P16064680490200094377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349371 (n : ℕ) : ℤ :=
  A349371.P16064680490200094377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349993.P9722615795151588761

`abs(A000093(n)+1-n)`
-/

namespace A349993.P9722615795151588761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000093 n + (1 - (n : ℤ))|

end

end A349993.P9722615795151588761

noncomputable section

/-- A349993: a(n) is the number of squares k^2 with n^2 <= k^2 <= n^3.

Offset 0, canonical program `A349993.P9722615795151588761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349993 (n : ℕ) : ℤ :=
  A349993.P9722615795151588761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349993.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A354031.P5992259175605925891

`A024362(n+1)%2`
-/

namespace A354031.P5992259175605925891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024362 (n + 1)) 2

end

end A354031.P5992259175605925891

noncomputable section

/-- A354031: a(n) = 1 if n > 1 and n is a power of a Pythagorean prime (prime of the form 4m+1), otherwise 0.

Offset 1, canonical program `A354031.P5992259175605925891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354031 (n : ℕ) : ℤ :=
  A354031.P5992259175605925891.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A354031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355688.P3554588544041009988

`-A156277(2*(n+1))`
-/

namespace A355688.P3554588544041009988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156277 (2 * (n + 1))

end

end A355688.P3554588544041009988

noncomputable section

/-- A355688: Dirichlet inverse of A354354, characteristic function of numbers that are neither multiples of 2 nor 3.

Offset 1, canonical program `A355688.P3554588544041009988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355688 (n : ℕ) : ℤ :=
  A355688.P3554588544041009988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355937.P2880473829388001643

`round(1/A010553(n+1))`
-/

namespace A355937.P2880473829388001643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A010553 (n + 1) : ℚ))

end

end A355937.P2880473829388001643

noncomputable section

/-- A355937: a(n) = 1 if the number of divisors of n is a noncomposite, otherwise 0.

Offset 1, canonical program `A355937.P2880473829388001643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355937 (n : ℕ) : ℤ :=
  A355937.P2880473829388001643.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356217.P14398232808931277812

`A140979(n+1)-A000201(n+1)`
-/

namespace A356217.P14398232808931277812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140979 (n + 1) - A000201 (n + 1)

end

end A356217.P14398232808931277812

noncomputable section

/-- A356217: a(n) = A022839(A000201(n)).

Offset 1, canonical program `A356217.P14398232808931277812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356217 (n : ℕ) : ℤ :=
  A356217.P14398232808931277812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356549.P5941019978963454808

`∑[A034887(n+1)+A034887(n)-1]`
-/

namespace A356549.P5941019978963454808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (n + 1) + A034887 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A356549.P5941019978963454808

noncomputable section

/-- A356549: a(n) is the number of divisors of 10^n whose first digit is 1.

Offset 0, canonical program `A356549.P5941019978963454808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A356549 (n : ℕ) : ℤ :=
  A356549.P5941019978963454808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A356549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A357476.P18270851588785334001

`A018819(n)-∏{p}[n, val(#, 2)]`
-/

namespace A357476.P18270851588785334001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A357476.P18270851588785334001

noncomputable section

/-- A357476: Number of partitions of n into two or more powers of 2.

Offset 0, canonical program `A357476.P18270851588785334001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357476 (n : ℕ) : ℤ :=
  A357476.P18270851588785334001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357476.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A359189.P3684326257580875479

`∑{d}[n+1, #*A133494((n+1)/#)]`
-/

namespace A359189.P3684326257580875479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A133494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359189.P3684326257580875479

noncomputable section

/-- A359189: a(n) = Sum_{d|n} d * 3^(n/d-1).

Offset 1, canonical program `A359189.P3684326257580875479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A359189 (n : ℕ) : ℤ :=
  A359189.P3684326257580875479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A359189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359377.P17304344709579879016

`abs(A156277(n+1))`
-/

namespace A359377.P17304344709579879016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156277 (n + 1)|

end

end A359377.P17304344709579879016

noncomputable section

/-- A359377: a(n) = 1 if 3*n is squarefree, otherwise 0.

Offset 1, canonical program `A359377.P17304344709579879016`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359377 (n : ℕ) : ℤ :=
  A359377.P17304344709579879016.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156277, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359377.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A361264.P6755303600206869457`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361264 (n : ℕ) : ℤ :=
  A361264.P6755303600206869457.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361264.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A361265.P11907308521798501536`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361265 (n : ℕ) : ℤ :=
  A361265.P11907308521798501536.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A064549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361265.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361268.P17929476801326375082

`A005361(n+1)*A361264(n+1)`
-/

namespace A361268.P17929476801326375082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A361264 (n + 1)

end

end A361268.P17929476801326375082

noncomputable section

/-- A361268: Multiplicative with a(p^e) = e * p^(e + 2), e > 0.

Offset 1, canonical program `A361268.P17929476801326375082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361268 (n : ℕ) : ℤ :=
  A361268.P17929476801326375082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A361264, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361268.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361707.P15539805990408773328

`∑{d}[n+1, A000040(#)*A007427((n+1)/#)]`
-/

namespace A361707.P15539805990408773328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A361707.P15539805990408773328

noncomputable section

/-- A361707: Moebius transform applied twice to primes.

Offset 1, canonical program `A361707.P15539805990408773328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361707 (n : ℕ) : ℤ :=
  A361707.P15539805990408773328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364032.P15572008137104778974

`A188170(n+1)+A188170(n+1)-A001842(n+1)`
-/

namespace A364032.P15572008137104778974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1) + (A188170 (n + 1) - A001842 (n + 1))

end

end A364032.P15572008137104778974

noncomputable section

/-- A364032: Expansion of Sum_{k>0} x^(3*k) / (1 + x^(4*k)).

Offset 1, canonical program `A364032.P15572008137104778974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364032 (n : ℕ) : ℤ :=
  A364032.P15572008137104778974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373154.P41254786666242686

`abs(A355688(n+1))`
-/

namespace A373154.P41254786666242686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355688 (n + 1)|

end

end A373154.P41254786666242686

noncomputable section

/-- A373154: a(n) = 1 if 6*n is squarefree, otherwise 0.

Offset 1, canonical program `A373154.P41254786666242686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373154 (n : ℕ) : ℤ :=
  A373154.P41254786666242686.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A355688, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373154.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377404.P15784403255783113757

`n-A265263(n)`
-/

namespace A377404.P15784403255783113757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265263 n

end

end A377404.P15784403255783113757

noncomputable section

/-- A377404: In the binary expansion of n, replace the first, third, fifth, etc. 1's by 0's.

Offset 0, canonical program `A377404.P15784403255783113757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377404 (n : ℕ) : ℤ :=
  A377404.P15784403255783113757.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377809.P8601556192277993531

`A002024(n+1)*(A002024(n+1)+3)/2`
-/

namespace A377809.P8601556192277993531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) * ((A002024 (n + 1) + 3 : ℚ) / 2)

end

end A377809.P8601556192277993531

noncomputable section

/-- A377809: k*(k+3)/2 appears k times.

Offset 1, canonical program `A377809.P8601556192277993531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377809.P8601556192277993531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378100.P5253957062667002361

`A000085(n)-A123023(n)`
-/

namespace A378100.P5253957062667002361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A123023 n

end

end A378100.P5253957062667002361

noncomputable section

/-- A378100: Number of involutions in the symmetric group S_n with at least one fixed point.

Offset 0, canonical program `A378100.P5253957062667002361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378100 (n : ℕ) : ℤ :=
  A378100.P5253957062667002361.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379812.P10955070158037639960

`A000203(n+1)*A001157(n+1)`
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

/-! ## A380909.P658941744693780821

`A006882(n)/A095987(n)`
-/

namespace A380909.P658941744693780821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A095987 n : ℚ)

end

end A380909.P658941744693780821

noncomputable section

/-- A380909: a(n) = numerator(n!! / (n - 1)!!).

Offset 0, canonical program `A380909.P658941744693780821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380909.P658941744693780821.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380909.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A383251.P10776672623636940607

`2*A000108(n)+1`
-/

namespace A383251.P10776672623636940607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n + 1

end

end A383251.P10776672623636940607

noncomputable section

/-- A383251: Short leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383251.P10776672623636940607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383251 (n : ℕ) : ℤ :=
  A383251.P10776672623636940607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384055.P8672205794248642613

`A129527(A026741(n+1))`
-/

namespace A384055.P8672205794248642613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (A026741 (n + 1)).toNat

end

end A384055.P8672205794248642613

noncomputable section

/-- A384055: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is odd.

Offset 1, canonical program `A384055.P8672205794248642613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384055 (n : ℕ) : ℤ :=
  A384055.P8672205794248642613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384153.P11731211239372390351

`2^n-A005251(n+2)`
-/

namespace A384153.P11731211239372390351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A005251 (n + 2)

end

end A384153.P11731211239372390351

noncomputable section

/-- A384153: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 1.

Offset 0, canonical program `A384153.P11731211239372390351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A384153 (n : ℕ) : ℤ :=
  A384153.P11731211239372390351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A384153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384688.P10707158175314299968

`ceil(A053186(4*n+1)/2)`
-/

namespace A384688.P10707158175314299968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053186 (4 * n + 1) : ℚ) / 2⌉

end

end A384688.P10707158175314299968

noncomputable section

/-- A384688: Runs of t in the range 0 <= t <= k and the same parity as k, for successive k >= 0.

Offset 0, canonical program `A384688.P10707158175314299968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384688 (n : ℕ) : ℤ :=
  A384688.P10707158175314299968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384688.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A388283.P448465908817760903`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388283 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388283.P448465908817760903.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388283.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390349.P13503297479383831927

`A192804(n)+A004695(n)`
-/

namespace A390349.P13503297479383831927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n + A004695 n

end

end A390349.P13503297479383831927

noncomputable section

/-- A390349: Upper (1/2)-midsequence of Fibonacci numbers (A000045) and tribonacci numbers (A000213); see Comments.

Offset 0, canonical program `A390349.P13503297479383831927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390349 (n : ℕ) : ℤ :=
  A390349.P13503297479383831927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A390349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391683.P9562436176935939481

`A063759(n)-A164001(n+1)`
-/

namespace A391683.P9562436176935939481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A164001 (n + 1)

end

end A391683.P9562436176935939481

noncomputable section

/-- A391683: Number of integer compositions of n that are the first sums of some composition.

Offset 1, canonical program `A391683.P9562436176935939481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A391683 (n : ℕ) : ℤ :=
  A391683.P9562436176935939481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A391683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397412.P16519194348179518311

`A071773(n+1)*A112526(n+1)`
-/

namespace A397412.P16519194348179518311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A112526 (n + 1)

end

end A397412.P16519194348179518311

noncomputable section

/-- A397412: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 - 1/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397412.P16519194348179518311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397412 (n : ℕ) : ℤ :=
  A397412.P16519194348179518311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000002.P13330532946811820297

`(3+(-1)^A156253(n+1))/2`
-/

namespace A000002.P13330532946811820297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + (-1 : ℚ) ^ (A156253 (n + 1) : ℤ)) / 2

end

end A000002.P13330532946811820297

noncomputable section

/-- A000002: Kolakoski sequence: a(n) is length of n-th run; a(1) = 1; sequence consists just of 1's and 2's.

Offset 1, canonical program `A000002.P13330532946811820297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156253, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000002 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000002.P13330532946811820297.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156253, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000002.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000005.P4939238254323491243

`A048691(n+1)-A055205(n+1)`
-/

namespace A000005.P4939238254323491243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) - A055205 (n + 1)

end

end A000005.P4939238254323491243

noncomputable section

/-- A000005: d(n) (also called tau(n) or sigma_0(n)), the number of divisors of n.

Offset 1, canonical program `A000005.P4939238254323491243`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A055205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000005 (n : ℕ) : ℤ :=
  A000005.P4939238254323491243.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048691, A055205, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000005.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000006.P2817507747577515147

`A000196(A000040(n+1))`
-/

namespace A000006.P2817507747577515147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000040 (n + 1)).toNat

end

end A000006.P2817507747577515147

noncomputable section

/-- A000006: Integer part of square root of n-th prime.

Offset 1, canonical program `A000006.P2817507747577515147`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000006 (n : ℕ) : ℤ :=
  A000006.P2817507747577515147.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000006.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000026.P14646158085172730513

`A005361(n+1)*A007947(n+1)`
-/

namespace A000026.P14646158085172730513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A007947 (n + 1)

end

end A000026.P14646158085172730513

noncomputable section

/-- A000026: Mosaic numbers or multiplicative projection of n: if n = Product (p_j^k_j) then a(n) = Product (p_j * k_j).

Offset 1, canonical program `A000026.P14646158085172730513`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000026 (n : ℕ) : ℤ :=
  A000026.P14646158085172730513.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000026.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000037.P13496637083521618062

`eq[2, A169695(n)]`
-/

namespace A000037.P13496637083521618062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A000037.P13496637083521618062

noncomputable section

/-- A000037: Numbers that are not squares (or, the nonsquares).

Offset 1, canonical program `A000037.P13496637083521618062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000037 (n : ℕ) : ℤ :=
  (A000037.P13496637083521618062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000062.P7336327469151124680

`lt[Δ[-A276859(n+1)], 1]+1`
-/

namespace A000062.P7336327469151124680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A276859 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A000062.P7336327469151124680

noncomputable section

/-- A000062: A Beatty sequence: a(n) = floor(n/(e-2)).

Offset 1, canonical program `A000062.P7336327469151124680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2997 terms. -/
def A000062 (n : ℕ) : ℤ :=
  (A000062.P7336327469151124680.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2997 terms. -/
def A000062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000089.P6732950680245443794

`A350872(A026741(n+1))`
-/

namespace A000089.P6732950680245443794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350872 (A026741 (n + 1)).toNat

end

end A000089.P6732950680245443794

noncomputable section

/-- A000089: Number of solutions to x^2 + 1 == 0 (mod n).

Offset 1, canonical program `A000089.P6732950680245443794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000089 (n : ℕ) : ℤ :=
  A000089.P6732950680245443794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000102.P12334321088699624445

`A000078(n+3)-Δ[A008937(n)]`
-/

namespace A000102.P12334321088699624445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - (f1 (n + 1) - f1 n)

end

end A000102.P12334321088699624445

noncomputable section

/-- A000102: a(n) = number of compositions of n in which the maximum part size is 4.

Offset 0, canonical program `A000102.P12334321088699624445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A000102 (n : ℕ) : ℤ :=
  A000102.P12334321088699624445.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A000102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000120.P2816527436160941581

`2*n-A005187(n)`
-/

namespace A000120.P2816527436160941581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n

end

end A000120.P2816527436160941581

noncomputable section

/-- A000120: Ones-counting sequence: number of 1's in binary expansion of n (or the binary weight of n).

Offset 0, canonical program `A000120.P2816527436160941581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000120 (n : ℕ) : ℤ :=
  A000120.P2816527436160941581.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000139.P12341560060847707045

`2/(n+1)*A001764(n)`
-/

namespace A000139.P12341560060847707045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A001764 n : ℚ)

end

end A000139.P12341560060847707045

noncomputable section

/-- A000139: a(n) = 2*(3*n)! / ((2*n+1)!*(n+1)!).

Offset 0, canonical program `A000139.P12341560060847707045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A000139 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000139.P12341560060847707045.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A000139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000210.P18384059506850004585

`∑[Δ[A022843(n)]-1]`
-/

namespace A000210.P18384059506850004585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000210.P18384059506850004585

noncomputable section

/-- A000210: A Beatty sequence: floor(n*(e-1)).

Offset 1, canonical program `A000210.P18384059506850004585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. -/
def A000210 (n : ℕ) : ℤ :=
  A000210.P18384059506850004585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3052 terms. -/
def A000210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000216.P351312360313339281

`A003132(a(n-1))` with `a(0)=2`
-/

namespace A000216.P351312360313339281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000216.P351312360313339281

noncomputable section

/-- A000216: Take sum of squares of digits of previous term, starting with 2.

Offset 1, canonical program `A000216.P351312360313339281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000216 (n : ℕ) : ℤ :=
  A000216.P351312360313339281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000218.P6684988766202068

`A003132(a(n-1))` with `a(0)=3`
-/

namespace A000218.P6684988766202068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000218.P6684988766202068

noncomputable section

/-- A000218: Take sum of squares of digits of previous term; start with 3.

Offset 1, canonical program `A000218.P6684988766202068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000218 (n : ℕ) : ℤ :=
  A000218.P6684988766202068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000221.P4832198433719140497

`A003132(a(n-1))` with `a(0)=5`
-/

namespace A000221.P4832198433719140497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A003132 (a (n - 1)).toNat

end

end A000221.P4832198433719140497

noncomputable section

/-- A000221: Take sum of squares of digits of previous term; start with 5.

Offset 1, canonical program `A000221.P4832198433719140497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000221 (n : ℕ) : ℤ :=
  A000221.P4832198433719140497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000253.P11295470622941771377

`A000079(n+2)-A005251(n+5)`
-/

namespace A000253.P11295470622941771377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A005251 (n + 5)

end

end A000253.P11295470622941771377

noncomputable section

/-- A000253: a(n) = 2*a(n-1) - a(n-2) + a(n-3) + 2^(n-1).

Offset 0, canonical program `A000253.P11295470622941771377`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000253 (n : ℕ) : ℤ :=
  A000253.P11295470622941771377.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000316.P502515888872783753

`A000459(n)*2^n`
-/

namespace A000316.P502515888872783753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000459 n * (2 ^ n : ℤ)

end

end A000316.P502515888872783753

noncomputable section

/-- A000316: Two decks each have n kinds of cards, 2 of each kind. The first deck is laid out in order. The second deck is shuffled and laid out next to the first. A match occurs if a card from the second deck is next to a card of the same kind from the first deck. a(n) is the number of ways of achieving no matches.

Offset 0, canonical program `A000316.P502515888872783753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000316 (n : ℕ) : ℤ :=
  A000316.P502515888872783753.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000344.P3253285804396126079

`∑[A002057(n)+A000588(n+1)]`
-/

namespace A000344.P3253285804396126079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000344.P3253285804396126079

noncomputable section

/-- A000344: a(n) = 5*binomial(2n, n-2)/(n+3).

Offset 2, canonical program `A000344.P3253285804396126079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A000344 (n : ℕ) : ℤ :=
  A000344.P3253285804396126079.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A000344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000346.P13453431485271774812

`A045621(2*n+1)`
-/

namespace A000346.P13453431485271774812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 (2 * n + 1)

end

end A000346.P13453431485271774812

noncomputable section

/-- A000346: a(n) = 2^(2*n+1) - binomial(2*n+1, n+1).

Offset 0, canonical program `A000346.P13453431485271774812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000346 (n : ℕ) : ℤ :=
  A000346.P13453431485271774812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000346.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000383.P18280553795721487493

`5*(∑[A001592(n)]-A001592(n))+1`
-/

namespace A000383.P18280553795721487493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j - A001592 n) + 1

end

end A000383.P18280553795721487493

noncomputable section

/-- A000383: Hexanacci numbers with a(0) = ... = a(5) = 1.

Offset 0, canonical program `A000383.P18280553795721487493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000383 (n : ℕ) : ℤ :=
  A000383.P18280553795721487493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A000383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000430.P3476626595135912415

`∪[A000040(n+1), A001248(n+1)]`
-/

namespace A000430.P3476626595135912415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A000430.P3476626595135912415

noncomputable section

/-- A000430: Primes and squares of primes.

Offset 1, canonical program `A000430.P3476626595135912415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000430 (n : ℕ) : ℤ :=
  (A000430.P3476626595135912415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000431.P10076989455802087984

`A131577(A004275(n))-A057711(n)`
-/

namespace A000431.P10076989455802087984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A004275 n).toNat - A057711 n

end

end A000431.P10076989455802087984

noncomputable section

/-- A000431: Expansion of 2*x^3/((1-2*x)^2*(1-4*x)).

Offset 0, canonical program `A000431.P10076989455802087984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A000431 (n : ℕ) : ℤ :=
  A000431.P10076989455802087984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A000431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000460.P18350118421693111491

`3^(n+3)-A048470(n+3)`
-/

namespace A000460.P18350118421693111491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 3) : ℤ) - A048470 (n + 3)

end

end A000460.P18350118421693111491

noncomputable section

/-- A000460: Eulerian numbers (Euler's triangle: column k=3 of A008292, column k=2 of A173018).

Offset 3, canonical program `A000460.P18350118421693111491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A000460 (n : ℕ) : ℤ :=
  A000460.P18350118421693111491.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A000460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000481.P8785211388678617225

`A021024(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A000481.P8785211388678617225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A021024 n + 4 * a (n - 1)

end

end A000481.P8785211388678617225

noncomputable section

/-- A000481: Stirling numbers of the second kind, S(n,5).

Offset 5, canonical program `A000481.P8785211388678617225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A000481 (n : ℕ) : ℤ :=
  A000481.P8785211388678617225.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A000481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000486.P14804195295319927566

`2*A123003(n)`
-/

namespace A000486.P14804195295319927566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123003 n

end

end A000486.P14804195295319927566

noncomputable section

/-- A000486: One half of the number of permutations of [n] such that the differences have 4 runs with the same signs.

Offset 5, canonical program `A000486.P14804195295319927566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A000486 (n : ℕ) : ℤ :=
  A000486.P14804195295319927566.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A000486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000523.P6332265902927997432

`A113473(n+1)-1`
-/

namespace A000523.P6332265902927997432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - 1

end

end A000523.P6332265902927997432

noncomputable section

/-- A000523: a(n) = floor(log_2(n)).

Offset 1, canonical program `A000523.P6332265902927997432`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000523 (n : ℕ) : ℤ :=
  A000523.P6332265902927997432.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113473, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000529.P3189955386639158654

`∑[∑[A023545(n+2)]+3]`
-/

namespace A000529.P3189955386639158654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000529.P3189955386639158654

noncomputable section

/-- A000529: Powers of rooted tree enumerator.

Offset 1, canonical program `A000529.P3189955386639158654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000529 (n : ℕ) : ℤ :=
  A000529.P3189955386639158654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A000529.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000533.P11203370058495839217

`A178500(n)+1`
-/

namespace A000533.P11203370058495839217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n + 1

end

end A000533.P11203370058495839217

noncomputable section

/-- A000533: a(0)=1; a(n) = 10^n + 1, n >= 1.

Offset 0, canonical program `A000533.P11203370058495839217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000533 (n : ℕ) : ℤ :=
  A000533.P11203370058495839217.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000533.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000572.P9470724114289782022

`∑[Δ[A022843(n)]+1]`
-/

namespace A000572.P9470724114289782022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000572.P9470724114289782022

noncomputable section

/-- A000572: A Beatty sequence: [ n(e+1) ].

Offset 1, canonical program `A000572.P9470724114289782022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000572 (n : ℕ) : ℤ :=
  A000572.P9470724114289782022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000593.P13640346029616979906

`A000203(n+1)/A038712(n+1)`
-/

namespace A000593.P13640346029616979906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

end

end A000593.P13640346029616979906

noncomputable section

/-- A000593: Sum of odd divisors of n.

Offset 1, canonical program `A000593.P13640346029616979906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000593 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000593.P13640346029616979906.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000695.P14587171459336407380

`(A145812(n+1)-1)/2`
-/

namespace A000695.P14587171459336407380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145812 (n + 1) - 1 : ℚ) / 2

end

end A000695.P14587171459336407380

noncomputable section

/-- A000695: Moser-de Bruijn sequence: sums of distinct powers of 4.

Offset 0, canonical program `A000695.P14587171459336407380`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000695 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000695.P14587171459336407380.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145812, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000741.P6152185288410453869

`A161680(n)-A344574(n+1)`
-/

namespace A000741.P6152185288410453869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n - A344574 (n + 1)

end

end A000741.P6152185288410453869

noncomputable section

/-- A000741: Number of compositions of n into 3 ordered relatively prime parts.

Offset 1, canonical program `A000741.P6152185288410453869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000741 (n : ℕ) : ℤ :=
  A000741.P6152185288410453869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A000741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000748.P16132471601073484065

`A033999(n)*A057083(n)`
-/

namespace A000748.P16132471601073484065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A057083 n

end

end A000748.P16132471601073484065

noncomputable section

/-- A000748: Expansion of bracket function.

Offset 0, canonical program `A000748.P16132471601073484065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A000748 (n : ℕ) : ℤ :=
  A000748.P16132471601073484065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A000748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000750.P17276910196845925233

`A033999(n)*A289389(n+4)`
-/

namespace A000750.P17276910196845925233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A289389 (n + 4)

end

end A000750.P17276910196845925233

noncomputable section

/-- A000750: Expansion of bracket function.

Offset 0, canonical program `A000750.P17276910196845925233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A000750 (n : ℕ) : ℤ :=
  A000750.P17276910196845925233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. -/
def A000750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000770.P8273594268794257151

`A000481(n+5)+6*a(n-1)` with `a(0)=1`
-/

namespace A000770.P8273594268794257151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000481 (n + 5) + 6 * a (n - 1)

end

end A000770.P8273594268794257151

noncomputable section

/-- A000770: Stirling numbers of the second kind, S(n,6).

Offset 6, canonical program `A000770.P8273594268794257151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A000770 (n : ℕ) : ℤ :=
  A000770.P8273594268794257151.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A000770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000773.P1281880748692157282

`A167762(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A000773.P1281880748692157282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A167762 (n - 1) - a (n - 1)

end

end A000773.P1281880748692157282

noncomputable section

/-- A000773: Number of numbers == 0 (mod 3) in range 2^n to 2^(n+1) with odd number of 1's in binary expansion.

Offset 1, canonical program `A000773.P1281880748692157282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A000773 (n : ℕ) : ℤ :=
  A000773.P1281880748692157282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A000773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000778.P13957288909260579818

`A005807(n)-1`
-/

namespace A000778.P13957288909260579818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - 1

end

end A000778.P13957288909260579818

noncomputable section

/-- A000778: a(n) = Catalan(n) + Catalan(n+1) - 1.

Offset 0, canonical program `A000778.P13957288909260579818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000778 (n : ℕ) : ℤ :=
  A000778.P13957288909260579818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000781.P9610192769601749282

`A000778(n)+2*A000245(n)`
-/

namespace A000781.P9610192769601749282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000778 n + 2 * A000245 n

end

end A000781.P9610192769601749282

noncomputable section

/-- A000781: a(n) = 3*Catalan(n) - Catalan(n-1) - 1.

Offset 1, canonical program `A000781.P9610192769601749282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000781 (n : ℕ) : ℤ :=
  A000781.P9610192769601749282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000782.P11341092407364070035

`Δ[A081293(n)]`
-/

namespace A000782.P11341092407364070035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A000782.P11341092407364070035

noncomputable section

/-- A000782: a(n) = 2*Catalan(n) - Catalan(n-1).

Offset 1, canonical program `A000782.P11341092407364070035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000782 (n : ℕ) : ℤ :=
  A000782.P11341092407364070035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A000782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000846.P14698060758087261568

`A005809(n)-A000984(n)`
-/

namespace A000846.P14698060758087261568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005809 n - A000984 n

end

end A000846.P14698060758087261568

noncomputable section

/-- A000846: a(n) = C(3n,n) - C(2n,n).

Offset 0, canonical program `A000846.P14698060758087261568`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000846 (n : ℕ) : ℤ :=
  A000846.P14698060758087261568.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000846.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000891.P10731481860013471602

`A005408(n)*A000108(n)²`
-/

namespace A000891.P10731481860013471602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A000108 n ^ 2

end

end A000891.P10731481860013471602

noncomputable section

/-- A000891: a(n) = (2*n)!*(2*n+1)! / (n! * (n+1)!)^2.

Offset 0, canonical program `A000891.P10731481860013471602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000891 (n : ℕ) : ℤ :=
  A000891.P10731481860013471602.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000894.P14882200328801433490

`(n+1)*A000891(n)`
-/

namespace A000894.P14882200328801433490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000891 n

end

end A000894.P14882200328801433490

noncomputable section

/-- A000894: a(n) = (2*n)!*(2*n+1)! / ((n+1)! * n!^3).

Offset 0, canonical program `A000894.P14882200328801433490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000894 (n : ℕ) : ℤ :=
  A000894.P14882200328801433490.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000909.P2394326780231115835

`4^n*A079484(n)`
-/

namespace A000909.P2394326780231115835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A079484 n

end

end A000909.P2394326780231115835

noncomputable section

/-- A000909: a(n) = (2*n)!*(2*n+1)! / n!^2.

Offset 0, canonical program `A000909.P2394326780231115835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000909 (n : ℕ) : ℤ :=
  A000909.P2394326780231115835.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000912.P8618321589124851233

`2*A007123(n+1)-A063886(n)`
-/

namespace A000912.P8618321589124851233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007123 (n + 1) - A063886 n

end

end A000912.P8618321589124851233

noncomputable section

/-- A000912: Expansion of (sqrt(1-4x^2) - sqrt(1-4x))/(2x).

Offset 0, canonical program `A000912.P8618321589124851233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000912 (n : ℕ) : ℤ :=
  A000912.P8618321589124851233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A000912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000915.P3040882938927049526

`∑[A000332(n+4)*A006002(n+3)]`
-/

namespace A000915.P3040882938927049526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) * A006002 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A000915.P3040882938927049526

noncomputable section

/-- A000915: Stirling numbers of first kind s(n+4, n).

Offset 1, canonical program `A000915.P3040882938927049526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. -/
def A000915 (n : ℕ) : ℤ :=
  A000915.P3040882938927049526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2152 terms. -/
def A000915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000967.P7202602035930507134

`round(A001610(2*(n+1))/(2*n+3))`
-/

namespace A000967.P7202602035930507134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001610 (2 * (n + 1)) : ℚ) / (2 * n + 3 : ℚ))

end

end A000967.P7202602035930507134

noncomputable section

/-- A000967: Sum of Fermat coefficients.

Offset 1, canonical program `A000967.P7202602035930507134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000967 (n : ℕ) : ℤ :=
  A000967.P7202602035930507134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000968.P2757355558857724068

`round(A001612(2*n+3)/(4*n+6))`
-/

namespace A000968.P2757355558857724068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001612 (2 * n + 3) : ℚ) / (4 * n + 6 : ℚ))

end

end A000968.P2757355558857724068

noncomputable section

/-- A000968: Sum of odd Fermat coefficients rounded to nearest integer.

Offset 1, canonical program `A000968.P2757355558857724068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000968 (n : ℕ) : ℤ :=
  A000968.P2757355558857724068.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A000968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000999.P15242886502305852120

`(2*A053824(n)-A053824(2*n))/4`
-/

namespace A000999.P15242886502305852120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A053824 n - A053824 (2 * n) : ℚ) / 4

end

end A000999.P15242886502305852120

noncomputable section

/-- A000999: 5-adic valuation of binomial(2*n,n): largest k such that 5^k divides binomial(2*n, n).

Offset 0, canonical program `A000999.P15242886502305852120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000999 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000999.P15242886502305852120.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000999.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001000.P11683531770071818407

`A033638(A083479(n)+1+n)+C(2, n+2)`
-/

namespace A001000.P11683531770071818407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 n + 1 + (n : ℤ)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A001000.P11683531770071818407

noncomputable section

/-- A001000: a(n) = least m such that if a/b < c/d where a,b,c,d are integers in [0,n], then a/b < k/m < c/d for some integer k.

Offset 1, canonical program `A001000.P11683531770071818407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A001000 (n : ℕ) : ℤ :=
  A001000.P11683531770071818407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. -/
def A001000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001196.P5634847783591410852

`3*A000695(n)`
-/

namespace A001196.P5634847783591410852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000695 n

end

end A001196.P5634847783591410852

noncomputable section

/-- A001196: Double-bitters: only even length runs in binary expansion.

Offset 0, canonical program `A001196.P5634847783591410852`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001196 (n : ℕ) : ℤ :=
  A001196.P5634847783591410852.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001196.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001223.P5083310856331133973

`1+A046933(n+1)`
-/

namespace A001223.P5083310856331133973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A046933 (n + 1)

end

end A001223.P5083310856331133973

noncomputable section

/-- A001223: Prime gaps: differences between consecutive primes.

Offset 1, canonical program `A001223.P5083310856331133973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001223 (n : ℕ) : ℤ :=
  A001223.P5083310856331133973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001316.P6850078358198232129

`2^A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001316.P6850078358198232129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ)

end

end A001316.P6850078358198232129

noncomputable section

/-- A001316: Gould's sequence: a(n) = Sum_{k=0..n} (binomial(n,k) mod 2); number of odd entries in row n of Pascal's triangle (A007318); a(n) = 2^A000120(n).

Offset 0, canonical program `A001316.P6850078358198232129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001316 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001316.P6850078358198232129.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001316.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001462.P2570616953797054601

`A095114(n+2)-A095114(n+1)`
-/

namespace A001462.P2570616953797054601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 2) - A095114 (n + 1)

end

end A001462.P2570616953797054601

noncomputable section

/-- A001462: Golomb's sequence: a(n) is the number of times n occurs in the sequence, starting with a(1) = 1.

Offset 1, canonical program `A001462.P2570616953797054601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001462 (n : ℕ) : ℤ :=
  A001462.P2570616953797054601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095114, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A001462.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001492.P11288150812351078527

`A007879(A004524(n))`
-/

namespace A001492.P11288150812351078527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007879 (A004524 n).toNat

end

end A001492.P11288150812351078527

noncomputable section

/-- A001492: Clock chimes with a quarter-hour bell.

Offset 0, canonical program `A001492.P11288150812351078527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001492 (n : ℕ) : ℤ :=
  A001492.P11288150812351078527.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001559.P3290663552833298120

`A001558(n+1)-A104629(n+1)`
-/

namespace A001559.P3290663552833298120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001558 (n + 1) - A104629 (n + 1)

end

end A001559.P3290663552833298120

noncomputable section

/-- A001559: a(0) = 1, a(1) = 4; thereafter a(n)*(2n + 10) - a(n-1)*(11n + 35) + a(n-2)*(8n + 2) + a(n-3)*(15n + 7) + a(n-4)*(4n - 2) = 0.

Offset 0, canonical program `A001559.P3290663552833298120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A001559 (n : ℕ) : ℤ :=
  A001559.P3290663552833298120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A001559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001671.P524176182924743815

`A057427(n)+A000149(n)`
-/

namespace A001671.P524176182924743815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A000149 n

end

end A001671.P524176182924743815

noncomputable section

/-- A001671: Powers of e rounded up.

Offset 0, canonical program `A001671.P524176182924743815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A001671 (n : ℕ) : ℤ :=
  A001671.P524176182924743815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A001671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001803.P12627378217154944539

`(2*n+1)!/(n!²*2^A000120(n))`
-/

namespace A001803.P12627378217154944539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) / ((Nat.factorial n ^ 2 : ℚ) * (2 : ℚ) ^ (A000120 n : ℤ))

end

end A001803.P12627378217154944539

noncomputable section

/-- A001803: Numerators in expansion of (1 - x)^(-3/2).

Offset 0, canonical program `A001803.P12627378217154944539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001803 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A001803.P12627378217154944539.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A001876.P1528332183595955459

`∑{d}[n, A079998(#-1)]`
-/

namespace A001876.P1528332183595955459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (d - 1)

end

end A001876.P1528332183595955459

noncomputable section

/-- A001876: Number of divisors of n of the form 5k+1; a(0)=0.

Offset 0, canonical program `A001876.P1528332183595955459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001876 (n : ℕ) : ℤ :=
  A001876.P1528332183595955459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001877.P11806035189121010381

`∑{d}[n, and(1, A047412(#))]`
-/

namespace A001877.P11806035189121010381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 1 (A047412 d)

end

end A001877.P11806035189121010381

noncomputable section

/-- A001877: Number of divisors of n of the form 5k+2; a(0) = 0.

Offset 0, canonical program `A001877.P11806035189121010381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001877 (n : ℕ) : ℤ :=
  A001877.P11806035189121010381.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001878.P13516976986806296717

`∑{d}[n, A079998(#+2)]`
-/

namespace A001878.P13516976986806296717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079998 (d + 2)

end

end A001878.P13516976986806296717

noncomputable section

/-- A001878: Number of divisors of n of the form 5k+3; a(0) = 0.

Offset 0, canonical program `A001878.P13516976986806296717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001878 (n : ℕ) : ℤ :=
  A001878.P13516976986806296717.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A001878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001950.P13017366966482727782

`A003622(n+1)+1`
-/

namespace A001950.P13017366966482727782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + 1

end

end A001950.P13017366966482727782

noncomputable section

/-- A001950: Upper Wythoff sequence (a Beatty sequence): a(n) = floor(n*phi^2), where phi = (1+sqrt(5))/2.

Offset 1, canonical program `A001950.P13017366966482727782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001950 (n : ℕ) : ℤ :=
  A001950.P13017366966482727782.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A001950.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002011.P13130071181658124903

`record[Δ[A056040(n+2)]]`
-/

namespace A002011.P13130071181658124903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002011.P13130071181658124903

noncomputable section

/-- A002011: a(n) = 4*(2n+1)!/n!^2.

Offset 0, canonical program `A002011.P13130071181658124903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002011 (n : ℕ) : ℤ :=
  A002011.P13130071181658124903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002054.P14120985123877685737

`A116385(2*(n+1))`
-/

namespace A002054.P14120985123877685737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116385 (2 * (n + 1))

end

end A002054.P14120985123877685737

noncomputable section

/-- A002054: Binomial coefficient C(2n+1, n-1).

Offset 1, canonical program `A002054.P14120985123877685737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A002054 (n : ℕ) : ℤ :=
  A002054.P14120985123877685737.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A002054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002131.P10234543156685478956

`(A000203(n+1)+A000593(n+1))/2`
-/

namespace A002131.P10234543156685478956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + A000593 (n + 1) : ℚ) / 2

end

end A002131.P10234543156685478956

noncomputable section

/-- A002131: Sum of divisors d of n such that n/d is odd.

Offset 1, canonical program `A002131.P10234543156685478956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002131 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A002131.P10234543156685478956.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002131.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002262.P12129691700837801527

`n-A057944(n)`
-/

namespace A002262.P12129691700837801527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057944 n

end

end A002262.P12129691700837801527

noncomputable section

/-- A002262: Triangle read by rows: T(n,k) = k, 0 <= k <= n, in which row n lists the first n+1 nonnegative integers.

Offset 0, canonical program `A002262.P12129691700837801527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002262 (n : ℕ) : ℤ :=
  A002262.P12129691700837801527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A002262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A002408.P4398356594904168961

`-(-1)^n*A007331(n)`
-/

namespace A002408.P4398356594904168961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n * A007331 n)

end

end A002408.P4398356594904168961

noncomputable section

/-- A002408: Expansion of 8-dimensional cusp form.

Offset 0, canonical program `A002408.P4398356594904168961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A002408 (n : ℕ) : ℤ :=
  A002408.P4398356594904168961.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A002408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002420.P5682305404914460292

`A036453(n+1)*A115140(n)`
-/

namespace A002420.P5682305404914460292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A115140 n

end

end A002420.P5682305404914460292

noncomputable section

/-- A002420: Expansion of sqrt(1 - 4*x) in powers of x.

Offset 0, canonical program `A002420.P5682305404914460292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A002420 (n : ℕ) : ℤ :=
  A002420.P5682305404914460292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A002420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002459.P17296491257886822107

`xor(A000495(n), A169585(n))`
-/

namespace A002459.P17296491257886822107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000495 n) (A169585 n)

end

end A002459.P17296491257886822107

noncomputable section

/-- A002459: Nearest integer to cosh(n).

Offset 0, canonical program `A002459.P17296491257886822107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A002459 (n : ℕ) : ℤ :=
  A002459.P17296491257886822107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. -/
def A002459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002487.P6236436194084017932

`A000120(A168081(n))`
-/

namespace A002487.P6236436194084017932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A168081 n).toNat

end

end A002487.P6236436194084017932

noncomputable section

/-- A002487: Stern's diatomic series (or Stern-Brocot sequence): a(0) = 0, a(1) = 1; for n > 0: a(2*n) = a(n), a(2*n+1) = a(n) + a(n+1).

Offset 0, canonical program `A002487.P6236436194084017932`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002487 (n : ℕ) : ℤ :=
  A002487.P6236436194084017932.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168081, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A002487.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002654.P14441847389434732824

`∑{d}[n+1, A056594(#-1)]`
-/

namespace A002654.P14441847389434732824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1)

end

end A002654.P14441847389434732824

noncomputable section

/-- A002654: Number of ways of writing n as a sum of at most two nonzero squares, where order matters; also (number of divisors of n of form 4m+1) - (number of divisors of form 4m+3).

Offset 1, canonical program `A002654.P14441847389434732824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002654 (n : ℕ) : ℤ :=
  A002654.P14441847389434732824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002737.P9318907464820278064

`(2*n+3)*A116385(2*n)`
-/

namespace A002737.P9318907464820278064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A116385 (2 * n)

end

end A002737.P9318907464820278064

noncomputable section

/-- A002737: a(n) = Sum_{j=0..n} (n+j)*binomial(n+j,j).

Offset 0, canonical program `A002737.P9318907464820278064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002737 (n : ℕ) : ℤ :=
  A002737.P9318907464820278064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A002737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002808.P8130888830651501259

`lt[0, A082023(n)]`
-/

namespace A002808.P8130888830651501259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002808.P8130888830651501259

noncomputable section

/-- A002808: The composite numbers: numbers n of the form x*y for x > 1 and y > 1.

Offset 1, canonical program `A002808.P8130888830651501259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002808 (n : ℕ) : ℤ :=
  (A002808.P8130888830651501259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A002815.P11144953744924913715

`∑[A230980(n)]+n`
-/

namespace A002815.P11144953744924913715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A002815.P11144953744924913715

noncomputable section

/-- A002815: a(n) = n + Sum_{k=1..n} pi(k), where pi() = A000720.

Offset 0, canonical program `A002815.P11144953744924913715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002815 (n : ℕ) : ℤ :=
  A002815.P11144953744924913715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003259.P5602186675624408663

`comp[A279054(n+1)]+1+n`
-/

namespace A003259.P5602186675624408663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A003259.P5602186675624408663

noncomputable section

/-- A003259: Complement of A003258.

Offset 1, canonical program `A003259.P5602186675624408663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003259 (n : ℕ) : ℤ :=
  (A003259.P5602186675624408663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A003259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003477.P11158735837685853929

`∑[Δ[A077854(n)]-A003229(n)]`
-/

namespace A003477.P11158735837685853929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003477.P11158735837685853929

noncomputable section

/-- A003477: Expansion of 1/((1-2x)(1+x^2)(1-x-2x^3)).

Offset 0, canonical program `A003477.P11158735837685853929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A003477 (n : ℕ) : ℤ :=
  A003477.P11158735837685853929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A003477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A003557.P10734368654931726927

`A057521(n+1)/A071773(n+1)`
-/

namespace A003557.P10734368654931726927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A003557.P10734368654931726927

noncomputable section

/-- A003557: n divided by largest squarefree divisor of n; if n = Product p(k)^e(k) then a(n) = Product p(k)^(e(k)-1), with a(1) = 1.

Offset 1, canonical program `A003557.P10734368654931726927`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A003557.P10734368654931726927.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057521, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A003557.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A004054.P17603231056276103615

`A094705(n+1)-A094705(n)`
-/

namespace A004054.P17603231056276103615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 (n + 1) - A094705 n

end

end A004054.P17603231056276103615

noncomputable section

/-- A004054: Expansion of (1-x)/((1+x)*(1-2*x)*(1-3*x)).

Offset 0, canonical program `A004054.P17603231056276103615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004054 (n : ℕ) : ℤ :=
  A004054.P17603231056276103615.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004054.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004216.P11701108540860389608

`A055642(n+1)-1`
-/

namespace A004216.P11701108540860389608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - 1

end

end A004216.P11701108540860389608

noncomputable section

/-- A004216: a(n) = floor(log_10(n)).

Offset 1, canonical program `A004216.P11701108540860389608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004216 (n : ℕ) : ℤ :=
  A004216.P11701108540860389608.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004277.P16255821370285667660

`A000007(n)+A005843(n)`
-/

namespace A004277.P16255821370285667660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A005843 n

end

end A004277.P16255821370285667660

noncomputable section

/-- A004277: 1 together with positive even numbers.

Offset 0, canonical program `A004277.P16255821370285667660`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004277 (n : ℕ) : ℤ :=
  A004277.P16255821370285667660.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A004488.P15486159278781190577

`abs(A168237(A300222(n))-n-n)`
-/

namespace A004488.P15486159278781190577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168237 (A300222 n).toNat - (n : ℤ) - (n : ℤ)|

end

end A004488.P15486159278781190577

noncomputable section

/-- A004488: Tersum n + n.

Offset 0, canonical program `A004488.P15486159278781190577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004488 (n : ℕ) : ℤ :=
  A004488.P15486159278781190577.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004530.P5757221461617830557

`A257179(n)%(A000122(n)+1)`
-/

namespace A004530.P5757221461617830557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257179 n) (A000122 n + 1)

end

end A004530.P5757221461617830557

noncomputable section

/-- A004530: Expansion of (theta_2(0, x) + theta_3(0, x) + theta_4(0, x)) / 2 in powers of x^(1/4).

Offset 0, canonical program `A004530.P5757221461617830557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004530 (n : ℕ) : ℤ :=
  A004530.P5757221461617830557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004737.P12416270940268694316

`A053615(A028391(n))+1`
-/

namespace A004737.P12416270940268694316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A028391 n).toNat + 1

end

end A004737.P12416270940268694316

noncomputable section

/-- A004737: Concatenation of sequences (1,2,...,n-1,n,n-1,...,1) for n >= 1.

Offset 1, canonical program `A004737.P12416270940268694316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004737 (n : ℕ) : ℤ :=
  A004737.P12416270940268694316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004739.P530599446870545718

`A004737(A028391(n)+1)`
-/

namespace A004739.P530599446870545718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A028391 n + 1).toNat

end

end A004739.P530599446870545718

noncomputable section

/-- A004739: Concatenation of sequences (1,2,2,...,n-1,n-1,n,n,n-1,n-1,...,2,2,1) for n >= 1.

Offset 1, canonical program `A004739.P530599446870545718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004739 (n : ℕ) : ℤ :=
  A004739.P530599446870545718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A004739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005117.P6531558222696957500

`A161203(n+1)-(n+1)²`
-/

namespace A005117.P6531558222696957500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161203 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A005117.P6531558222696957500

noncomputable section

/-- A005117: Squarefree numbers: numbers that are not divisible by a square greater than 1.

Offset 1, canonical program `A005117.P6531558222696957500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005117 (n : ℕ) : ℤ :=
  A005117.P6531558222696957500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005181.P8418560770788744835

`∑[A306486(abs(1-n))]`
-/

namespace A005181.P8418560770788744835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306486 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005181.P8418560770788744835

noncomputable section

/-- A005181: a(n) = ceiling(exp((n-1)/2)).

Offset 0, canonical program `A005181.P8418560770788744835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005181 (n : ℕ) : ℤ :=
  A005181.P8418560770788744835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 462 terms. -/
def A005181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005810.P11226820359042522109

`A051036(4*n)`
-/

namespace A005810.P11226820359042522109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051036 (4 * n)

end

end A005810.P11226820359042522109

noncomputable section

/-- A005810: a(n) = binomial(4n,n).

Offset 0, canonical program `A005810.P11226820359042522109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A005810 (n : ℕ) : ℤ :=
  A005810.P11226820359042522109.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A005810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005811.P8696411420205566785

`A000120(A003188(n))`
-/

namespace A005811.P8696411420205566785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003188 n).toNat

end

end A005811.P8696411420205566785

noncomputable section

/-- A005811: Number of runs in binary expansion of n (n>0); number of 1's in Gray code for n.

Offset 0, canonical program `A005811.P8696411420205566785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005811 (n : ℕ) : ℤ :=
  A005811.P8696411420205566785.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A005811.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A005817.P16626410066484048791

`A208355(n+1)*A208355(n)`
-/

namespace A005817.P16626410066484048791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) * A208355 n

end

end A005817.P16626410066484048791

noncomputable section

/-- A005817: a(n) = C(floor(n/2 + 1/2))*C(floor(n/2 + 1)) where C(i) = Catalan numbers A000108.

Offset 0, canonical program `A005817.P16626410066484048791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A005817 (n : ℕ) : ℤ :=
  A005817.P16626410066484048791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A005817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A005995.P4464072021336214688

`A001753(n)-2*A096338(n)`
-/

namespace A005995.P4464072021336214688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n - 2 * A096338 n

end

end A005995.P4464072021336214688

noncomputable section

/-- A005995: Alkane (or paraffin) numbers l(8,n).

Offset 0, canonical program `A005995.P4464072021336214688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005995 (n : ℕ) : ℤ :=
  A005995.P4464072021336214688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A005995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006288.P15058602425544907126

`A023717(2*n)-A023717(n)`
-/

namespace A006288.P15058602425544907126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (2 * n) - A023717 n

end

end A006288.P15058602425544907126

noncomputable section

/-- A006288: Loxton-van der Poorten sequence: base-4 representation contains only -1, 0, +1.

Offset 0, canonical program `A006288.P15058602425544907126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A006288 (n : ℕ) : ℤ :=
  A006288.P15058602425544907126.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A006288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006340.P5648138728573061714

`A334413(n)+1`
-/

namespace A006340.P5648138728573061714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334413 n + 1

end

end A006340.P5648138728573061714

noncomputable section

/-- A006340: An "eta-sequence": [ (n+1)*tau + 1/2 ] - [ n*tau + 1/2 ], tau = (1 + sqrt(5))/2.

Offset 0, canonical program `A006340.P5648138728573061714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006340 (n : ℕ) : ℤ :=
  A006340.P5648138728573061714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006501.P15643465850074222248

`A007980(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A006501.P15643465850074222248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A007980 n + a (n - 3)

end

end A006501.P15643465850074222248

noncomputable section

/-- A006501: Expansion of (1+x^2) / ( (1-x)^2 * (1-x^3)^2 ).

Offset 0, canonical program `A006501.P15643465850074222248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006501 (n : ℕ) : ℤ :=
  A006501.P15643465850074222248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006519.P10435570611646570274

`A171977(n+1)/2`
-/

namespace A006519.P10435570611646570274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) / 2

end

end A006519.P10435570611646570274

noncomputable section

/-- A006519: Highest power of 2 dividing n.

Offset 1, canonical program `A006519.P10435570611646570274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006519 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A006519.P10435570611646570274.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A006519.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A006594.P16489447980115312247

`∑[Δ[A032634(n)]+1]`
-/

namespace A006594.P16489447980115312247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A006594.P16489447980115312247

noncomputable section

/-- A006594: A Beatty sequence: floor(n*(1 + 1/e)).

Offset 1, canonical program `A006594.P16489447980115312247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006594 (n : ℕ) : ℤ :=
  A006594.P16489447980115312247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006632.P11412046250827832629

`A369082(Δ[n²])`
-/

namespace A006632.P11412046250827832629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A006632.P11412046250827832629

noncomputable section

/-- A006632: a(n) = 3*binomial(4*n-1, n-1)/(4*n-1).

Offset 1, canonical program `A006632.P11412046250827832629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A006632 (n : ℕ) : ℤ :=
  A006632.P11412046250827832629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A006632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A006928.P15318589882780258543

`A000002(abs(1-n)+3)`
-/

namespace A006928.P15318589882780258543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (|1 - (n : ℤ)| + 3).toNat

end

end A006928.P15318589882780258543

noncomputable section

/-- A006928: a(n) = length of (n+1)st run, with initial terms 1, 2.

Offset 1, canonical program `A006928.P15318589882780258543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006928 (n : ℕ) : ℤ :=
  A006928.P15318589882780258543.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A006928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007008.P9929642294075141343

`ceil(A045621(n)/2)`
-/

namespace A007008.P9929642294075141343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045621 n : ℚ) / 2⌉

end

end A007008.P9929642294075141343

noncomputable section

/-- A007008: Chvatal conjecture for radius of graph of maximal intersecting sets.

Offset 1, canonical program `A007008.P9929642294075141343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A007008 (n : ℕ) : ℤ :=
  A007008.P9929642294075141343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A007008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007088.P12432121332583687413

`A097256(n)/9`
-/

namespace A007088.P12432121332583687413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 n : ℚ) / 9

end

end A007088.P12432121332583687413

noncomputable section

/-- A007088: The binary numbers (or binary words, or binary vectors, or binary expansion of n): numbers written in base 2.

Offset 0, canonical program `A007088.P12432121332583687413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007088 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007088.P12432121332583687413.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097256, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007089.P1807555167867376115

`A024635(2*n)/2`
-/

namespace A007089.P1807555167867376115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024635 (2 * n) : ℚ) / 2

end

end A007089.P1807555167867376115

noncomputable section

/-- A007089: Numbers in base 3.

Offset 0, canonical program `A007089.P1807555167867376115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007089.P1807555167867376115.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007090.P11600105304047957284

`A024644(2*n)/2`
-/

namespace A007090.P11600105304047957284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024644 (2 * n) : ℚ) / 2

end

end A007090.P11600105304047957284

noncomputable section

/-- A007090: Numbers in base 4.

Offset 0, canonical program `A007090.P11600105304047957284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007090 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007090.P11600105304047957284.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007091.P1217996161546394470

`A024657(2*n)/2`
-/

namespace A007091.P1217996161546394470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024657 (2 * n) : ℚ) / 2

end

end A007091.P1217996161546394470

noncomputable section

/-- A007091: Numbers in base 5.

Offset 0, canonical program `A007091.P1217996161546394470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007091 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007091.P1217996161546394470.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A007091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007094.P10071338308652589409

`eq[0, A102681(n)]`
-/

namespace A007094.P10071338308652589409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A007094.P10071338308652589409

noncomputable section

/-- A007094: Numbers in base 8.

Offset 0, canonical program `A007094.P10071338308652589409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A007094 (n : ℕ) : ℤ :=
  (A007094.P10071338308652589409.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A007094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007226.P15452380064460553406

`(2*n+1)*A000139(n)`
-/

namespace A007226.P15452380064460553406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A000139 n

end

end A007226.P15452380064460553406

noncomputable section

/-- A007226: a(n) = 2*det(M(n; -1))/det(M(n; 0)), where M(n; m) is the n X n matrix with (i,j)-th element equal to 1/binomial(n + i + j + m, n).

Offset 0, canonical program `A007226.P15452380064460553406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000139, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007226 (n : ℕ) : ℤ :=
  A007226.P15452380064460553406.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000139, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A007226.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A007423.P11782207234129447454

`A080847(n+1)-1`
-/

namespace A007423.P11782207234129447454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (n + 1) - 1

end

end A007423.P11782207234129447454

noncomputable section

/-- A007423: a(n) = mu(n) + 1, where mu is the Moebius function.

Offset 1, canonical program `A007423.P11782207234129447454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007423 (n : ℕ) : ℤ :=
  A007423.P11782207234129447454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007428.P12532017655611739201

`∑{d}[n+1, A247343(#)]`
-/

namespace A007428.P12532017655611739201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d

end

end A007428.P12532017655611739201

noncomputable section

/-- A007428: Moebius transform applied thrice to sequence 1,0,0,0,....

Offset 1, canonical program `A007428.P12532017655611739201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007428 (n : ℕ) : ℤ :=
  A007428.P12532017655611739201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007444.P6945218340457660263

`∑{d}[n+1, A361707(#)]`
-/

namespace A007444.P6945218340457660263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361707 d

end

end A007444.P6945218340457660263

noncomputable section

/-- A007444: Moebius transform of primes.

Offset 1, canonical program `A007444.P6945218340457660263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007444 (n : ℕ) : ℤ :=
  A007444.P6945218340457660263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007674.P4121978718907005715

`eq[A087049(n+1), A105570(n)]`
-/

namespace A007674.P4121978718907005715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A007674.P4121978718907005715

noncomputable section

/-- A007674: Numbers m such that m and m+1 are squarefree.

Offset 1, canonical program `A007674.P4121978718907005715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007674 (n : ℕ) : ℤ :=
  (A007674.P4121978718907005715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007862.P13725744150973773245

`∑{d}[n+1, A010054(#)]`
-/

namespace A007862.P13725744150973773245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010054 d

end

end A007862.P13725744150973773245

noncomputable section

/-- A007862: Number of triangular numbers that divide n.

Offset 1, canonical program `A007862.P13725744150973773245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007862 (n : ℕ) : ℤ :=
  A007862.P13725744150973773245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007880.P277093750328925867

`A130659(n)+A001492(n)`
-/

namespace A007880.P277093750328925867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130659 n + A001492 n

end

end A007880.P277093750328925867

noncomputable section

/-- A007880: Westminster chimes at 15-minute intervals (1).

Offset 0, canonical program `A007880.P277093750328925867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007880 (n : ℕ) : ℤ :=
  A007880.P277093750328925867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007884.P8538330166122526266

`A001492(n)+A010873(n)%3`
-/

namespace A007884.P8538330166122526266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001492 n + Int.tmod (A010873 n) 3

end

end A007884.P8538330166122526266

noncomputable section

/-- A007884: Chimes made by clock striking quarter-hours.

Offset 0, canonical program `A007884.P8538330166122526266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007884 (n : ℕ) : ℤ :=
  A007884.P8538330166122526266.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007917.P926824402025985972

`n+3-A175851(n+2)`
-/

namespace A007917.P926824402025985972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A175851 (n + 2)

end

end A007917.P926824402025985972

noncomputable section

/-- A007917: Version 1 of the "previous prime" function: largest prime <= n.

Offset 2, canonical program `A007917.P926824402025985972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007917 (n : ℕ) : ℤ :=
  A007917.P926824402025985972.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007918.P9623913995348804173

`A000040(∑[char[A008864(n+1)]]+1)`
-/

namespace A007918.P9623913995348804173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A007918.P9623913995348804173

noncomputable section

/-- A007918: Least prime >= n (version 1 of the "next prime" function).

Offset 0, canonical program `A007918.P9623913995348804173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007918 (n : ℕ) : ℤ :=
  A007918.P9623913995348804173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007953.P3472751987379697826

`n-9*A054899(n)`
-/

namespace A007953.P3472751987379697826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 9 * A054899 n

end

end A007953.P3472751987379697826

noncomputable section

/-- A007953: Digital sum (i.e., sum of digits) of n; also called digsum(n).

Offset 0, canonical program `A007953.P3472751987379697826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007953 (n : ℕ) : ℤ :=
  A007953.P3472751987379697826.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A007953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008000.P14598701383781270205

`A008130(n)+A005893(n)`
-/

namespace A008000.P14598701383781270205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008130 n + A005893 n

end

end A008000.P14598701383781270205

noncomputable section

/-- A008000: Coordination sequence T1 for Zeolite Code ABW and ATN.

Offset 0, canonical program `A008000.P14598701383781270205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008000 (n : ℕ) : ℤ :=
  A008000.P14598701383781270205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008441.P257068461411472066

`A002654(4*n+1)`
-/

namespace A008441.P257068461411472066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1)

end

end A008441.P257068461411472066

noncomputable section

/-- A008441: Number of ordered ways of writing n as the sum of 2 triangular numbers.

Offset 0, canonical program `A008441.P257068461411472066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008441 (n : ℕ) : ℤ :=
  A008441.P257068461411472066.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008441.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008457.P5259527365090779456

`abs(∑{d}[n+1, #*A162395(#)])`
-/

namespace A008457.P5259527365090779456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162395 d|

end

end A008457.P5259527365090779456

noncomputable section

/-- A008457: a(n) = Sum_{ d >= 1, d divides n} (-1)^(n-d)*d^3.

Offset 1, canonical program `A008457.P5259527365090779456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008457 (n : ℕ) : ℤ :=
  A008457.P5259527365090779456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008475.P12981903007955240503

`∑{d}[n+1, A092509(#)]`
-/

namespace A008475.P12981903007955240503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092509 d

end

end A008475.P12981903007955240503

noncomputable section

/-- A008475: If n = Product (p_j^k_j) then a(n) = Sum (p_j^k_j) (a(1) = 0 by convention).

Offset 1, canonical program `A008475.P12981903007955240503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008475 (n : ℕ) : ℤ :=
  A008475.P12981903007955240503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008578.P3639467937083264764

`A158611(n+2)`
-/

namespace A008578.P3639467937083264764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

end

end A008578.P3639467937083264764

noncomputable section

/-- A008578: Prime numbers at the beginning of the 20th century (today 1 is no longer regarded as a prime).

Offset 1, canonical program `A008578.P3639467937083264764`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008578 (n : ℕ) : ℤ :=
  A008578.P3639467937083264764.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158611, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008622.P16996189268350298708

`A025813(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008622.P16996189268350298708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025813 n - a (n - 2)

end

end A008622.P16996189268350298708

noncomputable section

/-- A008622: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)).

Offset 0, canonical program `A008622.P16996189268350298708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008622 (n : ℕ) : ℤ :=
  A008622.P16996189268350298708.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008624.P13884143058626142684

`A110654(A028242(n))`
-/

namespace A008624.P13884143058626142684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028242 n).toNat

end

end A008624.P13884143058626142684

noncomputable section

/-- A008624: Expansion of g.f. (1 + x^3)/((1 - x^2)*(1 - x^4)) = (1 - x + x^2)/((1 + x)*(1 - x)^2*(1 + x^2)).

Offset 0, canonical program `A008624.P13884143058626142684`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008624 (n : ℕ) : ℤ :=
  A008624.P13884143058626142684.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A008624.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A008651.P17575682284106551936

`a(n-1)+A178146(n)-1` with `a(0)=1`
-/

namespace A008651.P17575682284106551936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A178146 n - 1)

end

end A008651.P17575682284106551936

noncomputable section

/-- A008651: Molien series of binary icosahedral group.

Offset 0, canonical program `A008651.P17575682284106551936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008651 (n : ℕ) : ℤ :=
  A008651.P17575682284106551936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008667.P8592292575514272009

`A029032(n)-a(n-1)` with `a(0)=1`
-/

namespace A008667.P8592292575514272009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029032 n - a (n - 1)

end

end A008667.P8592292575514272009

noncomputable section

/-- A008667: Expansion of g.f.: 1/((1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)).

Offset 0, canonical program `A008667.P8592292575514272009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008667 (n : ℕ) : ℤ :=
  A008667.P8592292575514272009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008682.P13810349883948471386

`A025806(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A008682.P13810349883948471386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025806 n - a (n - 2)

end

end A008682.P13810349883948471386

noncomputable section

/-- A008682: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A008682.P13810349883948471386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008682 (n : ℕ) : ℤ :=
  A008682.P13810349883948471386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008730.P5982894440673514970

`A221912(n+12)`
-/

namespace A008730.P5982894440673514970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221912 (n + 12)

end

end A008730.P5982894440673514970

noncomputable section

/-- A008730: Molien series 1/((1-x)^2*(1-x^12)) for 3-dimensional group [2,n] = *22n.

Offset 0, canonical program `A008730.P5982894440673514970`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A221912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008730 (n : ℕ) : ℤ :=
  A008730.P5982894440673514970.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A221912, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008730.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A008966.P884693903657889754

`A013928(n+2)-A013928(n+1)`
-/

namespace A008966.P884693903657889754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A013928 (n + 1)

end

end A008966.P884693903657889754

noncomputable section

/-- A008966: a(n) = 1 if n is squarefree, otherwise 0.

Offset 1, canonical program `A008966.P884693903657889754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008966 (n : ℕ) : ℤ :=
  A008966.P884693903657889754.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A008966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A009087.P18076322764317860629

`filter[A089237(n+3), A355937(#)]`
-/

namespace A009087.P18076322764317860629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A009087.P18076322764317860629

noncomputable section

/-- A009087: Numbers whose number of divisors is prime (i.e., numbers of the form p^(q-1) for primes p,q).

Offset 1, canonical program `A009087.P18076322764317860629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A009087 (n : ℕ) : ℤ :=
  A009087.P18076322764317860629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9671 terms. -/
def A009087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A010051.P15078252821583414300

`A100995(n+1)-sqrt(A100995(n+1)*A193056(n+1))`
-/

namespace A010051.P15078252821583414300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A100995 (n + 1) : ℝ) - Real.sqrt (A100995 (n + 1) * A193056 (n + 1) : ℝ)

end

end A010051.P15078252821583414300

noncomputable section

/-- A010051: Characteristic function of primes: 1 if n is prime, else 0.

Offset 1, canonical program `A010051.P15078252821583414300`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A193056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A010051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A010051.P15078252821583414300.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A193056, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A010051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A010060.P3080921269106500717

`A000035(A000120(n))`
-/

namespace A010060.P3080921269106500717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000120 n).toNat

end

end A010060.P3080921269106500717

noncomputable section

/-- A010060: Thue-Morse sequence: let A_k denote the first 2^k terms; then A_0 = 0 and for k >= 0, A_{k+1} = A_k B_k, where B_k is obtained from A_k by interchanging 0's and 1's.

Offset 0, canonical program `A010060.P3080921269106500717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010060 (n : ℕ) : ℤ :=
  A010060.P3080921269106500717.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A010060.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A010784.P2044816568036423859

`record[A320486(n)]`
-/

namespace A010784.P2044816568036423859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A010784.P2044816568036423859

noncomputable section

/-- A010784: Numbers with distinct decimal digits.

Offset 1, canonical program `A010784.P2044816568036423859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5275 terms. -/
def A010784 (n : ℕ) : ℤ :=
  A010784.P2044816568036423859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5275 terms. -/
def A010784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011535.P12013536941063717587

`lt[1, n*A316866(n)]`
-/

namespace A011535.P12013536941063717587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A316866 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A011535.P12013536941063717587

noncomputable section

/-- A011535: Numbers that contain a 5.

Offset 1, canonical program `A011535.P12013536941063717587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011535 (n : ℕ) : ℤ :=
  (A011535.P12013536941063717587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3439 terms. -/
def A011535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011558.P10594584635942187014

`1-A079998(n)`
-/

namespace A011558.P10594584635942187014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079998 n

end

end A011558.P10594584635942187014

noncomputable section

/-- A011558: Expansion of (x + x^3)/(1 + x + ... + x^4) mod 2.

Offset 0, canonical program `A011558.P10594584635942187014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011558 (n : ℕ) : ℤ :=
  A011558.P10594584635942187014.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A011558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A011675.P11769286689550545566

`A135435(n+1)%2`
-/

namespace A011675.P11769286689550545566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135435 (n + 1)) 2

end

end A011675.P11769286689550545566

noncomputable section

/-- A011675: A binary m-sequence: expansion of reciprocal of x^7+x^4+1.

Offset 0, canonical program `A011675.P11769286689550545566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A011675 (n : ℕ) : ℤ :=
  A011675.P11769286689550545566.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1778 terms. -/
def A011675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011973.P14749578380264178381

`C(A055086(n)-A055087(n), A055087(n))`
-/

namespace A011973.P14749578380264178381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055086 n - A055087 n).toNat (A055087 n).toNat

end

end A011973.P14749578380264178381

noncomputable section

/-- A011973: Irregular triangle read by rows: T(n,k) = binomial(n-k, k), n >= 0, 0 <= k <= floor(n/2); or, coefficients of (one version of) Fibonacci polynomials.

Offset 0, canonical program `A011973.P14749578380264178381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011973 (n : ℕ) : ℤ :=
  (A011973.P14749578380264178381.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A011973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A012245.P11587607485183547821

`C(A048764(n+1), n+1)`
-/

namespace A012245.P11587607485183547821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048764 (n + 1)).toNat (n + 1)

end

end A012245.P11587607485183547821

noncomputable section

/-- A012245: Characteristic function of factorial numbers; also decimal expansion of Liouville's number or Liouville's constant.

Offset 1, canonical program `A012245.P11587607485183547821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012245 (n : ℕ) : ℤ :=
  (A012245.P11587607485183547821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A012245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A013632.P6559946879985956067

`A000040(A230980(n)+1)-n`
-/

namespace A013632.P6559946879985956067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 n + 1).toNat - (n : ℤ)

end

end A013632.P6559946879985956067

noncomputable section

/-- A013632: Difference between n and the next prime greater than n.

Offset 0, canonical program `A013632.P6559946879985956067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013632 (n : ℕ) : ℤ :=
  A013632.P6559946879985956067.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A013632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014126.P11154080504226975297

`1/72*(4*n^3+30*n²+72*n+55+8*A049347(n)+9*(-1)^n)`
-/

namespace A014126.P11154080504226975297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 72 * ((4 * n ^ 3 + 30 * n ^ 2 + 72 * n : ℤ) + (55 + 8 * A049347 n) + 9 * (-1) ^ n : ℚ)

end

end A014126.P11154080504226975297

noncomputable section

/-- A014126: Number of partitions of 2*n into at most 4 parts.

Offset 0, canonical program `A014126.P11154080504226975297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014126 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A014126.P11154080504226975297.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A014126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A014193.P553466698010306128

`A007423(n+1)+A006093(n+1)`
-/

namespace A014193.P553466698010306128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + A006093 (n + 1)

end

end A014193.P553466698010306128

noncomputable section

/-- A014193: n-th prime + mu(n).

Offset 1, canonical program `A014193.P553466698010306128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014193 (n : ℕ) : ℤ :=
  A014193.P553466698010306128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014246.P10682755400879158977

`A022843(n+1)-comp[A022843(n)]`
-/

namespace A014246.P10682755400879158977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A014246.P10682755400879158977

noncomputable section

/-- A014246: a(n) = (n-th term of Beatty sequence for e) - (n-th term of Beatty sequence for e/(e-1)).

Offset 1, canonical program `A014246.P10682755400879158977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014246 (n : ℕ) : ℤ :=
  A014246.P10682755400879158977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014263.P10138940668023476278

`2*A007091(n)`
-/

namespace A014263.P10138940668023476278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007091 n

end

end A014263.P10138940668023476278

noncomputable section

/-- A014263: Numbers that contain even digits only.

Offset 1, canonical program `A014263.P10138940668023476278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014263 (n : ℕ) : ℤ :=
  A014263.P10138940668023476278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014263.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014462.P14691259310245244798

`C(A000267(n), A055087(n))`
-/

namespace A014462.P14691259310245244798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000267 n).toNat (A055087 n).toNat

end

end A014462.P14691259310245244798

noncomputable section

/-- A014462: Triangular array formed from elements to left of middle of Pascal's triangle.

Offset 1, canonical program `A014462.P14691259310245244798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014462 (n : ℕ) : ℤ :=
  (A014462.P14691259310245244798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A014462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014577.P18150949447596937918

`1-A014707(n)`
-/

namespace A014577.P18150949447596937918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014707 n

end

end A014577.P18150949447596937918

noncomputable section

/-- A014577: The regular paper-folding sequence (or dragon curve sequence). Alphabet {1,0}.

Offset 0, canonical program `A014577.P18150949447596937918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014577 (n : ℕ) : ℤ :=
  A014577.P18150949447596937918.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014707, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014686.P15303943369373504388

`A000040(n+1)-A033999(n+1)`
-/

namespace A014686.P15303943369373504388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A033999 (n + 1)

end

end A014686.P15303943369373504388

noncomputable section

/-- A014686: In sequence of prime numbers add 1 to first prime, 3rd prime, fifth prime, ... then subtract 1 from 2nd prime, fourth prime, sixth prime and so on.

Offset 1, canonical program `A014686.P15303943369373504388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014686 (n : ℕ) : ℤ :=
  A014686.P15303943369373504388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014686.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A014688.P4990984272387159238

`A090178(n+2)-1`
-/

namespace A014688.P4990984272387159238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 2) - 1

end

end A014688.P4990984272387159238

noncomputable section

/-- A014688: a(n) = n-th prime + n.

Offset 1, canonical program `A014688.P4990984272387159238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014688 (n : ℕ) : ℤ :=
  A014688.P4990984272387159238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A014688.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015910.P2442927784327151351

`A191561(n+1)%(n+1)`
-/

namespace A015910.P2442927784327151351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191561 (n + 1)) (n + 1 : ℤ)

end

end A015910.P2442927784327151351

noncomputable section

/-- A015910: a(n) = 2^n mod n.

Offset 1, canonical program `A015910.P2442927784327151351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015910 (n : ℕ) : ℤ :=
  A015910.P2442927784327151351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A015910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015914.P16999400420647426476

`eq[A281006(n+1), A281006(n+7)]+1`
-/

namespace A015914.P16999400420647426476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A015914.P16999400420647426476

noncomputable section

/-- A015914: Numbers k such that sigma(k) + 6 = sigma(k+6).

Offset 1, canonical program `A015914.P16999400420647426476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A015914 (n : ℕ) : ℤ :=
  (A015914.P16999400420647426476.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1425 terms. -/
def A015914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A018062.P8777464907617138448

`A166486(n)+A018060(n)`
-/

namespace A018062.P8777464907617138448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A018060 n

end

end A018062.P8777464907617138448

noncomputable section

/-- A018062: Powers of fourth root of 6 rounded up.

Offset 0, canonical program `A018062.P8777464907617138448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018062 (n : ℕ) : ℤ :=
  A018062.P8777464907617138448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 515 terms. -/
def A018062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022303.P9265149570533791824

`A000002(n+5)`
-/

namespace A022303.P9265149570533791824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 5)

end

end A022303.P9265149570533791824

noncomputable section

/-- A022303: The sequence a of 1's and 2's starting with (1,2,1) such that a(n) is the length of the (n+2)nd run of a.

Offset 1, canonical program `A022303.P9265149570533791824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022303 (n : ℕ) : ℤ :=
  A022303.P9265149570533791824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022785.P11302809859389273548

`∑[A121384(n)]+1`
-/

namespace A022785.P11302809859389273548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022785.P11302809859389273548

noncomputable section

/-- A022785: Place where n-th 1 occurs in A023123.

Offset 1, canonical program `A022785.P11302809859389273548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A022785 (n : ℕ) : ℤ :=
  A022785.P11302809859389273548.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. -/
def A022785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A022839.P12660740770296457555

`∑[A081147(n)]`
-/

namespace A022839.P12660740770296457555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022839.P12660740770296457555

noncomputable section

/-- A022839: Beatty sequence for sqrt(5).

Offset 1, canonical program `A022839.P12660740770296457555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022839 (n : ℕ) : ℤ :=
  A022839.P12660740770296457555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A022839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023416.P8124303482289229133

`A070939(n)-A000120(n)`
-/

namespace A023416.P8124303482289229133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A000120 n

end

end A023416.P8124303482289229133

noncomputable section

/-- A023416: Number of 0's in binary expansion of n.

Offset 0, canonical program `A023416.P8124303482289229133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023416 (n : ℕ) : ℤ :=
  A023416.P8124303482289229133.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A023416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A024912.P17686755528931629700

`(A081759(n+1)+1)/2`
-/

namespace A024912.P17686755528931629700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081759 (n + 1) + 1 : ℚ) / 2

end

end A024912.P17686755528931629700

noncomputable section

/-- A024912: Numbers k such that 10*k + 1 is prime.

Offset 1, canonical program `A024912.P17686755528931629700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A024912.P17686755528931629700.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081759, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024912.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025235.P11316111733437524934

`A374487(n)/∑[n+1]`
-/

namespace A025235.P11316111733437524934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374487 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A025235.P11316111733437524934

noncomputable section

/-- A025235: a(n) = (1/2)*A014431(n+2).

Offset 0, canonical program `A025235.P11316111733437524934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A025235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A025235.P11316111733437524934.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A025235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025528.P16007803137134117632

`∑[A069513(n+1)]`
-/

namespace A025528.P16007803137134117632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A025528.P16007803137134117632

noncomputable section

/-- A025528: Number of prime powers <= n with exponents > 0 (A246655).

Offset 1, canonical program `A025528.P16007803137134117632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025528 (n : ℕ) : ℤ :=
  A025528.P16007803137134117632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025780.P10333408410863326626

`A025811(abs(1-n))+A025811(n)`
-/

namespace A025780.P10333408410863326626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025811 |1 - (n : ℤ)|.toNat + A025811 n

end

end A025780.P10333408410863326626

noncomputable section

/-- A025780: Expansion of 1/((1-x)(1-x^5)(1-x^11)).

Offset 0, canonical program `A025780.P10333408410863326626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025780 (n : ℕ) : ℤ :=
  A025780.P10333408410863326626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025781.P13748719297176958204

`A002266(A008730(n+2)+2)`
-/

namespace A025781.P13748719297176958204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008730 (n + 2) + 2).toNat

end

end A025781.P13748719297176958204

noncomputable section

/-- A025781: Expansion of 1/((1-x)(1-x^5)(1-x^12)).

Offset 0, canonical program `A025781.P13748719297176958204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A025781 (n : ℕ) : ℤ :=
  A025781.P13748719297176958204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A025781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025786.P7132858397673449593

`A025818(abs(1-n))+A025818(n)`
-/

namespace A025786.P7132858397673449593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025818 |1 - (n : ℤ)|.toNat + A025818 n

end

end A025786.P7132858397673449593

noncomputable section

/-- A025786: Expansion of 1/((1-x)(1-x^7)(1-x^10)).

Offset 0, canonical program `A025786.P7132858397673449593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025786 (n : ℕ) : ℤ :=
  A025786.P7132858397673449593.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025835.P2629410859167698004

`A033182(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025835.P2629410859167698004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A033182 n + a (n - 3)

end

end A025835.P2629410859167698004

noncomputable section

/-- A025835: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A025835.P2629410859167698004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025835 (n : ℕ) : ℤ :=
  A025835.P2629410859167698004.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025853.P4190781791207249957

`A025828(abs(A215415(n)))`
-/

namespace A025853.P4190781791207249957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 |A215415 n|.toNat

end

end A025853.P4190781791207249957

noncomputable section

/-- A025853: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A025853.P4190781791207249957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025853 (n : ℕ) : ℤ :=
  A025853.P4190781791207249957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025857.P5093983156554055214

`A025835((n+1)%A052938(n))`
-/

namespace A025857.P5093983156554055214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 (Int.tmod (n + 1 : ℤ) (A052938 n)).toNat

end

end A025857.P5093983156554055214

noncomputable section

/-- A025857: Expansion of 1/((1-x^3)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A025857.P5093983156554055214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025857 (n : ℕ) : ℤ :=
  A025857.P5093983156554055214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025864.P441569782507185122

`round(A008720(A084964(n))/3)`
-/

namespace A025864.P441569782507185122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008720 (A084964 n).toNat : ℚ) / 3)

end

end A025864.P441569782507185122

noncomputable section

/-- A025864: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^12)).

Offset 0, canonical program `A025864.P441569782507185122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025864 (n : ℕ) : ℤ :=
  A025864.P441569782507185122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025877.P10466847401103007344

`A008680(abs(1-A097065(n)))`
-/

namespace A025877.P10466847401103007344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008680 |1 - A097065 n|.toNat

end

end A025877.P10466847401103007344

noncomputable section

/-- A025877: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)).

Offset 0, canonical program `A025877.P10466847401103007344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025877 (n : ℕ) : ℤ :=
  A025877.P10466847401103007344.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025890.P57793754091666350

`A008682(A026741(n)%A052938(n))`
-/

namespace A025890.P57793754091666350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (Int.tmod (A026741 n) (A052938 n)).toNat

end

end A025890.P57793754091666350

noncomputable section

/-- A025890: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A025890.P57793754091666350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025890 (n : ℕ) : ℤ :=
  A025890.P57793754091666350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025893.P12081485160126186746

`A025877(A008596(n)%A008576(n))`
-/

namespace A025893.P12081485160126186746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025877 (Int.tmod (A008596 n) (A008576 n)).toNat

end

end A025893.P12081485160126186746

noncomputable section

/-- A025893: Expansion of 1/((1-x^5)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A025893.P12081485160126186746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025893 (n : ℕ) : ℤ :=
  A025893.P12081485160126186746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025911.P17129638192487173258

`A008622(A056000(n)%(A008619(n)+3))`
-/

namespace A025911.P17129638192487173258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (Int.tmod (A056000 n) (A008619 n + 3)).toNat

end

end A025911.P17129638192487173258

noncomputable section

/-- A025911: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^12)).

Offset 0, canonical program `A025911.P17129638192487173258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025911 (n : ℕ) : ℤ :=
  A025911.P17129638192487173258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026010.P1065645250072885556

`A208976(n)+1-A208355(n)`
-/

namespace A026010.P1065645250072885556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n + (1 - A208355 n)

end

end A026010.P1065645250072885556

noncomputable section

/-- A026010: a(n) = number of (s(0), s(1), ..., s(n)) such that s(i) is a nonnegative integer and |s(i) - s(i-1)| = 1 for i = 1,2,...,n and s(0) = 2. Also a(n) = sum of numbers in row n+1 of array T defined in A026009.

Offset 0, canonical program `A026010.P1065645250072885556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A026010 (n : ℕ) : ℤ :=
  A026010.P1065645250072885556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A026010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026016.P15392460891905371103

`Δ[A099376(n)]`
-/

namespace A026016.P15392460891905371103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A026016.P15392460891905371103

noncomputable section

/-- A026016: a(n) = binomial(2*n-1, n) - binomial(2*n-1, n+3).

Offset 1, canonical program `A026016.P15392460891905371103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026016 (n : ℕ) : ℤ :=
  A026016.P15392460891905371103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A026016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A026811.P6823680176287512686

`∑[A008667(n)]-A001400(n)`
-/

namespace A026811.P6823680176287512686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001400 n

end

end A026811.P6823680176287512686

noncomputable section

/-- A026811: Number of partitions of n in which the greatest part is 5.

Offset 0, canonical program `A026811.P6823680176287512686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026811 (n : ℕ) : ℤ :=
  A026811.P6823680176287512686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A026811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029039.P13891949853867952978

`∑[A025835(n)]`
-/

namespace A029039.P13891949853867952978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029039.P13891949853867952978

noncomputable section

/-- A029039: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^6)).

Offset 0, canonical program `A029039.P13891949853867952978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029039 (n : ℕ) : ℤ :=
  A029039.P13891949853867952978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029042.P13199233752711391955

`A187243(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029042.P13199233752711391955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A187243 n + a (n - 3)

end

end A029042.P13199233752711391955

noncomputable section

/-- A029042: Expansion of 1/((1-x)*(1-x^3)*(1-x^5)*(1-x^10)).

Offset 0, canonical program `A029042.P13199233752711391955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029042 (n : ℕ) : ℤ :=
  A029042.P13199233752711391955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029043.P10333574690023070009

`A025780(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029043.P10333574690023070009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025780 n + a (n - 3)

end

end A029043.P10333574690023070009

noncomputable section

/-- A029043: Expansion of 1/((1-x)(1-x^3)(1-x^5)(1-x^11)).

Offset 0, canonical program `A029043.P10333574690023070009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029043 (n : ℕ) : ℤ :=
  A029043.P10333574690023070009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029051.P5510241359096199053

`A025786(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029051.P5510241359096199053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025786 n + a (n - 3)

end

end A029051.P5510241359096199053

noncomputable section

/-- A029051: Expansion of 1/((1-x)(1-x^3)(1-x^7)(1-x^10)).

Offset 0, canonical program `A029051.P5510241359096199053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029051 (n : ℕ) : ℤ :=
  A029051.P5510241359096199053.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029088.P5865512987119133475

`A029042(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029088.P5865512987119133475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029042 n - a (n - 3)

end

end A029088.P5865512987119133475

noncomputable section

/-- A029088: Expansion of 1/((1-x)*(1-x^5)*(1-x^6)*(1-x^10)).

Offset 0, canonical program `A029088.P5865512987119133475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029088 (n : ℕ) : ℤ :=
  A029088.P5865512987119133475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029907.P6582962671373940873

`A010049(n+1)+A152163(n+1)`
-/

namespace A029907.P6582962671373940873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1) + A152163 (n + 1)

end

end A029907.P6582962671373940873

noncomputable section

/-- A029907: a(n+1) = a(n) + a(n-1) + Fibonacci(n), with a(0) = 0 and a(1) = 1.

Offset 0, canonical program `A029907.P6582962671373940873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029907 (n : ℕ) : ℤ :=
  A029907.P6582962671373940873.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A029907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A032263.P18022686903527105340

`A134019(n)-2^n`
-/

namespace A032263.P18022686903527105340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134019 n - (2 ^ n : ℤ)

end

end A032263.P18022686903527105340

noncomputable section

/-- A032263: Number of ways to partition n labeled elements into 4 pie slices allowing the pie to be turned over; number of 2-element proper antichains of an n-element set.

Offset 1, canonical program `A032263.P18022686903527105340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A032263 (n : ℕ) : ℤ :=
  A032263.P18022686903527105340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A032263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033196.P14614499412263167765

`A102631(n+1)*A181797(n+1)`
-/

namespace A033196.P14614499412263167765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1) * A181797 (n + 1)

end

end A033196.P14614499412263167765

noncomputable section

/-- A033196: a(n) = n^3 * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A033196.P14614499412263167765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033196 (n : ℕ) : ℤ :=
  A033196.P14614499412263167765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033504.P9993578467818947165

`A130783(Δ[n²])`
-/

namespace A033504.P9993578467818947165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033504.P9993578467818947165

noncomputable section

/-- A033504: a(n)/4^n is the expected number of tosses of a coin required to obtain n+1 heads or n+1 tails.

Offset 0, canonical program `A033504.P9993578467818947165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A033504 (n : ℕ) : ℤ :=
  A033504.P9993578467818947165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A033504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033879.P11735613842914743111

`-A033880(n+1)`
-/

namespace A033879.P11735613842914743111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (n + 1)

end

end A033879.P11735613842914743111

noncomputable section

/-- A033879: Deficiency of n, or 2n - (sum of divisors of n).

Offset 1, canonical program `A033879.P11735613842914743111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033879 (n : ℕ) : ℤ :=
  A033879.P11735613842914743111.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A034753.P12853043952854742106

`∑{d}[n+1, A359189(#)]`
-/

namespace A034753.P12853043952854742106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359189 d

end

end A034753.P12853043952854742106

noncomputable section

/-- A034753: Dirichlet convolution of 3^(n-1) with sigma(n).

Offset 1, canonical program `A034753.P12853043952854742106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034753 (n : ℕ) : ℤ :=
  A034753.P12853043952854742106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A034753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034868.P12965043593595847904

`C(A055086(n), A055087(n))`
-/

namespace A034868.P12965043593595847904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055086 n).toNat (A055087 n).toNat

end

end A034868.P12965043593595847904

noncomputable section

/-- A034868: Left half of Pascal's triangle.

Offset 0, canonical program `A034868.P12965043593595847904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034868 (n : ℕ) : ℤ :=
  (A034868.P12965043593595847904.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A034870.P1046418802650642871

`C(2*A000196(n), A053186(n))`
-/

namespace A034870.P1046418802650642871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A000196 n).toNat (A053186 n).toNat

end

end A034870.P1046418802650642871

noncomputable section

/-- A034870: Even-numbered rows of Pascal's triangle.

Offset 0, canonical program `A034870.P1046418802650642871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034870 (n : ℕ) : ℤ :=
  (A034870.P1046418802650642871.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A034870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035184.P3251018831054104960

`(val(n+1, 2)+1)*A002654(n+1)`
-/

namespace A035184.P3251018831054104960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) * A002654 (n + 1)

end

end A035184.P3251018831054104960

noncomputable section

/-- A035184: a(n) = Sum_{d|n} Kronecker(-1, d).

Offset 1, canonical program `A035184.P3251018831054104960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035184 (n : ℕ) : ℤ :=
  A035184.P3251018831054104960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035316.P4181383039659611062

`∑{d}[n+1, #*A061020((n+1)/#)]`
-/

namespace A035316.P4181383039659611062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A035316.P4181383039659611062

noncomputable section

/-- A035316: Sum of the square divisors of n.

Offset 1, canonical program `A035316.P4181383039659611062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035316 (n : ℕ) : ℤ :=
  A035316.P4181383039659611062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A035316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A035603.P5033389381879539558

`2*A099196(n)`
-/

namespace A035603.P5033389381879539558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099196 n

end

end A035603.P5033389381879539558

noncomputable section

/-- A035603: Number of points of L1 norm 9 in cubic lattice Z^n.

Offset 0, canonical program `A035603.P5033389381879539558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035603 (n : ℕ) : ℤ :=
  A035603.P5033389381879539558.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A035604.P40572468847417807

`a(n-1)+A035603(n)+A035603(n-1)` with `a(0)=0`
-/

namespace A035604.P40572468847417807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A035603 n + A035603 (n - 1)

end

end A035604.P40572468847417807

noncomputable section

/-- A035604: Number of points of L1 norm 10 in cubic lattice Z^n.

Offset 0, canonical program `A035604.P40572468847417807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035604 (n : ℕ) : ℤ :=
  A035604.P40572468847417807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A035604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A036489.P15767933812088839644

`floor(sqrt(A155014(n)+A001015(n)))`
-/

namespace A036489.P15767933812088839644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155014 n + A001015 n)

end

end A036489.P15767933812088839644

noncomputable section

/-- A036489: Nearest integer to n^(7/2).

Offset 0, canonical program `A036489.P15767933812088839644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036489 (n : ℕ) : ℤ :=
  A036489.P15767933812088839644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A036489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A036557.P11631772265376742522

`A087433(A110654(n))/A000034(n)`
-/

namespace A036557.P11631772265376742522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087433 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A036557.P11631772265376742522

noncomputable section

/-- A036557: Number of multiples of 3 in 0..2^n-1 with an even sum of base-2 digits.

Offset 0, canonical program `A036557.P11631772265376742522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A036557 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A036557.P11631772265376742522.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A036557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037913.P14316961981388322772

`val(A143051((n+1)²), 11)`
-/

namespace A037913.P14316961981388322772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A143051 ((n + 1) ^ 2)).toNat 11

end

end A037913.P14316961981388322772

noncomputable section

/-- A037913: Number of i such that |d(i) - d(i-1)| = 1, where Sum_{i=0..m} d(i)*10^i is the base-10 representation of n.

Offset 1, canonical program `A037913.P14316961981388322772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037913 (n : ℕ) : ℤ :=
  (A037913.P14316961981388322772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A037913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037952.P12527518621144432041

`∑[A191529(n+1)]`
-/

namespace A037952.P12527518621144432041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037952.P12527518621144432041

noncomputable section

/-- A037952: a(n) = binomial(n, floor((n-1)/2)).

Offset 0, canonical program `A037952.P12527518621144432041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037952 (n : ℕ) : ℤ :=
  A037952.P12527518621144432041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037955.P15366265065769254851

`A001405(n)-A208355(n)`
-/

namespace A037955.P15366265065769254851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A208355 n

end

end A037955.P15366265065769254851

noncomputable section

/-- A037955: a(n) = binomial(n, floor(n/2)-1).

Offset 0, canonical program `A037955.P15366265065769254851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037955 (n : ℕ) : ℤ :=
  A037955.P15366265065769254851.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A037955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037965.P8440344184167601472

`n*(A323230(n)-1)`
-/

namespace A037965.P8440344184167601472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A323230 n - 1)

end

end A037965.P8440344184167601472

noncomputable section

/-- A037965: a(n) = n*binomial(2*n-2, n-1).

Offset 0, canonical program `A037965.P8440344184167601472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037965 (n : ℕ) : ℤ :=
  A037965.P8440344184167601472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A037965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038164.P3251656204236417671

`A060099(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A038164.P3251656204236417671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A060099 n + a (n - 2)

end

end A038164.P3251656204236417671

noncomputable section

/-- A038164: Expansion of 1/((1-x)*(1-x^2))^4.

Offset 0, canonical program `A038164.P3251656204236417671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038164 (n : ℕ) : ℤ :=
  A038164.P3251656204236417671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A038722.P916012329641512375

`abs(∑[A198954(n)]-n)`
-/

namespace A038722.P916012329641512375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A038722.P916012329641512375

noncomputable section

/-- A038722: Take the sequence of natural numbers (A000027) and reverse successive subsequences of lengths 1,2,3,4,... .

Offset 1, canonical program `A038722.P916012329641512375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038722 (n : ℕ) : ℤ :=
  A038722.P916012329641512375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A038722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A040116.P4287387060818922923

`∪[A002145(n+1), A045331(n+1)]`
-/

namespace A040116.P4287387060818922923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A040116.P4287387060818922923

noncomputable section

/-- A040116: Primes p such that x^4 = 9 has a solution mod p.

Offset 1, canonical program `A040116.P4287387060818922923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040116 (n : ℕ) : ℤ :=
  (A040116.P4287387060818922923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A040116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042995.P914611389682524562

`∪[A045314(n+1), A045383(n+1)]`
-/

namespace A042995.P914611389682524562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042995.P914611389682524562

noncomputable section

/-- A042995: Primes congruent to {0, 2, 3, 5} (mod 7).

Offset 1, canonical program `A042995.P914611389682524562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042995 (n : ℕ) : ℤ :=
  (A042995.P914611389682524562.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046212.P8013275667879893669

`A056040(n*n%2)`
-/

namespace A046212.P8013275667879893669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n * (n % 2))

end

end A046212.P8013275667879893669

noncomputable section

/-- A046212: First numerator and then denominator of central elements of Leibniz's Harmonic Triangle.

Offset 1, canonical program `A046212.P8013275667879893669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A046212 (n : ℕ) : ℤ :=
  A046212.P8013275667879893669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A046212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A047924.P14531844885665270262

`abs(A288709(n+1)-n)`
-/

namespace A047924.P14531844885665270262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288709 (n + 1) - (n : ℤ)|

end

end A047924.P14531844885665270262

noncomputable section

/-- A047924: a(n) = B_{A_n+1}+1, where A_n = floor(n*phi) = A000201(n), B_n = floor(n*phi^2) = A001950(n) and phi is the golden ratio.

Offset 0, canonical program `A047924.P14531844885665270262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924 (n : ℕ) : ℤ :=
  A047924.P14531844885665270262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048050.P12972569362416034982

`A000203(n+1)-A065475(n+1)`
-/

namespace A048050.P12972569362416034982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A065475 (n + 1)

end

end A048050.P12972569362416034982

noncomputable section

/-- A048050: Chowla's function: sum of divisors of n except for 1 and n.

Offset 1, canonical program `A048050.P12972569362416034982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048050 (n : ℕ) : ℤ :=
  A048050.P12972569362416034982.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048099.P9392881477138269526

`(A001189(n+1)+A051684(n+1))/2`
-/

namespace A048099.P9392881477138269526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001189 (n + 1) + A051684 (n + 1) : ℚ) / 2

end

end A048099.P9392881477138269526

noncomputable section

/-- A048099: Number of degree-n even permutations of order exactly 2.

Offset 1, canonical program `A048099.P9392881477138269526`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048099 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A048099.P9392881477138269526.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A048099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048762.P2021550469671049707

`-(-A048766(n))^3`
-/

namespace A048762.P2021550469671049707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-A048766 n) ^ 3)

end

end A048762.P2021550469671049707

noncomputable section

/-- A048762: Largest cube <= n.

Offset 0, canonical program `A048762.P2021550469671049707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048762 (n : ℕ) : ℤ :=
  A048762.P2021550469671049707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048881.P16567064232951496228

`A000120(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A048881.P16567064232951496228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - 1

end

end A048881.P16567064232951496228

noncomputable section

/-- A048881: a(n) = A000120(n+1) - 1 = wt(n+1) - 1.

Offset 0, canonical program `A048881.P16567064232951496228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048881 (n : ℕ) : ℤ :=
  A048881.P16567064232951496228.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A048883.P5685372570370684853

`3*a(n-A053644(n))` with `a(0)=1`
-/

namespace A048883.P5685372570370684853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a ((n : ℤ) - A053644 n).toNat

end

end A048883.P5685372570370684853

noncomputable section

/-- A048883: a(n) = 3^wt(n), where wt(n) = A000120(n).

Offset 0, canonical program `A048883.P5685372570370684853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048883 (n : ℕ) : ℤ :=
  (A048883.P5685372570370684853.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A048883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A049705.P11002765941806409636

`3-A000002(n+1)`
-/

namespace A049705.P11002765941806409636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000002 (n + 1)

end

end A049705.P11002765941806409636

noncomputable section

/-- A049705: a(n)=3-k(n), where k=A000002=Kolakoski sequence; also the sequence of runlengths of a is k.

Offset 1, canonical program `A049705.P11002765941806409636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049705 (n : ℕ) : ℤ :=
  A049705.P11002765941806409636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A049705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050985.P12411912326700818488

`∑{d}[n+1, A073185(#)*A210826((n+1)/#)]`
-/

namespace A050985.P12411912326700818488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073185 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050985.P12411912326700818488

noncomputable section

/-- A050985: Cubefree part of n.

Offset 1, canonical program `A050985.P12411912326700818488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050985 (n : ℕ) : ℤ :=
  A050985.P12411912326700818488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052382.P13019725597381148511

`lt[0, abs(A187844(n))]`
-/

namespace A052382.P13019725597381148511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187844 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A052382.P13019725597381148511

noncomputable section

/-- A052382: Numbers without 0 in the decimal expansion, colloquial 'zeroless numbers'.

Offset 1, canonical program `A052382.P13019725597381148511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052382 (n : ℕ) : ℤ :=
  (A052382.P13019725597381148511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A052382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052760.P5613186736916057001

`A048487(n)%A011782(n)*A161680(n)`
-/

namespace A052760.P5613186736916057001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048487 n) (A011782 n) * A161680 n

end

end A052760.P5613186736916057001

noncomputable section

/-- A052760: Expansion of e.g.f.: x^2*(exp(x)-1)^2.

Offset 0, canonical program `A052760.P5613186736916057001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A052760 (n : ℕ) : ℤ :=
  A052760.P5613186736916057001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. -/
def A052760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052972.P17606206582691406571

`A254685(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A052972.P17606206582691406571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A254685 (n - 1) + a (n - 2)

end

end A052972.P17606206582691406571

noncomputable section

/-- A052972: Expansion of (1-x^3)/(1-x-x^2-x^3+x^5).

Offset 0, canonical program `A052972.P17606206582691406571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A052972 (n : ℕ) : ℤ :=
  A052972.P17606206582691406571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A052972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053000.P7278427673394138104

`A013632(n²)`
-/

namespace A053000.P7278427673394138104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n ^ 2)

end

end A053000.P7278427673394138104

noncomputable section

/-- A053000: a(n) = (smallest prime > n^2) - n^2.

Offset 0, canonical program `A053000.P7278427673394138104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053000 (n : ℕ) : ℤ :=
  A053000.P7278427673394138104.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A053000.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A053165.P14012928255864923022

`∑{d}[n+1, A219009(#)*A385006((n+1)/#)]`
-/

namespace A053165.P14012928255864923022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A385006 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053165.P14012928255864923022

noncomputable section

/-- A053165: 4th-power-free part of n.

Offset 1, canonical program `A053165.P14012928255864923022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053165 (n : ℕ) : ℤ :=
  A053165.P14012928255864923022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053191.P9323121037310556507

`A023896(n+1)*A103517(n)`
-/

namespace A053191.P9323121037310556507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) * A103517 n

end

end A053191.P9323121037310556507

noncomputable section

/-- A053191: a(n) = n^2 * phi(n).

Offset 1, canonical program `A053191.P9323121037310556507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053191 (n : ℕ) : ℤ :=
  A053191.P9323121037310556507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053735.P3640341592284089632

`n-2*A054861(n)`
-/

namespace A053735.P3640341592284089632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A054861 n

end

end A053735.P3640341592284089632

noncomputable section

/-- A053735: Sum of digits of (n written in base 3).

Offset 0, canonical program `A053735.P3640341592284089632`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053735 (n : ℕ) : ℤ :=
  A053735.P3640341592284089632.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053737.P2884229603739038868

`n-3*A054893(n)`
-/

namespace A053737.P2884229603739038868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A054893 n

end

end A053737.P2884229603739038868

noncomputable section

/-- A053737: Sum of digits of (n written in base 4).

Offset 0, canonical program `A053737.P2884229603739038868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053737 (n : ℕ) : ℤ :=
  A053737.P2884229603739038868.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A053737.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A053825.P3529766841853861707

`∑{d}[n+1, A007427(#)*A063453((n+1)/#)]`
-/

namespace A053825.P3529766841853861707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A063453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A053825.P3529766841853861707

noncomputable section

/-- A053825: Dirichlet inverse of sigma_3 function (A001158).

Offset 1, canonical program `A053825.P3529766841853861707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053825 (n : ℕ) : ℤ :=
  A053825.P3529766841853861707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053864.P17726123655565789623

`∏{d}[n+1, A189021(#)]`
-/

namespace A053864.P17726123655565789623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A189021 d

end

end A053864.P17726123655565789623

noncomputable section

/-- A053864: A second-order generalization of the Mobius function of n.

Offset 1, canonical program `A053864.P17726123655565789623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053864 (n : ℕ) : ℤ :=
  A053864.P17726123655565789623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054055.P6900739738677953214

`A000030(A355224(n))`
-/

namespace A054055.P6900739738677953214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A355224 n).toNat

end

end A054055.P6900739738677953214

noncomputable section

/-- A054055: Largest digit of n.

Offset 0, canonical program `A054055.P6900739738677953214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054055 (n : ℕ) : ℤ :=
  A054055.P6900739738677953214.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054354.P7688672416916511946

`Δ[A000002(n+1)]`
-/

namespace A054354.P7688672416916511946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054354.P7688672416916511946

noncomputable section

/-- A054354: First differences of Kolakoski sequence A000002.

Offset 1, canonical program `A054354.P7688672416916511946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054354 (n : ℕ) : ℤ :=
  A054354.P7688672416916511946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054385.P13327735877817480647

`A022843(n+1)-A014246(n+1)`
-/

namespace A054385.P13327735877817480647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - A014246 (n + 1)

end

end A054385.P13327735877817480647

noncomputable section

/-- A054385: Beatty sequence for e/(e-1); complement of A022843.

Offset 1, canonical program `A054385.P13327735877817480647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054385 (n : ℕ) : ℤ :=
  A054385.P13327735877817480647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A054385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055025.P1840419419277559172

`∪[A002313(n+1), A087691(n+1)]`
-/

namespace A055025.P1840419419277559172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055025.P1840419419277559172

noncomputable section

/-- A055025: Norms of Gaussian primes.

Offset 1, canonical program `A055025.P1840419419277559172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055025 (n : ℕ) : ℤ :=
  (A055025.P1840419419277559172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055231.P8962300905713718501

`A007947(n+1)/A071773(n+1)`
-/

namespace A055231.P8962300905713718501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ)

end

end A055231.P8962300905713718501

noncomputable section

/-- A055231: Powerfree part of n: product of primes that divide n only once.

Offset 1, canonical program `A055231.P8962300905713718501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055231 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A055231.P8962300905713718501.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A071773, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A055231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A055357.P9303554876798707211

`A000460(n+3)+∑[∑[3^(n+1)-2^(n+1)]]`
-/

namespace A055357.P9303554876798707211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000460 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055357.P9303554876798707211

noncomputable section

/-- A055357: Number of increasing mobiles (circular rooted trees) with n nodes and 3 leaves.

Offset 4, canonical program `A055357.P9303554876798707211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A055357 (n : ℕ) : ℤ :=
  A055357.P9303554876798707211.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A055357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055684.P17672652822131391042

`A109607(n+3)%(n+2)`
-/

namespace A055684.P17672652822131391042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109607 (n + 3)) (n + 2 : ℤ)

end

end A055684.P17672652822131391042

noncomputable section

/-- A055684: Number of different n-pointed stars.

Offset 3, canonical program `A055684.P17672652822131391042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055684 (n : ℕ) : ℤ :=
  A055684.P17672652822131391042.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055881.P16218723346386416985

`∑{d}[n+1, A012245(#)]`
-/

namespace A055881.P16218723346386416985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A012245 d

end

end A055881.P16218723346386416985

noncomputable section

/-- A055881: a(n) = largest m such that m! divides n.

Offset 1, canonical program `A055881.P16218723346386416985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055881 (n : ℕ) : ℤ :=
  A055881.P16218723346386416985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A055881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056323.P14802106134183311547

`(A124303(n)+A305750(n))/2`
-/

namespace A056323.P14802106134183311547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124303 n + A305750 n : ℚ) / 2

end

end A056323.P14802106134183311547

noncomputable section

/-- A056323: Number of reversible string structures with n beads using a maximum of four different colors.

Offset 0, canonical program `A056323.P14802106134183311547`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056323 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056323.P14802106134183311547.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A056323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A056328.P13611939948640542517

`A056323(n+1)-A001998(n)`
-/

namespace A056328.P13611939948640542517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056323 (n + 1) - A001998 n

end

end A056328.P13611939948640542517

noncomputable section

/-- A056328: Number of reversible string structures with n beads using exactly four different colors.

Offset 1, canonical program `A056328.P13611939948640542517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A056328 (n : ℕ) : ℤ :=
  A056328.P13611939948640542517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A056328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056454.P10309732254336888628

`A056489(or(1, n))`
-/

namespace A056454.P10309732254336888628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056489 (Nat.lor 1 n)

end

end A056454.P10309732254336888628

noncomputable section

/-- A056454: Number of palindromes of length n using exactly three different symbols.

Offset 1, canonical program `A056454.P10309732254336888628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056454 (n : ℕ) : ℤ :=
  A056454.P10309732254336888628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A056454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056473.P6112660942085821025

`A032263(∑[char[2*n]])/3`
-/

namespace A056473.P6112660942085821025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032263 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A056473.P6112660942085821025

noncomputable section

/-- A056473: Number of palindromic structures using exactly four different symbols.

Offset 1, canonical program `A056473.P6112660942085821025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A056473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056473.P6112660942085821025.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A056473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056653.P4720559690192011754

`A118742(n)+1`
-/

namespace A056653.P4720559690192011754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n + 1

end

end A056653.P4720559690192011754

noncomputable section

/-- A056653: Composite numbers together with 1 but excluding 4.

Offset 1, canonical program `A056653.P4720559690192011754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056653 (n : ℕ) : ℤ :=
  A056653.P4720559690192011754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056811.P16286728648920269496

`A230980(floor(sqrt(n+1)))`
-/

namespace A056811.P16286728648920269496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.sqrt (n + 1))

end

end A056811.P16286728648920269496

noncomputable section

/-- A056811: Number of primes not exceeding square root of n: primepi(sqrt(n)).

Offset 1, canonical program `A056811.P16286728648920269496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056811 (n : ℕ) : ℤ :=
  A056811.P16286728648920269496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A056811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057723.P5095730388445867346

`∑{d}[n+1, #*A397412((n+1)/#)]`
-/

namespace A057723.P5095730388445867346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A397412 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A057723.P5095730388445867346

noncomputable section

/-- A057723: Sum of positive divisors of n that are divisible by every prime that divides n.

Offset 1, canonical program `A057723.P5095730388445867346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057723 (n : ℕ) : ℤ :=
  A057723.P5095730388445867346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057977.P9126153292899327250

`A063549(A028310(n))`
-/

namespace A057977.P9126153292899327250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (A028310 n).toNat

end

end A057977.P9126153292899327250

noncomputable section

/-- A057977: GCD of consecutive central binomial coefficients: a(n) = gcd(A001405(n+1), A001405(n)).

Offset 0, canonical program `A057977.P9126153292899327250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A057977 (n : ℕ) : ℤ :=
  A057977.P9126153292899327250.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A057977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059348.P17500318434418441565

`A208355(n+1)+A208355(n)`
-/

namespace A059348.P17500318434418441565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (n + 1) + A208355 n

end

end A059348.P17500318434418441565

noncomputable section

/-- A059348: Third diagonal of array in A059347.

Offset 2, canonical program `A059348.P17500318434418441565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A059348 (n : ℕ) : ℤ :=
  A059348.P17500318434418441565.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A059348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059479.P17464652159649958448

`A355264(n+1)²`
-/

namespace A059479.P17464652159649958448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (n + 1) ^ 2

end

end A059479.P17464652159649958448

noncomputable section

/-- A059479: Number of 3 X 3 matrices with elements from {0,...,n-1} such that the middle element of each of the eight lines of three (rows, columns and diagonals) is the square (mod n) of the difference of the end elements.

Offset 1, canonical program `A059479.P17464652159649958448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059479 (n : ℕ) : ℤ :=
  A059479.P17464652159649958448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060145.P9806475002723103157

`abs(A004956(n)-A195121(n))`
-/

namespace A060145.P9806475002723103157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004956 n - A195121 n|

end

end A060145.P9806475002723103157

noncomputable section

/-- A060145: a(n) = floor(n/tau) - floor(n/(1 + tau)).

Offset 0, canonical program `A060145.P9806475002723103157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060145 (n : ℕ) : ℤ :=
  A060145.P9806475002723103157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060594.P18168668668264662551

`A327730(A026741(n+1))`
-/

namespace A060594.P18168668668264662551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327730 (A026741 (n + 1)).toNat

end

end A060594.P18168668668264662551

noncomputable section

/-- A060594: Number of solutions to x^2 == 1 (mod n), that is, square roots of unity modulo n.

Offset 1, canonical program `A060594.P18168668668264662551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060594 (n : ℕ) : ℤ :=
  A060594.P18168668668264662551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060904.P2539972540385605862

`5^A112765(n+1)`
-/

namespace A060904.P2539972540385605862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A112765 (n + 1) : ℤ)

end

end A060904.P2539972540385605862

noncomputable section

/-- A060904: Largest power of 5 that divides n.

Offset 1, canonical program `A060904.P2539972540385605862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060904.P2539972540385605862.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112765, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062028.P8420805724104474199

`n+A007953(n)`
-/

namespace A062028.P8420805724104474199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A007953 n

end

end A062028.P8420805724104474199

noncomputable section

/-- A062028: a(n) = n + sum of the digits of n.

Offset 0, canonical program `A062028.P8420805724104474199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062028 (n : ℕ) : ℤ :=
  A062028.P8420805724104474199.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062173.P12803886350549463179

`A220105(n+1)%(n+1)`
-/

namespace A062173.P12803886350549463179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220105 (n + 1)) (n + 1 : ℤ)

end

end A062173.P12803886350549463179

noncomputable section

/-- A062173: a(n) = 2^(n-1) mod n.

Offset 1, canonical program `A062173.P12803886350549463179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062173 (n : ℕ) : ℤ :=
  A062173.P12803886350549463179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062175.P17672912280071872328

`A062173(n+1)²%(n+1)`
-/

namespace A062175.P17672912280071872328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062173 (n + 1) ^ 2) (n + 1 : ℤ)

end

end A062175.P17672912280071872328

noncomputable section

/-- A062175: a(n) = 4^(n-1) mod n.

Offset 1, canonical program `A062175.P17672912280071872328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062175 (n : ℕ) : ℤ :=
  A062175.P17672912280071872328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062378.P530133715863786862

`A003557(A003557(n+1))`
-/

namespace A062378.P530133715863786862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1)).toNat

end

end A062378.P530133715863786862

noncomputable section

/-- A062378: n divided by largest cubefree factor of n.

Offset 1, canonical program `A062378.P530133715863786862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062378 (n : ℕ) : ℤ :=
  A062378.P530133715863786862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062774.P18360295498494493866

`∑{d}[n+1, A230980(#)]`
-/

namespace A062774.P18360295498494493866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230980 d

end

end A062774.P18360295498494493866

noncomputable section

/-- A062774: Inverse Moebius transform of PrimePi function.

Offset 1, canonical program `A062774.P18360295498494493866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062774 (n : ℕ) : ℤ :=
  A062774.P18360295498494493866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062778.P15711731261721006587

`∑{d}[n+1, A007427(#)*A062774((n+1)/#)]`
-/

namespace A062778.P15711731261721006587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062778.P15711731261721006587

noncomputable section

/-- A062778: Values of Moebius-transform of PrimePi function.

Offset 1, canonical program `A062778.P15711731261721006587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062778 (n : ℕ) : ℤ :=
  A062778.P15711731261721006587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062880.P2055745413581106128

`2*A000695(n)`
-/

namespace A062880.P2055745413581106128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000695 n

end

end A062880.P2055745413581106128

noncomputable section

/-- A062880: Zero together with the numbers which can be written as a sum of distinct odd powers of 2.

Offset 0, canonical program `A062880.P2055745413581106128`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062880 (n : ℕ) : ℤ :=
  A062880.P2055745413581106128.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063659.P8030400348371096999

`∑{d}[n+1, #*A271102((n+1)/#)]`
-/

namespace A063659.P8030400348371096999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A063659.P8030400348371096999

noncomputable section

/-- A063659: The number of integers m in [1..n] for which gcd(m,n) is not divisible by a square greater than 1.

Offset 1, canonical program `A063659.P8030400348371096999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063659 (n : ℕ) : ℤ :=
  A063659.P8030400348371096999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063732.P5437524643798160730

`A249115(n+1)-1`
-/

namespace A063732.P5437524643798160730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (n + 1) - 1

end

end A063732.P5437524643798160730

noncomputable section

/-- A063732: Numbers whose Lucas representation excludes L_0 = 2.

Offset 1, canonical program `A063732.P5437524643798160730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063732 (n : ℕ) : ℤ :=
  A063732.P5437524643798160730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064310.P3912504138029418483

`(-1)^n*A126983(n)`
-/

namespace A064310.P3912504138029418483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A126983 n

end

end A064310.P3912504138029418483

noncomputable section

/-- A064310: Generalized Catalan numbers C(-1; n).

Offset 0, canonical program `A064310.P3912504138029418483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A064310 (n : ℕ) : ℤ :=
  A064310.P3912504138029418483.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A064310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064971.P12456317125098901049

`∑{d}[n+1, A053825(#)*A379812((n+1)/#)]`
-/

namespace A064971.P12456317125098901049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053825 d * A379812 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A064971.P12456317125098901049

noncomputable section

/-- A064971: a(n) = n*usigma(n), where usigma(n) is the sum of unitary divisors of n (A034448).

Offset 1, canonical program `A064971.P12456317125098901049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064971 (n : ℕ) : ℤ :=
  A064971.P12456317125098901049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065363.P10338292447349607337

`A053735(2*n)-A053735(n)`
-/

namespace A065363.P10338292447349607337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * n) - A053735 n

end

end A065363.P10338292447349607337

noncomputable section

/-- A065363: Sum of balanced ternary digits in n. Replace 3^k with 1 in balanced ternary expansion of n.

Offset 0, canonical program `A065363.P10338292447349607337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065363 (n : ℕ) : ℤ :=
  A065363.P10338292447349607337.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065515.P15129427044826637405

`A025528(n+1)+1`
-/

namespace A065515.P15129427044826637405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1) + 1

end

end A065515.P15129427044826637405

noncomputable section

/-- A065515: Number of prime powers <= n.

Offset 1, canonical program `A065515.P15129427044826637405`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065515 (n : ℕ) : ℤ :=
  A065515.P15129427044826637405.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065896.P8722596109035714303

`A210469(n+1)+n`
-/

namespace A065896.P8722596109035714303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) + (n : ℤ)

end

end A065896.P8722596109035714303

noncomputable section

/-- A065896: Number of composites <= 2*n.

Offset 1, canonical program `A065896.P8722596109035714303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065896 (n : ℕ) : ℤ :=
  A065896.P8722596109035714303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065959.P2409166480310075694

`A069091(n+1)/A059376(n+1)`
-/

namespace A065959.P2409166480310075694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069091 (n + 1) : ℚ) / (A059376 (n + 1) : ℚ)

end

end A065959.P2409166480310075694

noncomputable section

/-- A065959: a(n) = n^3*Product_{distinct primes p dividing n} (1+1/p^3).

Offset 1, canonical program `A065959.P2409166480310075694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065959 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065959.P2409166480310075694.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059376, A069091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A065959.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066182.P18414975574033607487

`ceil(A198954(n)/2+n)`
-/

namespace A066182.P18414975574033607487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198954 n : ℚ) / 2 + (n : ℚ)⌉

end

end A066182.P18414975574033607487

noncomputable section

/-- A066182: Permutation of the integers with cycle form {1}, {3, 2}, {6, 5, 4}, {10, 9, 8, 7}, ...

Offset 1, canonical program `A066182.P18414975574033607487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066182 (n : ℕ) : ℤ :=
  A066182.P18414975574033607487.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067397.P1658473277541325480

`(A053735(n)+A053735(n+1)-A053735(2*n)-1)/2`
-/

namespace A067397.P1658473277541325480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n + A053735 (n + 1) - A053735 (2 * n) - 1 : ℚ) / 2

end

end A067397.P1658473277541325480

noncomputable section

/-- A067397: Maximal power of 3 that divides n-th Catalan number.

Offset 0, canonical program `A067397.P1658473277541325480`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067397 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067397.P1658473277541325480.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069271.P14577300285001042328

`A005810(n)*A016813(n)/A060544(n+1)`
-/

namespace A069271.P14577300285001042328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n * A016813 n : ℚ) / (A060544 (n + 1) : ℚ)

end

end A069271.P14577300285001042328

noncomputable section

/-- A069271: a(n) = binomial(4*n+1,n)*2/(3*n+2).

Offset 0, canonical program `A069271.P14577300285001042328`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069271.P14577300285001042328.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069271.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069623.P16188465153472375596

`A076411(n+2)`
-/

namespace A069623.P16188465153472375596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (n + 2)

end

end A069623.P16188465153472375596

noncomputable section

/-- A069623: Number of perfect powers <= n.

Offset 1, canonical program `A069623.P16188465153472375596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069623 (n : ℕ) : ℤ :=
  A069623.P16188465153472375596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070923.P14941240451852089413

`A077107(n)-n²`
-/

namespace A070923.P14941240451852089413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 n - (n ^ 2 : ℤ)

end

end A070923.P14941240451852089413

noncomputable section

/-- A070923: a(n) is the smallest value >= 0 of the form x^3 - n^2.

Offset 0, canonical program `A070923.P14941240451852089413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070923 (n : ℕ) : ℤ :=
  A070923.P14941240451852089413.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077107, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A070923.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071111.P7558974791234017135

`A001000(n+2)`
-/

namespace A071111.P7558974791234017135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (n + 2)

end

end A071111.P7558974791234017135

noncomputable section

/-- A071111: a(n) is the least integer x such that there exists an integer in the open interval (x/(i+1), x/i) for i= n-1, n-2 ..., 3, 2, 1.

Offset 2, canonical program `A071111.P7558974791234017135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A071111 (n : ℕ) : ℤ :=
  A071111.P7558974791234017135.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. -/
def A071111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071354.P4286494807268156885

`lt[floor(n/2), A062173(round(acot(n)+n))]`
-/

namespace A071354.P4286494807268156885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071354.P4286494807268156885

noncomputable section

/-- A071354: Floor(2^n/n) is odd.

Offset 1, canonical program `A071354.P4286494807268156885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071354 (n : ℕ) : ℤ :=
  (A071354.P4286494807268156885.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071718.P1631232272951733655

`A099376(n)+A071721(n)`
-/

namespace A071718.P1631232272951733655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071721 n

end

end A071718.P1631232272951733655

noncomputable section

/-- A071718: Expansion of (1+x^2*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071718.P1631232272951733655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071718 (n : ℕ) : ℤ :=
  A071718.P1631232272951733655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071731.P2765701597909956439

`Δ[record[abs(1-n)*A091712(n)]]`
-/

namespace A071731.P2765701597909956439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A091712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071731.P2765701597909956439

noncomputable section

/-- A071731: Expansion of (1+x^3*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071731.P2765701597909956439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071731 (n : ℕ) : ℤ :=
  A071731.P2765701597909956439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072462.P1277985972236002111

`A028982(eq[3, A152677(n+1)%4]+1)`
-/

namespace A072462.P1277985972236002111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152677 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072462.P1277985972236002111

noncomputable section

/-- A072462: Numbers k such that sigma(k) == 3 (mod 4).

Offset 1, canonical program `A072462.P1277985972236002111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5105 terms. -/
def A072462 (n : ℕ) : ℤ :=
  A072462.P1277985972236002111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5105 terms. -/
def A072462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073897.P11908229186590286199

`xor(A057427(n), A073898(n+1))`
-/

namespace A073897.P11908229186590286199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A073898 (n + 1))

end

end A073897.P11908229186590286199

noncomputable section

/-- A073897: a(1) = 1, a(n) = smallest odd or even number not occurring earlier according as n is prime or composite.

Offset 1, canonical program `A073897.P11908229186590286199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073897 (n : ℕ) : ℤ :=
  A073897.P11908229186590286199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077267.P10656974449840595018

`A079978(n)+a(floor(n/3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077267.P10656974449840595018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A079978 n + a ⌊(n : ℚ) / 3⌋.toNat

end

end A077267.P10656974449840595018

noncomputable section

/-- A077267: Number of zeros in base-3 expansion of n.

Offset 0, canonical program `A077267.P10656974449840595018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077267 (n : ℕ) : ℤ :=
  A077267.P10656974449840595018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078616.P11557008643438510974

`1-A007877(A235963(n))`
-/

namespace A078616.P11557008643438510974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007877 (A235963 n).toNat

end

end A078616.P11557008643438510974

noncomputable section

/-- A078616: a(n) = Sum_{k=0..n} A010815(k).

Offset 0, canonical program `A078616.P11557008643438510974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078616 (n : ℕ) : ℤ :=
  A078616.P11557008643438510974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078650.P371792363212749957

`2-A000002(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078650.P371792363212749957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000002 (n + 1)

end

end A078650.P371792363212749957

noncomputable section

/-- A078650: 2-A000002(n) where A000002 is the Kolakoski sequence.

Offset 1, canonical program `A078650.P371792363212749957`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078650 (n : ℕ) : ℤ :=
  A078650.P371792363212749957.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078880.P10962953249147653079

`A000002(2+n)`
-/

namespace A078880.P10962953249147653079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 + n)

end

end A078880.P10962953249147653079

noncomputable section

/-- A078880: The sequence starting with 2 that equals its own run length sequence.

Offset 1, canonical program `A078880.P10962953249147653079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078880 (n : ℕ) : ℤ :=
  A078880.P10962953249147653079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079726.P14487602782044974592

`2*(n+1)-A156253(n+1)`
-/

namespace A079726.P14487602782044974592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A156253 (n + 1)

end

end A079726.P14487602782044974592

noncomputable section

/-- A079726: a(1)=1, a(n) is the smallest integer > a(n-1) such that a(n) is even if k(n)=1, a(n) is odd if k(n)=2, where k(n) denotes the n-th term of the Kolakoski sequence (A000002).

Offset 1, canonical program `A079726.P14487602782044974592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079726 (n : ℕ) : ℤ :=
  A079726.P14487602782044974592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081603.P9418366050176887204

`(A053735(n)-A062756(n))/2`
-/

namespace A081603.P9418366050176887204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053735 n - A062756 n : ℚ) / 2

end

end A081603.P9418366050176887204

noncomputable section

/-- A081603: Number of 2's in ternary representation of n.

Offset 0, canonical program `A081603.P9418366050176887204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081603.P9418366050176887204.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062756, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081729.P13956299838836808291

`A209229(n)+A033999(n)`
-/

namespace A081729.P13956299838836808291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n + A033999 n

end

end A081729.P13956299838836808291

noncomputable section

/-- A081729: Expansion of Sum(k>=0, x^(2^k)) + 1/(1+x). First differences of A007456 (gossip sequence) for n>1.

Offset 0, canonical program `A081729.P13956299838836808291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081729 (n : ℕ) : ℤ :=
  A081729.P13956299838836808291.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082052.P17956952017327585217

`∑{d}[n+1, #*A166486(#-1)]`
-/

namespace A082052.P17956952017327585217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A166486 (d - 1)

end

end A082052.P17956952017327585217

noncomputable section

/-- A082052: Sum of divisors of n that are not of the form 4k+1.

Offset 1, canonical program `A082052.P17956952017327585217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082052 (n : ℕ) : ℤ :=
  A082052.P17956952017327585217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082494.P7337767156106625034

`1-A015910(n+1)+n`
-/

namespace A082494.P7337767156106625034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A015910 (n + 1) + (n : ℤ)

end

end A082494.P7337767156106625034

noncomputable section

/-- A082494: a(n) = n - (2^n (mod n)).

Offset 1, canonical program `A082494.P7337767156106625034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082494 (n : ℕ) : ℤ :=
  A082494.P7337767156106625034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082495.P8916257716192115176

`(A015910(n+1)+n)%(n+1)`
-/

namespace A082495.P8916257716192115176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015910 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A082495.P8916257716192115176

noncomputable section

/-- A082495: a(n) = (2^n - 1) mod n.

Offset 1, canonical program `A082495.P8916257716192115176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082495 (n : ℕ) : ℤ :=
  A082495.P8916257716192115176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083741.P6552315304162526779

`A245788(n)-A298011(n)`
-/

namespace A083741.P6552315304162526779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A298011 n

end

end A083741.P6552315304162526779

noncomputable section

/-- A083741: a(n) = L(n) + a(L(n)), where L(n) = n - 2^floor(log_2(n)) (A053645).

Offset 0, canonical program `A083741.P6552315304162526779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083741 (n : ℕ) : ℤ :=
  A083741.P6552315304162526779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083890.P17438385976831224986

`∑{d}[n+1, (4%A054055(#))%2]`
-/

namespace A083890.P17438385976831224986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (Int.tmod 4 (A054055 d)) 2

end

end A083890.P17438385976831224986

noncomputable section

/-- A083890: Number of divisors of n with largest digit = 3 (base 10).

Offset 1, canonical program `A083890.P17438385976831224986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083890 (n : ℕ) : ℤ :=
  A083890.P17438385976831224986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083892.P9271966704018374742

`∑{d}[n+1, val(A054055(#), 5)]`
-/

namespace A083892.P9271966704018374742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 5

end

end A083892.P9271966704018374742

noncomputable section

/-- A083892: Number of divisors of n with largest digit = 5 (base 10).

Offset 1, canonical program `A083892.P9271966704018374742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083892 (n : ℕ) : ℤ :=
  (A083892.P9271966704018374742.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083893.P9413967459148914952

`∑{d}[n+1, val(A054055(#), 6)]`
-/

namespace A083893.P9413967459148914952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 6

end

end A083893.P9413967459148914952

noncomputable section

/-- A083893: Number of divisors of n with largest digit = 6 (base 10).

Offset 1, canonical program `A083893.P9413967459148914952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083893 (n : ℕ) : ℤ :=
  (A083893.P9413967459148914952.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083894.P9300796477055001593

`∑{d}[n+1, val(A054055(#), 7)]`
-/

namespace A083894.P9300796477055001593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A054055 d).toNat 7

end

end A083894.P9300796477055001593

noncomputable section

/-- A083894: Number of divisors of n with largest digit = 7 (base 10).

Offset 1, canonical program `A083894.P9300796477055001593`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083894 (n : ℕ) : ℤ :=
  (A083894.P9300796477055001593.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083912.P10595039226711258511

`A001876(∑[n]%(n+1))`
-/

namespace A083912.P10595039226711258511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A083912.P10595039226711258511

noncomputable section

/-- A083912: Number of divisors of n that are congruent to 2 modulo 10.

Offset 1, canonical program `A083912.P10595039226711258511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083912 (n : ℕ) : ℤ :=
  A083912.P10595039226711258511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083914.P15521831857978958629

`A001877(n+1-lcm(2, n+1)/2)`
-/

namespace A083914.P15521831857978958629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A083914.P15521831857978958629

noncomputable section

/-- A083914: Number of divisors of n that are congruent to 4 modulo 10.

Offset 1, canonical program `A083914.P15521831857978958629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083914 (n : ℕ) : ℤ :=
  A083914.P15521831857978958629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083918.P6152787378875264210

`Δ[A218447(floor(n/2))]`
-/

namespace A083918.P6152787378875264210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218447 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083918.P6152787378875264210

noncomputable section

/-- A083918: Number of divisors of n that are congruent to 8 modulo 10.

Offset 1, canonical program `A083918.P6152787378875264210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083918 (n : ℕ) : ℤ :=
  A083918.P6152787378875264210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084400.P13046145720619798035

`record[n*A302777(n+1)+1]`
-/

namespace A084400.P13046145720619798035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302777 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084400.P13046145720619798035

noncomputable section

/-- A084400: a(1) = 1; for n>1, a(n) = smallest number that does not divide the product of all previous terms.

Offset 1, canonical program `A084400.P13046145720619798035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A084400 (n : ℕ) : ℤ :=
  A084400.P13046145720619798035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A084400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084950.P11041438467242688939

`A011973(n)²*A082375(n)!`
-/

namespace A084950.P11041438467242688939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n ^ 2 * (Nat.factorial (A082375 n).toNat : ℤ)

end

end A084950.P11041438467242688939

noncomputable section

/-- A084950: Array of coefficients of denominator polynomials of the n-th approximation of the continued fraction x/(1+x/(2+x/(3+..., related to Laguerre polynomial coefficients.

Offset 0, canonical program `A084950.P11041438467242688939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A084950 (n : ℕ) : ℤ :=
  A084950.P11041438467242688939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A084950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086014.P12741057087969494046

`∑{digits}[n², A011675(#)]`
-/

namespace A086014.P12741057087969494046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A011675 x).sum

end

end A086014.P12741057087969494046

noncomputable section

/-- A086014: Number of 6's in decimal expansion of n^2.

Offset 0, canonical program `A086014.P12741057087969494046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086014 (n : ℕ) : ℤ :=
  A086014.P12741057087969494046.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086246.P7157768835649708098

`A168049(C(2, n)+n)`
-/

namespace A086246.P7157768835649708098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (Nat.choose 2 n + n)

end

end A086246.P7157768835649708098

noncomputable section

/-- A086246: Expansion of (1 + x - sqrt(1 - 2*x - 3*x^2)) / 2 in powers of x.

Offset 0, canonical program `A086246.P7157768835649708098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A086246 (n : ℕ) : ℤ :=
  A086246.P7157768835649708098.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A086246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086645.P14421537294405242217

`A034870(A133280(n))`
-/

namespace A086645.P14421537294405242217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034870 (A133280 n).toNat

end

end A086645.P14421537294405242217

noncomputable section

/-- A086645: Triangle read by rows: T(n, k) = binomial(2n, 2k).

Offset 0, canonical program `A086645.P14421537294405242217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086645 (n : ℕ) : ℤ :=
  A086645.P14421537294405242217.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088218.P16894379730140654192

`A260878(n)-1`
-/

namespace A088218.P16894379730140654192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260878 n - 1

end

end A088218.P16894379730140654192

noncomputable section

/-- A088218: Total number of leaves in all rooted ordered trees with n edges.

Offset 0, canonical program `A088218.P16894379730140654192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A088218 (n : ℕ) : ℤ :=
  A088218.P16894379730140654192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A088218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088569.P6705758619599044298

`3-A000002(n+2)`
-/

namespace A088569.P6705758619599044298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000002 (n + 2)

end

end A088569.P6705758619599044298

noncomputable section

/-- A088569: Anti-Kolakoski sequence (sequence of run lengths never coincides with the sequence itself).

Offset 1, canonical program `A088569.P6705758619599044298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088569 (n : ℕ) : ℤ :=
  A088569.P6705758619599044298.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000002, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088569.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088570.P4359712251069015777

`(n%2+1)*A000002(n+1)`
-/

namespace A088570.P4359712251069015777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000002 (n + 1)

end

end A088570.P4359712251069015777

noncomputable section

/-- A088570: Sum of terms in n-th block of Kolakoski sequence.

Offset 1, canonical program `A088570.P4359712251069015777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088570 (n : ℕ) : ℤ :=
  A088570.P4359712251069015777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091995.P16558306300262697301

`A161680(A322832(n))+A000267(n)`
-/

namespace A091995.P16558306300262697301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A322832 n).toNat + A000267 n

end

end A091995.P16558306300262697301

noncomputable section

/-- A091995: Permutation of the natural numbers.

Offset 1, canonical program `A091995.P16558306300262697301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091995 (n : ℕ) : ℤ :=
  A091995.P16558306300262697301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092391.P1831081500129819331

`n+A000120(n)`
-/

namespace A092391.P1831081500129819331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000120 n

end

end A092391.P1831081500129819331

noncomputable section

/-- A092391: a(n) = n + wt(n), where wt(n) = A000120(n) = binary weight of n.

Offset 0, canonical program `A092391.P1831081500129819331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092391 (n : ℕ) : ℤ :=
  A092391.P1831081500129819331.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092543.P4363946767756583020

`A110654(A002024(n+1))+A010751(n)`
-/

namespace A092543.P4363946767756583020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002024 (n + 1)).toNat + A010751 n

end

end A092543.P4363946767756583020

noncomputable section

/-- A092543: Table below read by antidiagonals alternately upwards and downwards.

Offset 1, canonical program `A092543.P4363946767756583020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092543 (n : ℕ) : ℤ :=
  A092543.P4363946767756583020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093659.P5890510302390266350

`A000120(n)!`
-/

namespace A093659.P5890510302390266350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 n).toNat

end

end A093659.P5890510302390266350

noncomputable section

/-- A093659: First column of lower triangular matrix A093658; factorial of the number of 1's in binary expansion of n.

Offset 0, canonical program `A093659.P5890510302390266350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093659 (n : ℕ) : ℤ :=
  (A093659.P5890510302390266350.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A096494.P552534159965664402

`2*A000006(n+1)`
-/

namespace A096494.P552534159965664402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000006 (n + 1)

end

end A096494.P552534159965664402

noncomputable section

/-- A096494: Largest value in the periodic part of the continued fraction of sqrt(prime(n)).

Offset 1, canonical program `A096494.P552534159965664402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096494 (n : ℕ) : ℤ :=
  A096494.P552534159965664402.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097070.P10985676525260391429

`(n+1)*(A260878(n)-1)`
-/

namespace A097070.P10985676525260391429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A260878 n - 1)

end

end A097070.P10985676525260391429

noncomputable section

/-- A097070: Consider all compositions (ordered partitions) of n into n parts, allowing zeros. E.g., for n = 3 we get 300, 030, 003, 210, 120, 201, 102, 021, 012, 111. Then a(n) is the total number of 1's.

Offset 1, canonical program `A097070.P10985676525260391429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A097070 (n : ℕ) : ℤ :=
  A097070.P10985676525260391429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A097070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097331.P4426990625459901142

`A208355(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A097331.P4426990625459901142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A208355 (n - 2) - a (n - 1)

end

end A097331.P4426990625459901142

noncomputable section

/-- A097331: Expansion of 1 + 2x/(1 + sqrt(1 - 4x^2)).

Offset 0, canonical program `A097331.P4426990625459901142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A097331 (n : ℕ) : ℤ :=
  A097331.P4426990625459901142.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A097331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097706.P9633468710195769328

`gcd(n+1, A170819(n+1)^8)`
-/

namespace A097706.P9633468710195769328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A170819 (n + 1) ^ 8)

end

end A097706.P9633468710195769328

noncomputable section

/-- A097706: Part of n composed of prime factors of form 4k+3.

Offset 1, canonical program `A097706.P9633468710195769328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097706 (n : ℕ) : ℤ :=
  (A097706.P9633468710195769328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098871.P11206898626946488056

`A000695(n)+1`
-/

namespace A098871.P11206898626946488056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n + 1

end

end A098871.P11206898626946488056

noncomputable section

/-- A098871: Sums of distinct powers of 4 plus 1.

Offset 0, canonical program `A098871.P11206898626946488056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098871 (n : ℕ) : ℤ :=
  A098871.P11206898626946488056.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099801.P5638060238408130792

`∑[A101808(n)]-1`
-/

namespace A099801.P5638060238408130792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099801.P5638060238408130792

noncomputable section

/-- A099801: PrimePi(2n+1), the number of primes less than or equal to 2n+1.

Offset 0, canonical program `A099801.P5638060238408130792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099801 (n : ℕ) : ℤ :=
  A099801.P5638060238408130792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A099801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102376.P15707539213794308439

`4^A000120(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A102376.P15707539213794308439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

end

end A102376.P15707539213794308439

noncomputable section

/-- A102376: a(n) = 4^A000120(n).

Offset 0, canonical program `A102376.P15707539213794308439`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102376 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102376.P15707539213794308439.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102377.P13436876123217032879

`10^A000120(n)`
-/

namespace A102377.P13436876123217032879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000120 n : ℤ)

end

end A102377.P13436876123217032879

noncomputable section

/-- A102377: Gould's sequence A001316 in binary.

Offset 0, canonical program `A102377.P13436876123217032879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102377 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102377.P13436876123217032879.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102700.P10486691176846618732

`A105042(n+1)-1`
-/

namespace A102700.P10486691176846618732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - 1

end

end A102700.P10486691176846618732

noncomputable section

/-- A102700: Numbers k such that 10*k + 9 is prime.

Offset 1, canonical program `A102700.P10486691176846618732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102700 (n : ℕ) : ℤ :=
  A102700.P10486691176846618732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103938.P6046974057312831276

`A001764(n)+A000139(n)`
-/

namespace A103938.P6046974057312831276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n + A000139 n

end

end A103938.P6046974057312831276

noncomputable section

/-- A103938: Number of rooted non-separable n-edge maps in the plane (planar with a distinguished outside face).

Offset 1, canonical program `A103938.P6046974057312831276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A103938 (n : ℕ) : ℤ :=
  A103938.P6046974057312831276.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A103938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104144.P15865153976698881542

`Δ[A127193(n+1)/8]`
-/

namespace A104144.P15865153976698881542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127193 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A104144.P15865153976698881542

noncomputable section

/-- A104144: a(n) = Sum_{k=1..9} a(n-k); a(8) = 1, a(n) = 0 for n < 8.

Offset 0, canonical program `A104144.P15865153976698881542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A104144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104144.P15865153976698881542.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A104144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105309.P13426581789959634764

`A119749(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A105309.P13426581789959634764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A119749 n + a (n - 2)

end

end A105309.P13426581789959634764

noncomputable section

/-- A105309: a(n) = |b(n)|^2 = x^2 + 3*y^2 where (x,y,y,y) is the quaternion b(n) of the sequence b of quaternions defined by b(0)=1,b(1)=1, b(n) = b(n-1) + b(n-2)*(0,c,c,c) where c = 1/sqrt(3).

Offset 0, canonical program `A105309.P13426581789959634764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A105309 (n : ℕ) : ℤ :=
  A105309.P13426581789959634764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A105309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105673.P14538287794614071707

`2*A002654(n+1)`
-/

namespace A105673.P14538287794614071707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002654 (n + 1)

end

end A105673.P14538287794614071707

noncomputable section

/-- A105673: One-half of theta series of square lattice (or half the number of ways of writing n > 0 as a sum of 2 squares), without the constant term, which is 1/2.

Offset 1, canonical program `A105673.P14538287794614071707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105673 (n : ℕ) : ℤ :=
  A105673.P14538287794614071707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002654, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A105673.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A109395.P3549841257025425684

`1-A331176(n+1)+n`
-/

namespace A109395.P3549841257025425684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A331176 (n + 1) + (n : ℤ)

end

end A109395.P3549841257025425684

noncomputable section

/-- A109395: Denominator of phi(n)/n = Product_{p|n} (1 - 1/p); phi(n)=A000010(n), the Euler totient function.

Offset 1, canonical program `A109395.P3549841257025425684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109395 (n : ℕ) : ℤ :=
  A109395.P3549841257025425684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112385.P10988565838459756148

`2*A006632(n+1)`
-/

namespace A112385.P10988565838459756148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006632 (n + 1)

end

end A112385.P10988565838459756148

noncomputable section

/-- A112385: a(n) = 6*binomial(4*n-1,n-1)/(4*n-1).

Offset 1, canonical program `A112385.P10988565838459756148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A112385 (n : ℕ) : ℤ :=
  A112385.P10988565838459756148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A112385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112848.P9414413279454382001

`∑{d}[n+1, A049347(#-1)*A117188((n+1)/#-1)]`
-/

namespace A112848.P9414413279454382001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049347 (d - 1) * A117188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A112848.P9414413279454382001

noncomputable section

/-- A112848: Expansion of eta(q)*eta(q^2)*eta(q^18)^2/(eta(q^6)*eta(q^9)) in powers of q.

Offset 1, canonical program `A112848.P9414413279454382001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112848 (n : ℕ) : ℤ :=
  A112848.P9414413279454382001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115362.P12022203208950917127

`1/3*(4+A053737(n)-A053737(n+1))`
-/

namespace A115362.P12022203208950917127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (4 + A053737 n - A053737 (n + 1) : ℚ)

end

end A115362.P12022203208950917127

noncomputable section

/-- A115362: Row sums of ((1,x) + (x,x^2))^(-1)*((1,x)-(x,x^2))^(-1) (using Riordan array notation).

Offset 0, canonical program `A115362.P12022203208950917127`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115362 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115362.P12022203208950917127.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115362.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115607.P10089454494571849752

`(-1)^n*A000593(n+1)`
-/

namespace A115607.P10089454494571849752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000593 (n + 1)

end

end A115607.P10089454494571849752

noncomputable section

/-- A115607: Sum of odd divisors of n times (-1)^(n+1).

Offset 1, canonical program `A115607.P10089454494571849752`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115607 (n : ℕ) : ℤ :=
  A115607.P10089454494571849752.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A115607.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115635.P17810721979096127821

`A115714(A057300(n)+4)`
-/

namespace A115635.P17810721979096127821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115714 (A057300 n + 4).toNat

end

end A115635.P17810721979096127821

noncomputable section

/-- A115635: Periodic {1,1,-5,0,1,-3,-1,0,-3,1,-1,-4}.

Offset 0, canonical program `A115635.P17810721979096127821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A115635 (n : ℕ) : ℤ :=
  A115635.P17810721979096127821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5120 terms. -/
def A115635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117212.P1727424025659028873

`∑{d}[n+1, A101035(#)*A193356((n+1)/#)]`
-/

namespace A117212.P1727424025659028873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A117212.P1727424025659028873

noncomputable section

/-- A117212: Sum_{d|n} a(d)/d = (-1)^(n-1)/n for n>=1; equals the logarithmic g.f. of A117210.

Offset 1, canonical program `A117212.P1727424025659028873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117212 (n : ℕ) : ℤ :=
  A117212.P1727424025659028873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117966.P11599160912576478646

`n-3*A005836(A289814(n)+1)`
-/

namespace A117966.P11599160912576478646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 * A005836 (A289814 n + 1).toNat

end

end A117966.P11599160912576478646

noncomputable section

/-- A117966: Balanced ternary enumeration (based on balanced ternary representation) of integers; write n in ternary and then replace 2's with (-1)'s.

Offset 0, canonical program `A117966.P11599160912576478646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117966 (n : ℕ) : ℤ :=
  A117966.P11599160912576478646.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A117966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122877.P10339492444474054042

`Δ[A025235(n)/2]`
-/

namespace A122877.P10339492444474054042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025235 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122877.P10339492444474054042

noncomputable section

/-- A122877: Expansion of (1-2*x-3*x^2-(1-x)*sqrt(1-2*x-7*x^2))/(8*x^3).

Offset 0, canonical program `A122877.P10339492444474054042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A122877 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A122877.P10339492444474054042.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. -/
def A122877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124642.P17409428497958016739

`A210736(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A124642.P17409428497958016739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A210736 n + a (n - 2)

end

end A124642.P17409428497958016739

noncomputable section

/-- A124642: Antidiagonal sums of A096465.

Offset 0, canonical program `A124642.P17409428497958016739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A124642 (n : ℕ) : ℤ :=
  A124642.P17409428497958016739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A124642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127228.P3541026641123049136

`A239035(n+1)-1`
-/

namespace A127228.P3541026641123049136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239035 (n + 1) - 1

end

end A127228.P3541026641123049136

noncomputable section

/-- A127228: a(n) = numerator of ((n + 4)! - (n - 4)!)/(n!).

Offset 4, canonical program `A127228.P3541026641123049136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127228 (n : ℕ) : ℤ :=
  A127228.P3541026641123049136.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127427.P10470407826532983788

`(3*n+A053735(n)-A053735(6*n))/2`
-/

namespace A127427.P10470407826532983788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) + A053735 n - A053735 (6 * n) : ℚ) / 2

end

end A127427.P10470407826532983788

noncomputable section

/-- A127427: a(n) = v_3( (6n)! ) - v_3( (3n)! ), where v_3(N) is the 3-adic valuation A007949(N).

Offset 0, canonical program `A127427.P10470407826532983788`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127427 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127427.P10470407826532983788.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A127427.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127988.P16825810271688874760

`8*A000695(n)`
-/

namespace A127988.P16825810271688874760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000695 n

end

end A127988.P16825810271688874760

noncomputable section

/-- A127988: Sequence determining the parity of A025748.

Offset 0, canonical program `A127988.P16825810271688874760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127988 (n : ℕ) : ℤ :=
  A127988.P16825810271688874760.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127988.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128076.P7177073460386788445

`A377809(n+1)-(n+1)`
-/

namespace A128076.P7177073460386788445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - (n + 1 : ℤ)

end

end A128076.P7177073460386788445

noncomputable section

/-- A128076: Triangle T(n,k) = 2*n-k, read by rows.

Offset 1, canonical program `A128076.P7177073460386788445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128076 (n : ℕ) : ℤ :=
  A128076.P7177073460386788445.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128766.P6440368289916836038

`∑[A100789(n)]-A337896(n+1)`
-/

namespace A128766.P6440368289916836038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A337896 (n + 1)

end

end A128766.P6440368289916836038

noncomputable section

/-- A128766: Number of inequivalent n-colorings of the vertices of the 3D cube under full orthogonal group of the cube (of order 48).

Offset 1, canonical program `A128766.P6440368289916836038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128766 (n : ℕ) : ℤ :=
  A128766.P6440368289916836038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130543.P1727106374851024527

`A185115(n+1)`
-/

namespace A130543.P1727106374851024527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185115 (n + 1)

end

end A130543.P1727106374851024527

noncomputable section

/-- A130543: Multiplicative persistence of n!.

Offset 0, canonical program `A130543.P1727106374851024527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130543 (n : ℕ) : ℤ :=
  A130543.P1727106374851024527.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185115, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A130543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131428.P9432219154056895874

`A383251(n)-2`
-/

namespace A131428.P9432219154056895874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383251 n - 2

end

end A131428.P9432219154056895874

noncomputable section

/-- A131428: a(n) = 2*C(n) - 1, where C(n) = A000108(n) are the Catalan numbers.

Offset 0, canonical program `A131428.P9432219154056895874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A131428 (n : ℕ) : ℤ :=
  A131428.P9432219154056895874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A131428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132634.P13227898559569153105

`A132636(n+1)%A085960(n+1)`
-/

namespace A132634.P13227898559569153105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132636 (n + 1)) (A085960 (n + 1))

end

end A132634.P13227898559569153105

noncomputable section

/-- A132634: a(n) = Fibonacci(n) mod n^2.

Offset 1, canonical program `A132634.P13227898559569153105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132634 (n : ℕ) : ℤ :=
  A132634.P13227898559569153105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133111.P10615281622924144025

`∑[∑[A241205(C(n, n²)+n)]]`
-/

namespace A133111.P10615281622924144025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241205 (Nat.choose n (n ^ 2) + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133111.P10615281622924144025

noncomputable section

/-- A133111: a(n) = (1/(1!*2!*3!*4!))*Sum_{1 <= x_1, x_2, x_3, x_4 <= n} |det V(x_1,x_2,x_3,x_4)|, where V(x_1,x_2,x_3,x_4) is the Vandermonde matrix of order 4.

Offset 1, canonical program `A133111.P10615281622924144025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133111 (n : ℕ) : ℤ :=
  A133111.P10615281622924144025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133726.P3307844016044252173

`∑{d}[n+1, A007427(#)*A256281((n+1)/#)]`
-/

namespace A133726.P3307844016044252173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A256281 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A133726.P3307844016044252173

noncomputable section

/-- A133726: Möbius transform of the Pell numbers (A000129).

Offset 1, canonical program `A133726.P3307844016044252173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A133726 (n : ℕ) : ℤ :=
  A133726.P3307844016044252173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A133726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134451.P12605129592745265341

`a(A053735(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A134451.P12605129592745265341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (A053735 n).toNat

end

end A134451.P12605129592745265341

noncomputable section

/-- A134451: Ternary digital root of n.

Offset 0, canonical program `A134451.P12605129592745265341`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134451 (n : ℕ) : ℤ :=
  (A134451.P12605129592745265341.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134451.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A137734.P16570986701740849317

`A259361(A143051(n))+1`
-/

namespace A137734.P16570986701740849317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A143051 n).toNat + 1

end

end A137734.P16570986701740849317

noncomputable section

/-- A137734: a(0)=1. a(n) = ceiling(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

Offset 0, canonical program `A137734.P16570986701740849317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137734 (n : ℕ) : ℤ :=
  A137734.P16570986701740849317.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137735.P991700169822903993

`A000194(n+1-A384688(n))`
-/

namespace A137735.P991700169822903993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1 : ℤ) - A384688 n).toNat

end

end A137735.P991700169822903993

noncomputable section

/-- A137735: a(0)=1. a(n) = floor(n/b(n)), where b(n) is the largest value among (a(0),a(1),...,a(n-1)).

Offset 0, canonical program `A137735.P991700169822903993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137735 (n : ℕ) : ℤ :=
  A137735.P991700169822903993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137776.P16278498535273104316

`A138569(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A137776.P16278498535273104316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A138569 (n - 1) + a (n - 1)

end

end A137776.P16278498535273104316

noncomputable section

/-- A137776: Interleave A038504 with A131577.

Offset 0, canonical program `A137776.P16278498535273104316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A137776 (n : ℕ) : ℤ :=
  A137776.P16278498535273104316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. -/
def A137776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138503.P12556879654800362698

`(-1)^n*A008457(n+1)`
-/

namespace A138503.P12556879654800362698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008457 (n + 1)

end

end A138503.P12556879654800362698

noncomputable section

/-- A138503: a(n) = Sum_{d|n} (-1)^(d-1)*d^3.

Offset 1, canonical program `A138503.P12556879654800362698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138503 (n : ℕ) : ℤ :=
  A138503.P12556879654800362698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138503.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139140.P15434870677707820248

`Δ[A253769(A028310(n))%A001844(n)]`
-/

namespace A139140.P15434870677707820248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253769 (A028310 n).toNat) (A001844 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139140.P15434870677707820248

noncomputable section

/-- A139140: For n>=1, a(n) = d(prime(n)+1) + d(prime(n)+2) + d(prime(n)+3) + ... + d(prime(n+1)), where d(m) is the number of positive divisors of m and prime(n) is the n-th prime. a(0) = d(1) + d(2).

Offset 0, canonical program `A139140.P15434870677707820248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139140 (n : ℕ) : ℤ :=
  A139140.P15434870677707820248.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A139140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139262.P8524009422663711179

`A097070(n+1)-A081294(n)`
-/

namespace A139262.P8524009422663711179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 1) - A081294 n

end

end A139262.P8524009422663711179

noncomputable section

/-- A139262: Total number of two-element anti-chains over all ordered trees on n edges.

Offset 0, canonical program `A139262.P8524009422663711179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A139262 (n : ℕ) : ℤ :=
  A139262.P8524009422663711179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A139262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139352.P2034447244462371406

`A053737(n)-A000120(n)`
-/

namespace A139352.P2034447244462371406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 n - A000120 n

end

end A139352.P2034447244462371406

noncomputable section

/-- A139352: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives o(n).

Offset 0, canonical program `A139352.P2034447244462371406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139352 (n : ℕ) : ℤ :=
  A139352.P2034447244462371406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140313.P14708941762040753786

`A232801(xor(1, A102899(n)))`
-/

namespace A140313.P14708941762040753786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232801 (Int.xor 1 (A102899 n)).toNat

end

end A140313.P14708941762040753786

noncomputable section

/-- A140313: First differences of A140298.

Offset 0, canonical program `A140313.P14708941762040753786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A140313 (n : ℕ) : ℤ :=
  A140313.P14708941762040753786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 634 terms. -/
def A140313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140434.P96571140770797263

`A004277(n-A016035(n+1))`
-/

namespace A140434.P96571140770797263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ((n : ℤ) - A016035 (n + 1)).toNat

end

end A140434.P96571140770797263

noncomputable section

/-- A140434: Number of new visible points created at each step in an n X n grid.

Offset 1, canonical program `A140434.P96571140770797263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140434 (n : ℕ) : ℤ :=
  A140434.P96571140770797263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140434.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146076.P5513778411624192836

`A000203(n+1)-A000593(n+1)`
-/

namespace A146076.P5513778411624192836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000593 (n + 1)

end

end A146076.P5513778411624192836

noncomputable section

/-- A146076: Sum of even divisors of n.

Offset 1, canonical program `A146076.P5513778411624192836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146076 (n : ℕ) : ℤ :=
  A146076.P5513778411624192836.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A146076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A146321.P17007843695888336122

`A158927(n)-A122803(n)`
-/

namespace A146321.P17007843695888336122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158927 n - A122803 n

end

end A146321.P17007843695888336122

noncomputable section

/-- A146321: Inverse binomial transform of A070366.

Offset 0, canonical program `A146321.P17007843695888336122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A146321 (n : ℕ) : ℤ :=
  A146321.P17007843695888336122.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A146321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147568.P4088074706858455040

`2*A000695(n)+3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147568.P4088074706858455040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000695 n + 3

end

end A147568.P4088074706858455040

noncomputable section

/-- A147568: a(n) = 2*A000695(n)+3.

Offset 0, canonical program `A147568.P4088074706858455040`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147568 (n : ℕ) : ℤ :=
  A147568.P4088074706858455040.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000695, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147568.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152822.P16322060659010648271

`A166486(2+n)`
-/

namespace A152822.P16322060659010648271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 + n)

end

end A152822.P16322060659010648271

noncomputable section

/-- A152822: Periodic sequence [1,1,0,1] of length 4.

Offset 0, canonical program `A152822.P16322060659010648271`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152822 (n : ℕ) : ℤ :=
  A152822.P16322060659010648271.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A152822.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A153733.P10755713114946739736

`n-A331739(n+1)`
-/

namespace A153733.P10755713114946739736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A331739 (n + 1)

end

end A153733.P10755713114946739736

noncomputable section

/-- A153733: Remove all trailing 1's in the binary representation of n.

Offset 0, canonical program `A153733.P10755713114946739736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153733 (n : ℕ) : ℤ :=
  A153733.P10755713114946739736.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331739, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161149.P17242516584261524791

`n!*A000909(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161149.P17242516584261524791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000909 n

end

end A161149.P17242516584261524791

noncomputable section

/-- A161149: a(n) = (2*n)!*(2*n+1)!/n! = n!*A000909(n).

Offset 0, canonical program `A161149.P17242516584261524791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161149 (n : ℕ) : ℤ :=
  A161149.P17242516584261524791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161149.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A168256.P5031658385717853237

`A028303(A279891(n))`
-/

namespace A168256.P5031658385717853237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (A279891 n).toNat

end

end A168256.P5031658385717853237

noncomputable section

/-- A168256: Triangle read by rows: Catalan number C(n) repeated n+1 times.

Offset 0, canonical program `A168256.P5031658385717853237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168256 (n : ℕ) : ℤ :=
  A168256.P5031658385717853237.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169805.P17977796700678006772

`2*A007953(n)`
-/

namespace A169805.P17977796700678006772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007953 n

end

end A169805.P17977796700678006772

noncomputable section

/-- A169805: Twice the sum of the digits of n.

Offset 0, canonical program `A169805.P17977796700678006772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169805 (n : ℕ) : ℤ :=
  A169805.P17977796700678006772.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A169805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A171899.P7149812686449934114

`(Δ[char[A216345(n+1)]]+2)%(n+1)`
-/

namespace A171899.P7149812686449934114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2) (n + 1 : ℤ)

end

end A171899.P7149812686449934114

noncomputable section

/-- A171899: Backwards van Eck transform of A000002.

Offset 1, canonical program `A171899.P7149812686449934114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171899 (n : ℕ) : ℤ :=
  A171899.P7149812686449934114.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173523.P2383759421144788857

`1+A053735(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A173523.P2383759421144788857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053735 n

end

end A173523.P2383759421144788857

noncomputable section

/-- A173523: 1+A053735(n-1), where A053735 is the sum-of-digits function in base 3.

Offset 1, canonical program `A173523.P2383759421144788857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173523 (n : ℕ) : ℤ :=
  A173523.P2383759421144788857.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A173523.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A183569.P18099393345988825343

`∑[A240025(n)+1]`
-/

namespace A183569.P18099393345988825343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183569.P18099393345988825343

noncomputable section

/-- A183569: n+floor(sqrt(4n-3)), complement of A024206.

Offset 1, canonical program `A183569.P18099393345988825343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183569 (n : ℕ) : ℤ :=
  A183569.P18099393345988825343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A183569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185114.P1795733170275167192

`A130543(n)+A000007(n)`
-/

namespace A185114.P1795733170275167192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n + A000007 n

end

end A185114.P1795733170275167192

noncomputable section

/-- A185114: Number of connected 2-regular simple graphs on n vertices with girth at least 4.

Offset 0, canonical program `A185114.P1795733170275167192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185114 (n : ℕ) : ℤ :=
  A185114.P1795733170275167192.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130543, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A185114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A187044.P16714071663709978981

`A193361(n+2)`
-/

namespace A187044.P16714071663709978981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193361 (n + 2)

end

end A187044.P16714071663709978981

noncomputable section

/-- A187044: Row sums of number triangle A070895.

Offset 0, canonical program `A187044.P16714071663709978981`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187044 (n : ℕ) : ℤ :=
  A187044.P16714071663709978981.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A187044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A187795.P6752293008617933550

`∑{d}[n+1, #*A294937(#)]`
-/

namespace A187795.P6752293008617933550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A294937 d

end

end A187795.P6752293008617933550

noncomputable section

/-- A187795: Sum of the abundant divisors of n.

Offset 1, canonical program `A187795.P6752293008617933550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187795 (n : ℕ) : ℤ :=
  A187795.P6752293008617933550.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A187795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188169.P9022130587462569637

`∑{d}[n+1, A253513(#-1)]`
-/

namespace A188169.P9022130587462569637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253513 (d - 1)

end

end A188169.P9022130587462569637

noncomputable section

/-- A188169: The number of divisors d of n of the form d == 1 (mod 8).

Offset 1, canonical program `A188169.P9022130587462569637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188169 (n : ℕ) : ℤ :=
  A188169.P9022130587462569637.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A188171.P17289095504074848112

`A001842(n+1)+A002654(n+1)-A188169(n+1)`
-/

namespace A188171.P17289095504074848112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) + (A002654 (n + 1) - A188169 (n + 1))

end

end A188171.P17289095504074848112

noncomputable section

/-- A188171: The number of divisors d of n of the form d == 5 (mod 8).

Offset 1, canonical program `A188171.P17289095504074848112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188171 (n : ℕ) : ℤ :=
  A188171.P17289095504074848112.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A188171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A189403.P8871410371183353853

`A032634(n+1)+A000572(n+1)`
-/

namespace A189403.P8871410371183353853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (n + 1) + A000572 (n + 1)

end

end A189403.P8871410371183353853

noncomputable section

/-- A189403: n+[nr/s]+[nt/s]; r=1, s=e, t=e^2.

Offset 1, canonical program `A189403.P8871410371183353853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189403 (n : ℕ) : ℤ :=
  A189403.P8871410371183353853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A189403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190511.P10122857199414912232

`A022839(n+1)-1`
-/

namespace A190511.P10122857199414912232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) - 1

end

end A190511.P10122857199414912232

noncomputable section

/-- A190511: n+[nr/u]+[ns/u]+[nt/u]; r=golden ratio, s=r^2, t=r^3, u=r^4.

Offset 1, canonical program `A190511.P10122857199414912232`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190511 (n : ℕ) : ℤ :=
  A190511.P10122857199414912232.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022839, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A190511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A190843.P14248419695484844249

`A276853(n+1)-2*A022843(n+1)`
-/

namespace A190843.P14248419695484844249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 (n + 1) - 2 * A022843 (n + 1)

end

end A190843.P14248419695484844249

noncomputable section

/-- A190843: a(n) = [2*n*e] - 2*[n*e], where [ ] = floor and e is the natural logarithm base.

Offset 1, canonical program `A190843.P14248419695484844249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190843 (n : ℕ) : ℤ :=
  A190843.P14248419695484844249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A190843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191386.P5013181058466511668

`A000034(n)*A258431(A004526(n))`
-/

namespace A191386.P5013181058466511668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A258431 (A004526 n).toNat

end

end A191386.P5013181058466511668

noncomputable section

/-- A191386: Number of ascents of length 1 in all dispersed Dyck paths of length n (i.e., in all Motzkin paths of length n with no (1,0) steps at positive heights). An ascent is a maximal sequence of consecutive (1,1)-steps.

Offset 0, canonical program `A191386.P5013181058466511668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A191386 (n : ℕ) : ℤ :=
  A191386.P5013181058466511668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A191386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A191522.P8267354329706753814

`Δ[A210736(n)]*A140106(n+1)`
-/

namespace A191522.P8267354329706753814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A140106 (n + 1)

end

end A191522.P8267354329706753814

noncomputable section

/-- A191522: Number of valleys in all left factors of Dyck paths of length n. A valley is a (1,-1)-step followed by a (1,1)-step.

Offset 0, canonical program `A191522.P8267354329706753814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191522 (n : ℕ) : ℤ :=
  A191522.P8267354329706753814.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A191522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193238.P10325099849022998101

`∑{digits}[n, A302048(#²)]`
-/

namespace A193238.P10325099849022998101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A302048 (x ^ 2)).sum

end

end A193238.P10325099849022998101

noncomputable section

/-- A193238: Number of prime digits in decimal representation of n.

Offset 0, canonical program `A193238.P10325099849022998101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193238 (n : ℕ) : ℤ :=
  A193238.P10325099849022998101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193832.P6849096457617838116

`A235963(n)+1`
-/

namespace A193832.P6849096457617838116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 n + 1

end

end A193832.P6849096457617838116

noncomputable section

/-- A193832: Irregular triangle read by rows in which row n lists 2n-1 copies of 2n-1 and n copies of 2n, for n >= 1.

Offset 1, canonical program `A193832.P6849096457617838116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193832 (n : ℕ) : ℤ :=
  A193832.P6849096457617838116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A193832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195943.P2912805975544362954

`filter[A052382(n+1), A010055(#)]`
-/

namespace A195943.P2912805975544362954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A195943.P2912805975544362954

noncomputable section

/-- A195943: Zeroless prime powers: Intersection of A000961 and A052382.

Offset 1, canonical program `A195943.P2912805975544362954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A195943 (n : ℕ) : ℤ :=
  A195943.P2912805975544362954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1054 terms. -/
def A195943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203553.P6403346514830057154

`xor(1, A094761(n)-A259361(n))`
-/

namespace A203553.P6403346514830057154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A094761 n - A259361 n)

end

end A203553.P6403346514830057154

noncomputable section

/-- A203553: Lodumo_2 of A118175, which is n 1's followed by n 0's.

Offset 0, canonical program `A203553.P6403346514830057154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203553 (n : ℕ) : ℤ :=
  A203553.P6403346514830057154.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A203553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A203639.P16011470496757075944

`A005361(n+1)*A003557(n+1)`
-/

namespace A203639.P16011470496757075944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A003557 (n + 1)

end

end A203639.P16011470496757075944

noncomputable section

/-- A203639: Multiplicative with a(p^e) = e*p^(e-1).

Offset 1, canonical program `A203639.P16011470496757075944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A203639 (n : ℕ) : ℤ :=
  A203639.P16011470496757075944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A203639.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209211.P11824110619297163653

`eq[n, A318828(n+1)]+1`
-/

namespace A209211.P11824110619297163653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209211.P11824110619297163653

noncomputable section

/-- A209211: Numbers k such that k-1 and phi(k) are relatively prime.

Offset 1, canonical program `A209211.P11824110619297163653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209211 (n : ℕ) : ℤ :=
  (A209211.P11824110619297163653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A209211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216884.P17864295657923968855

`A000040(A323048(n+1)+char[A323048(n+1)])`
-/

namespace A216884.P17864295657923968855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A323048 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A216884.P17864295657923968855

noncomputable section

/-- A216884: Primes p such that x^61 = 2 has a solution mod p.

Offset 1, canonical program `A216884.P17864295657923968855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A216884 (n : ℕ) : ℤ :=
  A216884.P17864295657923968855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A216884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A218446.P16595335050583582027

`∑[A001878(n)]`
-/

namespace A218446.P16595335050583582027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218446.P16595335050583582027

noncomputable section

/-- A218446: a(n) = Sum_{k>=0} floor(n/(5*k + 3)).

Offset 0, canonical program `A218446.P16595335050583582027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218446 (n : ℕ) : ℤ :=
  A218446.P16595335050583582027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A218446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230641.P12572480448472300178

`n+A053735(n)`
-/

namespace A230641.P12572480448472300178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A053735 n

end

end A230641.P12572480448472300178

noncomputable section

/-- A230641: a(n) = n + (sum of digits in base-3 representation of n).

Offset 0, canonical program `A230641.P12572480448472300178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230641 (n : ℕ) : ℤ :=
  A230641.P12572480448472300178.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230772.P15398795437404776816

`A230980(comp[3*n])-A230980(n)`
-/

namespace A230772.P15398795437404776816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A230980 n

end

end A230772.P15398795437404776816

noncomputable section

/-- A230772: Number of primes in the half-open interval [n, 3*n/2).

Offset 1, canonical program `A230772.P15398795437404776816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A230772 (n : ℕ) : ℤ :=
  A230772.P15398795437404776816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A230772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234045.P17871312824107287060

`A238468(n-A238468(n+2))`
-/

namespace A234045.P17871312824107287060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 ((n : ℤ) - A238468 (n + 2)).toNat

end

end A234045.P17871312824107287060

noncomputable section

/-- A234045: Period 7: repeat [0, 0, 1, -1, -1, 1, 0].

Offset 0, canonical program `A234045.P17871312824107287060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A234045 (n : ℕ) : ℤ :=
  A234045.P17871312824107287060.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A234045.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A253629.P1098263720651424872

`A003557(n+1)*A206787(n+1)`
-/

namespace A253629.P1098263720651424872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A206787 (n + 1)

end

end A253629.P1098263720651424872

noncomputable section

/-- A253629: Multiplicative function defined for prime powers by a(p^e) = p^(e-1)(p+1) if p > 2 and a(2^e) = 2^(e-1).

Offset 1, canonical program `A253629.P1098263720651424872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253629 (n : ℕ) : ℤ :=
  A253629.P1098263720651424872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255175.P6042656914842276599

`A339265(n)+a(n-1)` with `a(0)=1`
-/

namespace A255175.P6042656914842276599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339265 n + a (n - 1)

end

end A255175.P6042656914842276599

noncomputable section

/-- A255175: Expansion of phi(-x) / (1 - x)^2 in powers of x where phi() is a Ramanujan theta function.

Offset 0, canonical program `A255175.P6042656914842276599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255175 (n : ℕ) : ℤ :=
  A255175.P6042656914842276599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255175.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A265411.P7044820118345598143

`Δ[A265413(n)]`
-/

namespace A265411.P7044820118345598143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265411.P7044820118345598143

noncomputable section

/-- A265411: a(0) = 1, a(1) = 7, otherwise, if A240025(n-1) = 1 [when n is in A033638] a(n) = 3, otherwise a(n) = 1.

Offset 0, canonical program `A265411.P7044820118345598143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265411 (n : ℕ) : ℤ :=
  A265411.P7044820118345598143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265411.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A276729.P16499400846689770455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A193238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276729 (n : ℕ) : ℤ :=
  A276729.P16499400846689770455.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, A193238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A276729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280637.P1583501028177231652

`A007953(A002522(n))`
-/

namespace A280637.P1583501028177231652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A002522 n).toNat

end

end A280637.P1583501028177231652

noncomputable section

/-- A280637: Sum of the digits of n^2+1.

Offset 0, canonical program `A280637.P1583501028177231652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280637 (n : ℕ) : ℤ :=
  A280637.P1583501028177231652.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282080.P11231614446896098972

`A213850(n+1)-A000292(A285869(n))`
-/

namespace A282080.P11231614446896098972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 1) - A000292 (A285869 n).toNat

end

end A282080.P11231614446896098972

noncomputable section

/-- A282080: Number of n-element subsets of [n+4] having an even sum.

Offset 0, canonical program `A282080.P11231614446896098972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282080 (n : ℕ) : ℤ :=
  A282080.P11231614446896098972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282080.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A282464.P101039133801469205

`floor(∑[n*A295680(2*n+1)/2])`
-/

namespace A282464.P101039133801469205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A295680 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A282464.P101039133801469205

noncomputable section

/-- A282464: a(n) = Sum_{i=0..n} i*Fibonacci(i)^2.

Offset 0, canonical program `A282464.P101039133801469205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A282464 (n : ℕ) : ℤ :=
  A282464.P101039133801469205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A282464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283799.P17285316347300436378

`A114752(n+1)*A369082(n)`
-/

namespace A283799.P17285316347300436378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114752 (n + 1) * A369082 n

end

end A283799.P17285316347300436378

noncomputable section

/-- A283799: Number of dispersed Dyck prefixes of length 2n and height n.

Offset 0, canonical program `A283799.P17285316347300436378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A283799 (n : ℕ) : ℤ :=
  A283799.P17285316347300436378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A283799.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A300909.P640743007146312883

`∑{d}[n+1, #*A374016(#)]`
-/

namespace A300909.P640743007146312883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374016 d

end

end A300909.P640743007146312883

noncomputable section

/-- A300909: Sum of 4th powers dividing n.

Offset 1, canonical program `A300909.P640743007146312883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300909 (n : ℕ) : ℤ :=
  A300909.P640743007146312883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304974.P17883165039520731159

`A305750(n)-A182522(n)`
-/

namespace A304974.P17883165039520731159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - A182522 n

end

end A304974.P17883165039520731159

noncomputable section

/-- A304974: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 4 colors (sets).

Offset 0, canonical program `A304974.P17883165039520731159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A304974 (n : ℕ) : ℤ :=
  A304974.P17883165039520731159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A304974.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A349394.P210516795435731064`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A069513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349394 (n : ℕ) : ℤ :=
  A349394.P210516795435731064.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A069513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349394.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A360539.P1925901688017653991

`A050985(A058035(n+1))`
-/

namespace A360539.P1925901688017653991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A058035 (n + 1)).toNat

end

end A360539.P1925901688017653991

noncomputable section

/-- A360539: a(n) is the cubefree part of n: the largest unitary divisor of n that is a cubefree number (A004709).

Offset 1, canonical program `A360539.P1925901688017653991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360539 (n : ℕ) : ℤ :=
  A360539.P1925901688017653991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374625.P6516257093902246467

`A020988(A070939(n))-A000695(n)`
-/

namespace A374625.P6516257093902246467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (A070939 n).toNat - A000695 n

end

end A374625.P6516257093902246467

noncomputable section

/-- A374625: In the binary expansion of n, expand bits 1 -> 01 and 0 -> 10.

Offset 0, canonical program `A374625.P6516257093902246467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374625 (n : ℕ) : ℤ :=
  A374625.P6516257093902246467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374625.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A390582.P9712316944901875088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390582.P9712316944901875088.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390582.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000010.P4673923239450215316

`A173557(n+1)*A003557(n+1)`
-/

namespace A000010.P4673923239450215316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A003557 (n + 1)

end

end A000010.P4673923239450215316

noncomputable section

/-- A000010: Euler totient function phi(n): count numbers <= n and prime to n.

Offset 1, canonical program `A000010.P4673923239450215316`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000010 (n : ℕ) : ℤ :=
  A000010.P4673923239450215316.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000069.P1815803225870136105

`1/2*(4*n+1+(-1)^A000120(n))`
-/

namespace A000069.P1815803225870136105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((4 * n : ℚ) + (1 + (-1 : ℚ) ^ (A000120 n : ℤ)))

end

end A000069.P1815803225870136105

noncomputable section

/-- A000069: Odious numbers: numbers with an odd number of 1's in their binary expansion.

Offset 1, canonical program `A000069.P1815803225870136105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000069 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A000069.P1815803225870136105.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A000069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A000082.P16648937404349228138

`A181797(n+1)*A003557(n+1)`
-/

namespace A000082.P16648937404349228138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (n + 1) * A003557 (n + 1)

end

end A000082.P16648937404349228138

noncomputable section

/-- A000082: a(n) = n^2*Product_{p|n} (1 + 1/p).

Offset 1, canonical program `A000082.P16648937404349228138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A181797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000082 (n : ℕ) : ℤ :=
  A000082.P16648937404349228138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A181797, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A000704.P18194243516802683645

`A048099(round(acot(n)+n))+1`
-/

namespace A000704.P18194243516802683645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048099 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A000704.P18194243516802683645

noncomputable section

/-- A000704: Number of degree-n even permutations of order dividing 2.

Offset 0, canonical program `A000704.P18194243516802683645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A000704 (n : ℕ) : ℤ :=
  A000704.P18194243516802683645.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. -/
def A000704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000788.P8338375810879423652

`A083741(n+1)+A136013(n+1)`
-/

namespace A000788.P8338375810879423652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083741 (n + 1) + A136013 (n + 1)

end

end A000788.P8338375810879423652

noncomputable section

/-- A000788: Total number of 1's in binary expansions of 0, ..., n.

Offset 0, canonical program `A000788.P8338375810879423652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000788 (n : ℕ) : ℤ :=
  A000788.P8338375810879423652.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083741, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A000788.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A001615.P12124664077600514761

`A003557(n+1)*A048250(n+1)`
-/

namespace A001615.P12124664077600514761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1)

end

end A001615.P12124664077600514761

noncomputable section

/-- A001615: Dedekind psi function: n * Product_{p|n, p prime} (1 + 1/p).

Offset 1, canonical program `A001615.P12124664077600514761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001615 (n : ℕ) : ℤ :=
  A001615.P12124664077600514761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A001615.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A002472.P580287726073740322

`A003557(n+1)*A305444(n+1)`
-/

namespace A002472.P580287726073740322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A305444 (n + 1)

end

end A002472.P580287726073740322

noncomputable section

/-- A002472: Number of pairs x,y such that y-x=2, (x,n)=1, (y,n)=1 and 1 <= x <= n.

Offset 1, canonical program `A002472.P580287726073740322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002472 (n : ℕ) : ℤ :=
  A002472.P580287726073740322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A002472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004159.P2005974215749459282

`A007953(A000290(n))`
-/

namespace A004159.P2005974215749459282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000290 n).toNat

end

end A004159.P2005974215749459282

noncomputable section

/-- A004159: Sum of digits of n^2.

Offset 0, canonical program `A004159.P2005974215749459282`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004159 (n : ℕ) : ℤ :=
  A004159.P2005974215749459282.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A004159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A007913.P11359412940648999332

`(n+1)^3/A059479(n+1)`
-/

namespace A007913.P11359412940648999332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A059479 (n + 1) : ℚ)

end

end A007913.P11359412940648999332

noncomputable section

/-- A007913: Squarefree part of n: a(n) is the smallest positive number m such that n/m is a square.

Offset 1, canonical program `A007913.P11359412940648999332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007913 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A007913.P11359412940648999332.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A007913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008314.P17030209366717782596

`A034868(n)/A000034(A070824(n+1))`
-/

namespace A008314.P17030209366717782596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034868 n : ℚ) / (A000034 (A070824 (n + 1)).toNat : ℚ)

end

end A008314.P17030209366717782596

noncomputable section

/-- A008314: Irregular triangle read by rows: one half of the coefficients of the expansion of (2*x)^n in terms of Chebyshev T-polynomials.

Offset 0, canonical program `A008314.P17030209366717782596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008314 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A008314.P17030209366717782596.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A008315.P15103667333557069867

`2*A034868(n)-A014462(n+1)`
-/

namespace A008315.P15103667333557069867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034868 n - A014462 (n + 1)

end

end A008315.P15103667333557069867

noncomputable section

/-- A008315: Catalan triangle read by rows. Also triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

Offset 0, canonical program `A008315.P15103667333557069867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008315 (n : ℕ) : ℤ :=
  A008315.P15103667333557069867.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A008315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023162.P291127662282880267

`eq[n, A132634(n+1)%(n+1)]+1`
-/

namespace A023162.P291127662282880267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132634 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023162.P291127662282880267

noncomputable section

/-- A023162: Numbers k such that F(k) == -1 (mod k), where F(n) = A000045(n) is the n-th Fibonacci number.

Offset 1, canonical program `A023162.P291127662282880267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1767 terms. -/
def A023162 (n : ℕ) : ℤ :=
  (A023162.P291127662282880267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1767 terms. -/
def A023162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A024622.P7610113690782019861

`A025528(2^n)+1`
-/

namespace A024622.P7610113690782019861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (2 ^ n) + 1

end

end A024622.P7610113690782019861

noncomputable section

/-- A024622: Position of 2^n among the powers of primes (A000961).

Offset 0, canonical program `A024622.P7610113690782019861`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024622 (n : ℕ) : ℤ :=
  A024622.P7610113690782019861.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A024622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A028244.P12623679519456827637

`2*A032263(n+1)`
-/

namespace A028244.P12623679519456827637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032263 (n + 1)

end

end A028244.P12623679519456827637

noncomputable section

/-- A028244: a(n) = 4^(n-1) - 3*3^(n-1) + 3*2^(n-1) - 1 (essentially Stirling numbers of second kind).

Offset 1, canonical program `A028244.P12623679519456827637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028244 (n : ℕ) : ℤ :=
  A028244.P12623679519456827637.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A028244.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A030433.P5160408850318071491

`10*A102700(n+1)+9`
-/

namespace A030433.P5160408850318071491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A102700 (n + 1) + 9

end

end A030433.P5160408850318071491

noncomputable section

/-- A030433: Primes of form 10*k + 9.

Offset 1, canonical program `A030433.P5160408850318071491`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102700, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030433 (n : ℕ) : ℤ :=
  A030433.P5160408850318071491.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102700, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A030433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A031164.P14530744105720124966

`2*A038164(n)-A060099(n)`
-/

namespace A031164.P14530744105720124966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038164 n - A060099 n

end

end A031164.P14530744105720124966

noncomputable section

/-- A031164: Irreducible Euler sums of weight 8 and depth 10+2n.

Offset 0, canonical program `A031164.P14530744105720124966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031164 (n : ℕ) : ℤ :=
  A031164.P14530744105720124966.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A031164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033876.P16870416633292688167

`A037965(n+2)-A001700(n)`
-/

namespace A033876.P16870416633292688167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037965 (n + 2) - A001700 n

end

end A033876.P16870416633292688167

noncomputable section

/-- A033876: Expansion of 1/(2*x) * (1/(1-4*x)^(3/2)-1).

Offset 0, canonical program `A033876.P16870416633292688167`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033876 (n : ℕ) : ℤ :=
  A033876.P16870416633292688167.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A033876.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A038800.P14492955848077110763

`Δ[A099801(A004273(2*n)+n)]`
-/

namespace A038800.P14492955848077110763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A004273 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038800.P14492955848077110763

noncomputable section

/-- A038800: Number of primes between 10n and 10n+9.

Offset 0, canonical program `A038800.P14492955848077110763`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A038800 (n : ℕ) : ℤ :=
  A038800.P14492955848077110763.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A038800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A042994.P13618748023607742261

`∪[A042995(n+1), A045342(n+1)]`
-/

namespace A042994.P13618748023607742261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A042994.P13618748023607742261

noncomputable section

/-- A042994: Primes congruent to {0, 1, 2, 3, 5} (mod 7).

Offset 1, canonical program `A042994.P13618748023607742261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042994 (n : ℕ) : ℤ :=
  (A042994.P13618748023607742261.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A042994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050449.P3812122387069373176

`∑{d}[n+1, #]-A082052(n+1)`
-/

namespace A050449.P3812122387069373176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A082052 (n + 1)

end

end A050449.P3812122387069373176

noncomputable section

/-- A050449: a(n) = Sum_{d|n, d == 1 (mod 4)} d.

Offset 1, canonical program `A050449.P3812122387069373176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050449 (n : ℕ) : ℤ :=
  A050449.P3812122387069373176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A050449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054054.P2265909657191604686

`9-A054055(A061601(n))`
-/

namespace A054054.P2265909657191604686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A054055 (A061601 n).toNat

end

end A054054.P2265909657191604686

noncomputable section

/-- A054054: Smallest digit of n.

Offset 0, canonical program `A054054.P2265909657191604686`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, A061601, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054054 (n : ℕ) : ℤ :=
  A054054.P2265909657191604686.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054055, A061601, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A054054.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071728.P8013549024474898456

`A099376(n)+A071731(n)`
-/

namespace A071728.P8013549024474898456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071731 n

end

end A071728.P8013549024474898456

noncomputable section

/-- A071728: Expansion of (1+x^3*C)*C^3, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071728.P8013549024474898456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071728 (n : ℕ) : ℤ :=
  A071728.P8013549024474898456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071728.provenance : SequenceMachineLib.Provenance := .conjectured

