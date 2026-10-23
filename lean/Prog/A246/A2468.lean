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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A246800: Even-indexed terms of A247984, a sequence motivated by generalized quadrangles.

The programs for A246800, the canonical program `A246800.P15219966788583610103` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246800 has offset 1).

The definition of A246800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246800.P15219966788583610103

`2^(2*(n+1))-(-1)^(n+1)*C(2*(n+1), n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246800

/-- `2^(2*(n+1))-(-1)^(n+1)*C(2*(n+1), n+1)` -/
def P15219966788583610103.Spec : Prop :=
  ∀ n, P15219966788583610103.a n = A246800 (n + 1)

theorem P15219966788583610103.correct : P15219966788583610103.Spec := by
  intro n
  simp only [A246800, Nat.add_sub_cancel]

end A246800

/-! ## A246800.P15521848702718216754

`A247984(2*(n+1))`
-/

namespace A246800.P15521848702718216754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247984 (2 * (n + 1))

end

end A246800.P15521848702718216754

namespace A246800

/-- `A247984(2*(n+1))` -/
def P15521848702718216754.Spec : Prop :=
  ∀ n, P15521848702718216754.a n = A246800 (n + 1)

end A246800

/-! ## A246800.P7549183541569351858

`record[A247984(A014681(n+1))]`
-/

namespace A246800.P7549183541569351858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247984 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246800.P7549183541569351858

namespace A246800

/-- `record[A247984(A014681(n+1))]` -/
def P7549183541569351858.Spec : Prop :=
  ∀ n, P7549183541569351858.a n = A246800 (n + 1)

end A246800

/-! ## A246800.P3570230391630679539

`record[A247984(A127366(n+1))]`
-/

namespace A246800.P3570230391630679539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247984 (A127366 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246800.P3570230391630679539

namespace A246800

/-- `record[A247984(A127366(n+1))]` -/
def P3570230391630679539.Spec : Prop :=
  ∀ n, P3570230391630679539.a n = A246800 (n + 1)

end A246800

/-! ## A246800.P16503782021230895131

`record[A247984(A062157(n)+2+n)]`
-/

namespace A246800.P16503782021230895131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247984 (A062157 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246800.P16503782021230895131

namespace A246800

/-- `record[A247984(A062157(n)+2+n)]` -/
def P16503782021230895131.Spec : Prop :=
  ∀ n, P16503782021230895131.a n = A246800 (n + 1)

end A246800

/-! ## A246800.P14324824924031679658

`A151821(2*(n+1))-2*A110556(n+1)`
-/

namespace A246800.P14324824924031679658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (2 * (n + 1)) - 2 * A110556 (n + 1)

end

end A246800.P14324824924031679658

namespace A246800

/-- `A151821(2*(n+1))-2*A110556(n+1)` -/
def P14324824924031679658.Spec : Prop :=
  ∀ n, P14324824924031679658.a n = A246800 (n + 1)

end A246800

/-!
# A246801: Primes of the form: concatenation n with n-th composite integer.

The programs for A246801, there is no canonical definition to state claims against.
-/

/-! ## A246801.P2704015767969795617

`p?[A191992(n+1)]`
-/

namespace A246801.P2704015767969795617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246801.P2704015767969795617

/-! ## A246801.P5600809011297515998

`record[p?[A191992(A117910(n))]]`
-/

namespace A246801.P5600809011297515998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191992 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246801.P5600809011297515998

/-! ## A246801.P8985519617622542801

`record[p?[A191992(A126759(n))]]`
-/

namespace A246801.P8985519617622542801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191992 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246801.P8985519617622542801

/-! ## A246801.P8601520235377727026

`record[p?[A191992(A258451(n))]]`
-/

namespace A246801.P8601520235377727026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191992 (A258451 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246801.P8601520235377727026

/-! ## A246801.P14187601403395437949

`record[p?[A191992(A305296(n))]]`
-/

namespace A246801.P14187601403395437949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191992 (A305296 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246801.P14187601403395437949

/-!
# A246803: Solutions of phi(sigma(x)) = x-phi(x).

The programs for A246803, the canonical program `A246803.P15239765525824187154` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246803 has offset 1).

The definition of A246803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246803.P15239765525824187154

`eq[A000010(n+1), A295301(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A246803

/-- `eq[A000010(n+1), A295301(n+1)]+1` -/
def P15239765525824187154.Spec : Prop :=
  ∀ n, (P15239765525824187154.a n : ℤ) = A246803 (n + 1)

theorem P15239765525824187154.correct : P15239765525824187154.Spec := by
  intro n
  simp only [A246803, Nat.add_sub_cancel]

end A246803

/-! ## A246803.P4012190368388775506

`eq[A051953(n+1), A062401(n+1)]+1`
-/

namespace A246803.P4012190368388775506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246803.P4012190368388775506

namespace A246803

/-- `eq[A051953(n+1), A062401(n+1)]+1` -/
def P4012190368388775506.Spec : Prop :=
  ∀ n, (P4012190368388775506.a n : ℤ) = A246803 (n + 1)

end A246803

/-! ## A246803.P13331627362491117435

`A014681(eq[A051953(n+1), A062401(n+1)])`
-/

namespace A246803.P13331627362491117435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246803.P13331627362491117435

namespace A246803

/-- `A014681(eq[A051953(n+1), A062401(n+1)])` -/
def P13331627362491117435.Spec : Prop :=
  ∀ n, P13331627362491117435.a n = A246803 (n + 1)

end A246803

/-! ## A246803.P17586875941389361170

`A065475(eq[A051953(n+1), A062401(n+1)])`
-/

namespace A246803.P17586875941389361170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246803.P17586875941389361170

namespace A246803

/-- `A065475(eq[A051953(n+1), A062401(n+1)])` -/
def P17586875941389361170.Spec : Prop :=
  ∀ n, P17586875941389361170.a n = A246803 (n + 1)

end A246803

/-! ## A246803.P5373512408834208814

`A092486(eq[A051953(n+1), A062401(n+1)])`
-/

namespace A246803.P5373512408834208814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246803.P5373512408834208814

namespace A246803

/-- `A092486(eq[A051953(n+1), A062401(n+1)])` -/
def P5373512408834208814.Spec : Prop :=
  ∀ n, P5373512408834208814.a n = A246803 (n + 1)

end A246803

/-! ## A246803.P296548825859110043

`A153152(eq[A051953(n+1), A062401(n+1)])`
-/

namespace A246803.P296548825859110043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A246803.P296548825859110043

namespace A246803

/-- `A153152(eq[A051953(n+1), A062401(n+1)])` -/
def P296548825859110043.Spec : Prop :=
  ∀ n, P296548825859110043.a n = A246803 (n + 1)

end A246803

/-! ## A246803.P4497343507363555280

`eq[A000010(A000203(n+1)), A051953(n+1)]+1`
-/

namespace A246803.P4497343507363555280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246803.P4497343507363555280

namespace A246803

/-- `eq[A000010(A000203(n+1)), A051953(n+1)]+1` -/
def P4497343507363555280.Spec : Prop :=
  ∀ n, (P4497343507363555280.a n : ℤ) = A246803 (n + 1)

end A246803

/-! ## A246803.P17464965968157723231

`eq[A000010(A155085(n+1)-(n+1)), A051953(n+1)]+1`
-/

namespace A246803.P17464965968157723231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246803.P17464965968157723231

namespace A246803

/-- `eq[A000010(A155085(n+1)-(n+1)), A051953(n+1)]+1` -/
def P17464965968157723231.Spec : Prop :=
  ∀ n, (P17464965968157723231.a n : ℤ) = A246803 (n + 1)

end A246803

/-! ## A246803.P1305481537855029223

`eq[A000010(A064987(n+1)/(n+1)), A051953(n+1)]+1`
-/

namespace A246803.P1305481537855029223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246803.P1305481537855029223

namespace A246803

/-- `eq[A000010(A064987(n+1)/(n+1)), A051953(n+1)]+1` -/
def P1305481537855029223.Spec : Prop :=
  ∀ n, (P1305481537855029223.a n : ℤ) = A246803 (n + 1)

end A246803

/-!
# A246804: Numbers k such that (10^(k+2) + 999) * 10^k + 1 is prime.

The programs for A246804, there is no canonical definition to state claims against.
-/

/-! ## A246804.P15519458587010235716

`A118911(A099750(n))`
-/

namespace A246804.P15519458587010235716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (A099750 n).toNat

end

end A246804.P15519458587010235716

/-!
# A246806: Number of n-digit numbers whose base-10 representations can be written as the concatenations of 0 or more prime numbers (also expressed in base 10).

The programs for A246806, there is no canonical definition to state claims against.
-/

/-! ## A246806.P8277914427482920772

`A212255(A000781(n+1))`
-/

namespace A246806.P8277914427482920772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212255 (A000781 (n + 1)).toNat

end

end A246806.P8277914427482920772

/-!
# A246807: Number of n-bit numbers that can be written as the concatenation of 0 or more prime numbers (everything written in base 2).

The programs for A246807, there is no canonical definition to state claims against.
-/

/-! ## A246807.P4934904178862407811

`A374249(A000032(n))-A091048(2*n+5)`
-/

namespace A246807.P4934904178862407811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A000032 n).toNat - A091048 (2 * n + 5)

end

end A246807.P4934904178862407811

/-!
# A246810: a(n) is the smallest number m such that np(m) = n, where np(m) is number of primes p such that prime(m) < p < prime(m)^(1 + 1/m).

The programs for A246810, there is no canonical definition to state claims against.
-/

/-! ## A246810.P188725185761421900

`A252475(A002998(n+1))-(n+1)`
-/

namespace A246810.P188725185761421900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252475 (A002998 (n + 1)).toNat - (n + 1 : ℤ)

end

end A246810.P188725185761421900

/-! ## A246810.P17864642186377365716

`A252475(A077739(n+1))-(n+1)`
-/

namespace A246810.P17864642186377365716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252475 (A077739 (n + 1)).toNat - (n + 1 : ℤ)

end

end A246810.P17864642186377365716

/-! ## A246810.P8817944002713834820

`A252475(A237345(n)+1)-(n+1)`
-/

namespace A246810.P8817944002713834820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252475 (A237345 n + 1).toNat - (n + 1 : ℤ)

end

end A246810.P8817944002713834820

/-! ## A246810.P3964735829768636724

`A252475(A239085(n+1))-(n+1)`
-/

namespace A246810.P3964735829768636724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252475 (A239085 (n + 1)).toNat - (n + 1 : ℤ)

end

end A246810.P3964735829768636724

/-! ## A246810.P6708649250983710469

`or(A181712(3^n), A246787(n+1))`
-/

namespace A246810.P6708649250983710469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A181712 (3 ^ n)) (A246787 (n + 1))

end

end A246810.P6708649250983710469

/-!
# A246811: Expansion of phi(x)^2 * psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246811, there is no canonical definition to state claims against.
-/

/-! ## A246811.P1633384684415028195

`A045826(n)/A176040(n)`
-/

namespace A246811.P1633384684415028195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045826 n : ℚ) / (A176040 n : ℚ)

end

end A246811.P1633384684415028195

/-! ## A246811.P6945562616607171306

`A246631(Δ[n²])/2`
-/

namespace A246811.P6945562616607171306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246631 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A246811.P6945562616607171306

/-! ## A246811.P9915779559431172602

`abs(A212885(2*n+1)/2)`
-/

namespace A246811.P9915779559431172602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A212885 (2 * n + 1) : ℚ) / 2|

end

end A246811.P9915779559431172602

/-! ## A246811.P18118344904660335095

`A004526(A246631(2*n+1))`
-/

namespace A246811.P18118344904660335095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A246631 (2 * n + 1)).toNat

end

end A246811.P18118344904660335095

/-! ## A246811.P4120837363948283419

`A212885(2*n+1)/(2*A033999(n+1))`
-/

namespace A246811.P4120837363948283419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212885 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A246811.P4120837363948283419

/-! ## A246811.P7603166946518829745

`gcd(A212885(2*n+1)/2, A000038(n+1))`
-/

namespace A246811.P7603166946518829745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A212885 (2 * n + 1) : ℚ) / 2)) (A000038 (n + 1))

end

end A246811.P7603166946518829745

/-! ## A246811.P8704775668774807210

`lcm(A000034(n+1), A212885(2*n+1))/2`
-/

namespace A246811.P8704775668774807210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A212885 (2 * n + 1)) : ℚ) / 2

end

end A246811.P8704775668774807210

/-! ## A246811.P6608257364429525563

`(A005875(2*n+1)-A169783(2*n+1))/2`
-/

namespace A246811.P6608257364429525563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (2 * n + 1) - A169783 (2 * n + 1) : ℚ) / 2

end

end A246811.P6608257364429525563

/-! ## A246811.P9207485843326082346

`A004013(2*n+1)-A212885(2*n+1)/2`
-/

namespace A246811.P9207485843326082346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004013 (2 * n + 1) : ℚ) - (A212885 (2 * n + 1) : ℚ) / 2

end

end A246811.P9207485843326082346

/-! ## A246811.P3434194149107128954

`A005875(2*n+1)/(2*A084101(2*n+1))`
-/

namespace A246811.P3434194149107128954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005875 (2 * n + 1) : ℚ) / (2 * A084101 (2 * n + 1) : ℚ)

end

end A246811.P3434194149107128954

/-! ## A246811.P16110785695966706876

`A087960(2*n+1)*A212885(2*n+1)/2`
-/

namespace A246811.P16110785695966706876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) * A212885 (2 * n + 1) : ℚ) / 2

end

end A246811.P16110785695966706876

/-! ## A246811.P14593846891915903717

`A008619(A246631(2*n+1))-A000035(2*n+1)`
-/

namespace A246811.P14593846891915903717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A246631 (2 * n + 1)).toNat - A000035 (2 * n + 1)

end

end A246811.P14593846891915903717

/-! ## A246811.P179433711235575225

`abs(A319078(Δ[n²]))/2`
-/

namespace A246811.P179433711235575225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A319078 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat| : ℚ) / 2

end

end A246811.P179433711235575225

/-! ## A246811.P13137147936860075904

`abs(A319078(2*n+1)/2)`
-/

namespace A246811.P13137147936860075904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A319078 (2 * n + 1) : ℚ) / 2|

end

end A246811.P13137147936860075904

/-! ## A246811.P1293863123986458399

`A006370(abs(A319078(2*n+1)))`
-/

namespace A246811.P1293863123986458399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 |A319078 (2 * n + 1)|.toNat

end

end A246811.P1293863123986458399

/-! ## A246811.P4893293300916769142

`A319078(2*n+1)/(A132429(2*n)-1)`
-/

namespace A246811.P4893293300916769142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319078 (2 * n + 1) : ℚ) / (A132429 (2 * n) - 1 : ℚ)

end

end A246811.P4893293300916769142

/-! ## A246811.P16795898315756173493

`A319078(2*n+1)/(2*A057077(2*n))`
-/

namespace A246811.P16795898315756173493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319078 (2 * n + 1) : ℚ) / (2 * A057077 (2 * n) : ℚ)

end

end A246811.P16795898315756173493

/-! ## A246811.P5273235007999096787

`lcm(A001285(n+1), A319078(2*n+1))/2`
-/

namespace A246811.P5273235007999096787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001285 (n + 1)) (A319078 (2 * n + 1)) : ℚ) / 2

end

end A246811.P5273235007999096787

/-! ## A246811.P16949197897479680942

`lcm(A319078(2*n+1)/2, A040001(n+1))`
-/

namespace A246811.P16949197897479680942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A319078 (2 * n + 1) : ℚ) / 2)) (A040001 (n + 1))

end

end A246811.P16949197897479680942

/-! ## A246811.P16292227755468394141

`A004013(2*n+1)+A319078(2*n+1)/2`
-/

namespace A246811.P16292227755468394141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004013 (2 * n + 1) : ℚ) + (A319078 (2 * n + 1) : ℚ) / 2

end

end A246811.P16292227755468394141

/-!
# A246812: G.f.: Sum_{n>=0} x^n / (1-x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k] * [Sum_{k=0..n} C(n,k)^2 * 3^k * x^k].

The programs for A246812, there is no canonical definition to state claims against.
-/

/-! ## A246812.P1087691171030980878

`A008615(A002315(n))+A001006(n)`
-/

namespace A246812.P1087691171030980878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A002315 n).toNat + A001006 n

end

end A246812.P1087691171030980878

/-! ## A246812.P12639476385049379350

`A002264(A046090(n))+A001006(n)`
-/

namespace A246812.P12639476385049379350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A046090 n).toNat + A001006 n

end

end A246812.P12639476385049379350

/-!
# A246813: G.f.: Sum_{n>=0} x^n / (1-3*x)^(2*n+1) * [Sum_{k=0..n} C(n,k)^2 * x^k] * [Sum_{k=0..n} C(n,k)^2 * 3^k * x^k].

