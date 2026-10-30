import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C012
import Seq.B000.C038
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A045971.P2138342967968067509

`A045965(A007947(n+1))*A045967(n+1)`
-/

namespace A045971.P2138342967968067509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A007947 (n + 1)).toNat * A045967 (n + 1)

end

end A045971.P2138342967968067509

noncomputable section

/-- A045971: a(1)=8; if n = Product p_i^e_i, n > 1, then a(n) = Product p_{i+1}^{e_i+2}.

Offset 1, canonical program `A045971.P2138342967968067509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045971 (n : ℕ) : ℤ :=
  A045971.P2138342967968067509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337337.P7440096239031397272

`A337335((n+1)²)`
-/

namespace A337337.P7440096239031397272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337335 ((n + 1) ^ 2)

end

end A337337.P7440096239031397272

noncomputable section

/-- A337337: a(n) = gcd(1+sigma(s), (s+1)/2), where s is the square of n once prime-shifted (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337337.P7440096239031397272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337 (n : ℕ) : ℤ :=
  A337337.P7440096239031397272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337335, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337338.P8319227600971306024

`A337194(A003961(n+1)²)/A337337(n+1)`
-/

namespace A337338.P8319227600971306024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337194 (A003961 (n + 1) ^ 2).toNat : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337338.P8319227600971306024

noncomputable section

/-- A337338: Numerator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337338.P8319227600971306024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337338.P8319227600971306024.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337339.P4042521456947446519

`A337336(n+1)/A337337(n+1)`
-/

namespace A337339.P4042521456947446519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337336 (n + 1) : ℚ) / (A337337 (n + 1) : ℚ)

end

end A337339.P4042521456947446519

noncomputable section

/-- A337339: Denominator of (1+sigma(s)) / ((s+1)/2), where s is the square of n prime-shifted once (s = A003961(n)^2 = A003961(n^2)).

Offset 1, canonical program `A337339.P4042521456947446519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337339.P4042521456947446519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337336, A337337, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337340.P276399523375729777

`(A337339(n+1)-A003961(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337340.P276399523375729777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337339 (n + 1) - A003961 (n + 1) : ℚ) / 2

end

end A337340.P276399523375729777

noncomputable section

/-- A337340: a(n) = (A337339(n)-A003961(n)) / 2.

Offset 1, canonical program `A337340.P276399523375729777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A337340.P276399523375729777.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337339, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337341.P5889933687803878944

`A337339(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337341.P5889933687803878944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337339 (n + 1) - (n + 1 : ℤ)

end

end A337341.P5889933687803878944

noncomputable section

/-- A337341: a(n) = A337339(n) - n.

Offset 1, canonical program `A337341.P5889933687803878944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341 (n : ℕ) : ℤ :=
  A337341.P5889933687803878944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A337339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A337341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337380.P16910156097547900408

`1-char[A337379(n+1)-1]`
-/

namespace A337380.P16910156097547900408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337379 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A337380.P16910156097547900408

noncomputable section

/-- A337380: a(n) = 1 if A003961(n) > 2*sigma(n), 0 otherwise.

