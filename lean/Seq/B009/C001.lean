import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C029
import Seq.B001.C000
import Seq.B002.C000
import Seq.B002.C006
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A395960.P11498477628546384965

`A016813(n)-A395959(n+1)`
-/

namespace A395960.P11498477628546384965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A395959 (n + 1)

end

end A395960.P11498477628546384965

noncomputable section

/-- A395960: Numbers k such that A395958(k) = 1.

Offset 1, canonical program `A395960.P11498477628546384965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395960 (n : ℕ) : ℤ :=
  A395960.P11498477628546384965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395962.P13989916355927260178

`xor(A395959(n+1), A395961(n))`
-/

namespace A395962.P13989916355927260178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A395959 (n + 1)) (A395961 n)

end

end A395962.P13989916355927260178

noncomputable section

/-- A395962: Numbers k such that A395961(k) = 0.

Offset 1, canonical program `A395962.P13989916355927260178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395962 (n : ℕ) : ℤ :=
  A395962.P13989916355927260178.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392109.P12073788639795556872

`∑{p}[A249740(n+1), #]`
-/

namespace A392109.P12073788639795556872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P12073788639795556872

noncomputable section

/-- A392109: a(n) = largest prime with exponent > 1 in the prime factorization of n, or 0 if no such prime exists.

Offset 1, canonical program `A392109.P12073788639795556872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392109 (n : ℕ) : ℤ :=
  (A392109.P12073788639795556872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392109.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392871.P11237529172868183968

`eq[1, A392865(n+1)]+1`
-/

namespace A392871.P11237529172868183968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392871.P11237529172868183968

noncomputable section

/-- A392871: Numbers k such that k == 1 mod A117366(k), where A117366(n) gives the smallest prime greater than the largest prime dividing n.

Offset 1, canonical program `A392871.P11237529172868183968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A392871 (n : ℕ) : ℤ :=
  (A392871.P11237529172868183968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A392871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395042.P12454795559973799850

`∏{d}[A086131(n+2), #]`
-/

namespace A395042.P12454795559973799850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086131 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A395042.P12454795559973799850

noncomputable section

/-- A395042: Greatest prime dividing arithmetic derivative of n; and for primes p, a(p)=1.

Offset 2, canonical program `A395042.P12454795559973799850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395042 (n : ℕ) : ℤ :=
  (A395042.P12454795559973799850.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392874.P4881717719182176863

`A392865(A005940(1+n))`
-/

namespace A392874.P4881717719182176863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (A005940 (1 + n)).toNat

end

end A392874.P4881717719182176863

noncomputable section

/-- A392874: a(n) = A005940(1+n) mod A117366(A005940(1+n)), where A117366 gives the smallest prime greater than the largest prime dividing n, and A005940 is Doudna-sequence.

Offset 0, canonical program `A392874.P4881717719182176863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A392865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392874 (n : ℕ) : ℤ :=
  A392874.P4881717719182176863.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A392865, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392874.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393564.P18420932766056836635

`A273190(n)-A025435(n)`
-/

namespace A393564.P18420932766056836635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 n - A025435 n

end

end A393564.P18420932766056836635

noncomputable section

/-- A393564: a(n) is the number of unit squares in the square lattice, divided by 8, that have 2 vertices strictly inside and 2 vertices strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393564.P18420932766056836635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393564 (n : ℕ) : ℤ :=
  A393564.P18420932766056836635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393564.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A386589.P14364682863583384821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589 (n : ℕ) : ℤ :=
  A386589.P14364682863583384821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

Offset 1, canonical program `A386591.P14499915022508730926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A351112, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386591 (n : ℕ) : ℤ :=
  A386591.P14499915022508730926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A351112, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
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