The programs for A246813, there is no canonical definition to state claims against.
-/

/-! ## A246813.P6334210224447969050

`A186238(A186262(n))-A302583(n)`
-/

namespace A246813.P6334210224447969050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186238 (A186262 n).toNat - A302583 n

end

end A246813.P6334210224447969050

/-!
# A246814: Expansion of phi(-q) * phi(-q^4)^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A246814, there is no canonical definition to state claims against.
-/

/-! ## A246814.P2891675368473137192

`A033999(n)*A116597(n)`
-/

namespace A246814.P2891675368473137192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A116597 n

end

end A246814.P2891675368473137192

/-! ## A246814.P7869834290314397573

`A087960(n)*A116597(n)`
-/

namespace A246814.P7869834290314397573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A116597 n

end

end A246814.P7869834290314397573

/-! ## A246814.P13193317881015241058

`A094267(n)*A116597(n)`
-/

namespace A246814.P13193317881015241058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A116597 n

end

end A246814.P13193317881015241058

/-! ## A246814.P13291262010191419306

`A116597(n)*A219977(n)`
-/

namespace A246814.P13291262010191419306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116597 n * A219977 n

end

end A246814.P13291262010191419306

/-! ## A246814.P13088045577612737066

`A071935(n+1)*A116597(n)`
-/

namespace A246814.P13088045577612737066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A116597 n

end

end A246814.P13088045577612737066

/-! ## A246814.P5198470149230621430

`A116597(n)*A309873(n+1)`
-/

namespace A246814.P5198470149230621430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116597 n * A309873 (n + 1)

end

end A246814.P5198470149230621430

/-! ## A246814.P9105485198188083099

`ratio[A057077(n)]*A116597(n)`
-/

namespace A246814.P9105485198188083099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A116597 n : ℚ)

end

end A246814.P9105485198188083099

/-! ## A246814.P8743862713983178175

`A057077(n+1)*A116597(n)`
-/

namespace A246814.P8743862713983178175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A116597 n

end

end A246814.P8743862713983178175

/-! ## A246814.P15801321315717102228

`A246816(2*n)`
-/

namespace A246814.P15801321315717102228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246816 (2 * n)

end

end A246814.P15801321315717102228

/-! ## A246814.P15904420113956246144

`A246816(n+n)%(n+5)`
-/

namespace A246814.P15904420113956246144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246816 (n + n)) (n + 5 : ℤ)

end

end A246814.P15904420113956246144

/-! ## A246814.P156911997557519994

`A033999(n)*A127786(2*n)`
-/

namespace A246814.P156911997557519994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A127786 (2 * n)

end

end A246814.P156911997557519994

/-! ## A246814.P669734251873001295

`A057077(n+1)*A127786(2*n)`
-/

namespace A246814.P669734251873001295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A127786 (2 * n)

end

end A246814.P669734251873001295

/-! ## A246814.P13967311976970476456

`A062157(n+1)*A127786(2*n)`
-/

namespace A246814.P13967311976970476456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A127786 (2 * n)

end

end A246814.P13967311976970476456

/-! ## A246814.P18334150900126101723

`A127786(2*n)/A057077(2*n)`
-/

namespace A246814.P18334150900126101723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (2 * n) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A246814.P18334150900126101723

/-! ## A246814.P14236879367141186995

`A034947(2*n+1)*A127786(2*n)`
-/

namespace A246814.P14236879367141186995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A127786 (2 * n)

end

end A246814.P14236879367141186995

/-! ## A246814.P4271554376660412694

`A127786(2*n)*A164677(2*n+1)`
-/

namespace A246814.P4271554376660412694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127786 (2 * n) * A164677 (2 * n + 1)

end

end A246814.P4271554376660412694

/-! ## A246814.P8986040770445436495

`A246816(n+n)+A060277(A000120(n+1))`
-/

namespace A246814.P8986040770445436495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246816 (n + n) + A060277 (A000120 (n + 1)).toNat

end

end A246814.P8986040770445436495

/-! ## A246814.P8926946807808940720

`A127786(2*n)*A289741(A090771(n+2))`
-/

namespace A246814.P8926946807808940720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127786 (2 * n) * A289741 (A090771 (n + 2)).toNat

end

end A246814.P8926946807808940720

/-!
# A246815: Expansion of phi(-x) * psi(-x^2)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246815, there is no canonical definition to state claims against.
-/

/-! ## A246815.P18167792217466119330

`(-1)^floor((n+1)/2)*A045828(n)`
-/

namespace A246815.P18167792217466119330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n + 1 : ℚ) / 2⌋ : ℤ) * (A045828 n : ℚ)

end

end A246815.P18167792217466119330

/-! ## A246815.P17464101818264258306

`(1-and(2, n))*A246953(n)`
-/

namespace A246815.P17464101818264258306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A246953 n

end

end A246815.P17464101818264258306

/-! ## A246815.P11490534826162596107

`A045828(n)*A087960(n)`
-/

namespace A246815.P11490534826162596107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 n * A087960 n

end

end A246815.P11490534826162596107

/-! ## A246815.P3499400567570706712

`A033999(n)*A246836(n)`
-/

namespace A246815.P3499400567570706712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246836 n

end

end A246815.P3499400567570706712

/-! ## A246815.P2001172753836643406

`A057077(n)*A246953(n)`
-/

namespace A246815.P2001172753836643406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A246953 n

end

end A246815.P2001172753836643406

/-! ## A246815.P4364590508254704332

`A246836(n)/A057077(A057077(n)+n)`
-/

namespace A246815.P4364590508254704332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246836 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A246815.P4364590508254704332

/-! ## A246815.P10402111718608339801

`A213625(n)/A246835(n)*A246836(n)`
-/

namespace A246815.P10402111718608339801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213625 n : ℚ) / (A246835 n : ℚ) * (A246836 n : ℚ)

end

end A246815.P10402111718608339801

/-! ## A246815.P15949040082244416299

`lcm(A087960(n), A246836(n))*A087960(n)`
-/

namespace A246815.P15949040082244416299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A087960 n) (A246836 n) : ℤ) * A087960 n

end

end A246815.P15949040082244416299

/-! ## A246815.P3805435649477336798

`A045828(n)*A057077(n+1)`
-/

namespace A246815.P3805435649477336798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 n * A057077 (n + 1)

end

end A246815.P3805435649477336798

/-! ## A246815.P8885637792283681150

`A246816(Δ[n²])/2`
-/

namespace A246815.P8885637792283681150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A246815.P8885637792283681150

/-! ## A246815.P13781545602090447949

`A057077(2*n)*A246836(n)`
-/

namespace A246815.P13781545602090447949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A246836 n

end

end A246815.P13781545602090447949

/-! ## A246815.P16246607700366386944

`A087960(2*n)*A246836(n)`
-/

namespace A246815.P16246607700366386944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A246836 n

end

end A246815.P16246607700366386944

/-! ## A246815.P17888807083449375424

`A127786(2*n+1)/(2*A062157(n+1))`
-/

namespace A246815.P17888807083449375424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (2 * n + 1) : ℚ) / (2 * A062157 (n + 1) : ℚ)

end

end A246815.P17888807083449375424

/-! ## A246815.P11533681671894435826

`A127786(2*n+1)/(2*A057077(2*n))`
-/

namespace A246815.P11533681671894435826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (2 * n + 1) : ℚ) / (2 * A057077 (2 * n) : ℚ)

end

end A246815.P11533681671894435826

/-! ## A246815.P15050654107322048450

`A034947(2*n+1)*A127786(2*n+1)/2`
-/

namespace A246815.P15050654107322048450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034947 (2 * n + 1) * A127786 (2 * n + 1) : ℚ) / 2

end

end A246815.P15050654107322048450

/-! ## A246815.P7699785394263524186

`A127786(2*n+1)/(2*A164677(2*n+1))`
-/

namespace A246815.P7699785394263524186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (2 * n + 1) : ℚ) / (2 * A164677 (2 * n + 1) : ℚ)

end

end A246815.P7699785394263524186

/-! ## A246815.P1274653911894092155

`A246836(n)/A087960(n²)`
-/

namespace A246815.P1274653911894092155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246836 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A246815.P1274653911894092155

/-!
# A246816: Expansion of phi(q) * phi(-q^2) * phi(-q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A246816, there is no canonical definition to state claims against.
-/

/-! ## A246816.P5606256169198242271

`(-1)^floor(n/2)*A127786(n)`
-/

namespace A246816.P5606256169198242271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A127786 n : ℚ)

end

end A246816.P5606256169198242271

/-! ## A246816.P5553921224105575008

`A127786(n)*A164677(A109613(n))`
-/

namespace A246816.P5553921224105575008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127786 n * A164677 (A109613 n).toNat

end

end A246816.P5553921224105575008

/-! ## A246816.P8635073744609216780

`A045828(n)*A127786(n)/A246836(n)`
-/

namespace A246816.P8635073744609216780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n * A127786 n : ℚ) / (A246836 n : ℚ)

end

end A246816.P8635073744609216780

/-! ## A246816.P1410981979064803169

`A127786(n)/A087960(n+3)`
-/

namespace A246816.P1410981979064803169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 n : ℚ) / (A087960 (n + 3) : ℚ)

end

end A246816.P1410981979064803169

/-! ## A246816.P9781247955018076077

`A127786(n)*A257170(2*n+1)`
-/

namespace A246816.P9781247955018076077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127786 n * A257170 (2 * n + 1)

end

end A246816.P9781247955018076077

/-! ## A246816.P9623994435352877038

`A127786(n)*A289741(A090771(n+1))`
-/

namespace A246816.P9623994435352877038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127786 n * A289741 (A090771 (n + 1)).toNat

end

end A246816.P9623994435352877038

/-! ## A246816.P6540226554158467327

`A127786(n)*A206831(A000217(n))`
-/

namespace A246816.P6540226554158467327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127786 n * A206831 (A000217 n).toNat

end

end A246816.P6540226554158467327

/-!
# A246817: Possible number of trailing zeros in hyperfactorials (A002109).

The programs for A246817, the canonical program `A246817.P943938610923920722` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246817 has offset 1).

The definition of A246817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246817.P4228948372916592283

`A246839(5*n)`
-/

namespace A246817.P4228948372916592283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 (5 * n)

end

end A246817.P4228948372916592283

namespace A246817

/-- `A246839(5*n)` -/
def P4228948372916592283.Spec : Prop :=
  ∀ n, P4228948372916592283.a n = A246817 (n + 1)

end A246817

/-! ## A246817.P943938610923920722

`record[a(n-1)+n*val(n, 5)]` with `a(0)=0, a(1)=5, a(2)=0`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246817

/-- `record[a(n-1)+n*val(n, 5)]` -/
def P943938610923920722.Spec : Prop :=
  ∀ n, (P943938610923920722.a n : ℤ) = A246817 (n + 1)

theorem P943938610923920722.correct : P943938610923920722.Spec := by
  intro n
  simp only [A246817, Nat.add_sub_cancel]

end A246817

/-! ## A246817.P7605846309835151795

`∑[n*A008587(val(A003600(n), 5)+1)]`
-/

namespace A246817.P7605846309835151795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008587 (SequenceMachineLib.valuation (A003600 n).toNat 5 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246817.P7605846309835151795

namespace A246817

/-- `∑[n*A008587(val(A003600(n), 5)+1)]` -/
def P7605846309835151795.Spec : Prop :=
  ∀ n, P7605846309835151795.a n = A246817 (n + 1)

end A246817

/-! ## A246817.P4884263998301691046

`∑[5*n*∑{d}[n, A001222(A014963(5*#))]]`
-/

namespace A246817.P4884263998301691046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) * (∑ d ∈ Nat.divisors (f2 n), A001222 (A014963 (5 * d)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246817.P4884263998301691046

namespace A246817

/-- `∑[5*n*∑{d}[n, A001222(A014963(5*#))]]` -/
def P4884263998301691046.Spec : Prop :=
  ∀ n, P4884263998301691046.a n = A246817 (n + 1)

end A246817

/-! ## A246817.P3621457835786239182

`∑[A008706(n)*A112765(A008706(n))]`
-/

namespace A246817.P3621457835786239182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n * A112765 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246817.P3621457835786239182

namespace A246817

/-- `∑[A008706(n)*A112765(A008706(n))]` -/
def P3621457835786239182.Spec : Prop :=
  ∀ n, P3621457835786239182.a n = A246817 (n + 1)

end A246817

/-! ## A246817.P10290674264636161753

`record[A246839(lcm(2, n))]`
-/

namespace A246817.P10290674264636161753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246817.P10290674264636161753

namespace A246817

/-- `record[A246839(lcm(2, n))]` -/
def P10290674264636161753.Spec : Prop :=
  ∀ n, P10290674264636161753.a n = A246817 (n + 1)

end A246817

/-! ## A246817.P1229450530163880722

`record[A246839(or(2, n))]`
-/

namespace A246817.P1229450530163880722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246817.P1229450530163880722

namespace A246817

/-- `record[A246839(or(2, n))]` -/
def P1229450530163880722.Spec : Prop :=
  ∀ n, P1229450530163880722.a n = A246817 (n + 1)

end A246817

/-!
# A246818: Number of standard Young tableaux with 2n cells where n is the largest value in the last row.

The programs for A246818, there is no canonical definition to state claims against.
-/

/-! ## A246818.P10775771842268442739

`A238727(∑[4*n])`
-/

namespace A246818.P10775771842268442739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238727 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246818.P10775771842268442739

/-! ## A246818.P14268773457274319030

`A238727(A106232(n+1))+C(2, n+2)`
-/

namespace A246818.P14268773457274319030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238727 (A106232 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A246818.P14268773457274319030

/-! ## A246818.P12827011922721750648

`A238727(A106232(n+1))+A000007(n)`
-/

namespace A246818.P12827011922721750648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238727 (A106232 (n + 1)).toNat + A000007 n

end

end A246818.P12827011922721750648

/-! ## A246818.P8064585525670056401

`A238727(A106232(n+1))^A178334(n)`
-/

namespace A246818.P8064585525670056401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238727 (A106232 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A246818.P8064585525670056401

/-! ## A246818.P4710226552446524658

`A238727(A106232(n+1))^A001221(A001316(n))`
-/

namespace A246818.P4710226552446524658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238727 (A106232 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A246818.P4710226552446524658

/-!
# A246824: Numbers k for which A242720(k) = (prime(k)+1)^2 + 2.

The programs for A246824, there is no canonical definition to state claims against.
-/

/-! ## A246824.P736960644533269450

`A000720(A070155(n+2))`
-/

namespace A246824.P736960644533269450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A070155 (n + 2)).toNat

end

end A246824.P736960644533269450

/-! ## A246824.P725793314412535872

`A000720(A108013(n+2))`
-/

namespace A246824.P725793314412535872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A108013 (n + 2)).toNat

end

end A246824.P725793314412535872

/-! ## A246824.P17348721047183237368

`A000720(A129293(n+3))`
-/

namespace A246824.P17348721047183237368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A129293 (n + 3)).toNat

end

end A246824.P17348721047183237368

/-! ## A246824.P14568071262418442186

`A061395(p?[A108013(n+2)])`
-/

namespace A246824.P14568071262418442186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246824.P14568071262418442186

/-! ## A246824.P8084591449347917203

`A061395(A070155(n+2)-1)`
-/

namespace A246824.P8084591449347917203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A070155 (n + 2) - 1).toNat

end

end A246824.P8084591449347917203

/-! ## A246824.P4682891432592793767

`A000720(6*A284045(n+1))`
-/

namespace A246824.P4682891432592793767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (6 * A284045 (n + 1)).toNat

end

end A246824.P4682891432592793767

/-! ## A246824.P7358484221091197268

`∑{d}[A108013(n+2), A061395(#)]`
-/

namespace A246824.P7358484221091197268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A246824.P7358484221091197268

/-! ## A246824.P12243860782314633136

`A061395(∏{d}[A108013(n+2), #])`
-/

namespace A246824.P12243860782314633136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A246824.P12243860782314633136

/-! ## A246824.P3212696932973216278

`A061395(A007318(C(2, n))*A108013(n+2))`
-/

namespace A246824.P3212696932973216278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A007318 (Nat.choose 2 n) * A108013 (n + 2)).toNat

end

end A246824.P3212696932973216278

/-! ## A246824.P13715211763298296234

`A066328(p?[A108013(n+2)])`
-/

namespace A246824.P13715211763298296234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108013 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A246824.P13715211763298296234

/-!
# A246826: Numbers n such that there is no prime of a prime twin pair between n^2 + n and n^2 + 3*n + 2.

The programs for A246826, there is no canonical definition to state claims against.
-/

/-! ## A246826.P9324216598180395044