Offset 1, canonical program `A337380.P16910156097547900408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337380 (n : ℕ) : ℤ :=
  A337380.P16910156097547900408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337468.P6808977206975830363

`A080224(A337386(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A337468.P6808977206975830363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (A337386 (n + 1)).toNat

end

end A337468.P6808977206975830363

noncomputable section

/-- A337468: a(n) = A080224(A337386(n)).

Offset 1, canonical program `A337468.P6808977206975830363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337468 (n : ℕ) : ℤ :=
  A337468.P6808977206975830363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337386, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A340076.P9543000628144570733

`eq[1, A340075(n+1)]+1`
-/

namespace A340076.P9543000628144570733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340075 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340076.P9543000628144570733

noncomputable section

/-- A340076: Positions of ones in A340075.

Offset 1, canonical program `A340076.P9543000628144570733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A340076 (n : ℕ) : ℤ :=
  (A340076.P9543000628144570733.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. -/
def A340076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341614.P8767637196583140370

`lt[0, A341612(n+1)]+1`
-/

namespace A341614.P8767637196583140370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341614.P8767637196583140370

noncomputable section

/-- A341614: Numbers k such that sigma(k) <= 2k < A003961(k).

Offset 1, canonical program `A341614.P8767637196583140370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614 (n : ℕ) : ℤ :=
  (A341614.P8767637196583140370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341615.P5668791556833203135

`lt[0, A341613(n+1)]+1`
-/

namespace A341615.P5668791556833203135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341615.P5668791556833203135

noncomputable section

/-- A341615: Numbers k for which sigma(k) < 2k < A003961(k).

Offset 1, canonical program `A341615.P5668791556833203135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615 (n : ℕ) : ℤ :=
  (A341615.P5668791556833203135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A347239.P8303490879322250829`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239 (n : ℕ) : ℤ :=
  A347239.P8303490879322250829.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347236, A347238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A347239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348738.P16981301963998914675

`lt[0, A348736(n+1)]+1`
-/

namespace A348738.P16981301963998914675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348738.P16981301963998914675

noncomputable section

/-- A348738: Numbers k for which A326042(k) < k, where A326042(n) = A064989(sigma(A003961(n))).

Offset 1, canonical program `A348738.P16981301963998914675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738 (n : ℕ) : ℤ :=
  (A348738.P16981301963998914675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348941.P16476962796183016569

`(n+1)/A348940(n+1)`
-/

namespace A348941.P16476962796183016569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348941.P16476962796183016569

noncomputable section

/-- A348941: a(n) = n / gcd(n, A326042(n)).

Offset 1, canonical program `A348941.P16476962796183016569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348941.P16476962796183016569.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348940, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A348941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348942.P4298548663594448972

`A326042(n+1)/A348940(n+1)`
-/

namespace A348942.P4298548663594448972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326042 (n + 1) : ℚ) / (A348940 (n + 1) : ℚ)

end

end A348942.P4298548663594448972

noncomputable section

/-- A348942: a(n) = A326042(n) / gcd(n, A326042(n)).

Offset 1, canonical program `A348942.P4298548663594448972`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348942.P4298548663594448972.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326042, A348940, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348942.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349383.P13419108071231034251

`A349381(n+1)+A349382(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349383.P13419108071231034251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349381 (n + 1) + A349382 (n + 1)

end

end A349383.P13419108071231034251

noncomputable section

/-- A349383: a(n) = A349381(n) + A349382(n).

Offset 1, canonical program `A349383.P13419108071231034251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349383 (n : ℕ) : ℤ :=
  A349383.P13419108071231034251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349381, A349382, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349383.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A349389.P17688454280443951021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389 (n : ℕ) : ℤ :=
  A349389.P17688454280443951021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A350072.P17523638723638629591`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350072 (n : ℕ) : ℤ :=
  A350072.P17523638723638629591.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349162, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A350072.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A351544.P15377189541473253501

`gcd(A045967(n+1)²², A000203(n+1))`
-/

namespace A351544.P15377189541473253501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A045967 (n + 1) ^ 2) ^ 2) (A000203 (n + 1))

end

end A351544.P15377189541473253501

noncomputable section

/-- A351544: a(n) is the largest unitary divisor of sigma(n) such that its every prime factor also divides A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p), and sigma is the sum of divisors function.

Offset 1, canonical program `A351544.P15377189541473253501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351544 (n : ℕ) : ℤ :=
  (A351544.P15377189541473253501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351544.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A353638.P14021207844737996786

`A000035(n+1)*A348737(A064989(n+1))`
-/

namespace A353638.P14021207844737996786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A348737 (A064989 (n + 1)).toNat

end

end A353638.P14021207844737996786

noncomputable section

/-- A353638: a(n) = 1 if n is odd and A064989(sigma(n)) < A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A353638.P14021207844737996786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638 (n : ℕ) : ℤ :=
  A353638.P14021207844737996786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353638.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A353666.P3692679567967800425

`gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353666.P3692679567967800425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351546 (n + 1))

end

end A353666.P3692679567967800425

noncomputable section

/-- A353666: a(n) = gcd(n, A351546(n)).

Offset 1, canonical program `A353666.P3692679567967800425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666 (n : ℕ) : ℤ :=
  (A353666.P3692679567967800425.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353667.P4254365963197736758

`(n+1)/A353666(n+1)`
-/

namespace A353667.P4254365963197736758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353667.P4254365963197736758

noncomputable section

/-- A353667: a(n) = n / gcd(n, A351546(n)).

Offset 1, canonical program `A353667.P4254365963197736758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353667.P4254365963197736758.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353668.P18386353074867683989

`A351546(n+1)/gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353668.P18386353074867683989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351546 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A351546 (n + 1)) : ℚ)

end

end A353668.P18386353074867683989

noncomputable section

/-- A353668: a(n) = A351546(n) / gcd(n, A351546(n)).

Offset 1, canonical program `A353668.P18386353074867683989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353668.P18386353074867683989.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A353668.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A355941.P5058088448507230669

`eq[1, A355940(n+1)]+1`
-/

namespace A355941.P5058088448507230669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355941.P5058088448507230669

noncomputable section

/-- A355941: Numbers k such that A003973(k) is a multiple of A000203(k).

Offset 1, canonical program `A355941.P5058088448507230669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941 (n : ℕ) : ℤ :=
  (A355941.P5058088448507230669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358762.P10521575438364069808

`lt[0, A358752(n+1)]+1`
-/

namespace A358762.P10521575438364069808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358762.P10521575438364069808

noncomputable section

/-- A358762: Numbers k for which A349905(k) == 2 (mod 4), where A349905(k) is the arithmetic derivative applied to the prime shifted k.

Offset 1, canonical program `A358762.P10521575438364069808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358762 (n : ℕ) : ℤ :=
  (A358762.P10521575438364069808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358763.P9425270982903074007

`lt[0, A358753(n+1)]+1`
-/

namespace A358763.P9425270982903074007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358763.P9425270982903074007

noncomputable section

/-- A358763: Numbers k for which bigomega(k) == 3 (mod 4).

Offset 1, canonical program `A358763.P9425270982903074007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358763 (n : ℕ) : ℤ :=
  (A358763.P9425270982903074007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358763.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372567.P13528077420289210032

`filter[A372566(n+1), A324908(#)]`
-/

namespace A372567.P13528077420289210032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A372567.P13528077420289210032

noncomputable section

/-- A372567: Odd numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372567.P13528077420289210032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567 (n : ℕ) : ℤ :=
  A372567.P13528077420289210032.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A372567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378229.P3491273019573870571

`∑{d}[n+1, A349388(#)*A378228((n+1)/#)]`
-/

namespace A378229.P3491273019573870571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349388 d * A378228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378229.P3491273019573870571

noncomputable section

/-- A378229: Dirichlet inverse of A341529, where A341529(n) = sigma(n) * A003961(n), and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378229.P3491273019573870571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229 (n : ℕ) : ℤ :=
  A378229.P3491273019573870571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378229.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A378607.P10144459662400142962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378607 (n : ℕ) : ℤ :=
  A378607.P10144459662400142962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349388, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378607.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378663.P6986709549582363223

`A378662(n+1)-A080225(n+1)`
-/

namespace A378663.P6986709549582363223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) - A080225 (n + 1)

end

end A378663.P6986709549582363223

noncomputable section

/-- A378663: Number of divisors d of n such that sigma(d) < 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378663.P6986709549582363223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663 (n : ℕ) : ℤ :=
  A378663.P6986709549582363223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379239.P5876762698172527924

`eq[1, A379238(n+1)]+1`
-/

namespace A379239.P5876762698172527924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379239.P5876762698172527924

noncomputable section

/-- A379239: Numbers k for which A003961(k)-sigma(k) is prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379239.P5876762698172527924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239 (n : ℕ) : ℤ :=
  (A379239.P5876762698172527924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379239.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379477.P18262352817358248504

`eq[1, A379476(n+1)]+1`
-/

namespace A379477.P18262352817358248504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379477.P18262352817358248504

noncomputable section

/-- A379477: Numbers k such that A003961(k)-2k and A003961(k)-sigma(k) have a common divisor > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379477.P18262352817358248504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477 (n : ℕ) : ℤ :=
  (A379477.P18262352817358248504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379478.P7624876134946239236

`A379476(n+1)-A379475(n+1)`
-/

namespace A379478.P7624876134946239236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1) - A379475 (n + 1)

end

end A379478.P7624876134946239236

noncomputable section

/-- A379478: a(n) = 1 if the greatest common divisor of n, sigma(n) and A003961(n) is 1 and gcd(A003961(n)-2n, A003961(n)-sigma(n)) > 1, otherwise 0.

Offset 1, canonical program `A379478.P7624876134946239236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478 (n : ℕ) : ℤ :=
  A379478.P7624876134946239236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379479.P310701363561203726

`eq[1, A379478(n+1)]+1`
-/

namespace A379479.P310701363561203726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379479.P310701363561203726

noncomputable section

/-- A379479: Numbers k such that the greatest common divisor of k, sigma(k) and A003961(k) is 1 and gcd(A003961(k)-2k, A003961(k)-sigma(k)) > 1.

Offset 1, canonical program `A379479.P310701363561203726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479 (n : ℕ) : ℤ :=
  (A379479.P310701363561203726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046312.P13847795307108156412

`filter[A358761(n+1), A373975(#)]`
-/

namespace A046312.P13847795307108156412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A046312.P13847795307108156412

noncomputable section

/-- A046312: Numbers that are divisible by exactly 9 primes with multiplicity.

Offset 1, canonical program `A046312.P13847795307108156412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A046312 (n : ℕ) : ℤ :=
  A046312.P13847795307108156412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A046312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046314.P14099619161695556308

`∑{e}[A001248(n+1), #*A046312(n+1)]`
-/

namespace A046314.P14099619161695556308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A046312 (n + 1)

end

end A046314.P14099619161695556308

noncomputable section

/-- A046314: Numbers that are divisible by exactly 10 primes with multiplicity.

Offset 1, canonical program `A046314.P14099619161695556308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A046314 (n : ℕ) : ℤ :=
  A046314.P14099619161695556308.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A046314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A050376.P11968746704421999495

`A268385(A268392(n+1))`
-/

namespace A050376.P11968746704421999495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268392 (n + 1)).toNat

end

end A050376.P11968746704421999495

noncomputable section

/-- A050376: "Fermi-Dirac primes": numbers of the form p^(2^k) where p is prime and k >= 0.

Offset 1, canonical program `A050376.P11968746704421999495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, A268392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050376 (n : ℕ) : ℤ :=
  A050376.P11968746704421999495.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268385, A268392, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A050376.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082522.P5892597509266673484

`A050376(n+1)²`
-/

namespace A082522.P5892597509266673484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) ^ 2

end

end A082522.P5892597509266673484

noncomputable section

/-- A082522: Numbers of the form p^(2^k) with p prime and k>0.

Offset 1, canonical program `A082522.P5892597509266673484`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522 (n : ℕ) : ℤ :=
  A082522.P5892597509266673484.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082522.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122943.P845399076993296391

`A171435(lcm(gcd(8, 1-n²), A046314(n+1)))`
-/

namespace A122943.P845399076993296391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (Int.lcm (Int.gcd 8 (1 - (n ^ 2 : ℤ)) : ℤ) (A046314 (n + 1)))

end

end A122943.P845399076993296391

noncomputable section

/-- A122943: Odd numbers n ordered by n/2^BigOmega(n), where BigOmega(n) is the number of prime divisors of n with repetition.

Offset 1, canonical program `A122943.P845399076993296391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A122943 (n : ℕ) : ℤ :=
  A122943.P845399076993296391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A122943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179668.P1060642308713975282

`∩[A030636(n+1), A046312(n+1)]`
-/

namespace A179668.P1060642308713975282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179668.P1060642308713975282

noncomputable section

/-- A179668: Products of the 8th power of a prime and a distinct prime (p^8*q).

Offset 1, canonical program `A179668.P1060642308713975282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A179668 (n : ℕ) : ℤ :=
  (A179668.P1060642308713975282.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A179668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179692.P12959351430232493172

`∩[A030638(n+1), A046314(n+1)]`
-/

namespace A179692.P12959351430232493172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179692.P12959351430232493172

noncomputable section

/-- A179692: Numbers of the form p^9*q where p and q are distinct primes.

Offset 1, canonical program `A179692.P12959351430232493172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A179692 (n : ℕ) : ℤ :=
  (A179692.P12959351430232493172.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A179692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A190469.P12605959260952500718

`A189975(n+1)²`
-/

namespace A190469.P12605959260952500718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189975 (n + 1) ^ 2

end

end A190469.P12605959260952500718

noncomputable section

/-- A190469: Numbers with prime factorization p^2*q^2*r^6 where p, q, and r are distinct primes.

Offset 1, canonical program `A190469.P12605959260952500718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190469 (n : ℕ) : ℤ :=
  A190469.P12605959260952500718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A190469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209617.P1536799303095268028

`filter[A209624(n+1), A379238(#)]`
-/

namespace A209617.P1536799303095268028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379238 (f1 j).toNat = 1) n)

end

end A209617.P1536799303095268028

noncomputable section

/-- A209617: Primes separated from their adjacent primes on both sides by a prime number of successive composites.

Offset 1, canonical program `A209617.P1536799303095268028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A209617 (n : ℕ) : ℤ :=
  A209617.P1536799303095268028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 706 terms. -/
def A209617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A209623.P6270556564097260261

`p?[A379239(n+1)]`
-/

namespace A209623.P6270556564097260261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209623.P6270556564097260261

noncomputable section

/-- A209623: Primes separated from their adjacent next primes by a prime number of successive composites.

Offset 1, canonical program `A209623.P6270556564097260261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623 (n : ℕ) : ℤ :=
  A209623.P6270556564097260261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. -/
def A209623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216887.P7016313047720049362

`eq[A003415(A050376(2*(n+2))), A003415(n)]`
-/

namespace A216887.P7016313047720049362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A050376 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216887.P7016313047720049362

noncomputable section

/-- A216887: Primes p such that x^67 = 2 has a solution mod p.

Offset 1, canonical program `A216887.P7016313047720049362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887 (n : ℕ) : ℤ :=
  (A216887.P7016313047720049362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A216887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240521.P8578861033948740818

`A050376(n+1)*A050376(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A240521.P8578861033948740818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 2)

end

end A240521.P8578861033948740818

noncomputable section

/-- A240521: a(n) = A050376(n)*A050376(n+1) where A050376(n) is the n-th number of the form p^(2^k) with p is prime and k >= 0.

Offset 1, canonical program `A240521.P8578861033948740818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240521 (n : ℕ) : ℤ :=
  A240521.P8578861033948740818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240521.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A240536.P362324169712596171

`A050376(n+1)*A050376(n+4)`
-/

namespace A240536.P362324169712596171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 4)

end

end A240536.P362324169712596171

noncomputable section

/-- A240536: S_9 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A240536.P362324169712596171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240536 (n : ℕ) : ℤ :=
  A240536.P362324169712596171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A240536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241024.P7090105526242822996

`A050376(n+1)*A050376(n+3)*A050376(n+4)`
-/

namespace A241024.P7090105526242822996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 3) * A050376 (n + 4)

end

end A241024.P7090105526242822996

noncomputable section

/-- A241024: S_11 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A241024.P7090105526242822996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241024 (n : ℕ) : ℤ :=
  A241024.P7090105526242822996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241025.P8181339160921596088

`A050376(n+1)*A050376(n+2)*A050376(n+4)`
-/

namespace A241025.P8181339160921596088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) * A050376 (n + 2) * A050376 (n + 4)

end

end A241025.P8181339160921596088

noncomputable section

/-- A241025: S_13 sequence in partition of integers > 1 described in A240521.

Offset 1, canonical program `A241025.P8181339160921596088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241025 (n : ℕ) : ℤ :=
  A241025.P8181339160921596088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050376, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241025.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A270428.P3446457217873923368

`eq[1, A355825(n+1)]+1`
-/

namespace A270428.P3446457217873923368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270428.P3446457217873923368

noncomputable section

/-- A270428: Exponentially odious numbers: 1 together with positive integers n such that all exponents in prime factorization of n are odious numbers (A000069).

Offset 1, canonical program `A270428.P3446457217873923368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428 (n : ℕ) : ℤ :=
  (A270428.P3446457217873923368.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270428.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A289618.P14878026680756617388`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289618 (n : ℕ) : ℤ :=
  A289618.P14878026680756617388.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289618.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A305439.P10396080351550377806`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439 (n : ℕ) : ℤ :=
  A305439.P10396080351550377806.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305439.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317932.P6928807366266153349

`2^A305439(n+1)`
-/

namespace A317932.P6928807366266153349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A305439 (n + 1) : ℤ)

end

end A317932.P6928807366266153349

noncomputable section

/-- A317932: Denominators of certain "Dirichlet Square Root" sequences: a(n) = A046644(n)/(2^A007949(n)).

Offset 1, canonical program `A317932.P6928807366266153349`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317932.P6928807366266153349.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317932.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A318440.P5886094417818087707`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440 (n : ℕ) : ℤ :=
  A318440.P5886094417818087707.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318440.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A318656.P13008805478963827236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656 (n : ℕ) : ℤ :=
  A318656.P13008805478963827236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323350.P17279732546742867967

`∪[A014613(n+1), A046312(n+1)]`
-/

namespace A323350.P17279732546742867967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323350.P17279732546742867967

noncomputable section

/-- A323350: Nonprime numbers > 1 whose number of prime factors counted with multiplicity is a perfect square.

Offset 1, canonical program `A323350.P17279732546742867967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323350 (n : ℕ) : ℤ :=
  (A323350.P17279732546742867967.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323350.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A329647.P10763472955733118982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329647 (n : ℕ) : ℤ :=
  A329647.P10763472955733118982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108951, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A329647.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336697.P535187774030085875

`A337337(A064216(1+n))`
-/

namespace A336697.P535187774030085875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337337 (A064216 (1 + n)).toNat

end

end A336697.P535187774030085875

noncomputable section

/-- A336697: a(n) = gcd((s+1)/2, 1+sigma(s)), where s is the n-th odd square, (2n-1)^2.

Offset 1, canonical program `A336697.P535187774030085875`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697 (n : ℕ) : ℤ :=
  A336697.P535187774030085875.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336854.P17456032559665882968

`A336841(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336854.P17456032559665882968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / 2

end

end A336854.P17456032559665882968

noncomputable section

/-- A336854: a(n) = A336841(n)/2.

Offset 1, canonical program `A336854.P17456032559665882968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336854 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336854.P17456032559665882968.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A336854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337345.P1594935461271935527

`A378662(n+1)+A080224(n+1)`
-/

namespace A337345.P1594935461271935527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) + A080224 (n + 1)

end

end A337345.P1594935461271935527

noncomputable section

/-- A337345: Number of divisors d of n for which A003961(d) > 2*d, where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A337345.P1594935461271935527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345 (n : ℕ) : ℤ :=
  A337345.P1594935461271935527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337346.P2412165337189814597

`A337345(n+1)-A252742(n+1)`
-/

namespace A337346.P2412165337189814597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A252742 (n + 1)

end

end A337346.P2412165337189814597

noncomputable section

/-- A337346: Number of proper divisors d of n for which A003961(d) > 2*d.

Offset 1, canonical program `A337346.P2412165337189814597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346 (n : ℕ) : ℤ :=
  A337346.P2412165337189814597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337372.P8743427394411133788

`eq[1, A337345(n+1)]+1`
-/

namespace A337372.P8743427394411133788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337372.P8743427394411133788

noncomputable section

/-- A337372: Primitively primeshift-abundant numbers: Numbers that are included in A246282 (k with A003961(k) > 2k), but none of whose proper divisors are.

Offset 1, canonical program `A337372.P8743427394411133788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372 (n : ℕ) : ℤ :=
  (A337372.P8743427394411133788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337378.P450215679707098559

`eq[1, A337380(1+n)]+1`
-/

namespace A337378.P450215679707098559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337380 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337378.P450215679707098559

noncomputable section

/-- A337378: Numbers k for which A003961(k) > 2*sigma(k).

Offset 1, canonical program `A337378.P450215679707098559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337378 (n : ℕ) : ℤ :=
  (A337378.P450215679707098559.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341609.P17617703652232455812

`A063524(A337345(n+1))`
-/

namespace A341609.P17617703652232455812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A337345 (n + 1)).toNat

end

end A341609.P17617703652232455812

noncomputable section

/-- A341609: Characteristic function of A337372: a(n) = 1 if A337345(n) = 1, otherwise 0.

Offset 1, canonical program `A341609.P17617703652232455812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609 (n : ℕ) : ℤ :=
  A341609.P17617703652232455812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341610.P5143080572522452525

`lt[1, A337345(n+1)]+1`
-/

namespace A341610.P5143080572522452525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341610.P5143080572522452525

noncomputable section

/-- A341610: Nonprimitive terms of A246282: numbers k that have more than one divisor d|k such that A003961(d) > 2*d.

Offset 1, canonical program `A341610.P5143080572522452525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610 (n : ℕ) : ℤ :=
  (A341610.P5143080572522452525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341611.P6987460228206011471

`lt[A341609(n+1), A341612(n+1)]+1`
-/

namespace A341611.P6987460228206011471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A341611.P6987460228206011471

noncomputable section

/-- A341611: Nonabundant numbers that are not primitive terms of A246282.

Offset 1, canonical program `A341611.P6987460228206011471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611 (n : ℕ) : ℤ :=
  (A341611.P6987460228206011471.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341611.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A342668.P4029046594404538909`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342668 (n : ℕ) : ℤ :=
  A342668.P4029046594404538909.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A341527, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A342668.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A346239.P8636144481431043210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346239 (n : ℕ) : ℤ :=
  A346239.P8636144481431043210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346240.P13978465434129994439

`A341512(n+1)-A346239(n+1)`
-/

namespace A346240.P13978465434129994439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341512 (n + 1) - A346239 (n + 1)

end

end A346240.P13978465434129994439

noncomputable section

/-- A346240: Difference between A341512 and its Möbius transform.

Offset 1, canonical program `A346240.P13978465434129994439`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240 (n : ℕ) : ℤ :=
  A346240.P13978465434129994439.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A346240.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348749.P12973560767162091666

`filter[2*n+1, A353639(#)]`
-/

namespace A348749.P12973560767162091666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353639 (f1 j) = 1) n)

end

end A348749.P12973560767162091666

noncomputable section

/-- A348749: Odd numbers k for which A064989(sigma(k)) > A064989(k), where A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

Offset 1, canonical program `A348749.P12973560767162091666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749 (n : ℕ) : ℤ :=
  (A348749.P12973560767162091666.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A348749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367696.P4831548240618922370

`∩[A270428(n+1)-1, A270428(n+1)]`
-/

namespace A367696.P4831548240618922370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367696.P4831548240618922370

noncomputable section

/-- A367696: Numbers k such that k and k+1 are both exponentially odious numbers (A270428).

Offset 1, canonical program `A367696.P4831548240618922370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. -/
def A367696 (n : ℕ) : ℤ :=
  (A367696.P4831548240618922370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8685 terms. -/
def A367696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367801.P16307762078431172026

`record[A350389(A270428(n+1))]`
-/

namespace A367801.P16307762078431172026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A270428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367801.P16307762078431172026

noncomputable section

/-- A367801: Numbers that are both exponentially odd (A268335) and exponentially odious (A270428).

Offset 1, canonical program `A367801.P16307762078431172026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A367801 (n : ℕ) : ℤ :=
  A367801.P16307762078431172026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6120 terms. -/
def A367801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367802.P2502221994018086087

`A270428(n+1)²`
-/

namespace A367802.P2502221994018086087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1) ^ 2

end

end A367802.P2502221994018086087

noncomputable section

/-- A367802: Exponentially odious squares.

Offset 1, canonical program `A367802.P2502221994018086087`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367802 (n : ℕ) : ℤ :=
  A367802.P2502221994018086087.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367802.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374074.P16054158154283132725

`filter[A122943(1+n), A066247(#)]`
-/

namespace A374074.P16054158154283132725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122943 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A374074.P16054158154283132725

noncomputable section

/-- A374074: Odd composite numbers k sorted by k/2^(bigomega(k) - 1).

Offset 1, canonical program `A374074.P16054158154283132725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A374074 (n : ℕ) : ℤ :=
  A374074.P16054158154283132725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A374074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378658.P13927000025378427146

`A337345(filter[A103288(n+1), A294930(#)])`
-/

namespace A378658.P13927000025378427146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)).toNat

end

end A378658.P13927000025378427146

noncomputable section

/-- A378658: a(n) = A337345(A091191(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A091191 lists the primitive abundant numbers.

Offset 1, canonical program `A378658.P13927000025378427146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658 (n : ℕ) : ℤ :=
  A378658.P13927000025378427146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387707.P1369852853517030567

`A337345(A023196(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387707.P1369852853517030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A023196 (n + 1)).toNat

end

end A387707.P1369852853517030567

noncomputable section

/-- A387707: a(n) = A337345(A023196(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

Offset 1, canonical program `A387707.P1369852853517030567`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707 (n : ℕ) : ℤ :=
  A387707.P1369852853517030567.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A387707.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A046644.P2594318262158557951

`A000079(A046645(n+1))`
-/

namespace A046644.P2594318262158557951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A046645 (n + 1)).toNat

end

end A046644.P2594318262158557951

noncomputable section

/-- A046644: From square root of Riemann zeta function: form Dirichlet series Sum b_n/n^s whose square is zeta function; sequence gives denominator of b_n.

Offset 1, canonical program `A046644.P2594318262158557951`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046644 (n : ℕ) : ℤ :=
  A046644.P2594318262158557951.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046644.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268386.P3095670448777005684

`A193231(A268387(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268386.P3095670448777005684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A268387 (n + 1)).toNat

end

end A268386.P3095670448777005684

noncomputable section

/-- A268386: a(n) = A193231(A268387(n)).

Offset 1, canonical program `A268386.P3095670448777005684`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268386 (n : ℕ) : ℤ :=
  A268386.P3095670448777005684.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193231, A268387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A268386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268390.P7742098974017023469

`eq[0, A268386(n+1)]+1`
-/

namespace A268390.P7742098974017023469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268390.P7742098974017023469

noncomputable section

/-- A268390: Products of an even number of distinct primes and the square of a number in the sequence (including 1).

Offset 1, canonical program `A268390.P7742098974017023469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5273 terms. -/
def A268390 (n : ℕ) : ℤ :=
  (A268390.P7742098974017023469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5273 terms. -/
def A268390.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A299152.P7362327138160881266

`ceil(A317932(A003961(n+1))/A167343(n+1))`
-/

namespace A299152.P7362327138160881266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317932 (A003961 (n + 1)).toNat : ℚ) / (A167343 (n + 1) : ℚ)⌉

end

end A299152.P7362327138160881266

noncomputable section

/-- A299152: Denominators of the positive solution to 2^(n-1) = Sum_{d|n} a(d) * a(n/d).

Offset 1, canonical program `A299152.P7362327138160881266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A299152 (n : ℕ) : ℤ :=
  A299152.P7362327138160881266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A299152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318450.P10889155975316061749

`A046644(A000265(n+1))`
-/

namespace A318450.P10889155975316061749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A000265 (n + 1)).toNat

end

end A318450.P10889155975316061749

noncomputable section

/-- A318450: Denominators of the sequence whose Dirichlet convolution with itself yields A001511, the 2-adic valuation of 2n.

Offset 1, canonical program `A318450.P10889155975316061749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450 (n : ℕ) : ℤ :=
  A318450.P10889155975316061749.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318451.P4161075931148706271

`val(A318450(n+1), 2)`
-/

namespace A318451.P4161075931148706271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318450 (n + 1)).toNat 2

end

end A318451.P4161075931148706271

noncomputable section

/-- A318451: The 2-adic valuation of A318450.

Offset 1, canonical program `A318451.P4161075931148706271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318451 (n : ℕ) : ℤ :=
  (A318451.P4161075931148706271.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318450, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318454.P17241560153575372680

`A046644(A006519(n+1))`
-/

namespace A318454.P17241560153575372680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (A006519 (n + 1)).toNat

end

end A318454.P17241560153575372680

noncomputable section

/-- A318454: Denominators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318454.P17241560153575372680`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454 (n : ℕ) : ℤ :=
  A318454.P17241560153575372680.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318455.P12423452328214462674

`val(A318454(n+1), 2)`
-/

namespace A318455.P12423452328214462674
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318454 (n + 1)).toNat 2

end

end A318455.P12423452328214462674

noncomputable section

/-- A318455: The 2-adic valuation of A318454(n).

Offset 1, canonical program `A318455.P12423452328214462674`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318455 (n : ℕ) : ℤ :=
  (A318455.P12423452328214462674.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318454, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318455.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318512.P17152244906020944566

`ceil(A299150(n+1)/A006519(n+1))`
-/

namespace A318512.P17152244906020944566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A299150 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A318512.P17152244906020944566

noncomputable section

/-- A318512: Denominators (in their lowest terms) of the sequence whose Dirichlet convolution with itself yields squares (A000290), or equally A064549.

Offset 1, canonical program `A318512.P17152244906020944566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512 (n : ℕ) : ℤ :=
  A318512.P17152244906020944566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318513.P1269522289693333221

`val(A318512(n+1), 2)`
-/

namespace A318513.P1269522289693333221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318512 (n + 1)).toNat 2

end

end A318513.P1269522289693333221

noncomputable section

/-- A318513: The 2-adic valuation of A318512.

Offset 1, canonical program `A318513.P1269522289693333221`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513 (n : ℕ) : ℤ :=
  (A318513.P1269522289693333221.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318513.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318649.P4247351377528363883

`(n+1)*A318512(n+1)*A299149(n+1)/A299150(n+1)`
-/

namespace A318649.P4247351377528363883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A318512 (n + 1) * A299149 (n + 1) : ℚ) / (A299150 (n + 1) : ℚ)

end

end A318649.P4247351377528363883

noncomputable section

/-- A318649: Numerators of the sequence whose Dirichlet convolution with itself yields squares, A000290.

Offset 1, canonical program `A318649.P4247351377528363883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318649.P4247351377528363883.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A299149, A299150, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318651.P14693122508814225811

`A046644(n+1)/A318512(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318651.P14693122508814225811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046644 (n + 1) : ℚ) / (A318512 (n + 1) : ℚ)

end

end A318651.P14693122508814225811

noncomputable section

/-- A318651: a(n) = A046644(n)/A318512(n).

Offset 1, canonical program `A318651.P14693122508814225811`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318651.P14693122508814225811.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046644, A318512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318651.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318652.P1218394255038798337

`A046645(n+1)-A318513(n+1)`
-/

namespace A318652.P1218394255038798337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1) - A318513 (n + 1)

end

end A318652.P1218394255038798337

noncomputable section

/-- A318652: The 2-adic valuation of A046644(n)/A318512(n) (A318651).

Offset 1, canonical program `A318652.P1218394255038798337`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652 (n : ℕ) : ℤ :=
  A318652.P1218394255038798337.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046645, A318513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A318652.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318655.P15870475144563533263

`val(A318649(n+1), 2)`
-/

namespace A318655.P15870475144563533263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318649 (n + 1)).toNat 2

end

end A318655.P15870475144563533263

noncomputable section

/-- A318655: The 2-adic valuation of A318649, the numerators of "Dirichlet Square Root" of squares.

Offset 1, canonical program `A318655.P15870475144563533263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655 (n : ℕ) : ℤ :=
  (A318655.P15870475144563533263.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318649, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318658.P5559540085635569704

`A046644(C(or(1, n), n))`
-/

namespace A318658.P5559540085635569704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (Nat.choose (Nat.lor 1 n) n)

end

end A318658.P5559540085635569704

noncomputable section

/-- A318658: Denominators of the sequence whose Dirichlet convolution with itself yields A087003, a(2n) = 0 and a(2n+1) = moebius(2n+1).

Offset 1, canonical program `A318658.P5559540085635569704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318658 (n : ℕ) : ℤ :=
  A318658.P5559540085635569704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318659.P7263319046953308454

`val(A318658(n+1), 2)`
-/

namespace A318659.P7263319046953308454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318658 (n + 1)).toNat 2

end

end A318659.P7263319046953308454

noncomputable section

/-- A318659: The 2-adic valuation of A318658.

Offset 1, canonical program `A318659.P7263319046953308454`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318659 (n : ℕ) : ℤ :=
  (A318659.P7263319046953308454.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318658, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336837.P12627212875986616411

`A336841(n+1)/A336856(n+1)`
-/

namespace A336837.P12627212875986616411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336841 (n + 1) : ℚ) / (A336856 (n + 1) : ℚ)

end

end A336837.P12627212875986616411

noncomputable section

/-- A336837: Numerator of ratio A336841(n)/A000005(n).

Offset 1, canonical program `A336837.P12627212875986616411`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336837 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336837.P12627212875986616411.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336841, A336856, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336837.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336930.P726697693823606341

`record[gcd(n+1, A336931(n+1))]`
-/

namespace A336930.P726697693823606341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A336931 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336930.P726697693823606341

noncomputable section

/-- A336930: Numbers k such that the 2-adic valuation of A003973(k), the sum of divisors of the prime shifted k is equal to the 2-adic valuation of the number of divisors of k.

Offset 1, canonical program `A336930.P726697693823606341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336930 (n : ℕ) : ℤ :=
  (A336930.P726697693823606341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349667.P3842805946856830097

`p?[(4*n+1)*A318451(3*n+1)]`
-/

namespace A349667.P3842805946856830097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * A318451 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349667.P3842805946856830097

noncomputable section

/-- A349667: Primes of the form 4*k+1 which are a prime after the Collatz step *3+1 and a maximal reduction by 2.

Offset 1, canonical program `A349667.P3842805946856830097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667 (n : ℕ) : ℤ :=
  A349667.P3842805946856830097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A349667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383769.P6860072968184239956

`ceil(A318512(n+1)/A006519(n+1))`
-/

namespace A383769.P6860072968184239956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A318512 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)⌉

end

end A383769.P6860072968184239956

noncomputable section

/-- A383769: Denominators of the sequence whose Dirichlet convolution with itself yields cubes (A000578).

Offset 1, canonical program `A383769.P6860072968184239956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769 (n : ℕ) : ℤ :=
  A383769.P6860072968184239956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318654.P4089455956200200647

`lt[0, A318655(n+2)]+2`
-/

namespace A318654.P4089455956200200647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318655 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A318654.P4089455956200200647

noncomputable section

/-- A318654: Positions of even terms in A318649.

Offset 1, canonical program `A318654.P4089455956200200647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654 (n : ℕ) : ℤ :=
  (A318654.P4089455956200200647.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. -/
def A318654.provenance : SequenceMachineLib.Provenance := .conjectured