`A333220(A064599(n+1))%A387272(n)`
-/

namespace A246826.P9324216598180395044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333220 (A064599 (n + 1)).toNat) (A387272 n)

end

end A246826.P9324216598180395044

/-! ## A246826.P12385441806013477719

`A333220(A064599(n+1)%A155587(3*n+2))`
-/

namespace A246826.P12385441806013477719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (Int.tmod (A064599 (n + 1)) (A155587 (3 * n + 2))).toNat

end

end A246826.P12385441806013477719

/-!
# A246829: The number of binary heaps on n elements whose breadth-first search reading word avoids 321.

The programs for A246829, there is no canonical definition to state claims against.
-/

/-! ## A246829.P17117509160537280636

`A127721(A274168(2*n+3))`
-/

namespace A246829.P17117509160537280636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127721 (A274168 (2 * n + 3)).toNat

end

end A246829.P17117509160537280636

/-! ## A246829.P8735124234958628195

`A002024(∏[A178799(n+1)]-n)`
-/

namespace A246829.P8735124234958628195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A246829.P8735124234958628195

/-! ## A246829.P10213273673671331671

`A282741(n+1)+∑[A300236(n+2)]`
-/

namespace A246829.P10213273673671331671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300236 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282741 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246829.P10213273673671331671

/-! ## A246829.P13965831247055823670

`round(A218209(n+5)/A278291(3*n+4))`
-/

namespace A246829.P13965831247055823670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A218209 (n + 5) : ℚ) / (A278291 (3 * n + 4) : ℚ))

end

end A246829.P13965831247055823670

/-!
# A246830: T(n,k) is the concatenation of n-k and n+k in binary; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A246830, there is no canonical definition to state claims against.
-/

/-! ## A246830.P6488352052049833863

`A085208(A292564(A114327(n)+n))`
-/

namespace A246830.P6488352052049833863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085208 (A292564 (A114327 n + (n : ℤ)).toNat).toNat

end

end A246830.P6488352052049833863

/-!
# A246831: a(n) is the concatenation of n and 3n in binary.

The programs for A246831, the canonical program `A246831.P9729897708689004359` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246831 has offset 0).

The definition of A246831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246831.P9729897708689004359

`n*(A062383(3*n)+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246831

/-- `n*(A062383(3*n)+3)` -/
def P9729897708689004359.Spec : Prop :=
  ∀ n, P9729897708689004359.a n = A246831 n

theorem P9729897708689004359.correct : P9729897708689004359.Spec := by
  intro n
  simp only [A246831]

end A246831

/-! ## A246831.P783195339761566272

`n*(A003817(3*n)+4)`
-/

namespace A246831.P783195339761566272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A003817 (3 * n) + 4)

end

end A246831.P783195339761566272

namespace A246831

/-- `n*(A003817(3*n)+4)` -/
def P783195339761566272.Spec : Prop :=
  ∀ n, P783195339761566272.a n = A246831 n

end A246831

/-! ## A246831.P1986590530224416052

`n*A062709(A070939(3*n))`
-/

namespace A246831.P1986590530224416052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062709 (A070939 (3 * n)).toNat

end

end A246831.P1986590530224416052

namespace A246831

/-- `n*A062709(A070939(3*n))` -/
def P1986590530224416052.Spec : Prop :=
  ∀ n, P1986590530224416052.a n = A246831 n

end A246831

/-! ## A246831.P11602571394261440185

`n*(A035327(3*n)+A016777(n+1))`
-/

namespace A246831.P11602571394261440185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A035327 (3 * n) + A016777 (n + 1))

end

end A246831.P11602571394261440185

namespace A246831

/-- `n*(A035327(3*n)+A016777(n+1))` -/
def P11602571394261440185.Spec : Prop :=
  ∀ n, P11602571394261440185.a n = A246831 n

end A246831

/-! ## A246831.P14484846225370663924

`n*(A053644(6*n)+3)`
-/

namespace A246831.P14484846225370663924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A053644 (6 * n) + 3)

end

end A246831.P14484846225370663924

namespace A246831

/-- `n*(A053644(6*n)+3)` -/
def P14484846225370663924.Spec : Prop :=
  ∀ n, P14484846225370663924.a n = A246831 n

end A246831

/-! ## A246831.P4704124761455024649

`A246834(∑[n+4]+2)`
-/

namespace A246831.P4704124761455024649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246834 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A246831.P4704124761455024649

namespace A246831

/-- `A246834(∑[n+4]+2)` -/
def P4704124761455024649.Spec : Prop :=
  ∀ n, P4704124761455024649.a n = A246831 n

end A246831

/-! ## A246831.P8569177401194169781

`A246830(∑[4*n])`
-/

namespace A246831.P8569177401194169781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246830 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246831.P8569177401194169781

namespace A246831

/-- `A246830(∑[4*n])` -/
def P8569177401194169781.Spec : Prop :=
  ∀ n, P8569177401194169781.a n = A246831 n

end A246831

/-!
# A246832: Expansion of psi(x) * psi(x^2) * phi(x^2) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246832, there is no canonical definition to state claims against.
-/

/-! ## A246832.P3201107766250161199

`A213624(2*n)`
-/

namespace A246832.P3201107766250161199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213624 (2 * n)

end

end A246832.P3201107766250161199

/-! ## A246832.P5638895360506509226

`A246833(2*n)`
-/

namespace A246832.P5638895360506509226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246833 (2 * n)

end

end A246832.P5638895360506509226

/-! ## A246832.P11772335942371144338

`A045828(4*n+1)/2`
-/

namespace A246832.P11772335942371144338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 (4 * n + 1) : ℚ) / 2

end

end A246832.P11772335942371144338

/-! ## A246832.P1975176327192327995

`A005794(A017137(2*n))`
-/

namespace A246832.P1975176327192327995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (A017137 (2 * n)).toNat

end

end A246832.P1975176327192327995

/-! ## A246832.P11691376155438278194

`A005794(A004770(2*n+1)+1)`
-/

namespace A246832.P11691376155438278194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (A004770 (2 * n + 1) + 1).toNat

end

end A246832.P11691376155438278194

/-! ## A246832.P126440245405850872

`A213624(n+n)%A250769(n+1)`
-/

namespace A246832.P126440245405850872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213624 (n + n)) (A250769 (n + 1))

end

end A246832.P126440245405850872

/-! ## A246832.P4588672219065940082

`(A002265(A005877(4*n+1)+5)-1)/2`
-/

namespace A246832.P4588672219065940082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (A005877 (4 * n + 1) + 5).toNat - 1 : ℚ) / 2

end

end A246832.P4588672219065940082

/-!
# A246833: Expansion of psi(-x)^2 * psi(x^4) in powers of x where psi() is a Ramanujan theta function.

The programs for A246833, there is no canonical definition to state claims against.
-/

/-! ## A246833.P458401477044387132

`(-1)^n*A213624(n)`
-/

namespace A246833.P458401477044387132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A213624 n

end

end A246833.P458401477044387132

/-! ## A246833.P9342243013226101068

`A213624(n)/A033999(n)`
-/

namespace A246833.P9342243013226101068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213624 n : ℚ) / (A033999 n : ℚ)

end

end A246833.P9342243013226101068

/-! ## A246833.P6294414156594688466

`A246836(Δ[n²])/2`
-/

namespace A246833.P6294414156594688466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246836 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A246833.P6294414156594688466

/-! ## A246833.P9341521208233246942

`A246815(2*n+1)/(1-6/2)`
-/

namespace A246833.P9341521208233246942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246815 (2 * n + 1) : ℚ) / (1 - (6 : ℚ) / 2)

end

end A246833.P9341521208233246942

/-! ## A246833.P7937588493896230792

`A246953(2*n+1)/(2*A033999(n+1))`
-/

namespace A246833.P7937588493896230792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246953 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A246833.P7937588493896230792

/-! ## A246833.P8645702393862884390

`A045828(2*n+1)/(2*A057077(2*n))`
-/

namespace A246833.P8645702393862884390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 (2 * n + 1) : ℚ) / (2 * A057077 (2 * n) : ℚ)

end

end A246833.P8645702393862884390

/-! ## A246833.P3230198323629433280

`A045828(2*n+1)/(2*A087960(2*n))`
-/

namespace A246833.P3230198323629433280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 (2 * n + 1) : ℚ) / (2 * A087960 (2 * n) : ℚ)

end

end A246833.P3230198323629433280

/-! ## A246833.P8042976991218006183

`A087960(2*n+1)*A246953(2*n+1)/2`
-/

namespace A246833.P8042976991218006183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n + 1) * A246953 (2 * n + 1) : ℚ) / 2

end

end A246833.P8042976991218006183

/-!
# A246834: A(n,k) is the concatenation of n and k*n in binary; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A246834, there is no canonical definition to state claims against.
-/

/-! ## A246834.P13814000451763403507

`A085208(n)*A124766(A256116(n))`
-/

namespace A246834.P13814000451763403507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085208 n * A124766 (A256116 n).toNat

end

end A246834.P13814000451763403507

/-! ## A246834.P11968993456403638135

`A000523(A107027(n)^A085208(n))`
-/

namespace A246834.P11968993456403638135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A107027 n : ℚ) ^ (A085208 n : ℤ))).toNat

end

end A246834.P11968993456403638135

/-! ## A246834.P9155212366663370518

`A051903(A107027(n)^A085208(n))`
-/

namespace A246834.P9155212366663370518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A107027 n : ℚ) ^ (A085208 n : ℤ))).toNat

end

end A246834.P9155212366663370518

/-! ## A246834.P10963986490253316072

`A172431(n+1)-A279010(A066094(n))`
-/

namespace A246834.P10963986490253316072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) - A279010 (A066094 n).toNat

end

end A246834.P10963986490253316072

/-! ## A246834.P14590697164047856064

`A172431(n+1)-A358194(A323654(n))`
-/

namespace A246834.P14590697164047856064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172431 (n + 1) - A358194 (A323654 n).toNat

end

end A246834.P14590697164047856064

/-!
# A246835: Expansion of psi(-x)^2 * phi(x^2) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246835, there is no canonical definition to state claims against.
-/

/-! ## A246835.P14012369888133577692

`(-1)^n*A213625(n)`
-/

namespace A246835.P14012369888133577692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A213625 n

end

end A246835.P14012369888133577692

/-! ## A246835.P7698463198221947723

`A213625(n)/A033999(n)`
-/

namespace A246835.P7698463198221947723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213625 n : ℚ) / (A033999 n : ℚ)

end

end A246835.P7698463198221947723

/-! ## A246835.P13385417865036626922

`(-1)^n*A045828(2*n)`
-/

namespace A246835.P13385417865036626922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A045828 (2 * n)

end

end A246835.P13385417865036626922

/-! ## A246835.P15753014687130665270

`A246815(2*n)`
-/

namespace A246835.P15753014687130665270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246815 (2 * n)

end

end A246835.P15753014687130665270

/-! ## A246835.P9230496013609290833

`A246836(2*n)`
-/

namespace A246835.P9230496013609290833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246836 (2 * n)

end

end A246835.P9230496013609290833

/-! ## A246835.P17832797100009526899

`A033999(n)*A246953(2*n)`
-/

namespace A246835.P17832797100009526899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A246953 (2 * n)

end

end A246835.P17832797100009526899

/-! ## A246835.P2416091763973574943

`A045828(2*n)*A057077(2*n)`
-/

namespace A246835.P2416091763973574943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (2 * n) * A057077 (2 * n)

end

end A246835.P2416091763973574943

/-! ## A246835.P1536291032172990496

`A045828(2*n)*A087960(2*n)`
-/

namespace A246835.P1536291032172990496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (2 * n) * A087960 (2 * n)

end

end A246835.P1536291032172990496

/-! ## A246835.P16302008641027645127

`A057077(2*n)*A246953(2*n)`
-/

namespace A246835.P16302008641027645127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A246953 (2 * n)

end

end A246835.P16302008641027645127

/-! ## A246835.P15819689892080776064

`A087960(2*n)*A246953(2*n)`
-/

namespace A246835.P15819689892080776064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A246953 (2 * n)

end

end A246835.P15819689892080776064

/-! ## A246835.P17154561795141779530

`A127786(4*n+1)/2`
-/

namespace A246835.P17154561795141779530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (4 * n + 1) : ℚ) / 2

end

end A246835.P17154561795141779530

/-! ## A246835.P2797383745530736493

`A269529(2*n+1)*A269529(2*n)*A246953(2*n)`
-/

namespace A246835.P2797383745530736493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269529 (2 * n + 1) * A269529 (2 * n) * A246953 (2 * n)

end

end A246835.P2797383745530736493

/-!
# A246836: Expansion of phi(x) * psi(-x^2)^2 in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246836, there is no canonical definition to state claims against.
-/

/-! ## A246836.P15107063891351042063

`(-1)^n*A246815(n)`
-/

namespace A246836.P15107063891351042063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A246815 n

end

end A246836.P15107063891351042063

/-! ## A246836.P6879785306665446056

`(-1)^floor(n/2)*A045828(n)`
-/

namespace A246836.P6879785306665446056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A045828 n : ℚ)

end

end A246836.P6879785306665446056

/-! ## A246836.P12227651944517693794

`∏[(-1)^n]*A246953(n)`
-/

namespace A246836.P12227651944517693794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A246953 n

end

end A246836.P12227651944517693794

/-! ## A246836.P2928326086134737845

`A045828(n)*A057077(n)`
-/

namespace A246836.P2928326086134737845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 n * A057077 n

end

end A246836.P2928326086134737845

/-! ## A246836.P8310743325109512657

`A246953(n)/A087960(n)`
-/

namespace A246836.P8310743325109512657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246953 n : ℚ) / (A087960 n : ℚ)

end

end A246836.P8310743325109512657

/-! ## A246836.P17598535742071308928

`A246815(n)/A057077(A057077(n)+n)`
-/

namespace A246836.P17598535742071308928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246815 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A246836.P17598535742071308928

/-! ## A246836.P4335686402592174365

`A213625(n)*A246815(n)/A246835(n)`
-/

namespace A246836.P4335686402592174365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213625 n * A246815 n : ℚ) / (A246835 n : ℚ)

end

end A246836.P4335686402592174365

/-! ## A246836.P13615326620832593416

`A127786(Δ[n²])/2`
-/

namespace A246836.P13615326620832593416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A246836.P13615326620832593416

/-! ## A246836.P15657574692965804208

`A246815(n)/A057077(2*n)`
-/

namespace A246836.P15657574692965804208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246815 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A246836.P15657574692965804208

/-! ## A246836.P3857650122035469852

`A246815(n)/A087960(2*n)`
-/

namespace A246836.P3857650122035469852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246815 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A246836.P3857650122035469852

/-! ## A246836.P13572225385362058595

`A246816(2*n+1)/(2*A057077(2*n))`
-/

namespace A246836.P13572225385362058595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246816 (2 * n + 1) : ℚ) / (2 * A057077 (2 * n) : ℚ)

end

end A246836.P13572225385362058595

/-! ## A246836.P17146227594383699966

`A080963(4*n+2)/2`
-/

namespace A246836.P17146227594383699966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080963 (4 * n + 2) : ℚ) / 2

end

end A246836.P17146227594383699966

/-! ## A246836.P10965137347131360731

`A246815(n)/A033999(n²)`
-/

namespace A246836.P10965137347131360731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246815 n : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A246836.P10965137347131360731

/-!
# A246837: Expansion of phi(x) * psi(x) * psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A246837, there is no canonical definition to state claims against.
-/

/-! ## A246837.P122620287508501694

`A213625(Δ[n²])/2`
-/

namespace A246837.P122620287508501694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213625 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A246837.P122620287508501694

/-! ## A246837.P228381332705781463

`abs(A246835(2*n+1)/2)`
-/

namespace A246837.P228381332705781463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A246835 (2 * n + 1) : ℚ) / 2|

end

end A246837.P228381332705781463

/-! ## A246837.P12633742979133379913

`gcd(A000038(n), A246835(2*n+1))/2`
-/

namespace A246837.P12633742979133379913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A246835 (2 * n + 1)) : ℚ) / 2

end

end A246837.P12633742979133379913

/-! ## A246837.P8117574356170753195

`A246835(2*n+1)/(A000038(n+1)-2)`
-/

namespace A246837.P8117574356170753195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246835 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A246837.P8117574356170753195

/-! ## A246837.P13454504840785817161

`lcm(A000034(n+1), A246835(2*n+1))/2`
-/

namespace A246837.P13454504840785817161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A246835 (2 * n + 1)) : ℚ) / 2

end

end A246837.P13454504840785817161

/-! ## A246837.P6625003523386523845

`A246835(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A246837.P6625003523386523845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246835 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A246837.P6625003523386523845

/-! ## A246837.P2325655405133153093

`A246835(2*n+1)/A000034(2*n+1)-A246835(2*n+1)`
-/

namespace A246837.P2325655405133153093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246835 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A246835 (2 * n + 1) : ℚ)

end

end A246837.P2325655405133153093

/-! ## A246837.P2657418534902224382

`A045828(4*n+2)/2`
-/

namespace A246837.P2657418534902224382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 (4 * n + 2) : ℚ) / 2

end

end A246837.P2657418534902224382

/-! ## A246837.P529383233865215205

`2*A246953(comp[2*n]+Δ[n²])/4`
-/

namespace A246837.P529383233865215205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A246953 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat : ℚ) / 4

end

end A246837.P529383233865215205

/-! ## A246837.P9274327437287686750

`A005794(A113770(n+1))`
-/

namespace A246837.P9274327437287686750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (A113770 (n + 1)).toNat

end

end A246837.P9274327437287686750

/-! ## A246837.P2875317059365262161

`A005794(2*A004770(n+1))`
-/

namespace A246837.P2875317059365262161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (2 * A004770 (n + 1)).toNat

end

end A246837.P2875317059365262161

/-! ## A246837.P9354827131902617824

`A005794(2*(A017137(n)-1))`
-/

namespace A246837.P9354827131902617824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (2 * (A017137 n - 1)).toNat

end

end A246837.P9354827131902617824

/-! ## A246837.P2642513800400908938

`A006374(A017089(2*n+1))/2`
-/

namespace A246837.P2642513800400908938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006374 (A017089 (2 * n + 1)).toNat : ℚ) / 2

end

end A246837.P2642513800400908938

/-! ## A246837.P29796981312436886

`A005794(A017137(n)+A017137(n)-2)`
-/

namespace A246837.P29796981312436886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (A017137 n + (A017137 n - 2)).toNat

end

end A246837.P29796981312436886

/-! ## A246837.P13720709133905750671

`A005794(A017137(n)-(2-A017137(n)))`
-/

namespace A246837.P13720709133905750671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005794 (A017137 n - (2 - A017137 n)).toNat

end

end A246837.P13720709133905750671

/-! ## A246837.P16536358686958585570

`A058305(A305075(2*(n+1)))/2`
-/

namespace A246837.P16536358686958585570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058305 (A305075 (2 * (n + 1))).toNat : ℚ) / 2

end

end A246837.P16536358686958585570

/-!
# A246838: Expansion of f(-x^2) * f(-x^12)^2 / f(x^1, x^5) in powers of x where f() is Ramanujan theta function.

The programs for A246838, the canonical program `A246838.P16287006032575698677` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246838 has offset 0).

The definition of A246838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246838.P443505955646729343

`A112605(n)/(-2)^(∑[n]%3)`
-/

namespace A246838.P443505955646729343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 n : ℚ) / ((-2) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) : ℚ)

end

end A246838.P443505955646729343

namespace A246838

/-- `A112605(n)/(-2)^(∑[n]%3)` -/
def P443505955646729343.Spec : Prop :=
  ∀ n, P443505955646729343.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P5277337823202393675

`A112605(n)/A131713(n)`
-/

namespace A246838.P5277337823202393675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 n : ℚ) / (A131713 n : ℚ)

end

end A246838.P5277337823202393675

namespace A246838

/-- `A112605(n)/A131713(n)` -/
def P5277337823202393675.Spec : Prop :=
  ∀ n, P5277337823202393675.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P16287006032575698677

`A262726(n)/A057079(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246838

/-- `A262726(n)/A057079(n)` -/
def P16287006032575698677.Spec : Prop :=
  ∀ n, P16287006032575698677.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P3684257498529095784

`A262726(n)/A132954(n)`
-/

namespace A246838.P3684257498529095784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 n : ℚ) / (A132954 n : ℚ)

end

end A246838.P3684257498529095784

namespace A246838

/-- `A262726(n)/A132954(n)` -/
def P3684257498529095784.Spec : Prop :=
  ∀ n, P3684257498529095784.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P5450784542458151343

`A262726(n)/∑[A100051(n)]`
-/

namespace A246838.P5450784542458151343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A246838.P5450784542458151343

namespace A246838

/-- `A262726(n)/∑[A100051(n)]` -/
def P5450784542458151343.Spec : Prop :=
  ∀ n, P5450784542458151343.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P2638290323793189537

`A112605(n)/Δ[A117966(n)]`
-/

namespace A246838.P2638290323793189537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A246838.P2638290323793189537

namespace A246838

/-- `A112605(n)/Δ[A117966(n)]` -/
def P2638290323793189537.Spec : Prop :=
  ∀ n, P2638290323793189537.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P17356180483081129747

`A033762(2*n+1)/A131713(n)`
-/

namespace A246838.P17356180483081129747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033762 (2 * n + 1) : ℚ) / (A131713 n : ℚ)

end

end A246838.P17356180483081129747

namespace A246838

/-- `A033762(2*n+1)/A131713(n)` -/
def P17356180483081129747.Spec : Prop :=
  ∀ n, P17356180483081129747.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P2346428091200242242

`A129449(2*n+1)/(A132954(2*n)-2)`
-/

namespace A246838.P2346428091200242242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129449 (2 * n + 1) : ℚ) / (A132954 (2 * n) - 2 : ℚ)

end

end A246838.P2346428091200242242

namespace A246838

/-- `A129449(2*n+1)/(A132954(2*n)-2)` -/
def P2346428091200242242.Spec : Prop :=
  ∀ n, P2346428091200242242.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P14206326330589913038

`A129449(2*n+1)/(1-A057079(2*n+1))`
-/

namespace A246838.P14206326330589913038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129449 (2 * n + 1) : ℚ) / (1 - A057079 (2 * n + 1) : ℚ)

end

end A246838.P14206326330589913038

namespace A246838

/-- `A129449(2*n+1)/(1-A057079(2*n+1))` -/
def P14206326330589913038.Spec : Prop :=
  ∀ n, P14206326330589913038.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P11113501980086735470

`A123530(2*n+1)/2-A123530(2*n+1)`
-/

namespace A246838.P11113501980086735470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123530 (2 * n + 1) : ℚ) / 2 - (A123530 (2 * n + 1) : ℚ)

end

end A246838.P11113501980086735470

namespace A246838

/-- `A123530(2*n+1)/2-A123530(2*n+1)` -/
def P11113501980086735470.Spec : Prop :=
  ∀ n, P11113501980086735470.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P8670729396149288768

`A033762(2*n+1)/(A057078(2*n)+A057078(n+1))`
-/

namespace A246838.P8670729396149288768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033762 (2 * n + 1) : ℚ) / (A057078 (2 * n) + A057078 (n + 1) : ℚ)

end

end A246838.P8670729396149288768

namespace A246838

/-- `A033762(2*n+1)/(A057078(2*n)+A057078(n+1))` -/
def P8670729396149288768.Spec : Prop :=
  ∀ n, P8670729396149288768.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P6464253617821128826

`A005928(4*n+3)/6`
-/

namespace A246838.P6464253617821128826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005928 (4 * n + 3) : ℚ) / 6

end

end A246838.P6464253617821128826

namespace A246838

/-- `A005928(4*n+3)/6` -/
def P6464253617821128826.Spec : Prop :=
  ∀ n, P6464253617821128826.a n = (A246838 n : ℚ)

end A246838

/-! ## A246838.P10988553957408386186

`A112848(A017113(n)+2)/2`
-/

namespace A246838.P10988553957408386186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (A017113 n + 2).toNat : ℚ) / 2

end

end A246838.P10988553957408386186

namespace A246838

/-- `A112848(A017113(n)+2)/2` -/
def P10988553957408386186.Spec : Prop :=
  ∀ n, P10988553957408386186.a n = (A246838 n : ℚ)

end A246838

/-!
# A246839: Number of trailing zeros in A002109(n).

The programs for A246839, the canonical program `A246839.P11173813437660088004` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246839 has offset 0).

The definition of A246839 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246817, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246839.P11173813437660088004

`A246817(floor(n/5)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246839

/-- `A246817(floor(n/5)+1)` -/
def P11173813437660088004.Spec : Prop :=
  ∀ n, P11173813437660088004.a n = A246839 n

theorem P11173813437660088004.correct : P11173813437660088004.Spec := by
  intro n
  simp only [A246839]

end A246839

/-! ## A246839.P2431733236577347187

`a(n-1)+n*val(n, 5)` with `a(0)=0`
-/

namespace A246839.P2431733236577347187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * SequenceMachineLib.valuation n 5

end

end A246839.P2431733236577347187

namespace A246839

/-- `a(n-1)+n*val(n, 5)` -/
def P2431733236577347187.Spec : Prop :=
  ∀ n, (P2431733236577347187.a n : ℤ) = A246839 n

end A246839

/-! ## A246839.P12098083435139605467

`∑[n*val(A003600(n), 5)]`
-/

namespace A246839.P12098083435139605467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A003600 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P12098083435139605467

namespace A246839

/-- `∑[n*val(A003600(n), 5)]` -/
def P12098083435139605467.Spec : Prop :=
  ∀ n, (P12098083435139605467.a n : ℤ) = A246839 n

end A246839

/-! ## A246839.P6560870167433530792

`∑[n*val(A008574(n), 5)]`
-/

namespace A246839.P6560870167433530792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A008574 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P6560870167433530792

namespace A246839

/-- `∑[n*val(A008574(n), 5)]` -/
def P6560870167433530792.Spec : Prop :=
  ∀ n, (P6560870167433530792.a n : ℤ) = A246839 n

end A246839

/-! ## A246839.P11537839219977911434

`∑[n*val(A028310(n), 5)]`
-/

namespace A246839.P11537839219977911434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A028310 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P11537839219977911434

namespace A246839

/-- `∑[n*val(A028310(n), 5)]` -/
def P11537839219977911434.Spec : Prop :=
  ∀ n, (P11537839219977911434.a n : ℤ) = A246839 n

end A246839

/-! ## A246839.P12059980170395987587

`∑[n*val(A298036(n), 5)]`
-/

namespace A246839.P12059980170395987587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (A298036 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P12059980170395987587

namespace A246839

/-- `∑[n*val(A298036(n), 5)]` -/
def P12059980170395987587.Spec : Prop :=
  ∀ n, (P12059980170395987587.a n : ℤ) = A246839 n

end A246839

/-! ## A246839.P3356350124403776210

`a(n-1)+n*A112765(n)` with `a(0)=0`
-/

namespace A246839.P3356350124403776210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * A112765 n

end

end A246839.P3356350124403776210

namespace A246839

/-- `a(n-1)+n*A112765(n)` -/
def P3356350124403776210.Spec : Prop :=
  ∀ n, P3356350124403776210.a n = A246839 n

end A246839

/-! ## A246839.P1249249663215749422

`∑[n*A112765(A008458(n))]`
-/

namespace A246839.P1249249663215749422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112765 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P1249249663215749422

namespace A246839

/-- `∑[n*A112765(A008458(n))]` -/
def P1249249663215749422.Spec : Prop :=
  ∀ n, P1249249663215749422.a n = A246839 n

end A246839

/-! ## A246839.P4447097608353222030

`∑[n*A112765(A008574(n))]`
-/

namespace A246839.P4447097608353222030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112765 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P4447097608353222030

namespace A246839

/-- `∑[n*A112765(A008574(n))]` -/
def P4447097608353222030.Spec : Prop :=
  ∀ n, P4447097608353222030.a n = A246839 n

end A246839

/-! ## A246839.P5632952793933365389

`∑[n*A112765(A066393(n))]`
-/

namespace A246839.P5632952793933365389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112765 (A066393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P5632952793933365389

namespace A246839

/-- `∑[n*A112765(A066393(n))]` -/
def P5632952793933365389.Spec : Prop :=
  ∀ n, P5632952793933365389.a n = A246839 n

end A246839

/-! ## A246839.P693020379936538872

`∑[n*A112765(A257088(n))]`
-/

namespace A246839.P693020379936538872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112765 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P693020379936538872

namespace A246839

/-- `∑[n*A112765(A257088(n))]` -/
def P693020379936538872.Spec : Prop :=
  ∀ n, P693020379936538872.a n = A246839 n

end A246839

/-! ## A246839.P896985597339115486

`(n+1)*A027868(n)-∑[A027868(n)]`
-/

namespace A246839.P896985597339115486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A027868 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246839.P896985597339115486

namespace A246839

/-- `(n+1)*A027868(n)-∑[A027868(n)]` -/
def P896985597339115486.Spec : Prop :=
  ∀ n, P896985597339115486.a n = A246839 n

end A246839

/-!
# A246840: Expansion of Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k)^2 * x^(2*k).

The programs for A246840, there is no canonical definition to state claims against.
-/

/-! ## A246840.P3632736186512950463

`A367128(A379742(n))`
-/

namespace A246840.P3632736186512950463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367128 (A379742 n).toNat

end

end A246840.P3632736186512950463

/-! ## A246840.P16610743627936103522

`A371593(A360749(n+1))`
-/

namespace A246840.P16610743627936103522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371593 (A360749 (n + 1)).toNat

end

end A246840.P16610743627936103522

/-! ## A246840.P1389754312582579671

`A324078(A048099(n+2))`
-/

namespace A246840.P1389754312582579671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (A048099 (n + 2)).toNat

end

end A246840.P1389754312582579671

/-! ## A246840.P11323608619266575054

`A175081(floor(sqrt(A033321(n))))`
-/

namespace A246840.P11323608619266575054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175081 (Int.sqrt (A033321 n)).toNat

end

end A246840.P11323608619266575054

/-! ## A246840.P16546384447520881036

`A069623(ceil(sqrt(A350758(n))))`
-/

namespace A246840.P16546384447520881036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 ⌈Real.sqrt (A350758 n : ℝ)⌉.toNat

end

end A246840.P16546384447520881036

/-!
# A246841: Sum of digits of all the anti-divisors of n.

The programs for A246841, there is no canonical definition to state claims against.
-/

/-! ## A246841.P5119497454705154029

`A058838(n+1)-A062108(A151659(n)!)`
-/

namespace A246841.P5119497454705154029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1) - A062108 (Nat.factorial (A151659 n).toNat)

end

end A246841.P5119497454705154029

/-! ## A246841.P8042820268249126518

`A058838(n+1)+A064179(A072828(n+1))-A305503(n+1)`
-/

namespace A246841.P8042820268249126518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1) + (A064179 (A072828 (n + 1)).toNat - A305503 (n + 1))

end

end A246841.P8042820268249126518

/-! ## A246841.P3270661915247024790

`A198277(A005496(2*n+3))%A058838(n+1)-A305503(n+1)`
-/

namespace A246841.P3270661915247024790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 (A005496 (2 * n + 3)).toNat) (A058838 (n + 1)) - A305503 (n + 1)

end

end A246841.P3270661915247024790

/-! ## A246841.P6140113798988525990

`gcd(A066417(n+1), A086602(A014382(n)))`
-/

namespace A246841.P6140113798988525990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066417 (n + 1)) (A086602 (A014382 n).toNat)

end

end A246841.P6140113798988525990

/-! ## A246841.P9158467976691348486

`A066417(n+1)-A305503(A187829(n+1))`
-/

namespace A246841.P9158467976691348486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1) - A305503 (A187829 (n + 1)).toNat

end

end A246841.P9158467976691348486

/-!
# A246846: a(n) = Catalan(n) mod Fibonacci(n).

The programs for A246846, the canonical program `A246846.P12987901032422717189` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246846 has offset 1).

The definition of A246846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246846.P12987901032422717189

`∑[A071724(n)]%A000045(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A246846

/-- `∑[A071724(n)]%A000045(n+1)` -/
def P12987901032422717189.Spec : Prop :=
  ∀ n, P12987901032422717189.a n = A246846 (n + 1)

theorem P12987901032422717189.correct : P12987901032422717189.Spec := by
  intro n
  simp only [A246846, Nat.add_sub_cancel]

end A246846

/-! ## A246846.P641240031710714848

`A263986(n+1)%∑[A212804(n)]`
-/

namespace A246846.P641240031710714848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246846.P641240031710714848

namespace A246846

/-- `A263986(n+1)%∑[A212804(n)]` -/
def P641240031710714848.Spec : Prop :=
  ∀ n, P641240031710714848.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P17290888178516795160

`record[A097331(n)]%A000045(n+1)`
-/

namespace A246846.P17290888178516795160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000045 (n + 1))

end

end A246846.P17290888178516795160

namespace A246846

/-- `record[A097331(n)]%A000045(n+1)` -/
def P17290888178516795160.Spec : Prop :=
  ∀ n, P17290888178516795160.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P16661193187870593986

`record[A126120(n)]%A212804(n+2)`
-/

namespace A246846.P16661193187870593986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A212804 (n + 2))

end

end A246846.P16661193187870593986

namespace A246846

/-- `record[A126120(n)]%A212804(n+2)` -/
def P16661193187870593986.Spec : Prop :=
  ∀ n, P16661193187870593986.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P7167990197777735686

`A000108(n+1)%A000045(n+1)`
-/

namespace A246846.P7167990197777735686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (n + 1)) (A000045 (n + 1))

end

end A246846.P7167990197777735686

namespace A246846

/-- `A000108(n+1)%A000045(n+1)` -/
def P7167990197777735686.Spec : Prop :=
  ∀ n, P7167990197777735686.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P8635601517521288275

`(∑[A000245(n)]+1)%A000045(n+1)`
-/

namespace A246846.P8635601517521288275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + 1) (A000045 (n + 1))

end

end A246846.P8635601517521288275

namespace A246846

/-- `(∑[A000245(n)]+1)%A000045(n+1)` -/
def P8635601517521288275.Spec : Prop :=
  ∀ n, P8635601517521288275.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P14962784382726613219

`A126120(2*(n+1))%∑[A212804(n)]`
-/

namespace A246846.P14962784382726613219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * (n + 1))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246846.P14962784382726613219

namespace A246846

/-- `A126120(2*(n+1))%∑[A212804(n)]` -/
def P14962784382726613219.Spec : Prop :=
  ∀ n, P14962784382726613219.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P13667303647622270978

`A208355(2*(n+1))%A000045(n+1)`
-/

namespace A246846.P13667303647622270978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * (n + 1))) (A000045 (n + 1))

end

end A246846.P13667303647622270978

namespace A246846

/-- `A208355(2*(n+1))%A000045(n+1)` -/
def P13667303647622270978.Spec : Prop :=
  ∀ n, P13667303647622270978.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P1798475312714103729

`A000063(2*n+5)%A000045(n+1)`
-/

namespace A246846.P1798475312714103729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000063 (2 * n + 5)) (A000045 (n + 1))

end

end A246846.P1798475312714103729

namespace A246846

/-- `A000063(2*n+5)%A000045(n+1)` -/
def P1798475312714103729.Spec : Prop :=
  ∀ n, P1798475312714103729.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P13645372179387145753

`A000108(n+1)%A053602(A103517(n))`
-/

namespace A246846.P13645372179387145753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 (n + 1)) (A053602 (A103517 n).toNat)

end

end A246846.P13645372179387145753

namespace A246846

/-- `A000108(n+1)%A053602(A103517(n))` -/
def P13645372179387145753.Spec : Prop :=
  ∀ n, P13645372179387145753.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P5020472131041035250

`A126324(A103517(n))%A000045(n+1)`
-/

namespace A246846.P5020472131041035250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (A103517 n).toNat) (A000045 (n + 1))

end

end A246846.P5020472131041035250

namespace A246846

/-- `A126324(A103517(n))%A000045(n+1)` -/
def P5020472131041035250.Spec : Prop :=
  ∀ n, P5020472131041035250.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P9517912638085645585

`A126120(A005843(n+1))%A103609(2*(n+1))`
-/

namespace A246846.P9517912638085645585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (A005843 (n + 1)).toNat) (A103609 (2 * (n + 1)))

end

end A246846.P9517912638085645585

namespace A246846

/-- `A126120(A005843(n+1))%A103609(2*(n+1))` -/
def P9517912638085645585.Spec : Prop :=
  ∀ n, P9517912638085645585.a n = A246846 (n + 1)

end A246846

/-! ## A246846.P5575632085272844300

`A039599(∑[n+1])%A000045(n+1)`
-/

namespace A246846.P5575632085272844300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039599 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000045 (n + 1))

end

end A246846.P5575632085272844300

namespace A246846

/-- `A039599(∑[n+1])%A000045(n+1)` -/
def P5575632085272844300.Spec : Prop :=
  ∀ n, P5575632085272844300.a n = A246846 (n + 1)

end A246846

/-!
# A246849: Decimal expansion of 1-delta_0, where delta_0 is the Hall-Montgomery constant (A143301).

The programs for A246849, there is no canonical definition to state claims against.
-/

/-! ## A246849.P15607659986637678608

`9-A143301(n)`
-/

namespace A246849.P15607659986637678608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A143301 n

end

end A246849.P15607659986637678608

/-!
# A246850: Even numbers which cannot be represented by the surface area of an n1 X n2 X n3 block.

The programs for A246850, there is no canonical definition to state claims against.
-/

/-! ## A246850.P11805550494524692429

`2*A025052(n+1)`
-/

namespace A246850.P11805550494524692429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025052 (n + 1)

end

end A246850.P11805550494524692429

/-! ## A246850.P15999411583710371454

`2*(A228062(n+2)-1)`
-/

namespace A246850.P15999411583710371454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A228062 (n + 2) - 1)

end

end A246850.P15999411583710371454

/-! ## A246850.P14417131693922162533

`∑[2*Δ[A228062(n+1)]]`
-/

namespace A246850.P14417131693922162533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246850.P14417131693922162533

/-! ## A246850.P6835910369698803555

`2*record[gcd(n+1, A066851(n+1))]`
-/

namespace A246850.P6835910369698803555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A066851 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246850.P6835910369698803555

/-! ## A246850.P760863874321353279

`A004277(A025052(n+1))`
-/

namespace A246850.P760863874321353279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025052 (n + 1)).toNat

end

end A246850.P760863874321353279

/-!
# A246851: a(n) = smallest number k such that sigma(k+n) - sigma(k) = k + n, or -1 if no solution exists.

The programs for A246851, there is no canonical definition to state claims against.
-/

/-! ## A246851.P5997694228058069986

`A175818(C(n+1, 2^val(n+1, 2)))`
-/

namespace A246851.P5997694228058069986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175818 (Nat.choose (n + 1) (2 ^ SequenceMachineLib.valuation (n + 1) 2))

end

end A246851.P5997694228058069986

/-!
# A246852: Numbers n such that sigma(n+2) - sigma(n) = n + 2.

The programs for A246852, there is no canonical definition to state claims against.
-/

/-! ## A246852.P225695215816115776

`A260420(n+1)-1`
-/

namespace A246852.P225695215816115776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260420 (n + 1) - 1

end

end A246852.P225695215816115776

/-! ## A246852.P426032338612392954

`xor(A000038(n)+1, A260420(n+1))`
-/

namespace A246852.P426032338612392954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 n + 1) (A260420 (n + 1))

end

end A246852.P426032338612392954

/-! ## A246852.P13949155310706420259

`abs(A260420(n+1)+A033999(or(1, n)))`
-/

namespace A246852.P13949155310706420259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A260420 (n + 1) + A033999 (Nat.lor 1 n)|

end

end A246852.P13949155310706420259

/-! ## A246852.P13355664877806441284

`A355689(A000040(n+1))+A260420(n+1)`
-/

namespace A246852.P13355664877806441284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (A000040 (n + 1)).toNat + A260420 (n + 1)

end

end A246852.P13355664877806441284

/-! ## A246852.P9740113133276898914

`A354347(A006562(n+1))+A260420(n+1)`
-/

namespace A246852.P9740113133276898914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354347 (A006562 (n + 1)).toNat + A260420 (n + 1)

end

end A246852.P9740113133276898914

/-!
# A246854: Numbers n such that sigma(n+4) - sigma(n) = n + 4.

The programs for A246854, there is no canonical definition to state claims against.
-/

/-! ## A246854.P10679341556480265253

`eq[A039653(n), A048050(n+4)]`
-/

namespace A246854.P10679341556480265253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246854.P10679341556480265253

/-! ## A246854.P17928462065150948884

`eq[A001065(n+4), A227131(n)]`
-/

namespace A246854.P17928462065150948884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246854.P17928462065150948884

/-! ## A246854.P7178793556328108500

`eq[A000203(n+1), A001065(n+5)]+1`
-/

namespace A246854.P7178793556328108500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246854.P7178793556328108500

/-! ## A246854.P7648988250730509911

`eq[A001065(n+5), A049418(n+1)]+1`
-/

namespace A246854.P7648988250730509911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A246854.P7648988250730509911

/-!
# A246857: Numbers k such that sigma(k + sigma(k)) = 2*sigma(k).

The programs for A246857, there is no canonical definition to state claims against.
-/

/-! ## A246857.P1643761970794318762

`∪[A005384(n+1), A246858(n+1)]`
-/

namespace A246857.P1643761970794318762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246857.P1643761970794318762

/-!
# A246858: Composite numbers k such that sigma(k + sigma(k)) = 2*sigma(k).

The programs for A246858, there is no canonical definition to state claims against.
-/

/-! ## A246858.P17595263146192230142

`filter[A246857(n+1), A005171(#)]`
-/

namespace A246858.P17595263146192230142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A246858.P17595263146192230142

/-!
# A246860: Expected value of trace(O)^(2n), where O is a 4 X 4 orthogonal matrix randomly selected according to Haar measure.

The programs for A246860, there is no canonical definition to state claims against.
-/

/-! ## A246860.P12618558856132991172

`C(C(2*(n+1), n)/(n+1)+1, 2)`
-/

namespace A246860.P12618558856132991172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((Nat.choose (2 * (n + 1)) n : ℚ) / (n + 1 : ℚ) + 1)).toNat 2

end

end A246860.P12618558856132991172

/-! ## A246860.P3644433579968226459

`A386291(n+1)/4`
-/

namespace A246860.P3644433579968226459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386291 (n + 1) : ℚ) / 4

end

end A246860.P3644433579968226459

/-! ## A246860.P4571552683898131076

`C(A141351(n+1), 2)`
-/

namespace A246860.P4571552683898131076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141351 (n + 1)).toNat 2

end

end A246860.P4571552683898131076

/-! ## A246860.P5994565052549182138

`C(∑[A071724(n)]+1, 2)`
-/

namespace A246860.P5994565052549182138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A246860.P5994565052549182138

/-! ## A246860.P13057149516278575661

`C(∑[A000245(n)]+2, 2)`
-/

namespace A246860.P13057149516278575661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat 2

end

end A246860.P13057149516278575661

/-!
# A246861: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k)^2 * (x*A(x))^(2*k).

The programs for A246861, there is no canonical definition to state claims against.
-/

/-! ## A246861.P10491157016356787958

`A352702(n)-A051903(A000258(n))`
-/

namespace A246861.P10491157016356787958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352702 n - A051903 (A000258 n).toNat

end

end A246861.P10491157016356787958

/-! ## A246861.P16722211527142980156

`A193921(or(A006128(n), A087805(n)))`
-/

namespace A246861.P16722211527142980156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193921 (Int.lor (A006128 n) (A087805 n)).toNat

end

end A246861.P16722211527142980156

/-! ## A246861.P7147417919726987591

`A173610(n)-A000120(A282618(n+1))`
-/

namespace A246861.P7147417919726987591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173610 n - A000120 (A282618 (n + 1)).toNat

end

end A246861.P7147417919726987591

/-!
# A246862: Expansion of phi(x) * f(x^3, x^5) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A246862, the canonical program `A246862.P11634344800982131065` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246862 has offset 0).

The definition of A246862 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246862.P11634344800982131065

`A113407(2*n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246862

/-- `A113407(2*n)` -/
def P11634344800982131065.Spec : Prop :=
  ∀ n, P11634344800982131065.a n = A246862 n

theorem P11634344800982131065.correct : P11634344800982131065.Spec := by
  intro n
  simp only [A246862]

end A246862

/-! ## A246862.P6527222130439701428

`A226192(2*n)`
-/

namespace A246862.P6527222130439701428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226192 (2 * n)

end

end A246862.P6527222130439701428

namespace A246862

/-- `A226192(2*n)` -/
def P6527222130439701428.Spec : Prop :=
  ∀ n, P6527222130439701428.a n = A246862 n

end A246862

/-! ## A246862.P3716318306656105952

`A008441(4*n)`
-/

namespace A246862.P3716318306656105952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (4 * n)

end

end A246862.P3716318306656105952

namespace A246862

/-- `A008441(4*n)` -/
def P3716318306656105952.Spec : Prop :=
  ∀ n, P3716318306656105952.a n = A246862 n

end A246862

/-! ## A246862.P7064122655114184428

`A134343(4*n)`
-/

namespace A246862.P7064122655114184428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 (4 * n)

end

end A246862.P7064122655114184428

namespace A246862

/-- `A134343(4*n)` -/
def P7064122655114184428.Spec : Prop :=
  ∀ n, P7064122655114184428.a n = A246862 n

end A246862

/-! ## A246862.P15503566873047635536

`A125079(8*n)`
-/

namespace A246862.P15503566873047635536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (8 * n)

end

end A246862.P15503566873047635536

namespace A246862

/-- `A125079(8*n)` -/
def P15503566873047635536.Spec : Prop :=
  ∀ n, P15503566873047635536.a n = A246862 n

end A246862

/-! ## A246862.P9839590695144592321

`A116604(8*n)`
-/

namespace A246862.P9839590695144592321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (8 * n)

end

end A246862.P9839590695144592321

namespace A246862

/-- `A116604(8*n)` -/
def P9839590695144592321.Spec : Prop :=
  ∀ n, P9839590695144592321.a n = A246862 n

end A246862

/-! ## A246862.P1877216032251743982

`A129447(8*n)`
-/

namespace A246862.P1877216032251743982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (8 * n)

end

end A246862.P1877216032251743982

namespace A246862

/-- `A129447(8*n)` -/
def P1877216032251743982.Spec : Prop :=
  ∀ n, P1877216032251743982.a n = A246862 n

end A246862

/-! ## A246862.P3882693571125180897

`A138741(8*n)`
-/

namespace A246862.P3882693571125180897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (8 * n)

end

end A246862.P3882693571125180897

namespace A246862

/-- `A138741(8*n)` -/
def P3882693571125180897.Spec : Prop :=
  ∀ n, P3882693571125180897.a n = A246862 n

end A246862

/-! ## A246862.P4523945475768277117

`A004020(4*n)/2`
-/

namespace A246862.P4523945475768277117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 (4 * n) : ℚ) / 2

end

end A246862.P4523945475768277117

namespace A246862

/-- `A004020(4*n)/2` -/
def P4523945475768277117.Spec : Prop :=
  ∀ n, P4523945475768277117.a n = (A246862 n : ℚ)

end A246862

/-! ## A246862.P3612045830340541962

`A005883(4*n)/4`
-/

namespace A246862.P3612045830340541962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 (4 * n) : ℚ) / 4

end

end A246862.P3612045830340541962

namespace A246862

/-- `A005883(4*n)/4` -/
def P3612045830340541962.Spec : Prop :=
  ∀ n, P3612045830340541962.a n = (A246862 n : ℚ)

end A246862

/-! ## A246862.P9610229569619437900

`A001281(A004020(4*n))`
-/

namespace A246862.P9610229569619437900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004020 (4 * n)).toNat

end

end A246862.P9610229569619437900

namespace A246862

/-- `A001281(A004020(4*n))` -/
def P9610229569619437900.Spec : Prop :=
  ∀ n, P9610229569619437900.a n = A246862 n

end A246862

/-! ## A246862.P12157466930627583475

`A246863(9*n)`
-/

namespace A246862.P12157466930627583475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246863 (9 * n)

end

end A246862.P12157466930627583475

namespace A246862

/-- `A246863(9*n)` -/
def P12157466930627583475.Spec : Prop :=
  ∀ n, P12157466930627583475.a n = A246862 n

end A246862

/-! ## A246862.P11792782035575503053

`A002654(4*4*n+1)`
-/

namespace A246862.P11792782035575503053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * (4 * n) + 1)

end

end A246862.P11792782035575503053

namespace A246862

/-- `A002654(4*4*n+1)` -/
def P11792782035575503053.Spec : Prop :=
  ∀ n, P11792782035575503053.a n = A246862 n

end A246862

/-! ## A246862.P2964309171041810507

`A338690(A016813(4*n))`
-/

namespace A246862.P2964309171041810507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (A016813 (4 * n)).toNat

end

end A246862.P2964309171041810507

namespace A246862

/-- `A338690(A016813(4*n))` -/
def P2964309171041810507.Spec : Prop :=
  ∀ n, P2964309171041810507.a n = A246862 n

end A246862

/-! ## A246862.P16384166088312874819

`A163746(A022144(2*n)+1)`
-/

namespace A246862.P16384166088312874819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A022144 (2 * n) + 1).toNat

end

end A246862.P16384166088312874819

namespace A246862

/-- `A163746(A022144(2*n)+1)` -/
def P16384166088312874819.Spec : Prop :=
  ∀ n, P16384166088312874819.a n = A246862 n

end A246862

/-! ## A246862.P1947867622214042528

`A163746(A234275(2*n)+1)`
-/

namespace A246862.P1947867622214042528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (A234275 (2 * n) + 1).toNat

end

end A246862.P1947867622214042528

namespace A246862

/-- `A163746(A234275(2*n)+1)` -/
def P1947867622214042528.Spec : Prop :=
  ∀ n, P1947867622214042528.a n = A246862 n

end A246862

/-! ## A246862.P4716576588220495968

`A004531(A008598(n)+1)/2`
-/

namespace A246862.P4716576588220495968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004531 (A008598 n + 1).toNat : ℚ) / 2

end

end A246862.P4716576588220495968

namespace A246862

/-- `A004531(A008598(n)+1)/2` -/
def P4716576588220495968.Spec : Prop :=
  ∀ n, P4716576588220495968.a n = (A246862 n : ℚ)

end A246862

/-! ## A246862.P10547787040556591166

`A035181(A017089(2*n)-1)`
-/

namespace A246862.P10547787040556591166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (A017089 (2 * n) - 1).toNat

end

end A246862.P10547787040556591166

namespace A246862

/-- `A035181(A017089(2*n)-1)` -/
def P10547787040556591166.Spec : Prop :=
  ∀ n, P10547787040556591166.a n = A246862 n

end A246862

/-! ## A246862.P8128148969055723947

`A244526(2*n)-A244526(A017173(2*n))`
-/

namespace A246862.P8128148969055723947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244526 (2 * n) - A244526 (A017173 (2 * n)).toNat

end

end A246862.P8128148969055723947

namespace A246862

/-- `A244526(2*n)-A244526(A017173(2*n))` -/
def P8128148969055723947.Spec : Prop :=
  ∀ n, P8128148969055723947.a n = A246862 n

end A246862

/-! ## A246862.P17473913112543819916

`A138745(A174312(n)+2)`
-/

namespace A246862.P17473913112543819916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138745 (A174312 n + 2).toNat

end

end A246862.P17473913112543819916

namespace A246862

/-- `A138745(A174312(n)+2)` -/
def P17473913112543819916.Spec : Prop :=
  ∀ n, P17473913112543819916.a n = A246862 n

end A246862

/-!
# A246863: Expansion of phi(x) * f(x^1, x^7) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A246863, the canonical program `A246863.P8534454379903877911` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246863 has offset 0).

The definition of A246863 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113407, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A246863.P8534454379903877911

`A113407(2*n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A246863

/-- `A113407(2*n+1)` -/
def P8534454379903877911.Spec : Prop :=
  ∀ n, P8534454379903877911.a n = A246863 n

theorem P8534454379903877911.correct : P8534454379903877911.Spec := by
  intro n
  simp only [A246863]

end A246863

/-! ## A246863.P6300862480547210910

`-A226192(2*n+1)`
-/

namespace A246863.P6300862480547210910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A226192 (2 * n + 1)

end

end A246863.P6300862480547210910

namespace A246863

/-- `-A226192(2*n+1)` -/
def P6300862480547210910.Spec : Prop :=
  ∀ n, P6300862480547210910.a n = A246863 n

end A246863

/-! ## A246863.P17465079857280412759

`A008441(4*n+2)`
-/

namespace A246863.P17465079857280412759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (4 * n + 2)

end

end A246863.P17465079857280412759

namespace A246863

/-- `A008441(4*n+2)` -/
def P17465079857280412759.Spec : Prop :=
  ∀ n, P17465079857280412759.a n = A246863 n

end A246863

/-! ## A246863.P11331122342702156321

`A134343(4*n+2)`
-/

namespace A246863.P11331122342702156321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 (4 * n + 2)

end

end A246863.P11331122342702156321

namespace A246863

/-- `A134343(4*n+2)` -/
def P11331122342702156321.Spec : Prop :=
  ∀ n, P11331122342702156321.a n = A246863 n

end A246863

/-! ## A246863.P9412113299107050191

`A116604(8*n+4)`
-/

namespace A246863.P9412113299107050191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (8 * n + 4)

end

end A246863.P9412113299107050191

namespace A246863

/-- `A116604(8*n+4)` -/
def P9412113299107050191.Spec : Prop :=
  ∀ n, P9412113299107050191.a n = A246863 n

end A246863

/-! ## A246863.P11776939949945629682

`A125079(8*n+4)`
-/

namespace A246863.P11776939949945629682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (8 * n + 4)

end

end A246863.P11776939949945629682

namespace A246863

/-- `A125079(8*n+4)` -/
def P11776939949945629682.Spec : Prop :=
  ∀ n, P11776939949945629682.a n = A246863 n

end A246863

/-! ## A246863.P8641782260927424273

`A129447(8*n+4)`
-/

namespace A246863.P8641782260927424273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (8 * n + 4)

end

end A246863.P8641782260927424273

namespace A246863

/-- `A129447(8*n+4)` -/
def P8641782260927424273.Spec : Prop :=
  ∀ n, P8641782260927424273.a n = A246863 n

end A246863

/-! ## A246863.P15786524550968831673

`A138741(8*n+4)`
-/

namespace A246863.P15786524550968831673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (8 * n + 4)

end

end A246863.P15786524550968831673

namespace A246863

/-- `A138741(8*n+4)` -/
def P15786524550968831673.Spec : Prop :=
  ∀ n, P15786524550968831673.a n = A246863 n

end A246863

/-! ## A246863.P16168106143762505145

`gcd(A000038(n), A226192(2*n+1))`
-/

namespace A246863.P16168106143762505145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A226192 (2 * n + 1))

end

end A246863.P16168106143762505145

namespace A246863

/-- `gcd(A000038(n), A226192(2*n+1))` -/
def P16168106143762505145.Spec : Prop :=
  ∀ n, (P16168106143762505145.a n : ℤ) = A246863 n

end A246863

/-! ## A246863.P1668613623658257734

`A000007(n+1)-A226192(2*n+1)`
-/

namespace A246863.P1668613623658257734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A226192 (2 * n + 1)

end

end A246863.P1668613623658257734

namespace A246863

/-- `A000007(n+1)-A226192(2*n+1)` -/
def P1668613623658257734.Spec : Prop :=
  ∀ n, P1668613623658257734.a n = A246863 n

end A246863

/-! ## A246863.P629590818304519909

`A000038(n+1)-A226192(2*n+1)`
-/

namespace A246863.P629590818304519909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A226192 (2 * n + 1)

end

end A246863.P629590818304519909

namespace A246863

/-- `A000038(n+1)-A226192(2*n+1)` -/
def P629590818304519909.Spec : Prop :=
  ∀ n, P629590818304519909.a n = A246863 n

end A246863

/-! ## A246863.P4870699214672099310

`A244560(2*n)-A244526(2*n+1)`
-/

namespace A246863.P4870699214672099310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244560 (2 * n) - A244526 (2 * n + 1)

end

end A246863.P4870699214672099310

namespace A246863

/-- `A244560(2*n)-A244526(2*n+1)` -/
def P4870699214672099310.Spec : Prop :=
  ∀ n, P4870699214672099310.a n = A246863 n

end A246863

/-! ## A246863.P5736598118143614851

`1-(A226192(2*n+1)+A033999(2*n))`
-/

namespace A246863.P5736598118143614851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A226192 (2 * n + 1) + A033999 (2 * n))

end

end A246863.P5736598118143614851

namespace A246863

/-- `1-(A226192(2*n+1)+A033999(2*n))` -/
def P5736598118143614851.Spec : Prop :=
  ∀ n, P5736598118143614851.a n = A246863 n

end A246863

/-! ## A246863.P15924352794949356920

`A033999(2*n+1)*A226192(2*n+1)`
-/

namespace A246863.P15924352794949356920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A226192 (2 * n + 1)

end

end A246863.P15924352794949356920

namespace A246863

/-- `A033999(2*n+1)*A226192(2*n+1)` -/
def P15924352794949356920.Spec : Prop :=
  ∀ n, P15924352794949356920.a n = A246863 n

end A246863

/-! ## A246863.P101063669188609717

`A246862(A017221(n))`
-/

namespace A246863.P101063669188609717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246862 (A017221 n).toNat

end

end A246863.P101063669188609717

namespace A246863

/-- `A246862(A017221(n))` -/
def P101063669188609717.Spec : Prop :=
  ∀ n, P101063669188609717.a n = A246863 n

end A246863

/-! ## A246863.P18244297273763795024

`A002654(A017077(2*n+1))`
-/

namespace A246863.P18244297273763795024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A017077 (2 * n + 1)).toNat

end

end A246863.P18244297273763795024

namespace A246863

/-- `A002654(A017077(2*n+1))` -/
def P18244297273763795024.Spec : Prop :=
  ∀ n, P18244297273763795024.a n = A246863 n

end A246863

/-! ## A246863.P1549698160467818067

`A113446(2*A017113(n)+1)`
-/

namespace A246863.P1549698160467818067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (2 * A017113 n + 1).toNat

end

end A246863.P1549698160467818067

namespace A246863

/-- `A113446(2*A017113(n)+1)` -/
def P1549698160467818067.Spec : Prop :=
  ∀ n, P1549698160467818067.a n = A246863 n

end A246863

/-! ## A246863.P12139833992131478205

`A125061(2*A017113(n)+1)`
-/

namespace A246863.P12139833992131478205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 (2 * A017113 n + 1).toNat

end

end A246863.P12139833992131478205

namespace A246863

/-- `A125061(2*A017113(n)+1)` -/
def P12139833992131478205.Spec : Prop :=
  ∀ n, P12139833992131478205.a n = A246863 n

end A246863

/-! ## A246863.P16908492521827673533

`A338690(A016813(2*(2*n+1)))`
-/

namespace A246863.P16908492521827673533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (A016813 (2 * (2 * n + 1))).toNat

end

end A246863.P16908492521827673533

namespace A246863

/-- `A338690(A016813(2*(2*n+1)))` -/
def P16908492521827673533.Spec : Prop :=
  ∀ n, P16908492521827673533.a n = A246863 n

end A246863

/-!
# A246864: (n^4+1) mod prime(n).

The programs for A246864, the canonical program `A246864.P17921176171896131481` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246864 has offset 1).

The definition of A246864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246864.P17921176171896131481

`((n+1)^4+1)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246864

/-- `((n+1)^4+1)%A000040(n+1)` -/
def P17921176171896131481.Spec : Prop :=
  ∀ n, P17921176171896131481.a n = A246864 (n + 1)

theorem P17921176171896131481.correct : P17921176171896131481.Spec := by
  intro n
  simp only [A246864, Nat.add_sub_cancel]

end A246864

/-! ## A246864.P1413893050620769200

`(A000583(n+1)+1)%A006005(n+1)`
-/

namespace A246864.P1413893050620769200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 (n + 1) + 1) (A006005 (n + 1))

end

end A246864.P1413893050620769200

namespace A246864

/-- `(A000583(n+1)+1)%A006005(n+1)` -/
def P1413893050620769200.Spec : Prop :=
  ∀ n, P1413893050620769200.a n = A246864 (n + 1)

end A246864

/-! ## A246864.P2335662698448098116

`((n+1)²²+1)%p?[xor(1, n)+1]`
-/

namespace A246864.P2335662698448098116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 + 1) % f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A246864.P2335662698448098116

namespace A246864

/-- `((n+1)²²+1)%p?[xor(1, n)+1]` -/
def P2335662698448098116.Spec : Prop :=
  ∀ n, (P2335662698448098116.a n : ℤ) = A246864 (n + 1)

end A246864

/-! ## A246864.P720027798712533197

`A002523(n+1)%p?[A064429(n)]`
-/

namespace A246864.P720027798712533197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002523 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A246864.P720027798712533197

namespace A246864

/-- `A002523(n+1)%p?[A064429(n)]` -/
def P720027798712533197.Spec : Prop :=
  ∀ n, P720027798712533197.a n = A246864 (n + 1)

end A246864

/-! ## A246864.P3869837276512102191

`A002523(A261143(n)+n)%eq[0, n-A051697(n)]`
-/

namespace A246864.P3869837276512102191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002523 (A261143 n + (n : ℤ)).toNat) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A246864.P3869837276512102191

namespace A246864

/-- `A002523(A261143(n)+n)%eq[0, n-A051697(n)]` -/
def P3869837276512102191.Spec : Prop :=
  ∀ n, P3869837276512102191.a n = A246864 (n + 1)

end A246864

/-! ## A246864.P6217897942718100625

`((n+1)²²+1)%p?[A001057(n)]`
-/

namespace A246864.P6217897942718100625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2) ^ 2 + 1 : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A246864.P6217897942718100625

namespace A246864

/-- `((n+1)²²+1)%p?[A001057(n)]` -/
def P6217897942718100625.Spec : Prop :=
  ∀ n, P6217897942718100625.a n = A246864 (n + 1)

end A246864

/-! ## A246864.P18117500581867696206

`A002522((n+1)²)%Δ[A007504(n)]`
-/

namespace A246864.P18117500581867696206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002522 ((n + 1) ^ 2)) (f1 (n + 1) - f1 n)

end

end A246864.P18117500581867696206

namespace A246864

/-- `A002522((n+1)²)%Δ[A007504(n)]` -/
def P18117500581867696206.Spec : Prop :=
  ∀ n, P18117500581867696206.a n = A246864 (n + 1)

end A246864

/-!
# A246865: Total number of reduced decompositions for all permutations in S_n.

The programs for A246865, there is no canonical definition to state claims against.
-/

/-! ## A246865.P11880475544158794053

`A186972(n+1)*A256271(A238009(n+2)*A376052(n+5))`
-/

namespace A246865.P11880475544158794053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186972 (n + 1) * A256271 (A238009 (n + 2) * A376052 (n + 5)).toNat

end

end A246865.P11880475544158794053

/-!
# A246866: Bitmasks that can be used to generate a sequence of all positive integers up to 2^n.

The programs for A246866, there is no canonical definition to state claims against.
-/

/-! ## A246866.P11365474100029099857

`A030109(A132447(n+2))`
-/

namespace A246866.P11365474100029099857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A132447 (n + 2)).toNat

end

end A246866.P11365474100029099857

/-! ## A246866.P11327155576794072910

`A030109(A132453(n+2))`
-/

namespace A246866.P11327155576794072910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A132453 (n + 2)).toNat

end

end A246866.P11327155576794072910

/-! ## A246866.P17833823037407475374

`A292681(2^n)-2*and(n, 2*n)`
-/

namespace A246866.P17833823037407475374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292681 (2 ^ n) - (2 * Nat.land n (2 * n) : ℤ)

end

end A246866.P17833823037407475374

/-!
# A246867: Triangle T(n,k) in which n-th row lists in increasing order all partitions lambda of n into distinct parts encoded as Product_{i:lambda} prime(i); n>=0, 1<=k<=A000009(n).

The programs for A246867, there is no canonical definition to state claims against.
-/

/-! ## A246867.P2983776540370010747

`filter[A215366(n), A008966(#)]`
-/

namespace A246867.P2983776540370010747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A246867.P2983776540370010747

/-! ## A246867.P3694980450604243341

`A215366(eq[1, A007424(A215366(n))])`
-/

namespace A246867.P3694980450604243341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246867.P3694980450604243341

/-! ## A246867.P9235139086902668977

`A215366(eq[1, A008833(A215366(n))])`
-/

namespace A246867.P9235139086902668977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246867.P9235139086902668977

/-! ## A246867.P16537162025569268513

`A215366(eq[0, A046660(A215366(n))])`
-/

namespace A246867.P16537162025569268513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246867.P16537162025569268513

/-! ## A246867.P8076869097671348329

`A215366(eq[1, A000188(A215366(n))])`
-/

namespace A246867.P8076869097671348329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246867.P8076869097671348329

/-! ## A246867.P17626841069416922919

`A215366(eq[1, A000189(A215366(n))])`
-/

namespace A246867.P17626841069416922919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246867.P17626841069416922919

/-!
# A246868: Largest number that can be encoded as Product_{i:lambda} prime(i) for a partition lambda of n into distinct parts.

The programs for A246868, there is no canonical definition to state claims against.
-/

/-! ## A246868.P18183266351140672741

`A246867(A036469(n)-1)`
-/

namespace A246868.P18183266351140672741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (A036469 n - 1).toNat

end

end A246868.P18183266351140672741

/-! ## A246868.P13214058262161493453

`A246867(A317910(n)+n)`
-/

namespace A246868.P13214058262161493453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (A317910 n + (n : ℤ)).toNat

end

end A246868.P13214058262161493453

/-! ## A246868.P4130801592816582775

`A246867(∑[A000009(n)]-1)`
-/

namespace A246868.P4130801592816582775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A246868.P4130801592816582775

/-! ## A246868.P12336699349634475286

`A246867(∑[A111133(n)]+n)`
-/

namespace A246868.P12336699349634475286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A246868.P12336699349634475286

/-! ## A246868.P812521569485085030

`A246867(∑[A000009(n)%A000079(n)])`
-/

namespace A246868.P812521569485085030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 n) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246867 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A246868.P812521569485085030

/-!
# A246872: Lesser of Gridgeman pairs in base 16 in increasing order: pairs of primes palindromic in base 16 which differ only in their middle digits by a difference of 1.

The programs for A246872, there is no canonical definition to state claims against.
-/

/-! ## A246872.P2805620527756958461

`p?[A001222(A297289(n+1))*A029730(n+1)]`
-/

namespace A246872.P2805620527756958461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A297289 (n + 1)).toNat * A029730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246872.P2805620527756958461

/-!
# A246873: Primes p such that p - 2^2, p - 4^2 and p - 6^2 are all positive primes.

The programs for A246873, there is no canonical definition to state claims against.
-/

/-! ## A246873.P10357675112563850125

`A294074(eq[4, A294098(n+2)])`
-/

namespace A246873.P10357675112563850125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A246873.P10357675112563850125

/-! ## A246873.P3930406007379783413

`A185225(A138449(n))+A005385(2*n+5)`
-/

namespace A246873.P3930406007379783413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185225 (A138449 n).toNat + A005385 (2 * n + 5)

end

end A246873.P3930406007379783413

/-!
# A246875: a(n) = (Sum_{k=0..n-1} C(n-1,k)^2*C(-n-1,k)^2/C(k+2,2))/n.

The programs for A246875, there is no canonical definition to state claims against.
-/

/-! ## A246875.P9810837876637222414

`A332462(A075509(n))+n`
-/

namespace A246875.P9810837876637222414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A075509 n).toNat + (n : ℤ)

end

end A246875.P9810837876637222414

/-!
# A246876: G.f.: 1 / AGM(1-12*x, sqrt((1-4*x)*(1-36*x))).

The programs for A246876, there is no canonical definition to state claims against.
-/

/-! ## A246876.P15047762026043609163

`A081671(n)²`
-/

namespace A246876.P15047762026043609163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081671 n ^ 2

end

end A246876.P15047762026043609163

/-! ## A246876.P16297405778305007959

`(A098411(n)/A000079(n))²`
-/

namespace A246876.P16297405778305007959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098411 n : ℚ) / (A000079 n : ℚ)) ^ 2

end

end A246876.P16297405778305007959

/-! ## A246876.P14829060859368947373

`A081671(n)^ratio[A011782(n)]`
-/

namespace A246876.P14829060859368947373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A081671 n : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A246876.P14829060859368947373

/-! ## A246876.P6979324358809252457

`A081671(n)^A036453(n+1)`
-/

namespace A246876.P6979324358809252457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081671 n : ℚ) ^ (A036453 (n + 1) : ℤ)

end

end A246876.P6979324358809252457

/-! ## A246876.P15591354947030317205

`(A098411(n)/∑[A011782(n)])²`
-/

namespace A246876.P15591354947030317205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098411 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) ^ 2

end

end A246876.P15591354947030317205

/-! ## A246876.P3824201334689901487

`(A098411(n)/Δ[A000918(n)])²`
-/

namespace A246876.P3824201334689901487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098411 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)) ^ 2

end

end A246876.P3824201334689901487

/-! ## A246876.P1643346345934704310

`(A098411(n)/A011782(n+1))²`
-/

namespace A246876.P1643346345934704310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098411 n : ℚ) / (A011782 (n + 1) : ℚ)) ^ 2

end

end A246876.P1643346345934704310

/-! ## A246876.P5622824678413869406

`(A064613(n)+n*A025228(n+1))²`
-/

namespace A246876.P5622824678413869406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064613 n + (n : ℤ) * A025228 (n + 1)) ^ 2

end

end A246876.P5622824678413869406

/-! ## A246876.P15052493014481229989

`A081671(n)^A020639(A008574(n))`
-/

namespace A246876.P15052493014481229989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081671 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A246876.P15052493014481229989

/-! ## A246876.P18167360740709811508

`(A098411(n)/A038212(A000217(n)))²`
-/

namespace A246876.P18167360740709811508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A098411 n : ℚ) / (A038212 (A000217 n).toNat : ℚ)) ^ 2

end

end A246876.P18167360740709811508

/-!
# A246878: a(0) = 1, then a(n) = Sum_{k = floor(log_2(n)) .. n - 1} a(k).

The programs for A246878, there is no canonical definition to state claims against.
-/

/-! ## A246878.P7832674831465493427

`2*a(n-1)-A021913(A063886(n))` with `a(0)=1`
-/

namespace A246878.P7832674831465493427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A021913 (A063886 n).toNat

end

end A246878.P7832674831465493427

/-! ## A246878.P45123306007289706

`2*a(n-1)-A010051(A095151(n))` with `a(0)=1`
-/

namespace A246878.P45123306007289706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A010051 (A095151 n).toNat

end

end A246878.P45123306007289706

/-! ## A246878.P5590174501693957400

`2*a(n-1)-A178225(A084386(n))` with `a(0)=1`
-/

namespace A246878.P5590174501693957400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A178225 (A084386 n).toNat

end

end A246878.P5590174501693957400

/-! ## A246878.P8837315976419026237

`A004396(3*a(n-1)-A209229(n))` with `a(0)=1`
-/

namespace A246878.P8837315976419026237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004396 (3 * a (n - 1) - A209229 n).toNat

end

end A246878.P8837315976419026237

/-! ## A246878.P2412504480959775493

`2*a(n-1)-A086299(A169965(n+1))` with `a(0)=1`
-/

namespace A246878.P2412504480959775493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A086299 (A169965 (n + 1)).toNat

end

end A246878.P2412504480959775493

/-!
# A246880: a(n) = 6*((10^n-1)/9)*(10^(n+1))+9*(10^n-1)/9.

The programs for A246880, the canonical program `A246880.P8352328806762021566` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246880 has offset 0).

The definition of A246880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A246880.P8352328806762021566

`6*(10^n-1)/9*10^(n+1)+9*(10^n-1)/9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A246880

/-- `6*(10^n-1)/9*10^(n+1)+9*(10^n-1)/9` -/
def P8352328806762021566.Spec : Prop :=
  ∀ n, P8352328806762021566.a n = (A246880 n : ℚ)

end A246880

/-! ## A246880.P550833689791104322

`floor(A332160(n)+(10^n-1)/3)`
-/

namespace A246880.P550833689791104322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332160 n : ℚ) + ((10 ^ n : ℤ) - 1 : ℚ) / 3⌋

end

end A246880.P550833689791104322

namespace A246880

/-- `floor(A332160(n)+(10^n-1)/3)` -/
def P550833689791104322.Spec : Prop :=
  ∀ n, P550833689791104322.a n = A246880 n

end A246880

/-! ## A246880.P15664905499172914067

`abs(A002277(n)+6*((10^(2*n+1)-1)/9-10^n))`
-/

namespace A246880.P15664905499172914067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002277 n : ℚ) + 6 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9 - (10 ^ n : ℚ))|

end

end A246880.P15664905499172914067

namespace A246880

/-- `abs(A002277(n)+6*((10^(2*n+1)-1)/9-10^n))` -/
def P15664905499172914067.Spec : Prop :=
  ∀ n, P15664905499172914067.a n = (A246880 n : ℚ)

end A246880

/-! ## A246880.P16965529895253536566

`3*(A332120(n)+A002275(n))`
-/

namespace A246880.P16965529895253536566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A332120 n + A002275 n)

end

end A246880.P16965529895253536566

namespace A246880

/-- `3*(A332120(n)+A002275(n))` -/
def P16965529895253536566.Spec : Prop :=
  ∀ n, P16965529895253536566.a n = A246880 n

end A246880

/-! ## A246880.P355669885963341547

`abs(A332160(n)+(A011557(n)-1)/3)`
-/

namespace A246880.P355669885963341547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A332160 n : ℚ) + (A011557 n - 1 : ℚ) / 3|

end

end A246880.P355669885963341547

namespace A246880

/-- `abs(A332160(n)+(A011557(n)-1)/3)` -/
def P355669885963341547.Spec : Prop :=
  ∀ n, P355669885963341547.a n = (A246880 n : ℚ)

end A246880

/-!
# A246883: Expansion of Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k)^2 * x^(3*k).

The programs for A246883, there is no canonical definition to state claims against.
-/

/-! ## A246883.P5490839848393129339

`A115871(A144700(n))`
-/

namespace A246883.P5490839848393129339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A144700 n).toNat

end

end A246883.P5490839848393129339

/-! ## A246883.P12339090205520096678

`A252474(A079984(n))`
-/

namespace A246883.P12339090205520096678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A079984 n).toNat

end

end A246883.P12339090205520096678

/-! ## A246883.P15300179391723385039

`abs(2-A117923(A025047(n)))`
-/

namespace A246883.P15300179391723385039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A117923 (A025047 n).toNat|

end

end A246883.P15300179391723385039

/-! ## A246883.P7750593085289710659

`A046805(A291915(n+1)+1)`
-/

namespace A246883.P7750593085289710659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046805 (A291915 (n + 1) + 1).toNat

end

end A246883.P7750593085289710659

/-! ## A246883.P16032600207657023159

`A304574(2*A032250(n+1))`
-/

namespace A246883.P16032600207657023159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304574 (2 * A032250 (n + 1)).toNat

end

end A246883.P16032600207657023159

/-!
# A246884: Expansion of Sum_{n>=0} x^n * Sum_{k=0..n} C(n,k)^2 * x^(4*k).

The programs for A246884, there is no canonical definition to state claims against.
-/

/-! ## A246884.P8854323501916662556

`A363287(A248193(n+1))`
-/

namespace A246884.P8854323501916662556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (A248193 (n + 1)).toNat

end

end A246884.P8854323501916662556

/-! ## A246884.P113895404223920683

`(2^C(n, 10))!+A011866(n)²`
-/

namespace A246884.P113895404223920683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 ^ Nat.choose n 10) : ℤ) + A011866 n ^ 2

end

end A246884.P113895404223920683

/-! ## A246884.P8714063857980405746

`A115871(A100134(n+1))`
-/

namespace A246884.P8714063857980405746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A100134 (n + 1)).toNat

end

end A246884.P8714063857980405746

/-! ## A246884.P7855064061101001939

`A115871(A365732(n+1))`
-/

namespace A246884.P7855064061101001939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (A365732 (n + 1)).toNat

end

end A246884.P7855064061101001939

/-!
# A246885: Those n for which the coefficients of x^n in the reciprocal of 1+x+x^8+...+x^(i^3)+... are odd.

The programs for A246885, there is no canonical definition to state claims against.
-/

/-! ## A246885.P4801080985465111799

`eq[1, gcd(2, A323633(n))]`
-/

namespace A246885.P4801080985465111799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A323633 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246885.P4801080985465111799

/-! ## A246885.P3888944455086679259

`eq[1, A023358(n)%2]`
-/

namespace A246885.P3888944455086679259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023358 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246885.P3888944455086679259

/-! ## A246885.P9390118658468182411

`eq[1, A191329(A023358(n))]`
-/

namespace A246885.P9390118658468182411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A023358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246885.P9390118658468182411

/-! ## A246885.P11281941019620606333

`eq[A023358(n), A093178(A348524(n))]`
-/

namespace A246885.P11281941019620606333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A348524 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246885.P11281941019620606333

/-! ## A246885.P8888205139228335431

`eq[1, A134451(A339421(n)+A339420(n))]`
-/

namespace A246885.P8888205139228335431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A339421 n + A339420 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246885.P8888205139228335431

/-!
# A246886: Number of length n+4 0..2 arrays with some pair in every consecutive five terms totalling exactly 2.

The programs for A246886, there is no canonical definition to state claims against.
-/

/-! ## A246886.P11074235261302273198

`A246892(∑[n+2])`
-/

namespace A246886.P11074235261302273198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A246886.P11074235261302273198

/-! ## A246886.P6938864865417078554

`record[A246892(A000096(A175892(n)))]`
-/

namespace A246886.P6938864865417078554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000096 (A175892 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246886.P6938864865417078554

/-! ## A246886.P2350634758577402048

`record[A246892(A000096(A003963(n+1)))]`
-/

namespace A246886.P2350634758577402048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246886.P2350634758577402048

/-! ## A246886.P14062849709196596718

`record[A246892(A000096(A144328(n+1)))]`
-/

namespace A246886.P14062849709196596718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000096 (A144328 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246886.P14062849709196596718

/-! ## A246886.P11751412662849166950

`record[A246892(A000096(A336159(n+1)))]`
-/

namespace A246886.P11751412662849166950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000096 (A336159 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246886.P11751412662849166950

/-!
# A246887: Number of length n+4 0..3 arrays with some pair in every consecutive five terms totalling exactly 3.

The programs for A246887, the canonical program `A246887.P10401687073052114988` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A246887 has offset 1).

The definition of A246887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A246887.P10401687073052114988

`A135492(n+5)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A246887

/-- `A135492(n+5)²` -/
def P10401687073052114988.Spec : Prop :=
  ∀ n, P10401687073052114988.a n = A246887 (n + 1)

theorem P10401687073052114988.correct : P10401687073052114988.Spec := by
  intro n
  simp only [A246887, Nat.add_sub_cancel]

end A246887

/-! ## A246887.P5177317111189981242

`Δ[2*A018922(n+1)]²`
-/

namespace A246887.P5177317111189981242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A246887.P5177317111189981242

namespace A246887

/-- `Δ[2*A018922(n+1)]²` -/
def P5177317111189981242.Spec : Prop :=
  ∀ n, P5177317111189981242.a n = A246887 (n + 1)

end A246887

/-! ## A246887.P10456483874510856357

`A249001(∑[n+1])²`
-/

namespace A246887.P10456483874510856357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246887.P10456483874510856357

namespace A246887

/-- `A249001(∑[n+1])²` -/
def P10456483874510856357.Spec : Prop :=
  ∀ n, P10456483874510856357.a n = A246887 (n + 1)

end A246887

/-! ## A246887.P6872768469390609668

`A249466(∑[n+1])²`
-/

namespace A246887.P6872768469390609668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249466 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246887.P6872768469390609668

namespace A246887

/-- `A249466(∑[n+1])²` -/
def P6872768469390609668.Spec : Prop :=
  ∀ n, P6872768469390609668.a n = A246887 (n + 1)

end A246887

/-! ## A246887.P1313585774482527739

`A249001(A008805(2*n))*A249001(A008805(2*n))`
-/

namespace A246887.P1313585774482527739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249001 (A008805 (2 * n)).toNat * A249001 (A008805 (2 * n)).toNat

end

end A246887.P1313585774482527739

namespace A246887

/-- `A249001(A008805(2*n))*A249001(A008805(2*n))` -/
def P1313585774482527739.Spec : Prop :=
  ∀ n, P1313585774482527739.a n = A246887 (n + 1)

end A246887

/-! ## A246887.P12452717741273323508

`A246892(∑[n+1])²`
-/

namespace A246887.P12452717741273323508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A246887.P12452717741273323508

namespace A246887

/-- `A246892(∑[n+1])²` -/
def P12452717741273323508.Spec : Prop :=
  ∀ n, P12452717741273323508.a n = A246887 (n + 1)

end A246887

/-! ## A246887.P4053475058140683180

`record[gcd(A092921(n), A246892(n+1))²]`
-/

namespace A246887.P4053475058140683180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A246892 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246887.P4053475058140683180

namespace A246887

/-- `record[gcd(A092921(n), A246892(n+1))²]` -/
def P4053475058140683180.Spec : Prop :=
  ∀ n, (P4053475058140683180.a n : ℤ) = A246887 (n + 1)

end A246887

/-! ## A246887.P5080902228352567569

`A246892(∑[n+3]+1)`
-/

namespace A246887.P5080902228352567569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246887.P5080902228352567569

namespace A246887

/-- `A246892(∑[n+3]+1)` -/
def P5080902228352567569.Spec : Prop :=
  ∀ n, P5080902228352567569.a n = A246887 (n + 1)

end A246887

/-!
# A246888: Number of length n+4 0..4 arrays with some pair in every consecutive five terms totalling exactly 4.

The programs for A246888, there is no canonical definition to state claims against.
-/

/-! ## A246888.P9898307358361360567

`A246892(A027379(n+2))`
-/

namespace A246888.P9898307358361360567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A027379 (n + 2)).toNat

end

end A246888.P9898307358361360567

/-! ## A246888.P3050015070448799502

`A246892(A055998(n+2))`
-/

namespace A246888.P3050015070448799502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A055998 (n + 2)).toNat

end

end A246888.P3050015070448799502

/-! ## A246888.P7770882057909508337

`A246892(A155212(n)+5)`
-/

namespace A246888.P7770882057909508337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A155212 n + 5).toNat

end

end A246888.P7770882057909508337

/-! ## A246888.P17654189891365201003

`A246892(A056000(n)+7)`
-/

namespace A246888.P17654189891365201003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A056000 n + 7).toNat

end

end A246888.P17654189891365201003

/-! ## A246888.P1449492039872683632

`A246892(Δ[A034857(n+1)])`
-/

namespace A246888.P1449492039872683632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (f1 (n + 1) - f1 n).toNat

end

end A246888.P1449492039872683632

/-! ## A246888.P5307770654925419077

`A246892(A052905(n+1)+2)`
-/

namespace A246888.P5307770654925419077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A052905 (n + 1) + 2).toNat

end

end A246888.P5307770654925419077

/-! ## A246888.P17911678827483710312

`A246892(A167614(n+1)+A005408(n))`
-/

namespace A246888.P17911678827483710312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167614 (n + 1) + A005408 n).toNat

end

end A246888.P17911678827483710312

/-!
# A246889: Number of length n+4 0..5 arrays with some pair in every consecutive five terms totalling exactly 5.

The programs for A246889, there is no canonical definition to state claims against.
-/

/-! ## A246889.P15091485316070878536

`A246892(A046691(n+3))`
-/

namespace A246889.P15091485316070878536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A046691 (n + 3)).toNat

end

end A246889.P15091485316070878536

/-! ## A246889.P18078399957869968815

`A246892(Δ[A023545(n+1)])`
-/

namespace A246889.P18078399957869968815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (f1 (n + 1) - f1 n).toNat

end

end A246889.P18078399957869968815

/-! ## A246889.P17837052779090154949

`A246892(A052905(n+2)+1)`
-/

namespace A246889.P17837052779090154949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A052905 (n + 2) + 1).toNat

end

end A246889.P17837052779090154949

/-! ## A246889.P16417302653340724132

`A246892(A027379(n+3)-1)`
-/

namespace A246889.P16417302653340724132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A027379 (n + 3) - 1).toNat

end

end A246889.P16417302653340724132

/-! ## A246889.P18126886707543967135

`A246892(Δ[A034857(n+2)]-1)`
-/

namespace A246889.P18126886707543967135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (f1 (n + 1) - f1 n - 1).toNat

end

end A246889.P18126886707543967135

/-! ## A246889.P18378222153170456509

`A246892(A167614(n+2)+A004277(n+1))`
-/

namespace A246889.P18378222153170456509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167614 (n + 2) + A004277 (n + 1)).toNat

end

end A246889.P18378222153170456509

/-! ## A246889.P16077609470683938437

`A246892(A004273(n+3)+A000217(n+3))`
-/

namespace A246889.P16077609470683938437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A004273 (n + 3) + A000217 (n + 3)).toNat

end

end A246889.P16077609470683938437

/-!
# A246890: Number of length n+4 0..6 arrays with some pair in every consecutive five terms totalling exactly 6.

The programs for A246890, there is no canonical definition to state claims against.
-/

/-! ## A246890.P16124459791942372340

`A246892(A052905(n+3))`
-/

namespace A246890.P16124459791942372340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A052905 (n + 3)).toNat

end

end A246890.P16124459791942372340

/-! ## A246890.P17197057985631997472

`A246892(A027379(n+4)-2)`
-/

namespace A246890.P17197057985631997472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A027379 (n + 4) - 2).toNat

end

end A246890.P17197057985631997472

/-! ## A246890.P17715237290875350202

`A246892(A000124(n+6)-6)`
-/

namespace A246890.P17715237290875350202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000124 (n + 6) - 6).toNat

end

end A246890.P17715237290875350202

/-! ## A246890.P141089800377159754

`A246892(A167499(n+5)-10)`
-/

namespace A246890.P141089800377159754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167499 (n + 5) - 10).toNat

end

end A246890.P141089800377159754

/-! ## A246890.P16331157811150972609

`A246892(Δ[Δ[A006504(n+1)]])`
-/

namespace A246890.P16331157811150972609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (f1 (n + 1) - f1 n).toNat

end

end A246890.P16331157811150972609

/-! ## A246890.P17228739373048018261

`A246892(Δ[A023545(n+2)]-1)`
-/

namespace A246890.P17228739373048018261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (f1 (n + 1) - f1 n - 1).toNat

end

end A246890.P17228739373048018261

/-!
# A246891: Number of length n+4 0..7 arrays with some pair in every consecutive five terms totalling exactly 7.

The programs for A246891, there is no canonical definition to state claims against.
-/

/-! ## A246891.P1883805493810381512

`A246892(C(n+7, 2)+n+1)`
-/

namespace A246891.P1883805493810381512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (Nat.choose (n + 7) 2 + (n + 1))

end

end A246891.P1883805493810381512

/-! ## A246891.P2572000921722995475

`A246892(A055999(n+4))`
-/

namespace A246891.P2572000921722995475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A055999 (n + 4)).toNat

end

end A246891.P2572000921722995475

/-! ## A246891.P8164481869308037568

`A246892(A052905(n+4)-1)`
-/

namespace A246891.P8164481869308037568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A052905 (n + 4) - 1).toNat

end

end A246891.P8164481869308037568

/-! ## A246891.P18152813160227553438

`A246892(A167614(n+4)+A004277(n+2))`
-/

namespace A246891.P18152813160227553438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167614 (n + 4) + A004277 (n + 2)).toNat

end

end A246891.P18152813160227553438

/-! ## A246891.P5076026713718866670

`A246892(A004273(n+4)+A000217(n+5))`
-/

namespace A246891.P5076026713718866670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A004273 (n + 4) + A000217 (n + 5)).toNat

end

end A246891.P5076026713718866670

/-!
# A246893: Number of length 1+4 0..n arrays with some pair in every consecutive five terms totalling exactly n.

The programs for A246893, there is no canonical definition to state claims against.
-/

/-! ## A246893.P17325578567750965572

`A000584(n+2)-A246738(n+1)`
-/

namespace A246893.P17325578567750965572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (n + 2) - A246738 (n + 1)

end

end A246893.P17325578567750965572

/-! ## A246893.P11745650914192829327

`A246892(∑[n]+1)`
-/

namespace A246893.P11745650914192829327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A246893.P11745650914192829327

/-! ## A246893.P1729423538525654721

`record[A010054(n)*A246892(n+1)]`
-/

namespace A246893.P1729423538525654721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A246892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246893.P1729423538525654721

/-! ## A246893.P14176365189544184660

`record[A246892(n+1)/A293985(n)]`
-/

namespace A246893.P14176365189544184660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246892 (n + 1) : ℚ) / (A293985 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246893.P14176365189544184660

/-! ## A246893.P6394984517683703504

`record[gcd(A002262(n), A246892(n+1))]`
-/

namespace A246893.P6394984517683703504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A246892 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A246893.P6394984517683703504

/-! ## A246893.P7145322701810700494

`A133707(n+1)*A246892(A000124(n))`
-/

namespace A246893.P7145322701810700494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A246892 (A000124 n).toNat

end

end A246893.P7145322701810700494

/-! ## A246893.P6817449867616024798

`A246892(A000124(n))%A126434(n+1)`
-/

namespace A246893.P6817449867616024798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246892 (A000124 n).toNat) (A126434 (n + 1))

end

end A246893.P6817449867616024798

/-!
# A246894: Number of length 2+4 0..n arrays with some pair in every consecutive five terms totalling exactly n.

The programs for A246894, there is no canonical definition to state claims against.
-/

/-! ## A246894.P7974505566606823851

`A246892(∑[n+1]+2)`
-/

namespace A246894.P7974505566606823851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A246894.P7974505566606823851

/-! ## A246894.P5975319521819202856

`or(n%2, A246892(A000096(n)+3))`
-/

namespace A246894.P5975319521819202856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A246892 (A000096 n + 3).toNat)

end

end A246894.P5975319521819202856

/-! ## A246894.P3159900977762377844

`abs(A008836(n+1)*A246892(A000096(n)+3))`
-/

namespace A246894.P3159900977762377844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008836 (n + 1) * A246892 (A000096 n + 3).toNat|

end

end A246894.P3159900977762377844

/-! ## A246894.P10687605700543026461

`A007318(and(1, -n))*A246892(A000096(n)+3)`
-/

namespace A246894.P10687605700543026461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A246892 (A000096 n + 3).toNat

end

end A246894.P10687605700543026461

/-! ## A246894.P13486926364915224775

`A007318(val(n²+2, 2))*A246892(A000096(n)+3)`
-/

namespace A246894.P13486926364915224775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n ^ 2 + 2) 2) * A246892 (A000096 n + 3).toNat

end

end A246894.P13486926364915224775

/-! ## A246894.P6417870128743821117

`(A020639(2*(n+1))²-3)*A246892(A000096(n)+3)`
-/

namespace A246894.P6417870128743821117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 1)) ^ 2 - 3) * A246892 (A000096 n + 3).toNat

end

end A246894.P6417870128743821117

/-! ## A246894.P1463613964972037492

`A014963(A000217(n+6))*A246892(A000096(n)+3)`
-/

namespace A246894.P1463613964972037492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 6)).toNat * A246892 (A000096 n + 3).toNat

end

end A246894.P1463613964972037492

/-! ## A246894.P966135934568465360

`A007318(A000217(n+7))*A246892(A000096(n)+3)`
-/

namespace A246894.P966135934568465360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 7)).toNat * A246892 (A000096 n + 3).toNat

end

end A246894.P966135934568465360

/-!
# A246895: Number of length 3+4 0..n arrays with some pair in every consecutive five terms totalling exactly n.

The programs for A246895, there is no canonical definition to state claims against.
-/

/-! ## A246895.P1377175411636130150

`A246892(∑[n+2]+4)`
-/

namespace A246895.P1377175411636130150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A246895.P1377175411636130150

/-! ## A246895.P7349588237783724734

`lcm(A033999(n), A246892(A167614(n+1)))`
-/

namespace A246895.P7349588237783724734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A246892 (A167614 (n + 1)).toNat)

end

end A246895.P7349588237783724734

/-! ## A246895.P2748590576119230473

`or(A000035(n), A246892(A167614(n+1)))`
-/

namespace A246895.P2748590576119230473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A246892 (A167614 (n + 1)).toNat)

end

end A246895.P2748590576119230473

/-! ## A246895.P6527611805367973033

`A246892(A167614(n+1))%A246897(n+1)`
-/

namespace A246895.P6527611805367973033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246892 (A167614 (n + 1)).toNat) (A246897 (n + 1))

end

end A246895.P6527611805367973033

/-! ## A246895.P8969013838981600967

`or(A246892(A167614(n+1)), A294936(n+1))`
-/

namespace A246895.P8969013838981600967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A246892 (A167614 (n + 1)).toNat) (A294936 (n + 1))

end

end A246895.P8969013838981600967

/-!
# A246896: Number of length 4+4 0..n arrays with some pair in every consecutive five terms totalling exactly n.

The programs for A246896, there is no canonical definition to state claims against.
-/

/-! ## A246896.P13853185670744728131

`A246892(A052905(n)+9)`
-/

namespace A246896.P13853185670744728131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A052905 n + 9).toNat

end

end A246896.P13853185670744728131

/-! ## A246896.P15392581866140975652

`A246892(A055999(n)+10)`
-/

namespace A246896.P15392581866140975652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A055999 n + 10).toNat

end

end A246896.P15392581866140975652

/-! ## A246896.P160061088406708819

`A246892(A167614(n+2)+1)`
-/

namespace A246896.P160061088406708819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167614 (n + 2) + 1).toNat

end

end A246896.P160061088406708819

/-! ## A246896.P314113284941418912

`A246892(A167499(n+2)-1)`
-/

namespace A246896.P314113284941418912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167499 (n + 2) - 1).toNat

end

end A246896.P314113284941418912

/-! ## A246896.P13888978422351311996

`A246892(A166136(n+2)-2)`
-/

namespace A246896.P13888978422351311996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A166136 (n + 2) - 2).toNat

end

end A246896.P13888978422351311996

/-! ## A246896.P14997496936493595352

`A246892(A077169(n+4)-1)`
-/

namespace A246896.P14997496936493595352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A077169 (n + 4) - 1).toNat

end

end A246896.P14997496936493595352

/-! ## A246896.P7376215188136908133

`A246892(A167487(n+2)-3)`
-/

namespace A246896.P7376215188136908133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167487 (n + 2) - 3).toNat

end

end A246896.P7376215188136908133

/-! ## A246896.P4498181535929555790

`A246892(A000217(n+3)+4)`
-/

namespace A246896.P4498181535929555790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000217 (n + 3) + 4).toNat

end

end A246896.P4498181535929555790

/-! ## A246896.P11271034796765644666

`A246892(A166136(n+1)+1+n)`
-/

namespace A246896.P11271034796765644666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A246896.P11271034796765644666

/-! ## A246896.P17132900792064443602

`A246892(Δ[A023545(n+1)-n²])`
-/

namespace A246896.P17132900792064443602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (f1 (n + 1) - f1 n).toNat

end

end A246896.P17132900792064443602

/-!
# A246897: Number of length 5+4 0..n arrays with some pair in every consecutive five terms totalling exactly n.

The programs for A246897, there is no canonical definition to state claims against.
-/

/-! ## A246897.P11641989770075396744

`A246892(A167499(n+3))`
-/

namespace A246897.P11641989770075396744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167499 (n + 3)).toNat

end

end A246897.P11641989770075396744

/-! ## A246897.P2950197895780056332

`A246892(A056000(n)+15)`
-/

namespace A246897.P2950197895780056332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A056000 n + 15).toNat

end

end A246897.P2950197895780056332

/-! ## A246897.P533343966833610093

`A246892(A167614(n+3)+2)`
-/

namespace A246897.P533343966833610093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167614 (n + 3) + 2).toNat

end

end A246897.P533343966833610093

/-! ## A246897.P1277058374522318162

`A246892(A000217(n+4)+5)`
-/

namespace A246897.P1277058374522318162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000217 (n + 4) + 5).toNat

end

end A246897.P1277058374522318162

/-! ## A246897.P16337648947804704730

`A246892(A038722(Δ[A023545(n+1)]))`
-/

namespace A246897.P16337648947804704730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A246897.P16337648947804704730

/-!
# A246898: Number of length 6+4 0..n arrays with some pair in every consecutive five terms totalling exactly n.

The programs for A246898, there is no canonical definition to state claims against.
-/

/-! ## A246898.P13320387429325896769

`A246892(A166136(n+4))`
-/

namespace A246898.P13320387429325896769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A166136 (n + 4)).toNat

end

end A246898.P13320387429325896769

/-! ## A246898.P770663513292491145

`A246892(A167499(n+4)+1)`
-/

namespace A246898.P770663513292491145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167499 (n + 4) + 1).toNat

end

end A246898.P770663513292491145

/-! ## A246898.P9209998909722872108

`A246892(A077169(n+6)+1)`
-/

namespace A246898.P9209998909722872108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A077169 (n + 6) + 1).toNat

end

end A246898.P9209998909722872108

/-! ## A246898.P10701116165203591834

`A246892(A167614(n+4)+3)`
-/

namespace A246898.P10701116165203591834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167614 (n + 4) + 3).toNat

end

end A246898.P10701116165203591834

/-! ## A246898.P4529616337582565930

`A246892(A000217(n+5)+6)`
-/

namespace A246898.P4529616337582565930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000217 (n + 5) + 6).toNat

end

end A246898.P4529616337582565930

/-! ## A246898.P11145715228999416690

`A246892(Δ[A023545(n+1)]+10)`
-/

namespace A246898.P11145715228999416690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (f1 (n + 1) - f1 n + 10).toNat

end

end A246898.P11145715228999416690

/-!
# A246899: Number of length 7+4 0..n arrays with some pair in every consecutive five terms totalling exactly n.

The programs for A246899, there is no canonical definition to state claims against.
-/

/-! ## A246899.P13444027226143811774

`A246892(A167487(n+5))`
-/

namespace A246899.P13444027226143811774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167487 (n + 5)).toNat

end

end A246899.P13444027226143811774

/-! ## A246899.P481113818815426485

`A246892(A167499(n+5)+2)`
-/

namespace A246899.P481113818815426485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A167499 (n + 5) + 2).toNat

end

end A246899.P481113818815426485

/-! ## A246899.P1433155114953814367

`A246892(A000124(n+6)+6)`
-/

namespace A246899.P1433155114953814367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000124 (n + 6) + 6).toNat

end

end A246899.P1433155114953814367

/-! ## A246899.P5478384866993978901

`A246892(A000217(n+6)+7)`
-/

namespace A246899.P5478384866993978901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A000217 (n + 6) + 7).toNat

end

end A246899.P5478384866993978901

/-! ## A246899.P11389660189028129067

`A246892(A034856(n+7)-A004277(n+3))`
-/

namespace A246899.P11389660189028129067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246892 (A034856 (n + 7) - A004277 (n + 3)).toNat

end

end A246899.P11389660189028129067

