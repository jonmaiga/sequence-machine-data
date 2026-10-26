import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A231810.P5537344332030854373

`eq[2, gcd(2*n, A165886(n))]`
-/

namespace A231810.P5537344332030854373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A165886 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231810.P5537344332030854373

noncomputable section

/-- A231810: Numbers k such that p-1 does not divide k+1 for every prime divisor p of k.

Offset 1, canonical program `A231810.P5537344332030854373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231810 (n : ℕ) : ℤ :=
  (A231810.P5537344332030854373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029763.P9262175537561063165

`A027762(n+1)/A020793(n)*A177735(n)`
-/

namespace A029763.P9262175537561063165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027762 (n + 1) : ℚ) / (A020793 n : ℚ) * (A177735 n : ℚ)

end

end A029763.P9262175537561063165

noncomputable section

/-- A029763: Denominator of Bernoulli(2n+2) - Bernoulli(2n).

Offset 0, canonical program `A029763.P9262175537561063165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A029763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A029763.P9262175537561063165.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A029763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029765.P12397679119740762320

`lcm(3, A029763(n))`
-/

namespace A029765.P12397679119740762320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A029763 n)

end

end A029765.P12397679119740762320

noncomputable section

/-- A029765: Denominator of |Bernoulli(2n+2)| - |Bernoulli(2n)|.

Offset 0, canonical program `A029765.P12397679119740762320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A029765 (n : ℕ) : ℤ :=
  (A029765.P12397679119740762320.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. -/
def A029765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A048598.P18321183389515101121

`∑[A001097(n+1)]`
-/

namespace A048598.P18321183389515101121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A048598.P18321183389515101121

noncomputable section

/-- A048598: Partial sums of the sequence (A001097) of twin primes.

Offset 1, canonical program `A048598.P18321183389515101121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048598 (n : ℕ) : ℤ :=
  A048598.P18321183389515101121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A048598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073409.P17579973830086733601

`A006530(A027762(n+1))`
-/

namespace A073409.P17579973830086733601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027762 (n + 1)).toNat

end

end A073409.P17579973830086733601

noncomputable section

/-- A073409: Largest prime factor of the denominator of the Bernoulli number B(2*n) (A002445).

Offset 1, canonical program `A073409.P17579973830086733601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027762, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073409 (n : ℕ) : ℤ :=
  A073409.P17579973830086733601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A027762, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081863.P2129435876270539085

`4*A165886(2*n+1)`
-/

namespace A081863.P2129435876270539085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165886 (2 * n + 1)

end

end A081863.P2129435876270539085

noncomputable section

/-- A081863: Largest integer m such that m divides (sigma_(2n+1)(2k-1)-sigma(2k-1)) for all k>=1.

Offset 1, canonical program `A081863.P2129435876270539085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A081863 (n : ℕ) : ℤ :=
  A081863.P2129435876270539085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A081863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090815.P12031940070283116509

`A027762(record[A006530(n+2)])`
-/

namespace A090815.P12031940070283116509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090815.P12031940070283116509

noncomputable section

/-- A090815: a(n)=denominator(B(2*prime(n))) where prime(n)=n-th prime and B(k) denotes the k-th Bernoulli number.

Offset 1, canonical program `A090815.P12031940070283116509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A090815 (n : ℕ) : ℤ :=
  A090815.P12031940070283116509.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A090815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092308.P14534356518420386647

`A067513(A006093(n+1))`
-/

namespace A092308.P14534356518420386647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A006093 (n + 1)).toNat

end

end A092308.P14534356518420386647

noncomputable section

/-- A092308: For p=prime(n), a(n) = the number of primes q such that q-1 divides p-1.

Offset 1, canonical program `A092308.P14534356518420386647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092308 (n : ℕ) : ℤ :=
  A092308.P14534356518420386647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A092308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122567.P13257649672823421498

`A001097(n+1)%4`
-/

namespace A122567.P13257649672823421498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001097 (n + 1)) 4

end

end A122567.P13257649672823421498

noncomputable section

/-- A122567: Twin primes modulo 4.

Offset 1, canonical program `A122567.P13257649672823421498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122567 (n : ℕ) : ℤ :=
  A122567.P13257649672823421498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132247.P15172244579046915172

`A001097(n+4)`
-/

namespace A132247.P15172244579046915172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 4)

end

end A132247.P15172244579046915172

noncomputable section

/-- A132247: Twin primes congruent to {1, 11, 13, 17, 19, 29} mod 30.

Offset 1, canonical program `A132247.P15172244579046915172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132247 (n : ℕ) : ℤ :=
  A132247.P15172244579046915172.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137330.P2971508443877887425

`A260188(A001097(3*n+2))-(A006093(n+1)+1)`
-/

namespace A137330.P2971508443877887425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260188 (A001097 (3 * n + 2)).toNat - (A006093 (n + 1) + 1)

end

end A137330.P2971508443877887425

noncomputable section

/-- A137330: a(n) = primorial(k) - prime(n) where k is the smallest number for which prime(n) <= primorial(k).

Offset 1, canonical program `A137330.P2971508443877887425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A137330 (n : ℕ) : ℤ :=
  A137330.P2971508443877887425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A137330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147797.P8071727392255312945

`A001097(10^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147797.P8071727392255312945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (10 ^ n)

end

end A147797.P8071727392255312945

noncomputable section

/-- A147797: The 10^n-th twin prime, A001097(10^n).

Offset 0, canonical program `A147797.P8071727392255312945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147797 (n : ℕ) : ℤ :=
  A147797.P8071727392255312945.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161220.P17651123597370390187

`A001097(n+1)-A005843(n+1)`
-/

namespace A161220.P17651123597370390187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - A005843 (n + 1)

end

end A161220.P17651123597370390187

noncomputable section

/-- A161220: The n-th member of a twin prime pair minus 2*n.

Offset 1, canonical program `A161220.P17651123597370390187`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161220 (n : ℕ) : ℤ :=
  A161220.P17651123597370390187.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161220.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165949.P17479391633647191962

`A027762(n+1)/A165734(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165949.P17479391633647191962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027762 (n + 1) : ℚ) / (A165734 (n + 1) : ℚ)

end

end A165949.P17479391633647191962

noncomputable section

/-- A165949: a(n) = A027762(n)/A165734(n).

Offset 1, canonical program `A165949.P17479391633647191962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165949 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165949.P17479391633647191962.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027762, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165949.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171688.P7072917769576396976

`A001097(n+2)`
-/

namespace A171688.P7072917769576396976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 2)

end

end A171688.P7072917769576396976

noncomputable section

/-- A171688: Twin primes > 3.

Offset 1, canonical program `A171688.P7072917769576396976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171688 (n : ℕ) : ℤ :=
  A171688.P7072917769576396976.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A171688.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175510.P13248822475687542466

`A001097(2*(n+1))-2*A001097(n+1)`
-/

namespace A175510.P13248822475687542466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (2 * (n + 1)) - 2 * A001097 (n + 1)

end

end A175510.P13248822475687542466

noncomputable section

/-- A175510: (2*n)-th twin prime minus 2*(n-th twin prime).

Offset 1, canonical program `A175510.P13248822475687542466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175510 (n : ℕ) : ℤ :=
  A175510.P13248822475687542466.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175510.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181603.P12420885902488205799

`∩[A030430(n+1), A132247(n+1)]`
-/

namespace A181603.P12420885902488205799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181603.P12420885902488205799

noncomputable section

/-- A181603: Twin primes ending in 1.

Offset 1, canonical program `A181603.P12420885902488205799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A181603 (n : ℕ) : ℤ :=
  (A181603.P12420885902488205799.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A181603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181606.P9169201162728271764

`∩[A030433(n+1), A132247(n+1)]`
-/

namespace A181606.P9169201162728271764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A181606.P9169201162728271764

noncomputable section

/-- A181606: Twin primes ending in 9.

Offset 1, canonical program `A181606.P9169201162728271764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3310 terms. -/
def A181606 (n : ℕ) : ℤ :=
  (A181606.P9169201162728271764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3310 terms. -/
def A181606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A194808.P16755719884403907359

`A001097(n+1)%5`
-/

namespace A194808.P16755719884403907359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001097 (n + 1)) 5

end

end A194808.P16755719884403907359

noncomputable section

/-- A194808: Twin primes modulo 5.

Offset 1, canonical program `A194808.P16755719884403907359`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194808 (n : ℕ) : ℤ :=
  A194808.P16755719884403907359.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A194808.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A212655.P13199819175117925271

`4^n*A165949(n+1)`
-/

namespace A212655.P13199819175117925271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A165949 (n + 1)

end

end A212655.P13199819175117925271

noncomputable section

/-- A212655: Denominator of Bernoulli(2*n,1/2) / Period of length 2: repeat 12, 60.

Offset 1, canonical program `A212655.P13199819175117925271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212655 (n : ℕ) : ℤ :=
  A212655.P13199819175117925271.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165949, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A212655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244505.P9278648048121045581

`∩[A139902(n+1), A181606(n+1)]`
-/

namespace A244505.P9278648048121045581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244505.P9278648048121045581

noncomputable section

/-- A244505: Greater of twin primes of (40n-23,40n-21).

Offset 1, canonical program `A244505.P9278648048121045581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A244505 (n : ℕ) : ℤ :=
  (A244505.P9278648048121045581.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A244505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252649.P11680988129779242489

`∑[A211487(n+1)]+1`
-/

namespace A252649.P11680988129779242489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A252649.P11680988129779242489

noncomputable section

/-- A252649: Number of positive integers that are less than or equal to n and have a primitive root.

Offset 1, canonical program `A252649.P11680988129779242489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A252649 (n : ℕ) : ℤ :=
  A252649.P11680988129779242489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A252649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258116.P9165757537041833098

`filter[A066208(n+1), A008966(#)]`
-/

namespace A258116.P9165757537041833098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A258116.P9165757537041833098

noncomputable section

/-- A258116: The Heinz numbers in increasing order of the partitions into distinct odd parts.

Offset 1, canonical program `A258116.P9165757537041833098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A258116 (n : ℕ) : ℤ :=
  A258116.P9165757537041833098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6754 terms. -/
def A258116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265760.P11653394699473330662

`A001097(n+1)-C(2, n²)`
-/

namespace A265760.P11653394699473330662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)

end

end A265760.P11653394699473330662

noncomputable section

/-- A265760: Denominators of primes-only best approximates (POBAs) to 1; see Comments.

Offset 1, canonical program `A265760.P11653394699473330662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265760 (n : ℕ) : ℤ :=
  A265760.P11653394699473330662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271634.P9830776161485334030

`2*(eq[17, A165949(n+1)]+1)`
-/

namespace A271634.P9830776161485334030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271634.P9830776161485334030

noncomputable section

/-- A271634: Numbers n such that Bernoulli number B_{n} has denominator 510.

Offset 1, canonical program `A271634.P9830776161485334030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A271634 (n : ℕ) : ℤ :=
  (A271634.P9830776161485334030.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A271634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278972.P17854840441802126541

`2*A001097(n+1)`
-/

namespace A278972.P17854840441802126541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001097 (n + 1)

end

end A278972.P17854840441802126541

noncomputable section

/-- A278972: Twice the twin primes.

Offset 1, canonical program `A278972.P17854840441802126541`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278972 (n : ℕ) : ℤ :=
  A278972.P17854840441802126541.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286365.P13079732361308459791

`2*A286364(n+1)+A000035(A007814(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286365.P13079732361308459791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286364 (n + 1) + A000035 (A007814 (n + 1)).toNat

end

end A286365.P13079732361308459791

noncomputable section

/-- A286365: Compound filter: a(n) = 2*A286364(n) + A000035(A007814(n)).

Offset 1, canonical program `A286365.P13079732361308459791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286365 (n : ℕ) : ℤ :=
  A286365.P13079732361308459791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286366.P17731940063054662949

`2*A286365(n+1)+floor(A072400(n+1)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286366.P17731940063054662949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286365 (n + 1) + ⌊(A072400 (n + 1) : ℚ) / 4⌋

end

end A286366.P17731940063054662949

noncomputable section

/-- A286366: Compound filter: a(n) = 2*A286365(n) + floor(A072400(n)/4).

Offset 1, canonical program `A286366.P17731940063054662949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286365, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286366 (n : ℕ) : ℤ :=
  A286366.P17731940063054662949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286365, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286367.P15294916279753429942

`1/2*(2+(A001511(n+1)+A286364(n+1))²-A001511(n+1)-3*A286364(n+1))`
-/

namespace A286367.P15294916279753429942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A286364 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A286364 (n + 1) : ℚ)

end

end A286367.P15294916279753429942

noncomputable section

/-- A286367: Compound filter: a(n) = P(A001511(n), A286364(n)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286367.P15294916279753429942`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286367 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286367.P15294916279753429942.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286369.P1450698806063969712

`2*A286364(n+1)+floor(A072400(n+1)/4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286369.P1450698806063969712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286364 (n + 1) + ⌊(A072400 (n + 1) : ℚ) / 4⌋

end

end A286369.P1450698806063969712

noncomputable section

/-- A286369: Compound filter: a(n) = 2*A286364(n) + floor(A072400(n)/4).

Offset 1, canonical program `A286369.P1450698806063969712`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286369 (n : ℕ) : ℤ :=
  A286369.P1450698806063969712.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286369.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286370.P9388022672859368658

`A286369(A139391(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286370.P9388022672859368658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A139391 (n + 1)).toNat

end

end A286370.P9388022672859368658

noncomputable section

/-- A286370: a(n) = A286369(A139391(n)).

Offset 1, canonical program `A286370.P9388022672859368658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139391, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286370 (n : ℕ) : ℤ :=
  A286370.P9388022672859368658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A139391, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286370.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286371.P6950233767271759210

`A286369(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286371.P6950233767271759210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286369 (A003961 (n + 1)).toNat

end

end A286371.P6950233767271759210

noncomputable section

/-- A286371: a(n) = A286369(A003961(n)).

Offset 1, canonical program `A286371.P6950233767271759210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286371 (n : ℕ) : ℤ :=
  A286371.P6950233767271759210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A286369, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286371.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286372.P10421830987609414699

`A286366(A064216(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286372.P10421830987609414699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A064216 (n + 1)).toNat

end

end A286372.P10421830987609414699

noncomputable section

/-- A286372: a(n) = A286366(A064216(n)).

Offset 1, canonical program `A286372.P10421830987609414699`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286372 (n : ℕ) : ℤ :=
  A286372.P10421830987609414699.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064216, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286373.P10522384416090527033

`A286366(A048673(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286373.P10522384416090527033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286366 (A048673 (n + 1)).toNat

end

end A286373.P10522384416090527033

noncomputable section

/-- A286373: a(n) = A286366(A048673(n)).

Offset 1, canonical program `A286373.P10522384416090527033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286373 (n : ℕ) : ℤ :=
  A286373.P10522384416090527033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A286366, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A286373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A286461.P7084713959318418988

`1/2*(2+(A001511(n+1)+A286364(2*(n+1)-1))²-A001511(n+1)-3*A286364(2*(n+1)-1))`
-/

namespace A286461.P7084713959318418988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A286364 (2 * (n + 1) - 1)) ^ 2 - A001511 (n + 1) - 3 * A286364 (2 * (n + 1) - 1) : ℚ)

end

end A286461.P7084713959318418988

noncomputable section

/-- A286461: Compound filter (2-adic valuation of n & 4k+1,4k+3 prime-signature combination of 2n-1): a(n) = P(A001511(n), A286364((2*n)-1)), where P(n,k) is sequence A000027 used as a pairing function.

Offset 1, canonical program `A286461.P7084713959318418988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286461 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286461.P7084713959318418988.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286364, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A286461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324315.P9811049742416120777

`∩[A295102(n+1), A324457(n+1)]`
-/

namespace A324315.P9811049742416120777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324315.P9811049742416120777

noncomputable section

/-- A324315: Squarefree integers m > 1 such that if prime p divides m, then the sum of the base p digits of m is at least p.

Offset 1, canonical program `A324315.P9811049742416120777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A324315 (n : ℕ) : ℤ :=
  (A324315.P9811049742416120777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A324315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326577.P11339216783745800958

`(2*(n+1)-1)/A326478(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326577.P11339216783745800958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1 : ℚ) / (A326478 (2 * (n + 1) - 1) : ℚ)

end

end A326577.P11339216783745800958

noncomputable section

/-- A326577: a(n) = (2*n - 1) / A326478(2*n - 1).

Offset 1, canonical program `A326577.P11339216783745800958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326577.P11339216783745800958.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326577.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326578.P13322029343180356668

`(n+1)*A326478(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326578.P13322029343180356668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326478 (n + 1)

end

end A326578.P13322029343180356668

noncomputable section

/-- A326578: a(n) = n^2*denominator(n*Bernoulli(n-1))/denominator(Bernoulli(n-1)) = n*A326478(n).

Offset 1, canonical program `A326578.P13322029343180356668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326578 (n : ℕ) : ℤ :=
  A326578.P13322029343180356668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326578.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326584.P8203747700615488689

`(n+1)/A326478(n+1)`
-/

namespace A326584.P8203747700615488689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A326478 (n + 1) : ℚ)

end

end A326584.P8203747700615488689

noncomputable section

/-- A326584: a(n) = gcd(n*N(n-1), D(n-1)), with N(n)/D(n) = B(n) the n-th Bernoulli number.

Offset 1, canonical program `A326584.P8203747700615488689`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326584 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326584.P8203747700615488689.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326478, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326584.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A334142.P15450815124474884519

`A000720(A001097(n+1))`
-/

namespace A334142.P15450815124474884519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001097 (n + 1)).toNat

end

end A334142.P15450815124474884519

noncomputable section

/-- A334142: Indices of twin primes.

Offset 1, canonical program `A334142.P15450815124474884519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334142 (n : ℕ) : ℤ :=
  A334142.P15450815124474884519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A334142.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A351979.P14330846022404580825

`A066208(n+1)²`
-/

namespace A351979.P14330846022404580825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1) ^ 2

end

end A351979.P14330846022404580825

noncomputable section

/-- A351979: Numbers whose prime factorization has all odd prime indices and all even prime exponents.

Offset 1, canonical program `A351979.P14330846022404580825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351979 (n : ℕ) : ℤ :=
  A351979.P14330846022404580825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A351979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352142.P6668695384311402358

`filter[A066208(n+1), A295316(#)]`
-/

namespace A352142.P6668695384311402358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A352142.P6668695384311402358

noncomputable section

/-- A352142: Numbers whose prime factorization has all odd indices and all odd exponents.

Offset 1, canonical program `A352142.P6668695384311402358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. -/
def A352142 (n : ℕ) : ℤ :=
  A352142.P6668695384311402358.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7692 terms. -/
def A352142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353539.P12462210052388582896

`∩[A353538(n+1)-1, A353538(n+1)]`
-/

namespace A353539.P12462210052388582896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353538 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353539.P12462210052388582896

noncomputable section

/-- A353539: Starts of runs of 3 consecutive numbers whose abundancy index is larger than Pi^2/6.

Offset 1, canonical program `A353539.P12462210052388582896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1929 terms. -/
def A353539 (n : ℕ) : ℤ :=
  (A353539.P12462210052388582896.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1929 terms. -/
def A353539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355452.P4445026676875231731

`A010051(A014683(A067513(n+1)))`
-/

namespace A355452.P4445026676875231731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A014683 (A067513 (n + 1)).toNat).toNat

end

end A355452.P4445026676875231731

noncomputable section

/-- A355452: a(n) = 1 if Bernoulli number B_{n} has denominator 6, otherwise 0.

Offset 1, canonical program `A355452.P4445026676875231731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355452 (n : ℕ) : ℤ :=
  A355452.P4445026676875231731.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376890.P3945601980111199333

`∑[(-1)^n*A001097(n+1)]`
-/

namespace A376890.P3945601980111199333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376890.P3945601980111199333

noncomputable section

/-- A376890: Alternating sum of twin primes (A001097).

Offset 1, canonical program `A376890.P3945601980111199333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376890 (n : ℕ) : ℤ :=
  A376890.P3945601980111199333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386724.P5852504740196687615

`∩[A001097(n+1), A283809(n+1)]`
-/

namespace A386724.P5852504740196687615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386724.P5852504740196687615

noncomputable section

/-- A386724: Twin primes p such that 6p+1, 6p-1 is a twin prime pair.

Offset 1, canonical program `A386724.P5852504740196687615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A386724 (n : ℕ) : ℤ :=
  (A386724.P5852504740196687615.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A386724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033948.P5912959351970205991

`record[n*A211487(n+1)+1]`
-/

namespace A033948.P5912959351970205991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A211487 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033948.P5912959351970205991

noncomputable section

/-- A033948: Numbers that have a primitive root (k such that the multiplicative group modulo k is cyclic).

Offset 1, canonical program `A033948.P5912959351970205991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033948 (n : ℕ) : ℤ :=
  A033948.P5912959351970205991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A033948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A046886.P6072757339974154417

`A067513(2*(n+1))`
-/

namespace A046886.P6072757339974154417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (2 * (n + 1))

end

end A046886.P6072757339974154417

noncomputable section

/-- A046886: Number of divisors d of 2n satisfying (d+1) = prime or number of prime factors of the denominator of the even Bernoulli numbers.

Offset 1, canonical program `A046886.P6072757339974154417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046886 (n : ℕ) : ℤ :=
  A046886.P6072757339974154417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A046886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A048259.P11908636629173438456

`A065033(2*∑{d}[n, A003050(#)])`
-/

namespace A048259.P11908636629173438456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (∑ d ∈ Nat.divisors (f1 n), A003050 d)).toNat

end

end A048259.P11908636629173438456

noncomputable section

/-- A048259: Number of distinct solutions to x + y + z = 0 (mod n), where two solutions are equivalent if one can be obtained from the other by multiplying by units in Z/nZ and permuting x,y,z.

Offset 0, canonical program `A048259.P11908636629173438456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A048259 (n : ℕ) : ℤ :=
  A048259.P11908636629173438456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. -/
def A048259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054664.P6000498737285423986

`∑{d}[n+1, A054660(#)*A154955((n+1)/#)]`
-/

namespace A054664.P6000498737285423986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054660 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054664.P6000498737285423986

noncomputable section

/-- A054664: Number of 4-ary Lyndon words of length n with trace 0 mod 4.

Offset 1, canonical program `A054664.P6000498737285423986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054664 (n : ℕ) : ℤ :=
  A054664.P6000498737285423986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057473.P10214485168046116986

`A151800(A151800(A057470(n+1)))`
-/

namespace A057473.P10214485168046116986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A057470 (n + 1)).toNat).toNat

end

end A057473.P10214485168046116986

noncomputable section

/-- A057473: Let prime(i) = i-th prime, let twin(n) = (P,Q) be n-th pair of twin primes; sequence gives prime(Q).

Offset 1, canonical program `A057473.P10214485168046116986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057473 (n : ℕ) : ℤ :=
  A057473.P10214485168046116986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A057473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A059078.P12967757561561579669

`A059076(2*n)-2*A059053(2*n)`
-/

namespace A059078.P12967757561561579669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 (2 * n) - 2 * A059053 (2 * n)

end

end A059078.P12967757561561579669

noncomputable section

/-- A059078: Number of orientable necklaces with 2n beads and two colors which when turned over produce their own color complement.

Offset 0, canonical program `A059078.P12967757561561579669`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059053, A059076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A059078 (n : ℕ) : ℤ :=
  A059078.P12967757561561579669.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059053, A059076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A059078.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060230.P12084537768286370496

`∩[A060229(n+1), A142099(n+1)]`
-/

namespace A060230.P12084537768286370496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P12084537768286370496

noncomputable section

/-- A060230: Smaller of twin primes whose middle term is a multiple of A002110(4)=210.

Offset 1, canonical program `A060230.P12084537768286370496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A060230 (n : ℕ) : ℤ :=
  (A060230.P12084537768286370496.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. -/
def A060230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060231.P3993353208591184516

`∩[A060230(n+1), A142640(n+1)]`
-/

namespace A060231.P3993353208591184516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060231.P3993353208591184516

noncomputable section

/-- A060231: Smaller of twin primes whose middle term is a multiple of A002110(5)=2310.

Offset 1, canonical program `A060231.P3993353208591184516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A060231 (n : ℕ) : ℤ :=
  (A060231.P3993353208591184516.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. -/
def A060231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066501.P10835887515375313697

`∩[A033948(n+1), A088232(n+1)]`
-/

namespace A066501.P10835887515375313697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066501.P10835887515375313697

noncomputable section

/-- A066501: Numbers k such that x^6 == 1 (mod(k)) has no solution 1 < x < k-1.

Offset 1, canonical program `A066501.P10835887515375313697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A066501 (n : ℕ) : ℤ :=
  (A066501.P10835887515375313697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2702 terms. -/
def A066501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071699.P16239091930221922648

`∩[A006512(n+1), A123079(n+1)]`
-/

namespace A071699.P16239091930221922648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071699.P16239091930221922648

noncomputable section

/-- A071699: Greater members of twin prime pairs of form (4*k+3, 4*k+5), k >= 0.

Offset 1, canonical program `A071699.P16239091930221922648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5037 terms. -/
def A071699 (n : ℕ) : ℤ :=
  (A071699.P16239091930221922648.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5037 terms. -/
def A071699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071700.P15703386413530463782

`(1-A071699(n+1))²-1`
-/

namespace A071700.P15703386413530463782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A071699 (n + 1)) ^ 2 - 1

end

end A071700.P15703386413530463782

noncomputable section

/-- A071700: Product of twin primes of form (4*k+3,4*(k+1)+1), k>=0.

Offset 1, canonical program `A071700.P15703386413530463782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071700 (n : ℕ) : ℤ :=
  A071700.P15703386413530463782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072209.P5251402996353045043

`A000010(A000010(A033948(n+1)))`
-/

namespace A072209.P5251402996353045043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A033948 (n + 1)).toNat).toNat

end

end A072209.P5251402996353045043

noncomputable section

/-- A072209: Number of primitive roots of those integers with at least one primitive root.

Offset 1, canonical program `A072209.P5251402996353045043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A033948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072209 (n : ℕ) : ℤ :=
  A072209.P5251402996353045043.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A033948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072209.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073648.P13149246164954547153

`A022004(n+1)+2`
-/

namespace A073648.P13149246164954547153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) + 2

end

end A073648.P13149246164954547153

noncomputable section

/-- A073648: Middle members of prime triples {p, p+2, p+6}.

Offset 1, canonical program `A073648.P13149246164954547153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022004, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073648 (n : ℕ) : ℤ :=
  A073648.P13149246164954547153.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022004, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074953.P15833101242279798323

`(A006512(n+2)+A001359(n+1))/2`
-/

namespace A074953.P15833101242279798323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 2) + A001359 (n + 1) : ℚ) / 2

end

end A074953.P15833101242279798323

noncomputable section

/-- A074953: Numbers equidistant from consecutive twin prime pairs.

Offset 1, canonical program `A074953.P15833101242279798323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074953 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074953.P15833101242279798323.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A074953.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075736.P78316521861569086

`A000045(A030059(n+1))`
-/

namespace A075736.P78316521861569086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A030059 (n + 1)).toNat

end

end A075736.P78316521861569086

noncomputable section

/-- A075736: Fibonacci numbers F(k) as k runs through the products of an odd number of distinct primes A030059 (mu(k)=-1).

Offset 1, canonical program `A075736.P78316521861569086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075736 (n : ℕ) : ℤ :=
  A075736.P78316521861569086.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075736.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075862.P2855623362781383321

`∪[A006512(n+1), A253106(n+1)]`
-/

namespace A075862.P2855623362781383321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075862.P2855623362781383321

noncomputable section

/-- A075862: Numbers m such that the least k such that (m-k) divides (m+k) is prime.

Offset 1, canonical program `A075862.P2855623362781383321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075862 (n : ℕ) : ℤ :=
  (A075862.P2855623362781383321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077438.P1829940462926558059

`A030059(n+1)²`
-/

namespace A077438.P1829940462926558059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1) ^ 2

end

end A077438.P1829940462926558059

noncomputable section

/-- A077438: Numbers k such that Sum_{d|k} mu(d) mu(n/d)^2 = -1.

Offset 1, canonical program `A077438.P1829940462926558059`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077438 (n : ℕ) : ℤ :=
  A077438.P1829940462926558059.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077438.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079328.P1735777223986173812

`A074953(n+1)-1`
-/

namespace A079328.P1735777223986173812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074953 (n + 1) - 1

end

end A079328.P1735777223986173812

noncomputable section

/-- A079328: Let f(n)=A001359(n) be the smaller member of the n-th pair of twin primes. Then a(n) is the average of f(n) and f(n+1).

Offset 1, canonical program `A079328.P1735777223986173812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079328 (n : ℕ) : ℤ :=
  A079328.P1735777223986173812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079329.P5277754755357971054

`A074953(n+1)+1`
-/

namespace A079329.P5277754755357971054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074953 (n + 1) + 1

end

end A079329.P5277754755357971054

noncomputable section

/-- A079329: Let g(n)=A006512(n) be the larger member of the n-th pair of twin primes. Then a(n) is the average of g(n) and g(n+1).

Offset 1, canonical program `A079329.P5277754755357971054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079329 (n : ℕ) : ℤ :=
  A079329.P5277754755357971054.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079629.P16851057113901568153

`A071538(A006512(n+1)²)-A071538(A001359(n+1)²)`
-/

namespace A079629.P16851057113901568153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A006512 (n + 1) ^ 2).toNat - A071538 (A001359 (n + 1) ^ 2).toNat

end

end A079629.P16851057113901568153

noncomputable section

/-- A079629: Number of twin prime pairs between p^2 and q^2 where (p,q) is the n-th twin prime pair.

Offset 1, canonical program `A079629.P16851057113901568153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A071538, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079629 (n : ℕ) : ℤ :=
  A079629.P16851057113901568153.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A071538, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079629.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080698.P8871704117380904120

`A001359(n+1)*A057470(n+1)`
-/

namespace A080698.P8871704117380904120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A057470 (n + 1)

end

end A080698.P8871704117380904120

noncomputable section

/-- A080698: Product of twin-prime-indexed primes and their lower bound twin prime.

Offset 1, canonical program `A080698.P8871704117380904120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080698 (n : ℕ) : ℤ :=
  A080698.P8871704117380904120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080699.P120578734032110107

`A006512(n+1)*A057470(n+1)`
-/

namespace A080699.P120578734032110107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A057470 (n + 1)

end

end A080699.P120578734032110107

noncomputable section

/-- A080699: Product of twin-prime-indexed primes and their upper bound twin prime.

Offset 1, canonical program `A080699.P120578734032110107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080699 (n : ℕ) : ℤ :=
  A080699.P120578734032110107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080700.P8581527267507242

`A001359(n+1)*A057473(n+1)`
-/

namespace A080700.P8581527267507242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A057473 (n + 1)

end

end A080700.P8581527267507242

noncomputable section

/-- A080700: Product of upper bound twin-prime-indexed primes and their lower bound twin prime.

Offset 1, canonical program `A080700.P8581527267507242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080700 (n : ℕ) : ℤ :=
  A080700.P8581527267507242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080701.P2642423002397275163

`A006512(n+1)*A057473(n+1)`
-/

namespace A080701.P2642423002397275163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A057473 (n + 1)

end

end A080701.P2642423002397275163

noncomputable section

/-- A080701: Product of upper bound twin-prime-indexed primes and their upper bound twin prime.

Offset 1, canonical program `A080701.P2642423002397275163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080701 (n : ℕ) : ℤ :=
  A080701.P2642423002397275163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081755.P13675370153460538164

`A000079(val(A000010(A081754(n+1)), 2))`
-/

namespace A081755.P13675370153460538164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000010 (A081754 (n + 1)).toNat).toNat 2)

end

end A081755.P13675370153460538164

noncomputable section

/-- A081755: Number of noncongruent solutions to x^(2^m) == 1 (mod n) when n is such that the number of solutions is the same for any m>=1.

Offset 1, canonical program `A081755.P13675370153460538164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081755 (n : ℕ) : ℤ :=
  A081755.P13675370153460538164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082669.P14570956005503308455

`A006512(n+1)*(A006512(n+1)-1)/2`
-/

namespace A082669.P14570956005503308455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006512 (n + 1) * (A006512 (n + 1) - 1) : ℚ) / 2

end

end A082669.P14570956005503308455

noncomputable section

/-- A082669: a(n) = p(n)*(p(n)-1)/2 where p(n) = upper member of n-th pair of twin primes.

Offset 1, canonical program `A082669.P14570956005503308455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082669 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082669.P14570956005503308455.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088176.P508922277924974894

`A084291(n+1)+A006512(n+1)`
-/

namespace A088176.P508922277924974894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084291 (n + 1) + A006512 (n + 1)

end

end A088176.P508922277924974894

noncomputable section

/-- A088176: Primes such that the previous two primes are a twin prime pair.

Offset 1, canonical program `A088176.P508922277924974894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088176 (n : ℕ) : ℤ :=
  A088176.P508922277924974894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088463.P14000469329680495360

`A006512(A006512(n+1))`
-/

namespace A088463.P14000469329680495360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A006512 (n + 1)).toNat

end

end A088463.P14000469329680495360

noncomputable section

/-- A088463: Upper twin primes of upper twin prime index.

Offset 1, canonical program `A088463.P14000469329680495360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088463 (n : ℕ) : ℤ :=
  A088463.P14000469329680495360.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A088463.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089152.P14229813649324372795

`∩[A001097(n+1), A089151(n+1)]`
-/

namespace A089152.P14229813649324372795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089152.P14229813649324372795

noncomputable section

/-- A089152: Primes p such that 6*p-7 and 6*p-5 are twin primes and p is also a twin prime.

Offset 1, canonical program `A089152.P14229813649324372795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A089152 (n : ℕ) : ℤ :=
  (A089152.P14229813649324372795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. -/
def A089152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089628.P1786819195133070352

`A053778(A065033(2*n))-A296065(2*(n+1))`
-/

namespace A089628.P1786819195133070352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (A065033 (2 * n)).toNat - A296065 (2 * (n + 1))

end

end A089628.P1786819195133070352

noncomputable section

/-- A089628: Smallest member of a pair of consecutive twin prime pairs that have no primes between them.

Offset 3, canonical program `A089628.P1786819195133070352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A089628 (n : ℕ) : ℤ :=
  A089628.P1786819195133070352.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A089628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092668.P1148416843814148712

`A059053(2*n+1)+A000079(n)`
-/

namespace A092668.P1148416843814148712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059053 (2 * n + 1) + A000079 n

end

end A092668.P1148416843814148712

noncomputable section

/-- A092668: Bisection of A000011.

Offset 0, canonical program `A092668.P1148416843814148712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A092668 (n : ℕ) : ℤ :=
  A092668.P1148416843814148712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A092668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093307.P9129707170619454344

`2+A093306(n+1)`
-/

namespace A093307.P9129707170619454344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A093306 (n + 1)

end

end A093307.P9129707170619454344

noncomputable section

/-- A093307: k-th upper twin prime, where k is the n-th Fibonacci number.

Offset 1, canonical program `A093307.P9129707170619454344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093307 (n : ℕ) : ℤ :=
  A093307.P9129707170619454344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093306, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093307.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A093311.P2244412378451510497

`A093310(n)+2`
-/

namespace A093311.P2244412378451510497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093310 n + 2

end

end A093311.P2244412378451510497

noncomputable section

/-- A093311: a(n) is the k-th upper twin prime, where k = n!.

Offset 0, canonical program `A093311.P2244412378451510497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093311 (n : ℕ) : ℤ :=
  A093311.P2244412378451510497.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093311.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096474.P15193505077618010963

`A057473(n+1)-A057470(n+1)`
-/

namespace A096474.P15193505077618010963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057473 (n + 1) - A057470 (n + 1)

end

end A096474.P15193505077618010963

noncomputable section

/-- A096474: Difference prime(q+2) - prime(q) as q runs through the lesser members of twin primes (A001359).

Offset 1, canonical program `A096474.P15193505077618010963`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A057473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096474 (n : ℕ) : ℤ :=
  A096474.P15193505077618010963.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057470, A057473, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A096474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A098412.P17347800589930056568

`4+A073648(n+1)`
-/

namespace A098412.P17347800589930056568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A073648 (n + 1)

end

end A098412.P17347800589930056568

noncomputable section

/-- A098412: Greatest members p of prime triples (p-6, p-4, p).

Offset 1, canonical program `A098412.P17347800589930056568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098412 (n : ℕ) : ℤ :=
  A098412.P17347800589930056568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108604.P14779310854781388400

`A006512(n+1)²`
-/

namespace A108604.P14779310854781388400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) ^ 2

end

end A108604.P14779310854781388400

noncomputable section

/-- A108604: Squares of the form prime(k)*prime(k+1) + 2*prime(k+1).

Offset 1, canonical program `A108604.P14779310854781388400`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108604 (n : ℕ) : ℤ :=
  A108604.P14779310854781388400.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A108604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111166.P17158937779735735824

`A053319(n)+a(n-1)` with `a(0)=2, a(1)=5`
-/

namespace A111166.P17158937779735735824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A053319 n + a (n - 1)

end

end A111166.P17158937779735735824

noncomputable section

/-- A111166: Let p < q be consecutive primes; p is in the sequence if p/(q-p) is a record.

Offset 1, canonical program `A111166.P17158937779735735824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111166 (n : ℕ) : ℤ :=
  A111166.P17158937779735735824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114379.P12683606394352257350

`A007504(A006512(n+1))-A007504(A006512(n+1)-3)`
-/

namespace A114379.P12683606394352257350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A006512 (n + 1)).toNat - A007504 (A006512 (n + 1) - 3).toNat

end

end A114379.P12683606394352257350

noncomputable section

/-- A114379: Sums of p-th to the q-th prime where p and q are twin primes.

Offset 1, canonical program `A114379.P12683606394352257350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A114379 (n : ℕ) : ℤ :=
  A114379.P12683606394352257350.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1224 terms. -/
def A114379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118072.P11241627078805568057

`2*A045536(n+1)+1`
-/

namespace A118072.P11241627078805568057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045536 (n + 1) + 1

end

end A118072.P11241627078805568057

noncomputable section

/-- A118072: Primes which are the sum of a twin prime pair - 1.

Offset 1, canonical program `A118072.P11241627078805568057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118072 (n : ℕ) : ℤ :=
  A118072.P11241627078805568057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124518.P12474702938177862271

`floor((A060229(n+1)+1)/5)/2`
-/

namespace A124518.P12474702938177862271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A060229 (n + 1) + 1 : ℚ) / 5⌋ : ℚ) / 2

end

end A124518.P12474702938177862271

noncomputable section

/-- A124518: Numbers k such that 10k-1 and 10k+1 are twin primes.

Offset 1, canonical program `A124518.P12474702938177862271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124518 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124518.P12474702938177862271.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126251.P11782927030317961986

`2*A082669(n+1)`
-/

namespace A126251.P11782927030317961986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082669 (n + 1)

end

end A126251.P11782927030317961986

noncomputable section

/-- A126251: a(n) = (p+2)!/p! where p is the n-th lesser twin prime, A001359(n).

Offset 1, canonical program `A126251.P11782927030317961986`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126251 (n : ℕ) : ℤ :=
  A126251.P11782927030317961986.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082669, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A126251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129781.P14667007780721229883

`A006512(A000040(n+1))`
-/

namespace A129781.P14667007780721229883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A000040 (n + 1)).toNat

end

end A129781.P14667007780721229883

noncomputable section

/-- A129781: The prime(n)-th upper twin prime.

Offset 1, canonical program `A129781.P14667007780721229883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129781 (n : ℕ) : ℤ :=
  A129781.P14667007780721229883.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131356.P16117501274095404903

`A124518(n+1)-1`
-/

namespace A131356.P16117501274095404903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124518 (n + 1) - 1

end

end A131356.P16117501274095404903

noncomputable section

/-- A131356: Numbers k such that p1 = 10k+9 and p2 = p1+2 are twin primes.

Offset 1, canonical program `A131356.P16117501274095404903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131356 (n : ℕ) : ℤ :=
  A131356.P16117501274095404903.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145061.P9301229147611085

`(A001359(n+2)-A006512(n+1))/2`
-/

namespace A145061.P9301229147611085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 2) - A006512 (n + 1) : ℚ) / 2

end

end A145061.P9301229147611085

noncomputable section

/-- A145061: Number of pairs of odd numbers that separate two consecutive twin prime pairs.

Offset 1, canonical program `A145061.P9301229147611085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145061 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145061.P9301229147611085.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A145061.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145714.P7947912181771072227

`ceil(sqrt(2*A145701(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145714.P7947912181771072227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A145701 (n + 1) : ℝ)⌉

end

end A145714.P7947912181771072227

noncomputable section

/-- A145714: a(n) = ceiling(sqrt(2*A145701(n))).

Offset 1, canonical program `A145714.P7947912181771072227`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145714 (n : ℕ) : ℤ :=
  A145714.P7947912181771072227.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145701, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153740.P8834701784236490181

`p?[A088176(n+2)%A001359(n+3)]`
-/

namespace A153740.P8834701784236490181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088176 (n + 2)) (A001359 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153740.P8834701784236490181

noncomputable section

/-- A153740: Smallest non-twin prime > n-th and (n+1)-th twin primes.

Offset 1, canonical program `A153740.P8834701784236490181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153740 (n : ℕ) : ℤ :=
  A153740.P8834701784236490181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155188.P10073715610909491198

`A045536(n+3)`
-/

namespace A155188.P10073715610909491198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045536 (n + 3)

end

end A155188.P10073715610909491198

noncomputable section

/-- A155188: Sophie Germain primes that are also strong primes and lesser of twin prime pairs.

Offset 1, canonical program `A155188.P10073715610909491198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A155188 (n : ℕ) : ℤ :=
  A155188.P10073715610909491198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A155188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157042.P479054277220309854

`∩[A089151(n+1), A158015(n+1)]`
-/

namespace A157042.P479054277220309854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157042.P479054277220309854

noncomputable section

/-- A157042: Primes p such that 6p-7, 6p-5, 6p-1 are all prime.

Offset 1, canonical program `A157042.P479054277220309854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. -/
def A157042 (n : ℕ) : ℤ :=
  (A157042.P479054277220309854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 434 terms. -/
def A157042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157235.P8865157934849236561

`A003050(n+1)-(A000086(n+1)-A154272(n+1))/2-A060594(n+1)`
-/

namespace A157235.P8865157934849236561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003050 (n + 1) : ℚ) - (A000086 (n + 1) - A154272 (n + 1) : ℚ) / 2 - (A060594 (n + 1) : ℚ)

end

end A157235.P8865157934849236561

noncomputable section

/-- A157235: Number of primitive inequivalent oblique sublattices of hexagonal (triangular) lattice of index n (equivalence and symmetry of sublattices are determined using only parent lattice symmetries).

Offset 1, canonical program `A157235.P8865157934849236561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A003050, A060594, A154272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157235.P8865157934849236561.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, A003050, A060594, A154272, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A157235.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158277.P9504864579204883764

`∩[A060229(n+1), A095995(n+1)]`
-/

namespace A158277.P9504864579204883764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158277.P9504864579204883764

noncomputable section

/-- A158277: The lesser of twin prime pairs with each prime in a different century.

Offset 1, canonical program `A158277.P9504864579204883764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A158277 (n : ℕ) : ℤ :=
  (A158277.P9504864579204883764.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A158277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160273.P2420458124321654118

`A008615(A053319(n+2))`
-/

namespace A160273.P2420458124321654118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A053319 (n + 2)).toNat

end

end A160273.P2420458124321654118

noncomputable section

/-- A160273: Successive differences (divided by 3) of the average of twin prime pairs divided by 2 (A040040).

Offset 1, canonical program `A160273.P2420458124321654118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160273 (n : ℕ) : ℤ :=
  A160273.P2420458124321654118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161763.P7682725459275287043

`A057470(n+1)*A057473(n+1)`
-/

namespace A161763.P7682725459275287043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057470 (n + 1) * A057473 (n + 1)

end

end A161763.P7682725459275287043

noncomputable section

/-- A161763: Product of the two primes with indices equal to the members of the n-th twin prime pair.

Offset 1, canonical program `A161763.P7682725459275287043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161763 (n : ℕ) : ℤ :=
  A161763.P7682725459275287043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163635.P5648259623361093325

`3*A022004(n+1)+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163635.P5648259623361093325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022004 (n + 1) + 8

end

end A163635.P5648259623361093325

noncomputable section

/-- A163635: a(n) = 3*A022004(n) + 8.

Offset 1, canonical program `A163635.P5648259623361093325`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022004, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163635 (n : ℕ) : ℤ :=
  A163635.P5648259623361093325.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022004, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165242.P4991831258923927794

`A010877(A006512(n+1))`
-/

namespace A165242.P4991831258923927794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A006512 (n + 1)).toNat

end

end A165242.P4991831258923927794

noncomputable section

/-- A165242: The larger member of the n-th twin prime pair, modulo 8.

Offset 1, canonical program `A165242.P4991831258923927794`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165242 (n : ℕ) : ℤ :=
  A165242.P4991831258923927794.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A165242.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166173.P17158240679124746959

`A007953(A001359(n+1))+A007953(A006512(n+1))`
-/

namespace A166173.P17158240679124746959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A001359 (n + 1)).toNat + A007953 (A006512 (n + 1)).toNat

end

end A166173.P17158240679124746959

noncomputable section

/-- A166173: Digit sum of n-th twin prime pair.

Offset 1, canonical program `A166173.P17158240679124746959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166173 (n : ℕ) : ℤ :=
  A166173.P17158240679124746959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A007953, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167132.P340755037681699501

`A001359(n+2)-A006512(n+1)`
-/

namespace A167132.P340755037681699501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2) - A006512 (n + 1)

end

end A167132.P340755037681699501

noncomputable section

/-- A167132: Gaps between twin prime pairs.

Offset 1, canonical program `A167132.P340755037681699501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167132 (n : ℕ) : ℤ :=
  A167132.P340755037681699501.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172019.P16950728949524570251

`∪[A033949(n+1), A071821(n+1)]`
-/

namespace A172019.P16950728949524570251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A172019.P16950728949524570251

noncomputable section

/-- A172019: Numbers k such that 4 divides phi(k) (i.e., A000010(k)).

Offset 1, canonical program `A172019.P16950728949524570251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172019 (n : ℕ) : ℤ :=
  (A172019.P16950728949524570251.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172057.P13327719943038495945

`A006512(n+2)`
-/

namespace A172057.P13327719943038495945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 2)

end

end A172057.P13327719943038495945

noncomputable section

/-- A172057: Primes p such that either p-3 or p-2 (but not both) is/are prime.

Offset 1, canonical program `A172057.P13327719943038495945`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172057 (n : ℕ) : ℤ :=
  A172057.P13327719943038495945.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174359.P9829414694496532461

`floor(A073648(n+1)/6)`
-/

namespace A174359.P9829414694496532461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073648 (n + 1) : ℚ) / 6⌋

end

end A174359.P9829414694496532461

noncomputable section

/-- A174359: Numbers n such that 6n-1, 6n+1, and 6n+5 are prime.

Offset 1, canonical program `A174359.P9829414694496532461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174359 (n : ℕ) : ℤ :=
  A174359.P9829414694496532461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175594.P11317406959744859583

`eq[0, A211487(C(2, n)+n)]`
-/

namespace A175594.P11317406959744859583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175594.P11317406959744859583

noncomputable section

/-- A175594: Numbers having no primitive root.

Offset 1, canonical program `A175594.P11317406959744859583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175594 (n : ℕ) : ℤ :=
  (A175594.P11317406959744859583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175606.P13223848916122149879

`∩[A144834(n+1), A258211(n+1)]+1`
-/

namespace A175606.P13223848916122149879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A175606.P13223848916122149879

noncomputable section

/-- A175606: Primes p of the form 4*k+3 such that p+2 is prime and p-1 is nonsquarefree.

Offset 1, canonical program `A175606.P13223848916122149879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A175606 (n : ℕ) : ℤ :=
  (A175606.P13223848916122149879.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A175606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175747.P799847572334092033

`A048785(A006512(or(1, n)))*A175744(n+1)`
-/

namespace A175747.P799847572334092033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A006512 (Nat.lor 1 n)).toNat * A175744 (n + 1)

end

end A175747.P799847572334092033

noncomputable section

/-- A175747: Numbers with 38 divisors.

Offset 1, canonical program `A175747.P799847572334092033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A175747 (n : ℕ) : ℤ :=
  A175747.P799847572334092033.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A175747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175753.P11510275057961638768

`16*A048785(A006512(∏{p}[n, #]))*A175744(n+1)`
-/

namespace A175753.P11510275057961638768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A048785 (A006512 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat * A175744 (n + 1))

end

end A175753.P11510275057961638768

noncomputable section

/-- A175753: Numbers with 46 divisors.

Offset 1, canonical program `A175753.P11510275057961638768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A175753 (n : ℕ) : ℤ :=
  A175753.P11510275057961638768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A175753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176114.P18402214884986223106

`A124518(n+1)/3`
-/

namespace A176114.P18402214884986223106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124518 (n + 1) : ℚ) / 3

end

end A176114.P18402214884986223106

noncomputable section

/-- A176114: Numbers n such that 30*n-1, 30*n+1 are twin primes.

Offset 1, canonical program `A176114.P18402214884986223106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A176114.P18402214884986223106.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176131.P13429544879791265934

`∩[A001359(n+1), A386724(n+1)]`
-/

namespace A176131.P13429544879791265934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176131.P13429544879791265934

noncomputable section

/-- A176131: Lesser of twin primes p such that 6*p+1 is greater of twin primes.

Offset 1, canonical program `A176131.P13429544879791265934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 771 terms. -/
def A176131 (n : ℕ) : ℤ :=
  (A176131.P13429544879791265934.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 771 terms. -/
def A176131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176810.P15699924405240602414

`2*A006512(n+1)`
-/

namespace A176810.P15699924405240602414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006512 (n + 1)

end

end A176810.P15699924405240602414

noncomputable section

/-- A176810: Semiprimes of the form 2 * (greater of twin primes).

Offset 1, canonical program `A176810.P15699924405240602414`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176810 (n : ℕ) : ℤ :=
  A176810.P15699924405240602414.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176810.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180634.P12343115903824163931

`lt[n*A211487(n+1), 2]+1`
-/

namespace A180634.P12343115903824163931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A211487 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A180634.P12343115903824163931

noncomputable section

/-- A180634: Numbers n such that the discriminant of the n-th cyclotomic polynomial is a square.

Offset 1, canonical program `A180634.P12343115903824163931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180634 (n : ℕ) : ℤ :=
  (A180634.P12343115903824163931.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A180634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A180824.P4915511822982714582

`(A180783(n+1)-2)%A108411(n)`
-/

namespace A180824.P4915511822982714582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180783 (n + 1) - 2) (A108411 n)

end

end A180824.P4915511822982714582

noncomputable section

/-- A180824: Number of distinct solutions of Sum_{i=1..1} x(2i-1)*x(2i) = 1 (mod n), with x() only in 2..n-2.

Offset 1, canonical program `A180824.P4915511822982714582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A180824 (n : ℕ) : ℤ :=
  A180824.P4915511822982714582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A180824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A193305.P14986137312486349582

`filter[A033948(n+1), A066247(#)]`
-/

namespace A193305.P14986137312486349582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A193305.P14986137312486349582

noncomputable section

/-- A193305: Composite numbers of the form 4, p^m, or 2*p^m for p an odd prime. All composites that have a primitive root.

Offset 1, canonical program `A193305.P14986137312486349582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3577 terms. -/
def A193305 (n : ℕ) : ℤ :=
  A193305.P14986137312486349582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3577 terms. -/
def A193305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204099.P7675691963156403861

`A014681(A167132(n+1))`
-/

namespace A204099.P7675691963156403861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A167132 (n + 1)).toNat

end

end A204099.P7675691963156403861

noncomputable section

/-- A204099: Number of integers between successive twin prime pairs.

Offset 1, canonical program `A204099.P7675691963156403861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204099 (n : ℕ) : ℤ :=
  A204099.P7675691963156403861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A204099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A204100.P17943832057395780298

`A204099(n+1)/3`
-/

namespace A204100.P17943832057395780298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204099 (n + 1) : ℚ) / 3

end

end A204100.P17943832057395780298

noncomputable section

/-- A204100: Number of integers between successive twin primes, divided by 3.

Offset 1, canonical program `A204100.P17943832057395780298`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A204100.P17943832057395780298.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204099, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A204100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A204136.P1811365136690881817

`A204099(n+1)-A048614(n+1)`
-/

namespace A204136.P1811365136690881817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 1) - A048614 (n + 1)

end

end A204136.P1811365136690881817

noncomputable section

/-- A204136: Number of composites between successive twin prime pairs.

Offset 1, canonical program `A204136.P1811365136690881817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048614, A204099, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A204136 (n : ℕ) : ℤ :=
  A204136.P1811365136690881817.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048614, A204099, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A204136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209661.P3943168647382713519

`(-1)^A083025(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209661.P3943168647382713519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A083025 (n + 1) : ℤ)

end

end A209661.P3943168647382713519

noncomputable section

/-- A209661: a(n) = (-1)^A083025(n).

Offset 1, canonical program `A209661.P3943168647382713519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209661 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A209661.P3943168647382713519.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209661.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209662.P10047044424583177096

`(n+1)*A209661(n+1)`
-/

namespace A209662.P10047044424583177096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A209661 (n + 1)

end

end A209662.P10047044424583177096

noncomputable section

/-- A209662: a(n) = (-1)^A083025(n)*n.

Offset 1, canonical program `A209662.P10047044424583177096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209662 (n : ℕ) : ℤ :=
  A209662.P10047044424583177096.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A209662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A209921.P1460614472512575037

`record[A209662(n+1)]`
-/

namespace A209921.P1460614472512575037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209921.P1460614472512575037

noncomputable section

/-- A209921: Position of positive values in A209661 and A209662.

Offset 1, canonical program `A209921.P1460614472512575037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5101 terms. -/
def A209921 (n : ℕ) : ℤ :=
  A209921.P1460614472512575037.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5101 terms. -/
def A209921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A216957.P2135053130525426770

`a((n+1)%2)*A007148(n)` with `a(0)=2`
-/

namespace A216957.P2135053130525426770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a ((n + 1) % 2) * A007148 n

end

end A216957.P2135053130525426770

noncomputable section

/-- A216957: a(1)=2; for n > 1, a(n) = 2^(n-2) + (1/(2n-2)) * Sum_{ d divides n-1 } phi(2d)*2^((n-1)/d).

Offset 1, canonical program `A216957.P2135053130525426770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A216957 (n : ℕ) : ℤ :=
  A216957.P2135053130525426770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A216957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231773.P13203328181478767103

`comp[A072209(n+1)-1]+1`
-/

namespace A231773.P13203328181478767103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072209 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A231773.P13203328181478767103

noncomputable section

/-- A231773: Numbers k such that there are no numbers with k primitive roots.

Offset 1, canonical program `A231773.P13203328181478767103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7299 terms. -/
def A231773 (n : ℕ) : ℤ :=
  (A231773.P13203328181478767103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7299 terms. -/
def A231773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236467.P8483166501229439060

`∩[A029707(n+1), A144834(n+1)]+1`
-/

namespace A236467.P8483166501229439060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A236467.P8483166501229439060

noncomputable section

/-- A236467: Primes p with p + 2 and prime(p) - 2 both prime.

Offset 1, canonical program `A236467.P8483166501229439060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A236467 (n : ℕ) : ℤ :=
  (A236467.P8483166501229439060.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A236467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250025.P7718321545328011715

`∩[A060229(n+1), A142190(n+1)]`
-/

namespace A250025.P7718321545328011715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A250025.P7718321545328011715

noncomputable section

/-- A250025: Lesser of twin prime pairs of the form (40n - 21, 40n - 19).

Offset 1, canonical program `A250025.P7718321545328011715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. -/
def A250025 (n : ℕ) : ℤ :=
  (A250025.P7718321545328011715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1361 terms. -/
def A250025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259539.P2662622544666601067

`∩[A029707(n+1), A053319(n)+a(n-1)]` with `a(0)=4`
-/

namespace A259539.P2662622544666601067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A053319 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259539.P2662622544666601067

noncomputable section

/-- A259539: Numbers m with m-1, m+1 and prime(m)+2 all prime.

Offset 1, canonical program `A259539.P2662622544666601067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A259539 (n : ℕ) : ℤ :=
  (A259539.P2662622544666601067.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. -/
def A259539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260517.P13167705855874762144

`A074953(eq[Δ[A067829(n+1)], A053319(n+2)]+1)`
-/

namespace A260517.P13167705855874762144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074953 (SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1)

end

end A260517.P13167705855874762144

noncomputable section

/-- A260517: Numbers equidistant from twin prime pairs that are also equidistant from numbers equidistant from twin prime pairs.

Offset 1, canonical program `A260517.P13167705855874762144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A260517 (n : ℕ) : ℤ :=
  A260517.P13167705855874762144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A260517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261533.P11461223256659698925

`A001359(lt[A096474(n+1), 7]+1)`
-/

namespace A261533.P11461223256659698925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096474 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A261533.P11461223256659698925

noncomputable section

/-- A261533: Primes p such that p+2 is prime with prime(p+2)-prime(p)=6.

Offset 1, canonical program `A261533.P11461223256659698925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A261533 (n : ℕ) : ℤ :=
  A261533.P11461223256659698925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A261533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263022.P14938541142514975447

`gcd(∑[n+1]², A326478(n+2))`
-/

namespace A263022.P14938541142514975447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A326478 (n + 2))

end

end A263022.P14938541142514975447

noncomputable section

/-- A263022: a(n) = gcd(n, 1^(n-1) + 2^(n-1) + ... + (n-1)^(n-1)) for n > 1.

Offset 2, canonical program `A263022.P14938541142514975447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A263022 (n : ℕ) : ℤ :=
  (A263022.P14938541142514975447.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A263022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268377.P13087392663479504575

`eq[0, A083025(A038387(n+1))]+1`
-/

namespace A268377.P13087392663479504575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A038387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268377.P13087392663479504575

noncomputable section

/-- A268377: Numbers n such that any prime factor of the form 4k+1 has even multiplicity.

Offset 1, canonical program `A268377.P13087392663479504575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. -/
def A268377 (n : ℕ) : ℤ :=
  (A268377.P13087392663479504575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. -/
def A268377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268378.P4635822612041174352

`∩[A187811(n+1), A268377(n+1)]`
-/

namespace A268378.P4635822612041174352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268378.P4635822612041174352

noncomputable section

/-- A268378: Numbers whose prime factorization includes at least one prime factor of form 4k+3 and any prime factor of the form 4k+1 has even multiplicity.

Offset 1, canonical program `A268378.P4635822612041174352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4803 terms. -/
def A268378 (n : ℕ) : ℤ :=
  (A268378.P4635822612041174352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4803 terms. -/
def A268378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270535.P6281251138440400066

`eq[Δ[A067829(n+1)], A053319(n+2)]`
-/

namespace A270535.P6281251138440400066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A270535.P6281251138440400066

noncomputable section

/-- A270535: Integers k such that A001359(k) + A001359(k+3) = A001359(k+1) + A001359(k+2).

Offset 1, canonical program `A270535.P6281251138440400066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A270535 (n : ℕ) : ℤ :=
  (A270535.P6281251138440400066.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A270535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281856.P11104635091588111363

`A000010(A033949(n+1))/4`
-/

namespace A281856.P11104635091588111363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A033949 (n + 1)).toNat : ℚ) / 4

end

end A281856.P11104635091588111363

noncomputable section

/-- A281856: One fourth of the order of the abelian non-cyclic groups (Z/A033949(n)*Z)^x.

Offset 1, canonical program `A281856.P11104635091588111363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A033949, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A281856 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A281856.P11104635091588111363.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A033949, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A281856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282322.P3045035046457869279

`A282321(n+1)+2`
-/

namespace A282322.P3045035046457869279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282321 (n + 1) + 2

end

end A282322.P3045035046457869279

noncomputable section

/-- A282322: Greater of twin primes congruent to 13 (mod 30).

Offset 1, canonical program `A282322.P3045035046457869279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282322 (n : ℕ) : ℤ :=
  A282322.P3045035046457869279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282326.P5010439827126536252

`A060229(n+1)+2`
-/

namespace A282326.P5010439827126536252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1) + 2

end

end A282326.P5010439827126536252

noncomputable section

/-- A282326: Greater of twin primes congruent to 1 (mod 30).

Offset 1, canonical program `A282326.P5010439827126536252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282326 (n : ℕ) : ℤ :=
  A282326.P5010439827126536252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292762.P7139243062585099352

`filter[A033948(n+1), A354029(#)]`
-/

namespace A292762.P7139243062585099352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354029 (f1 j).toNat = 1) n)

end

end A292762.P7139243062585099352

noncomputable section

/-- A292762: Numbers of the form p^k or 2*p^k, where p is a prime == 3 mod 4 and k is odd.

Offset 1, canonical program `A292762.P7139243062585099352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4970 terms. -/
def A292762 (n : ℕ) : ℤ :=
  A292762.P7139243062585099352.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4970 terms. -/
def A292762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292911.P11305991147892736781

`record[A326584(A072436(2*n+1))-n]`
-/

namespace A292911.P11305991147892736781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A072436 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292911.P11305991147892736781

noncomputable section

/-- A292911: Numbers n such that A291897(n) is divisible by (2*n-1)^3.

Offset 1, canonical program `A292911.P11305991147892736781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A292911 (n : ℕ) : ℤ :=
  A292911.P11305991147892736781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A292911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299110.P14728169400088016933

`∩[A031931(n+1), A088176(n+1)]`
-/

namespace A299110.P14728169400088016933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299110.P14728169400088016933

noncomputable section

/-- A299110: Prime(r) for r such that prime(r) - prime(r-1) = 12 and prime(r-1) - prime(r-2) = 2.

Offset 1, canonical program `A299110.P14728169400088016933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A299110 (n : ℕ) : ℤ :=
  (A299110.P14728169400088016933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1181 terms. -/
def A299110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305558.P7441246682485823562

`A000040(A029707(n+1)-1)+A000040(A107770(n+1)+1)-(A001359(n+1)+A006512(n+1))`
-/

namespace A305558.P7441246682485823562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A029707 (n + 1) - 1).toNat + A000040 (A107770 (n + 1) + 1).toNat - (A001359 (n + 1) + A006512 (n + 1))

end

end A305558.P7441246682485823562

noncomputable section

/-- A305558: If (p1,p2) is the n-th twin prime pair and p the prime before p1 and q the prime after p2 then a(n) = p + q - (p1 + p2).

Offset 1, canonical program `A305558.P7441246682485823562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A029707, A107770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305558 (n : ℕ) : ℤ :=
  A305558.P7441246682485823562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A029707, A107770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A305558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309132.P6253841371733913923

`lcm(A326478(n+1)², A326478(A055032(n+1)²))`
-/

namespace A309132.P6253841371733913923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A326478 (n + 1) ^ 2) (A326478 (A055032 (n + 1) ^ 2).toNat)

end

end A309132.P6253841371733913923

noncomputable section

/-- A309132: a(n) is the denominator of F(n) = A027641(n-1)/n + A027642(n-1)/n^2.

Offset 1, canonical program `A309132.P6253841371733913923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A309132 (n : ℕ) : ℤ :=
  (A309132.P6253841371733913923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A309132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319100.P5580130370207246504

`A000010(n+1)/A293483(n+1)`
-/

namespace A319100.P5580130370207246504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A293483 (n + 1) : ℚ)

end

end A319100.P5580130370207246504

noncomputable section

/-- A319100: Number of solutions to x^6 == 1 (mod n).

Offset 1, canonical program `A319100.P5580130370207246504`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A293483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319100 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319100.P5580130370207246504.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A293483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A319100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319450.P261748575354384773

`A033948(eq[1, A033948(n+2)-A033948(n+1)]+1)`
-/

namespace A319450.P261748575354384773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 2) - A033948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A319450.P261748575354384773

noncomputable section

/-- A319450: Numbers k such that k and k + 1 both have primitive roots.

Offset 1, canonical program `A319450.P261748575354384773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A319450 (n : ℕ) : ℤ :=
  A319450.P261748575354384773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A319450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319838.P6735889884423733754

`eq[1, A277544(A319100(n+1))]+1`
-/

namespace A319838.P6735889884423733754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A319100 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319838.P6735889884423733754

noncomputable section

/-- A319838: Numbers k such that A319100(k) is a power of 6.

Offset 1, canonical program `A319838.P6735889884423733754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A319838 (n : ℕ) : ℤ :=
  (A319838.P6735889884423733754.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1796 terms. -/
def A319838.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A328493.P13594218802109558231

`A126251(n+1)-1`
-/

namespace A328493.P13594218802109558231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126251 (n + 1) - 1

end

end A328493.P13594218802109558231

noncomputable section

/-- A328493: a(n) = (p_n + 1)*q_n - 1; where (p_n, q_n) is the n-th twin prime pair.

Offset 1, canonical program `A328493.P13594218802109558231`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328493 (n : ℕ) : ℤ :=
  A328493.P13594218802109558231.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126251, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A328493.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A331840.P4719221316134777901

`ceil(A282323(n+1)/30)`
-/

namespace A331840.P4719221316134777901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A282323 (n + 1) : ℚ) / 30⌉

end

end A331840.P4719221316134777901

noncomputable section

/-- A331840: Numbers k such that 30*k-13, 30*k-11 are twin primes.

Offset 1, canonical program `A331840.P4719221316134777901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331840 (n : ℕ) : ℤ :=
  A331840.P4719221316134777901.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A331840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332512.P6000169834190555387

`∩[A066498(n+1), A172019(n+1)]`
-/

namespace A332512.P6000169834190555387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332512.P6000169834190555387

noncomputable section

/-- A332512: Numbers k such that phi(k) == 0 (mod 12), where phi is the Euler totient function (A000010).

Offset 1, canonical program `A332512.P6000169834190555387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6821 terms. -/
def A332512 (n : ℕ) : ℤ :=
  (A332512.P6000169834190555387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6821 terms. -/
def A332512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332556.P9044296750150904000

`∪[A100319(n+1), A172019(n+1)]`
-/

namespace A332556.P9044296750150904000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332556.P9044296750150904000

noncomputable section

/-- A332556: Supertotient numbers: numbers k such that the set of numbers less than k and relatively prime to k can be partitioned into two disjoint subsets of equal sum.

Offset 1, canonical program `A332556.P9044296750150904000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332556 (n : ℕ) : ℤ :=
  (A332556.P9044296750150904000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A332556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A335150.P2848983247666895770

`6*∩[A057128(n+1), A319838(n+2)]`
-/

namespace A335150.P2848983247666895770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319838 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335150.P2848983247666895770

noncomputable section

/-- A335150: Perimeters of Heronian triangles whose smallest side length is coprime to their middle side and whose middle side length divides their perimeter.

Offset 1, canonical program `A335150.P2848983247666895770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A335150 (n : ℕ) : ℤ :=
  (A335150.P2848983247666895770.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6287 terms. -/
def A335150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338469.P2285265360204035828

`∩[A338471(n+1), A038513(n)]`
-/

namespace A338469.P2285265360204035828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P2285265360204035828

noncomputable section

/-- A338469: Products of three odd prime numbers of odd index.

Offset 1, canonical program `A338469.P2285265360204035828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. -/
def A338469 (n : ℕ) : ℤ :=
  (A338469.P2285265360204035828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. -/
def A338469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A345674.P823125279381487032

`A000010(n+1)-A046144(n+1)`
-/

namespace A345674.P823125279381487032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A046144 (n + 1)

end

end A345674.P823125279381487032

noncomputable section

/-- A345674: Euler totient function phi(n) - number of primitive roots modulo n.

Offset 1, canonical program `A345674.P823125279381487032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A046144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345674 (n : ℕ) : ℤ :=
  A345674.P823125279381487032.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A046144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A345674.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A346675.P3077414491905950270

`A088176(n+2)-A088176(n+1)`
-/

namespace A346675.P3077414491905950270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 2) - A088176 (n + 1)

end

end A346675.P3077414491905950270

noncomputable section

/-- A346675: First differences of A088176.

Offset 1, canonical program `A346675.P3077414491905950270`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346675 (n : ℕ) : ℤ :=
  A346675.P3077414491905950270.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A346675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348417.P9331888440258440261

`A046073(A081754(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348417.P9331888440258440261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A081754 (n + 1)).toNat

end

end A348417.P9331888440258440261

noncomputable section

/-- A348417: Number of coprime squares modulo A081754(n): a(n) = A046073(A081754(n)).

Offset 1, canonical program `A348417.P9331888440258440261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046073, A081754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348417 (n : ℕ) : ℤ :=
  A348417.P9331888440258440261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046073, A081754, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348417.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A357905.P13685105207051734525

`val(A319100(n+1), 3)`
-/

namespace A357905.P13685105207051734525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319100 (n + 1)).toNat 3

end

end A357905.P13685105207051734525

noncomputable section

/-- A357905: a(n) = log_3(A060839(n)).

Offset 1, canonical program `A357905.P13685105207051734525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357905 (n : ℕ) : ℤ :=
  (A357905.P13685105207051734525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A357905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362941.P14947685496723137444

`A108604(n+1)-1`
-/

namespace A362941.P14947685496723137444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) - 1

end

end A362941.P14947685496723137444

noncomputable section

/-- A362941: Numbers of the form (p+1)*(p+3) where (p,p+2) is a twin prime pair (cf. A001359).

Offset 1, canonical program `A362941.P14947685496723137444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362941 (n : ℕ) : ℤ :=
  A362941.P14947685496723137444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362941.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370494.P10899196163276954018

`A002378(A030059(n+1)-1)`
-/

namespace A370494.P10899196163276954018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A030059 (n + 1) - 1).toNat

end

end A370494.P10899196163276954018

noncomputable section

/-- A370494: Oblong numbers of the form (k-1)*k where k is the product of an odd number of distinct primes.

Offset 1, canonical program `A370494.P10899196163276954018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370494 (n : ℕ) : ℤ :=
  A370494.P10899196163276954018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370494.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372319.P6165790239700502449

`A022004(n+1)*A073648(n+1)*A098412(n+1)`
-/

namespace A372319.P6165790239700502449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) * A073648 (n + 1) * A098412 (n + 1)

end

end A372319.P6165790239700502449

noncomputable section

/-- A372319: Products of prime triples (p, p+2, p+6) where p = A022004(n).

Offset 1, canonical program `A372319.P6165790239700502449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372319 (n : ℕ) : ℤ :=
  A372319.P6165790239700502449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376668.P2494882009302996714

`A003056(A033948(n+1)+n²-C(n, 2))`
-/

namespace A376668.P2494882009302996714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A033948 (n + 1) + ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))).toNat

end

end A376668.P2494882009302996714

noncomputable section

/-- A376668: Positive integers that do not appear more than once in the same row of A036038 (or A078760), i.e., numbers m such that A376663(m) = 1.

Offset 1, canonical program `A376668.P2494882009302996714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A376668 (n : ℕ) : ℤ :=
  A376668.P2494882009302996714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A376668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378880.P15528048256974238467

`A378879(n+1)-A083025(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378880.P15528048256974238467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378879 (n + 1) - A083025 (n + 1)

end

end A378880.P15528048256974238467

noncomputable section

/-- A378880: a(n) = A378879(n) - A083025(n).

Offset 1, canonical program `A378880.P15528048256974238467`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, A378879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378880 (n : ℕ) : ℤ :=
  A378880.P15528048256974238467.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083025, A378879, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381194.P16466113372331178624

`A306905(n+1)-A000225(n)`
-/

namespace A381194.P16466113372331178624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306905 (n + 1) - A000225 n

end

end A381194.P16466113372331178624

noncomputable section

/-- A381194: Number of equal-length matchings of 2n uniformly spaced points on a circle.

Offset 1, canonical program `A381194.P16466113372331178624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A381194 (n : ℕ) : ℤ :=
  A381194.P16466113372331178624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A381194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391049.P16899425426740408334

`∪[A005385(n+1), A006512(n+1)]`
-/

namespace A391049.P16899425426740408334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391049.P16899425426740408334

noncomputable section

/-- A391049: Primes p such that p^2 - 4*q*r = s^2, where q, r are primes and s > 0.

Offset 1, canonical program `A391049.P16899425426740408334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391049 (n : ℕ) : ℤ :=
  (A391049.P16899425426740408334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392001.P6847206826078097584

`comp[floor((A033948(n+1)-1/2)/2)]`
-/

namespace A392001.P6847206826078097584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A033948 (n + 1) : ℚ) - (1 : ℚ) / 2) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392001.P6847206826078097584

noncomputable section

/-- A392001: Numbers k such that k + 1 is not a power of an odd prime and 2*k + 1 is not a prime power.

Offset 1, canonical program `A392001.P6847206826078097584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392001 (n : ℕ) : ℤ :=
  (A392001.P6847206826078097584.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394579.P10493215658390247642

`filter[A081754(n+2), A212793(#)]`
-/

namespace A394579.P10493215658390247642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A394579.P10493215658390247642

noncomputable section

/-- A394579: Moduli m in which a multiplicative square-root function exists over the ring of integers Z_m.

Offset 1, canonical program `A394579.P10493215658390247642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8769 terms. -/
def A394579 (n : ℕ) : ℤ :=
  A394579.P10493215658390247642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8769 terms. -/
def A394579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000117.P16867571138849897443

`A000011(2*n)`
-/

namespace A000117.P16867571138849897443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (2 * n)

end

end A000117.P16867571138849897443

noncomputable section

/-- A000117: Number of even sequences with period 2n (bisection of A000011).

Offset 0, canonical program `A000117.P16867571138849897443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A000117 (n : ℕ) : ℤ :=
  A000117.P16867571138849897443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A000117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A004614.P9711491461572912569

`filter[A081754(n+1), A354036(#)]`
-/

namespace A004614.P9711491461572912569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354036 (f1 j).toNat = 1) n)

end

end A004614.P9711491461572912569

noncomputable section

/-- A004614: Numbers that are divisible only by primes congruent to 3 mod 4.

Offset 1, canonical program `A004614.P9711491461572912569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5176 terms. -/
def A004614 (n : ℕ) : ℤ :=
  A004614.P9711491461572912569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5176 terms. -/
def A004614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023023.P8312334667224594781

`ceil(A000114(n+3)/3)/2`
-/

namespace A023023.P8312334667224594781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A000114 (n + 3) : ℚ) / 3⌉ : ℚ) / 2

end

end A023023.P8312334667224594781

noncomputable section

/-- A023023: Number of partitions of n into 3 unordered relatively prime parts.

Offset 3, canonical program `A023023.P8312334667224594781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023023 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A023023.P8312334667224594781.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A023023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037449.P5379136438379684916

`lcm(A014709(n)², A302138(A007913(n+1)))`
-/

namespace A037449.P5379136438379684916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n ^ 2) (A302138 (A007913 (n + 1)).toNat)

end

end A037449.P5379136438379684916

noncomputable section

/-- A037449: Discriminant of quadratic field Q(sqrt(n)).

Offset 1, canonical program `A037449.P5379136438379684916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037449 (n : ℕ) : ℤ :=
  (A037449.P5379136438379684916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A037449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043289.P2676077445732993452

`A014709(51*A336642(n+1))`
-/

namespace A043289.P2676077445732993452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (51 * A336642 (n + 1)).toNat

end

end A043289.P2676077445732993452

noncomputable section

/-- A043289: Maximal run length in base-15 representation of n.

Offset 1, canonical program `A043289.P2676077445732993452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A043289 (n : ℕ) : ℤ :=
  A043289.P2676077445732993452.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A043289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045668.P17978729724881212821

`2*n*A045686(n)`
-/

namespace A045668.P17978729724881212821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A045686 n

end

end A045668.P17978729724881212821

noncomputable section

/-- A045668: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to complement, inequivalent to reverse and reversed complement.

Offset 0, canonical program `A045668.P17978729724881212821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045668 (n : ℕ) : ℤ :=
  A045668.P17978729724881212821.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045686, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045683.P14787099194818843150

`A000048(n)-A045686(n)`
-/

namespace A045683.P14787099194818843150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A045686 n

end

end A045683.P14787099194818843150

noncomputable section

/-- A045683: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reverse, complement and reversed complement.

Offset 0, canonical program `A045683.P14787099194818843150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A045683 (n : ℕ) : ℤ :=
  A045683.P14787099194818843150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A045683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045753.P17143957402720220787

`floor(A071699(n+1)/4)`
-/

namespace A045753.P17143957402720220787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071699 (n + 1) : ℚ) / 4⌋

end

end A045753.P17143957402720220787

noncomputable section

/-- A045753: Numbers n such that 4n-1 and 4n+1 are both primes.

Offset 1, canonical program `A045753.P17143957402720220787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045753 (n : ℕ) : ℤ :=
  A045753.P17143957402720220787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A045753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049437.P3365650477123560235

`p?[A088176(n+1)-8]`
-/

namespace A049437.P3365650477123560235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A049437.P3365650477123560235

noncomputable section

/-- A049437: Primes p such that p+2 and p+8 are also primes but p+6 is not.

Offset 1, canonical program `A049437.P3365650477123560235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1261 terms. -/
def A049437 (n : ℕ) : ℤ :=
  A049437.P3365650477123560235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1261 terms. -/
def A049437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049643.P15143516310095013308

`A049641(2*n)`
-/

namespace A049643.P15143516310095013308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049641 (2 * n)

end

end A049643.P15143516310095013308

noncomputable section

/-- A049643: Number of fractions in Farey series of order n.

Offset 0, canonical program `A049643.P15143516310095013308`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049643 (n : ℕ) : ℤ :=
  A049643.P15143516310095013308.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049641, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A049643.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A051717.P719788567158624044

`lcm(A000034(n), A132084(floor(n/2)))`
-/

namespace A051717.P719788567158624044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A132084 ⌊(n : ℚ) / 2⌋.toNat)

end

end A051717.P719788567158624044

noncomputable section

/-- A051717: 1, followed by denominators of first differences of Bernoulli numbers (B(i)-B(i-1)).

Offset 0, canonical program `A051717.P719788567158624044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1292 terms. -/
def A051717 (n : ℕ) : ℤ :=
  (A051717.P719788567158624044.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1292 terms. -/
def A051717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054181.P17075192393642453761

`∑{d}[n+1, A000011(#-1)]`
-/

namespace A054181.P17075192393642453761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000011 (d - 1)

end

end A054181.P17075192393642453761

noncomputable section

/-- A054181: Inverse Moebius transform of A000011 (starting at term 0).

Offset 0, canonical program `A054181.P17075192393642453761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A054181 (n : ℕ) : ℤ :=
  A054181.P17075192393642453761.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A054181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054183.P17782024646663310574

`∑{d}[n+1, A000011(#-1)*A008683((n+1)/#)]`
-/

namespace A054183.P17782024646663310574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000011 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054183.P17782024646663310574

noncomputable section

/-- A054183: Moebius transform of A000011 (starting at term 0).

Offset 0, canonical program `A054183.P17782024646663310574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A054183 (n : ℕ) : ℤ :=
  A054183.P17782024646663310574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A054183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054538.P2968054408366459089

`A306905(n+2)/(2*(n+2))`
-/

namespace A054538.P2968054408366459089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306905 (n + 2) : ℚ) / (2 * (n + 2) : ℚ)

end

end A054538.P2968054408366459089

noncomputable section

/-- A054538: A000013 / 2.

Offset 1, canonical program `A054538.P2968054408366459089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A054538 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A054538.P2968054408366459089.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A054538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A054661.P5258497401606663667

`2*A054664(n+1)-A054660(n+1)`
-/

namespace A054661.P5258497401606663667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054664 (n + 1) - A054660 (n + 1)

end

end A054661.P5258497401606663667

noncomputable section

/-- A054661: Number of monic irreducible polynomials over GF(4) with zero trace.

Offset 1, canonical program `A054661.P5258497401606663667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054661 (n : ℕ) : ℤ :=
  A054661.P5258497401606663667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A054661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056357.P4842207205344538288

`A000011(n+1)-1`
-/

namespace A056357.P4842207205344538288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) - 1

end

end A056357.P4842207205344538288

noncomputable section

/-- A056357: Number of bracelet structures using exactly two different colored beads.

Offset 1, canonical program `A056357.P4842207205344538288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000011, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056357 (n : ℕ) : ℤ :=
  A056357.P4842207205344538288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000011, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056366.P11464598418181165535

`∑{d}[n+1, A008683(#)*A056357((n+1)/#)]`
-/

namespace A056366.P11464598418181165535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056357 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056366.P11464598418181165535

noncomputable section

/-- A056366: Number of primitive (period n) bracelet structures using exactly two different colored beads.

Offset 1, canonical program `A056366.P11464598418181165535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A056366 (n : ℕ) : ℤ :=
  A056366.P11464598418181165535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A056366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059125.P6289864031527853917

`and(A000265((n+1)²), A014709(xor(55, n)+55))`
-/

namespace A059125.P6289864031527853917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000265 ((n + 1) ^ 2)) (A014709 (Nat.xor 55 n + 55))

end

end A059125.P6289864031527853917

noncomputable section

/-- A059125: A self-generated dragon-like folding sequence.

Offset 0, canonical program `A059125.P6289864031527853917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A059125 (n : ℕ) : ℤ :=
  A059125.P6289864031527853917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A059125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060839.P16883216215693058205

`A000265(A319100(n+1))`
-/

namespace A060839.P16883216215693058205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A319100 (n + 1)).toNat

end

end A060839.P16883216215693058205

noncomputable section

/-- A060839: Number of solutions to x^3 == 1 (mod n).

Offset 1, canonical program `A060839.P16883216215693058205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060839 (n : ℕ) : ℤ :=
  A060839.P16883216215693058205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060839.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061560.P7270422985362392314

`record[A171435(A049643(n+1))]`
-/

namespace A061560.P7270422985362392314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A049643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061560.P7270422985362392314

noncomputable section

/-- A061560: Lengths of Farey-series (A005728) which are not primes.

Offset 1, canonical program `A061560.P7270422985362392314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061560 (n : ℕ) : ℤ :=
  A061560.P7270422985362392314.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A061560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071698.P4400357579070051536

`A071699(n+1)-2`
-/

namespace A071698.P4400357579070051536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071699 (n + 1) - 2

end

end A071698.P4400357579070051536

noncomputable section

/-- A071698: Lesser members of twin prime pairs of form (4*k+3, 4*k+5), k >= 0.

Offset 1, canonical program `A071698.P4400357579070051536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071698 (n : ℕ) : ℤ :=
  A071698.P4400357579070051536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073650.P10655186245204518636

`A049437(n+2)+2`
-/

namespace A073650.P10655186245204518636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049437 (n + 2) + 2

end

end A073650.P10655186245204518636

noncomputable section

/-- A073650: Define the composite field of a prime q to be f(q) = (t,s) if p, q, r are three consecutive primes and q-p = t and r-q = s. This is a sequence of primes q with field (2,6).

Offset 1, canonical program `A073650.P10655186245204518636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073650 (n : ℕ) : ℤ :=
  A073650.P10655186245204518636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A073650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074931.P9551543774266559115

`p?[floor(A074953(n+1)/3)]`
-/

namespace A074931.P9551543774266559115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074953 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A074931.P9551543774266559115

noncomputable section

/-- A074931: Primes p such that 3p is equidistant from consecutive prime twin pairs.

Offset 1, canonical program `A074931.P9551543774266559115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 692 terms. -/
def A074931 (n : ℕ) : ℤ :=
  A074931.P9551543774266559115.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 692 terms. -/
def A074931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078458.P449076157569164237

`2*A007814(n+1)+2*A083025(n+1)+A065339(n+1)`
-/

namespace A078458.P449076157569164237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007814 (n + 1) + 2 * A083025 (n + 1) + A065339 (n + 1)

end

end A078458.P449076157569164237

noncomputable section

/-- A078458: Total number of factors in a factorization of n into Gaussian primes.

Offset 1, canonical program `A078458.P449076157569164237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078458 (n : ℕ) : ℤ :=
  A078458.P449076157569164237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A078458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079635.P16766627809967727170

`A083025(n+1)-A065339(n+1)`
-/

namespace A079635.P16766627809967727170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) - A065339 (n + 1)

end

end A079635.P16766627809967727170

noncomputable section

/-- A079635: Sum of (2 - p mod 4) for all prime factors p of n (with repetition).

Offset 1, canonical program `A079635.P16766627809967727170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079635 (n : ℕ) : ℤ :=
  A079635.P16766627809967727170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A079635.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087784.P3470074920736831489

`A115076(n+1)*A177704(n)`
-/

namespace A087784.P3470074920736831489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115076 (n + 1) * A177704 n

end

end A087784.P3470074920736831489

noncomputable section

/-- A087784: Number of solutions to x^2 + y^2 + z^2 = 1 mod n.

Offset 1, canonical program `A087784.P3470074920736831489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087784 (n : ℕ) : ℤ :=
  A087784.P3470074920736831489.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089160.P16441962555828126250

`floor(A282321(n+1)/30)`
-/

namespace A089160.P16441962555828126250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282321 (n + 1) : ℚ) / 30⌋

end

end A089160.P16441962555828126250

noncomputable section

/-- A089160: Numbers k such that 30*k + 11 and 30*k + 13 are twin primes.

Offset 1, canonical program `A089160.P16441962555828126250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089160 (n : ℕ) : ℤ :=
  A089160.P16441962555828126250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089161.P4947751098107378367

`A331840(n+1)-1`
-/

namespace A089161.P4947751098107378367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331840 (n + 1) - 1

end

end A089161.P4947751098107378367

noncomputable section

/-- A089161: Numbers k such that 30*k + 17 and 30*k + 19 are twin primes.

Offset 1, canonical program `A089161.P4947751098107378367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089161 (n : ℕ) : ℤ :=
  A089161.P4947751098107378367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089607.P15571549371010904188

`a(A014709(n))` with `a(0)=1, a(1)=3, a(2)=1`
-/

namespace A089607.P15571549371010904188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 1] fun n a =>
  a (A014709 n).toNat

end

end A089607.P15571549371010904188

noncomputable section

/-- A089607: a(n)=((-1)^(n+1)*A002425(n)) modulo 4.

Offset 1, canonical program `A089607.P15571549371010904188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A089607 (n : ℕ) : ℤ :=
  (A089607.P15571549371010904188.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A089607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094179.P8224842387198527838

`filter[A004614(n+1), A066829(#)]`
-/

namespace A094179.P8224842387198527838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A094179.P8224842387198527838

noncomputable section

/-- A094179: Numbers congruent to 3 mod 4 which are divisible only by primes congruent to 3 mod 4.

Offset 1, canonical program `A094179.P8224842387198527838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5474 terms. -/
def A094179 (n : ℕ) : ℤ :=
  A094179.P8224842387198527838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5474 terms. -/
def A094179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094180.P14445506066879923085

`(A094179(n+1)+1)/4`
-/

namespace A094180.P14445506066879923085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094179 (n + 1) + 1 : ℚ) / 4

end

end A094180.P14445506066879923085

noncomputable section

/-- A094180: Numbers k such that 4*k-1 is divisible only by primes of form 4*m-1 (i.e., by the Gaussian primes A002145).

Offset 1, canonical program `A094180.P14445506066879923085`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094180 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094180.P14445506066879923085.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094179, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A094180.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101271.P143729997817666203

`A023023(n+6)-A023022(n+6)`
-/

namespace A101271.P143729997817666203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023023 (n + 6) - A023022 (n + 6)

end

end A101271.P143729997817666203

noncomputable section

/-- A101271: Number of partitions of n into 3 distinct and relatively prime parts.

Offset 6, canonical program `A101271.P143729997817666203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A101271 (n : ℕ) : ℤ :=
  A101271.P143729997817666203.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A101271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122986.P14413099790891145371

`eq[char[A316347(n)], A014709(n)]`
-/

namespace A122986.P14413099790891145371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316347 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122986.P14413099790891145371

noncomputable section

/-- A122986: Squares mod 1000.

Offset 1, canonical program `A122986.P14413099790891145371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A122986 (n : ℕ) : ℤ :=
  (A122986.P14413099790891145371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A122986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124519.P13216490919456465522

`A045753(n+2)/3`
-/

namespace A124519.P13216490919456465522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045753 (n + 2) : ℚ) / 3

end

end A124519.P13216490919456465522

noncomputable section

/-- A124519: Numbers k such that 12*k - 1 and 12*k + 1 are twin primes.

Offset 1, canonical program `A124519.P13216490919456465522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124519 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A124519.P13216490919456465522.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A124519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125821.P16599126941155596659

`∑[A076536(Δ[A205172(n+1)])]`
-/

namespace A125821.P16599126941155596659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205172 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A125821.P16599126941155596659

noncomputable section

/-- A125821: Numbers k for which 8*k+5 and 8*k+7 are twin primes.

Offset 1, canonical program `A125821.P16599126941155596659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A125821 (n : ℕ) : ℤ :=
  A125821.P16599126941155596659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A125821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127705.P9735207919828446703

`Δ[A049643(n)]-A162512(n+1)%2`
-/

namespace A127705.P9735207919828446703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A162512 (n + 1)) 2

end

end A127705.P9735207919828446703

noncomputable section

/-- A127705: a(n) = mu(n) + Sum_{k|n, k>1} (k+1)*mu(n/k), where mu = A008683.

Offset 1, canonical program `A127705.P9735207919828446703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127705 (n : ℕ) : ℤ :=
  A127705.P9735207919828446703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130313.P12971682947885630253

`ceil(A242114(n+1)/2)`
-/

namespace A130313.P12971682947885630253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A242114 (n + 1) : ℚ) / 2⌉

end

end A130313.P12971682947885630253

noncomputable section

/-- A130313: A000012 * A054523.

Offset 1, canonical program `A130313.P12971682947885630253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130313 (n : ℕ) : ℤ :=
  A130313.P12971682947885630253.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132241.P13997733159856759720

`A282321(A008619(n))+A010673(n)`
-/

namespace A132241.P13997733159856759720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282321 (A008619 n).toNat + A010673 n

end

end A132241.P13997733159856759720

noncomputable section

/-- A132241: Twin primes congruent to {11, 13} mod 30.

Offset 1, canonical program `A132241.P13997733159856759720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132241 (n : ℕ) : ℤ :=
  A132241.P13997733159856759720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138242.P9271491672774814996

`p?[A124519(n+1)]`
-/

namespace A138242.P9271491672774814996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138242.P9271491672774814996

noncomputable section

/-- A138242: Prime numbers k such that 12*k - 1, 12*k + 1 are twin primes.

Offset 1, canonical program `A138242.P9271491672774814996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A138242 (n : ℕ) : ℤ :=
  A138242.P9271491672774814996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 649 terms. -/
def A138242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138250.P13717186710602461343

`p?[A176114(n+1)]`
-/

namespace A138250.P13717186710602461343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138250.P13717186710602461343

noncomputable section

/-- A138250: Prime numbers k such that 30*k - 1, 30*k + 1 are twin primes.

Offset 1, canonical program `A138250.P13717186710602461343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A138250 (n : ℕ) : ℤ :=
  A138250.P13717186710602461343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A138250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138660.P7096998422197970140

`∩[A138242(n+1), A138248(n+1)]`
-/

namespace A138660.P7096998422197970140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A138660.P7096998422197970140

noncomputable section

/-- A138660: Primes p such that (12*p - 1, 12*p + 1) and (18*p - 1, 18*p + 1) are twin primes.

Offset 1, canonical program `A138660.P7096998422197970140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A138660 (n : ℕ) : ℤ :=
  (A138660.P7096998422197970140.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. -/
def A138660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139404.P3972116341465074720

`floor(A205172(n+1)/24)`
-/

namespace A139404.P3972116341465074720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205172 (n + 1) : ℚ) / 24⌋

end

end A139404.P3972116341465074720

noncomputable section

/-- A139404: Numbers k such that 24*k + 5 and 24*k + 7 are twin primes.

Offset 1, canonical program `A139404.P3972116341465074720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139404 (n : ℕ) : ℤ :=
  A139404.P3972116341465074720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139404.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140812.P6882242940985377112

`A051717(2*n)+A051717(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140812.P6882242940985377112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (2 * n) + A051717 (2 * n + 1)

end

end A140812.P6882242940985377112

noncomputable section

/-- A140812: a(n) = A051717(2n) + A051717(2n+1).

Offset 0, canonical program `A140812.P6882242940985377112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140812 (n : ℕ) : ℤ :=
  A140812.P6882242940985377112.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153087.P3812379538921097872

`A051717(3*n)+A051717(3*n+1)+A051717(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153087.P3812379538921097872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (3 * n) + A051717 (3 * n + 1) + A051717 (3 * n + 2)

end

end A153087.P3812379538921097872

noncomputable section

/-- A153087: a(n) = A051717(3n) + A051717(3n+1) + A051717(3n+2).

Offset 0, canonical program `A153087.P3812379538921097872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153087 (n : ℕ) : ℤ :=
  A153087.P3812379538921097872.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160498.P18345148161744705762

`∑{d}[n+1, A008683(#)*A060839((n+1)/#)]`
-/

namespace A160498.P18345148161744705762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A060839 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A160498.P18345148161744705762

noncomputable section

/-- A160498: Number of cubic primitive Dirichlet characters modulo n.

Offset 1, canonical program `A160498.P18345148161744705762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160498 (n : ℕ) : ℤ :=
  A160498.P18345148161744705762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163386.P14689619579502846118

`p?[A045753(n+1)+4]`
-/

namespace A163386.P14689619579502846118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045753 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163386.P14689619579502846118

noncomputable section

/-- A163386: Primes p such that 4(p-4)-1 and 4(p-4)+1 are twin primes.

Offset 1, canonical program `A163386.P14689619579502846118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A163386 (n : ℕ) : ℤ :=
  A163386.P14689619579502846118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. -/
def A163386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167181.P7167596632618904553

`filter[A004614(n+1), A008966(#)]`
-/

namespace A167181.P7167596632618904553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A167181.P7167596632618904553

noncomputable section

/-- A167181: Squarefree numbers such that all prime factors are == 3 mod 4.

Offset 1, canonical program `A167181.P7167596632618904553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8294 terms. -/
def A167181 (n : ℕ) : ℤ :=
  A167181.P7167596632618904553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8294 terms. -/
def A167181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175785.P6519600176006389600

`eq[16, A319100(A008574(n))]`
-/

namespace A175785.P6519600176006389600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175785.P6519600176006389600

noncomputable section

/-- A175785: Numbers n such that the number of distinct prime divisors of n does not divide phi(n).

Offset 1, canonical program `A175785.P6519600176006389600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A175785 (n : ℕ) : ℤ :=
  (A175785.P6519600176006389600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A175785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176133.P12380913063741606072

`p?[ceil(A205172(n+1)/6)]`
-/

namespace A176133.P12380913063741606072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A205172 (n + 1) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176133.P12380913063741606072

noncomputable section

/-- A176133: Pythagorean primes p (primes of form 4*k + 1) such that 6*p -+ 1 are twin primes.

Offset 1, canonical program `A176133.P12380913063741606072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1124 terms. -/
def A176133 (n : ℕ) : ℤ :=
  A176133.P12380913063741606072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1124 terms. -/
def A176133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181604.P3897109679359761280

`A282322(n%a(n-1))` with `a(0)=3`
-/

namespace A181604.P3897109679359761280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A282322 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A181604.P3897109679359761280

noncomputable section

/-- A181604: Twin primes ending in 3.

Offset 1, canonical program `A181604.P3897109679359761280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181604 (n : ℕ) : ℤ :=
  A181604.P3897109679359761280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A181605.P1127411244904129407

`A282323(n%(a(n-1)+val(n, 3)))` with `a(0)=7`
-/

namespace A181605.P1127411244904129407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A282323 (Int.tmod (n : ℤ) (a (n - 1) + (SequenceMachineLib.valuation n 3 : ℤ))).toNat

end

end A181605.P1127411244904129407

noncomputable section

/-- A181605: Twin primes ending in 7.

Offset 1, canonical program `A181605.P1127411244904129407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181605 (n : ℕ) : ℤ :=
  A181605.P1127411244904129407.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A181605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A224516.P4254981347655587293

`A002487(A060839(n+1))*A034444(n+1)`
-/

namespace A224516.P4254981347655587293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A060839 (n + 1)).toNat * A034444 (n + 1)

end

end A224516.P4254981347655587293

noncomputable section

/-- A224516: Number of solutions to x^4 - x == 0 (mod n).

Offset 1, canonical program `A224516.P4254981347655587293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224516 (n : ℕ) : ℤ :=
  A224516.P4254981347655587293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A224516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A227553.P11896763355419445799

`A087784(n+1)/A093148(n)`
-/

namespace A227553.P11896763355419445799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087784 (n + 1) : ℚ) / (A093148 n : ℚ)

end

end A227553.P11896763355419445799

noncomputable section

/-- A227553: Number of solutions to x^2 - y^2 - z^2 == 1 (mod n).

Offset 1, canonical program `A227553.P11896763355419445799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A227553 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A227553.P11896763355419445799.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A227553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240370.P5719875248519778256

`eq[1, A065338(A057521(n+1))]+1`
-/

namespace A240370.P5719875248519778256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A057521 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240370.P5719875248519778256

noncomputable section

/-- A240370: Positive integers n such that every element in the ring of integers modulo n can be written as the sum of two squares modulo n.

Offset 1, canonical program `A240370.P5719875248519778256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6504 terms. -/
def A240370 (n : ℕ) : ℤ :=
  (A240370.P5719875248519778256.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6504 terms. -/
def A240370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246269.P7585923862198389886

`A065338(A003961(n+1))`
-/

namespace A246269.P7585923862198389886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A003961 (n + 1)).toNat

end

end A246269.P7585923862198389886

noncomputable section

/-- A246269: a(1) = 1, a(p(k)) = p(k+1) mod 4 for k-th prime p(k) and a(u * v) = a(u) * a(v) for u, v > 0.

Offset 1, canonical program `A246269.P7585923862198389886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246269 (n : ℕ) : ℤ :=
  A246269.P7585923862198389886.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A065338, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A246269.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256216.P6411215166490644162

`A053656(n+1)-A000011(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256216.P6411215166490644162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053656 (n + 1) - A000011 (n + 1)

end

end A256216.P6411215166490644162

noncomputable section

/-- A256216: a(n) = A053656(n) - A000011(n).

Offset 1, canonical program `A256216.P6411215166490644162`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000011, A053656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256216 (n : ℕ) : ℤ :=
  A256216.P6411215166490644162.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000011, A053656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256216.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256217.P4640912278790756071

`A000011(n+1)-A256216(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256217.P4640912278790756071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 (n + 1) - A256216 (n + 1)

end

end A256217.P4640912278790756071

noncomputable section

/-- A256217: a(n) = A000011(n) - A256216(n).

Offset 1, canonical program `A256217.P4640912278790756071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000011, A256216, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256217 (n : ℕ) : ℤ :=
  A256217.P4640912278790756071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000011, A256216, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A256217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259913.P750605552926668623

`A037449(A049457(n+1))`
-/

namespace A259913.P750605552926668623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A049457 (n + 1)).toNat

end

end A259913.P750605552926668623

noncomputable section

/-- A259913: Discriminant of the number field containing the number with periodic continued fraction [1,n,1,n,1,n,...].

Offset 1, canonical program `A259913.P750605552926668623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A259913 (n : ℕ) : ℤ :=
  A259913.P750605552926668623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A259913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268379.P6643847251497471161

`lt[0, A079635(A028310(n))]`
-/

namespace A268379.P6643847251497471161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A268379.P6643847251497471161

noncomputable section

/-- A268379: Numbers having more prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

Offset 1, canonical program `A268379.P6643847251497471161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A268379 (n : ℕ) : ℤ :=
  (A268379.P6643847251497471161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2914 terms. -/
def A268379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268380.P16043284880696432250

`lt[A079635(A028310(n))+1, 1]`
-/

namespace A268380.P16043284880696432250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A028310 n).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268380.P16043284880696432250

noncomputable section

/-- A268380: Numbers having fewer prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

Offset 1, canonical program `A268380.P16043284880696432250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4936 terms. -/
def A268380 (n : ℕ) : ℤ :=
  (A268380.P16043284880696432250.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4936 terms. -/
def A268380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268381.P11095387665470384089

`comp[A268380(n+1)-1]+1`
-/

namespace A268381.P11095387665470384089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268380 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A268381.P11095387665470384089

noncomputable section

/-- A268381: Numbers having at least the same number of prime factors of the form 4*k+1 than of the form 4*k+3, when counted with multiplicity.

Offset 1, canonical program `A268381.P11095387665470384089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268381 (n : ℕ) : ℤ :=
  (A268381.P11095387665470384089.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269840.P7838285007290012038

`A270225(n+3)`
-/

namespace A269840.P7838285007290012038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270225 (n + 3)

end

end A269840.P7838285007290012038

noncomputable section

/-- A269840: Lesser of twin primes where both are the sum of 3 nonzero squares.

Offset 1, canonical program `A269840.P7838285007290012038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A269840 (n : ℕ) : ℤ :=
  A269840.P7838285007290012038.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A269840.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A307381.P12662117091474292687

`∑{d}[n+1, A008683(#)*A319100((n+1)/#)]`
-/

namespace A307381.P12662117091474292687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A319100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307381.P12662117091474292687

noncomputable section

/-- A307381: Number of sextic primitive Dirichlet characters modulo n.

Offset 1, canonical program `A307381.P12662117091474292687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307381 (n : ℕ) : ℤ :=
  A307381.P12662117091474292687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308706.P3139874676178354333

`A000013(n)-A115118(n)-A056366(A004280(n+1)-(n-1))`
-/

namespace A308706.P3139874676178354333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A115118 n - A056366 (A004280 (n + 1) - ((n : ℤ) - 1)).toNat

end

end A308706.P3139874676178354333

noncomputable section

/-- A308706: Number of chiral pairs of set partitions of a primitive cycle of n elements having exactly two different elements.

Offset 0, canonical program `A308706.P3139874676178354333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A308706 (n : ℕ) : ℤ :=
  A308706.P3139874676178354333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A308706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A330632.P13103444434143927249

`A091696(n+1)-A256217(A141310(n))`
-/

namespace A330632.P13103444434143927249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) - A256217 (A141310 n).toNat

end

end A330632.P13103444434143927249

noncomputable section

/-- A330632: Number of n-bead bracelets using exactly three colors with no adjacent beads having the same color.

Offset 1, canonical program `A330632.P13103444434143927249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A330632 (n : ℕ) : ℤ :=
  A330632.P13103444434143927249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A330632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A332555.P8219627411237860706

`eq[floor(1/(n+1)), char[A332556(n+1)]]`
-/

namespace A332555.P8219627411237860706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332556 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A332555.P8219627411237860706

noncomputable section

/-- A332555: Numbers that are not supertotients.

Offset 1, canonical program `A332555.P8219627411237860706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A332555 (n : ℕ) : ℤ :=
  (A332555.P8219627411237860706.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A332555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342025.P9862321101140846268

`A214264(A079635(n+1)²)`
-/

namespace A342025.P9862321101140846268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214264 (A079635 (n + 1) ^ 2).toNat

end

end A342025.P9862321101140846268

noncomputable section

/-- A342025: a(n) = 1 if n has the same numbers of prime factors of forms 4*k+1 and 4*k+3 when counted with multiplicity, otherwise 0.

Offset 1, canonical program `A342025.P9862321101140846268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342025 (n : ℕ) : ℤ :=
  A342025.P9862321101140846268.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A342025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A342101.P740003586747439283

`A070402(eq[1, A014709(n)])`
-/

namespace A342101.P740003586747439283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342101.P740003586747439283

noncomputable section

/-- A342101: Remove middle term and append, starting with [1, 2, 3].

Offset 1, canonical program `A342101.P740003586747439283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A342101 (n : ℕ) : ℤ :=
  A342101.P740003586747439283.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A342101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A343023.P3905545394748964052

`floor(A160498(n+1)/2)`
-/

namespace A343023.P3905545394748964052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160498 (n + 1) : ℚ) / 2⌋

end

end A343023.P3905545394748964052

noncomputable section

/-- A343023: Number of cyclic cubic fields with discriminant n^2.

Offset 1, canonical program `A343023.P3905545394748964052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343023 (n : ℕ) : ℤ :=
  A343023.P3905545394748964052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A343023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353479.P12835136818281320905

`A280710(n+1)*A342025(n+1)`
-/

namespace A353479.P12835136818281320905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1) * A342025 (n + 1)

end

end A353479.P12835136818281320905

noncomputable section

/-- A353479: a(n) = 1 if n is a semiprime of the form 4k+3, otherwise 0.

Offset 1, canonical program `A353479.P12835136818281320905`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280710, A342025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353479 (n : ℕ) : ℤ :=
  A353479.P12835136818281320905.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280710, A342025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369105.P2590256937605570919

`∩[A004614(n+1)-2, A065091(n+1)]`
-/

namespace A369105.P2590256937605570919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369105.P2590256937605570919

noncomputable section

/-- A369105: Primes p such that p+2 has only prime factors congruent to -1 modulo 4.

Offset 1, canonical program `A369105.P2590256937605570919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A369105 (n : ℕ) : ℤ :=
  (A369105.P2590256937605570919.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. -/
def A369105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389136.P1117857567589598408

`2*sqrt((n+1)/A037449(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389136.P1117857567589598408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt ((n + 1 : ℚ) / (A037449 (n + 1) : ℚ) : ℝ)

end

end A389136.P1117857567589598408

noncomputable section

/-- A389136: a(n) = 2*sqrt(n/A037449(n)).

Offset 1, canonical program `A389136.P1117857567589598408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389136 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389136.P1117857567589598408.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389136.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391998.P12404897570496427759

`filter[A392001(n+1), A005171(#)]`
-/

namespace A391998.P12404897570496427759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A391998.P12404897570496427759

noncomputable section

/-- A391998: Composite numbers k such that k + 1 is not a power of an odd prime and 2*k + 1 is not a prime power.

Offset 1, canonical program `A391998.P12404897570496427759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8535 terms. -/
def A391998 (n : ℕ) : ℤ :=
  A391998.P12404897570496427759.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8535 terms. -/
def A391998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A000046.P15269567726961333018

`A000048(n)-A308706(n)`
-/

namespace A000046.P15269567726961333018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 n - A308706 n

end

end A000046.P15269567726961333018

noncomputable section

/-- A000046: Number of primitive n-bead necklaces (turning over is allowed) where complements are equivalent.

Offset 0, canonical program `A000046.P15269567726961333018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000046 (n : ℕ) : ℤ :=
  A000046.P15269567726961333018.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A000046.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A015733.P12502680278738575132

`1+eq[0, A286627(n+1)]`
-/

namespace A015733.P12502680278738575132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015733.P12502680278738575132

noncomputable section

/-- A015733: Numbers k such that d(k) does not divide phi(k).

Offset 1, canonical program `A015733.P12502680278738575132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A015733 (n : ℕ) : ℤ :=
  (A015733.P12502680278738575132.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2077 terms. -/
def A015733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015734.P13178663633944902549

`A015733(eq[1, A015733(n+1)%2]+1)`
-/

namespace A015734.P13178663633944902549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015733 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A015734.P13178663633944902549

noncomputable section

/-- A015734: Odd numbers k such that d(k) does not divide phi(k).

Offset 1, canonical program `A015734.P13178663633944902549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A015734 (n : ℕ) : ℤ :=
  A015734.P13178663633944902549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1837 terms. -/
def A015734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020491.P2100325304569936286

`comp[A015733(n+1)-1]+1`
-/

namespace A020491.P2100325304569936286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015733 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A020491.P2100325304569936286

noncomputable section

/-- A020491: Numbers k such that sigma_0(k) divides phi(k).

Offset 1, canonical program `A020491.P2100325304569936286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020491 (n : ℕ) : ℤ :=
  (A020491.P2100325304569936286.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A020491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025584.P1747553391340850671

`A156828(n+1)%(A001248(n+1)-A008837(n+1)-A049643(n))`
-/

namespace A025584.P1747553391340850671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156828 (n + 1)) (A001248 (n + 1) - A008837 (n + 1) - A049643 n)

end

end A025584.P1747553391340850671

noncomputable section

/-- A025584: Primes p such that p-2 is not a prime.

Offset 1, canonical program `A025584.P1747553391340850671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025584 (n : ℕ) : ℤ :=
  A025584.P1747553391340850671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A033198.P5089609670144749707

`A037449(A144338(n+1))`
-/

namespace A033198.P5089609670144749707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (A144338 (n + 1)).toNat

end

end A033198.P5089609670144749707

noncomputable section

/-- A033198: Discriminants of real quadratic number fields.

Offset 1, canonical program `A033198.P5089609670144749707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6082 terms. -/
def A033198 (n : ℕ) : ℤ :=
  A033198.P5089609670144749707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6082 terms. -/
def A033198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045665.P7749227434187305744

`A004277(n)*A045683(n)`
-/

namespace A045665.P7749227434187305744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A045683 n

end

end A045665.P7749227434187305744

noncomputable section

/-- A045665: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reverse, complement and reversed complement.

Offset 0, canonical program `A045665.P7749227434187305744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A045665 (n : ℕ) : ℤ :=
  A045665.P7749227434187305744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A045665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045669.P14509284177368627786

`A045664(n)-A045665(n)`
-/

namespace A045669.P14509284177368627786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045664 n - A045665 n

end

end A045669.P14509284177368627786

noncomputable section

/-- A045669: Number of 2n-bead balanced binary strings of fundamental period 2n, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

Offset 0, canonical program `A045669.P14509284177368627786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045664, A045665, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045669 (n : ℕ) : ℤ :=
  A045669.P14509284177368627786.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045664, A045665, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045674.P8510068775620534225

`∑{d}[A028310(n), A045683(#)]`
-/

namespace A045674.P8510068775620534225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A045683 d

end

end A045674.P8510068775620534225

noncomputable section

/-- A045674: Number of 2n-bead balanced binary necklaces which are equivalent to their reverse, complement and reversed complement.

Offset 0, canonical program `A045674.P8510068775620534225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A045674 (n : ℕ) : ℤ :=
  A045674.P8510068775620534225.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 667 terms. -/
def A045674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045676.P8900542742695811205

`A128014(n)-A045674(n)`
-/

namespace A045676.P8900542742695811205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 n - A045674 n

end

end A045676.P8900542742695811205

noncomputable section

/-- A045676: Number of 2n-bead balanced binary necklaces which are equivalent to their reverse, but not equivalent to their complement and reversed complement.

Offset 0, canonical program `A045676.P8900542742695811205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045676 (n : ℕ) : ℤ :=
  A045676.P8900542742695811205.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045676.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045677.P7167331430785454104

`A000013(n)-A045674(n)`
-/

namespace A045677.P7167331430785454104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A045674 n

end

end A045677.P7167331430785454104

noncomputable section

/-- A045677: Number of 2n-bead balanced binary necklaces which are equivalent to their complement, but not equivalent to their reverse and their reversed complement.

Offset 0, canonical program `A045677.P7167331430785454104`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A045674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045677 (n : ℕ) : ℤ :=
  A045677.P7167331430785454104.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, A045674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045677.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045678.P6661484353096964123

`A011782(n)-A045674(n)`
-/

namespace A045678.P6661484353096964123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A045674 n

end

end A045678.P6661484353096964123

noncomputable section

/-- A045678: Number of 2n-bead balanced binary necklaces which are equivalent to their reversed complement, but not equivalent to their reverse and complement.

Offset 0, canonical program `A045678.P6661484353096964123`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045678 (n : ℕ) : ℤ :=
  A045678.P6661484353096964123.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045674, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A045678.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045687.P11816481710795598244

`A045669(n)/A004277(n)`
-/

namespace A045687.P11816481710795598244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A004277 n : ℚ)

end

end A045687.P11816481710795598244

noncomputable section

/-- A045687: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reversed complement, but are not equivalent to their reverse and complement.

Offset 0, canonical program `A045687.P11816481710795598244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045687.P11816481710795598244.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049633.P8943239964190066196

`A049643(n+1)+A049643(n)`
-/

namespace A049633.P8943239964190066196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (n + 1) + A049643 n

end

end A049633.P8943239964190066196

noncomputable section

/-- A049633: a(n) = T(n,n+1), array T as in A049627.

Offset 0, canonical program `A049633.P8943239964190066196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A049633 (n : ℕ) : ℤ :=
  A049633.P8943239964190066196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2816 terms. -/
def A049633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049634.P8228112400628920281

`A092249(n+2)+A049643(n)`
-/

namespace A049634.P8228112400628920281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 2) + A049643 n

end

end A049634.P8228112400628920281

noncomputable section

/-- A049634: a(n) = T(n,n+2), array T as in A049627.

Offset 0, canonical program `A049634.P8228112400628920281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2897 terms. -/
def A049634 (n : ℕ) : ℤ :=
  A049634.P8228112400628920281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2897 terms. -/
def A049634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049693.P1234389797638437336

`A049634(n)-1`
-/

namespace A049693.P1234389797638437336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n - 1

end

end A049693.P1234389797638437336

noncomputable section

/-- A049693: a(n) = T(n,n+2), array T as in A049687.

Offset 0, canonical program `A049693.P1234389797638437336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A049693 (n : ℕ) : ℤ :=
  A049693.P1234389797638437336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A049693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049697.P8461540125229909495

`A049633(n)-A036453(n+1)`
-/

namespace A049697.P8461540125229909495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - A036453 (n + 1)

end

end A049697.P8461540125229909495

noncomputable section

/-- A049697: a(n)=T(n,n+1), array T as in A049695.

Offset 0, canonical program `A049697.P8461540125229909495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2753 terms. -/
def A049697 (n : ℕ) : ℤ :=
  A049697.P8461540125229909495.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2753 terms. -/
def A049697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049698.P2174958753758549193

`A049634(n)-A036453(n+1)`
-/

namespace A049698.P2174958753758549193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n - A036453 (n + 1)

end

end A049698.P2174958753758549193

noncomputable section

/-- A049698: a(n) = T(n,n+2), array T as in A049695.

Offset 0, canonical program `A049698.P2174958753758549193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2819 terms. -/
def A049698 (n : ℕ) : ℤ :=
  A049698.P2174958753758549193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2819 terms. -/
def A049698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A052164.P18395530735648300715

`∩[A025584(n+1), A210360(n+1)-4]`
-/

namespace A052164.P18395530735648300715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A052164.P18395530735648300715

noncomputable section

/-- A052164: Primes at which the difference pattern X42Y (X and Y >= 6) occurs in A001223.

Offset 1, canonical program `A052164.P18395530735648300715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A052164 (n : ℕ) : ℤ :=
  (A052164.P18395530735648300715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A052164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055197.P16609682820262287136

`A038567(A061560(n+2))-1`
-/

namespace A055197.P16609682820262287136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A061560 (n + 2)).toNat - 1

end

end A055197.P16609682820262287136

noncomputable section

/-- A055197: Numbers k such that A005728(k) is not prime.

Offset 1, canonical program `A055197.P16609682820262287136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A055197 (n : ℕ) : ℤ :=
  A055197.P16609682820262287136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. -/
def A055197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056503.P12078029325460103094

`A000011(n+1)-A045677(n+1)/2`
-/

namespace A056503.P12078029325460103094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000011 (n + 1) : ℚ) - (A045677 (n + 1) : ℚ) / 2

end

end A056503.P12078029325460103094

noncomputable section

/-- A056503: Number of periodic palindromic structures of length n using a maximum of two different symbols.

Offset 1, canonical program `A056503.P12078029325460103094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056503.P12078029325460103094.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056508.P8052561775042287548

`A056503(n+1)-1`
-/

namespace A056508.P8052561775042287548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056503 (n + 1) - 1

end

end A056508.P8052561775042287548

noncomputable section

/-- A056508: Number of periodic palindromic structures of length n using exactly two different symbols.

Offset 1, canonical program `A056508.P8052561775042287548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056508 (n : ℕ) : ℤ :=
  A056508.P8052561775042287548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056518.P10495334089397764284

`∑{d}[n+1, A008683(#)*A056508((n+1)/#)]`
-/

namespace A056518.P10495334089397764284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056508 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056518.P10495334089397764284

noncomputable section

/-- A056518: Number of primitive (period n) periodic palindromic structures using exactly two different symbols.

Offset 1, canonical program `A056518.P10495334089397764284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518 (n : ℕ) : ℤ :=
  A056518.P10495334089397764284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057129.P2974831021615174290

`eq[gcd(8, n+1), A065338(n+1)]+1`
-/

namespace A057129.P2974831021615174290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A057129.P2974831021615174290

noncomputable section

/-- A057129: -4 is a square mod n.

Offset 1, canonical program `A057129.P2974831021615174290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2074 terms. -/
def A057129 (n : ℕ) : ℤ :=
  (A057129.P2974831021615174290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2074 terms. -/
def A057129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069237.P17398213092990108187

`filter[A020491(n+1), A066247(#)]`
-/

namespace A069237.P17398213092990108187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A069237.P17398213092990108187

noncomputable section

/-- A069237: Composite numbers k such that tau(k) divides phi(k), where tau(k) is the number of divisors of k and phi(k) the Euler totient function.

Offset 1, canonical program `A069237.P17398213092990108187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. -/
def A069237 (n : ℕ) : ℤ :=
  A069237.P17398213092990108187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8499 terms. -/
def A069237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072202.P15384746897434729582

`eq[1, A342025(n+1)]+1`
-/

namespace A072202.P15384746897434729582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072202.P15384746897434729582

noncomputable section

/-- A072202: Same numbers of prime factors of forms 4*k+1 and 4*k+3, counted with multiplicity.

Offset 1, canonical program `A072202.P15384746897434729582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072202 (n : ℕ) : ℤ :=
  (A072202.P15384746897434729582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078850.P10823573622474618809

`∩[A046137(n+1), A052164(n+1)]`
-/

namespace A078850.P10823573622474618809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078850.P10823573622474618809

noncomputable section

/-- A078850: Initial term in sequence of four consecutive primes separated by 3 consecutive differences each <=6 (i.e., when d=2,4 or 6) and forming d-pattern=[4,2,6]; short d-string notation of pattern = [426].

Offset 1, canonical program `A078850.P10823573622474618809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 857 terms. -/
def A078850 (n : ℕ) : ℤ :=
  (A078850.P10823573622474618809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 857 terms. -/
def A078850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100317.P11661269307119985409

`∪[A025584(n+1), A107986(n+1)]-1`
-/

namespace A100317.P11661269307119985409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A100317.P11661269307119985409

noncomputable section

/-- A100317: Numbers k such that exactly one of k - 1 and k + 1 is prime.

Offset 1, canonical program `A100317.P11661269307119985409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100317 (n : ℕ) : ℤ :=
  A100317.P11661269307119985409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104279.P12764755038926620985

`floor(A025584(n+2)/2)`
-/

namespace A104279.P12764755038926620985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025584 (n + 2) : ℚ) / 2⌋

end

end A104279.P12764755038926620985

noncomputable section

/-- A104279: Numbers n such that 2n+1 is prime and 2n-1 is not prime.

Offset 1, canonical program `A104279.P12764755038926620985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A104279 (n : ℕ) : ℤ :=
  A104279.P12764755038926620985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A104279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117244.P6624429983364198537

`∩[A025584(n+1), A102540(n+1)]`
-/

namespace A117244.P6624429983364198537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117244.P6624429983364198537

noncomputable section

/-- A117244: Single (or isolated or non-twin) primes (A007510) that are not Chen primes (A109611).

Offset 1, canonical program `A117244.P6624429983364198537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5269 terms. -/
def A117244 (n : ℕ) : ℤ :=
  (A117244.P6624429983364198537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5269 terms. -/
def A117244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134100.P16893923253376579022

`∩[A025584(n+1), A067833(n+1)]`
-/

namespace A134100.P16893923253376579022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A134100.P16893923253376579022

noncomputable section

/-- A134100: Primes p > 3 such that neither p-2 nor p-4 are prime.

Offset 1, canonical program `A134100.P16893923253376579022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8567 terms. -/
def A134100 (n : ℕ) : ℤ :=
  (A134100.P16893923253376579022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8567 terms. -/
def A134100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136799.P12211769734399561323

`A025584(n+3)-1`
-/

namespace A136799.P12211769734399561323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 3) - 1

end

end A136799.P12211769734399561323

noncomputable section

/-- A136799: Last term in a sequence of at least 3 consecutive composite integers.

Offset 1, canonical program `A136799.P12211769734399561323`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136799 (n : ℕ) : ℤ :=
  A136799.P12211769734399561323.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025584, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A136799.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136800.P8889398827105192195

`A136799(n+1)-A136798(n+1)+1`
-/

namespace A136800.P8889398827105192195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1) - A136798 (n + 1) + 1

end

end A136800.P8889398827105192195

noncomputable section

/-- A136800: Number of composites in prime gaps of size 3 or larger, in order of appearance.

Offset 1, canonical program `A136800.P8889398827105192195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136798, A136799, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136800 (n : ℕ) : ℤ :=
  A136800.P8889398827105192195.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136798, A136799, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A136800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145483.P10721197384634604581

`p?[A104279(n+1)+12]`
-/

namespace A145483.P10721197384634604581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P10721197384634604581

noncomputable section

/-- A145483: Primes p such that 2*p - 23 is prime.

Offset 1, canonical program `A145483.P10721197384634604581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. -/
def A145483 (n : ℕ) : ℤ :=
  A145483.P10721197384634604581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. -/
def A145483.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153145.P323281744238047457

`p?[A104279(n+1)-9]`
-/

namespace A153145.P323281744238047457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153145.P323281744238047457

noncomputable section

/-- A153145: Primes p such that 2*p + 19 is also prime.

Offset 1, canonical program `A153145.P323281744238047457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A153145 (n : ℕ) : ℤ :=
  A153145.P323281744238047457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A153145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157995.P10964348106611654498

`p?[A136799(n+1)+A107987(n+1)]`
-/

namespace A157995.P10964348106611654498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1) + A107987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157995.P10964348106611654498

noncomputable section

/-- A157995: Primes which are the sum of 1 plus two consecutive not-twin primes, p1 and p2, (p2-p1)>2.

Offset 1, canonical program `A157995.P10964348106611654498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A157995 (n : ℕ) : ℤ :=
  A157995.P10964348106611654498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. -/
def A157995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179384.P14080840919956110630

`A025584(n+1)-2`
-/

namespace A179384.P14080840919956110630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1) - 2

end

end A179384.P14080840919956110630

noncomputable section

/-- A179384: Nonprimes in A040976.

Offset 1, canonical program `A179384.P14080840919956110630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179384 (n : ℕ) : ℤ :=
  A179384.P14080840919956110630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A179384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179781.P966849526946660983

`A000046(n+1)-A308706(n+1)`
-/

namespace A179781.P966849526946660983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 1) - A308706 (n + 1)

end

end A179781.P966849526946660983

noncomputable section

/-- A179781: a(n) = AP(n) is the total number of aperiodic k-palindromes of n, 1 <= k <= n.

Offset 1, canonical program `A179781.P966849526946660983`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179781 (n : ℕ) : ℤ :=
  A179781.P966849526946660983.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A308706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A179781.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A180750.P8982842106611708069

`A180249(n+1)-A179781(n+1)`
-/

namespace A180750.P8982842106611708069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180249 (n + 1) - A179781 (n + 1)

end

end A180750.P8982842106611708069

noncomputable section

/-- A180750: a(n) = DP(n) is the total number of k-double-palindromes of n, where 2 <= k <= n.

Offset 1, canonical program `A180750.P8982842106611708069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180750 (n : ℕ) : ℤ :=
  A180750.P8982842106611708069.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A180750.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A181135.P15852532938470310667

`A180322(n+1)-A179781(n+1)`
-/

namespace A181135.P15852532938470310667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180322 (n + 1) - A179781 (n + 1)

end

end A181135.P15852532938470310667

noncomputable section

/-- A181135: a(n) = ADP(n) is the total number of aperiodic k-double-palindromes of n, where 2 <= k <= n.

Offset 1, canonical program `A181135.P15852532938470310667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180322, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181135 (n : ℕ) : ℤ :=
  A181135.P15852532938470310667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179781, A180322, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A181135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A197504.P12641478260192142009

`record[lcm(2, A332555(n+1))/2]`
-/

namespace A197504.P12641478260192142009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A332555 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197504.P12641478260192142009

noncomputable section

/-- A197504: 1 together with the odd numbers m >= 3 for which phi(2*m)/2 = phi(m)/2 is odd, where phi = A000010 (Euler's totient).

Offset 1, canonical program `A197504.P12641478260192142009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A197504 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A197504.P12641478260192142009.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A197504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A202237.P6137577916536499133

`record[(2*n+1)*A342025(2*n+1)]`
-/

namespace A202237.P6137577916536499133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A342025 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A202237.P6137577916536499133

noncomputable section

/-- A202237: Odd numbers with the same number of prime factors of the form 4*k+1 and 4*k+3.

Offset 1, canonical program `A202237.P6137577916536499133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7144 terms. -/
def A202237 (n : ℕ) : ℤ :=
  A202237.P6137577916536499133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7144 terms. -/
def A202237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A208539.P8659955523163642094

`A330632(n+1)+A010674(A028310(n))`
-/

namespace A208539.P8659955523163642094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330632 (n + 1) + A010674 (A028310 n).toNat

end

end A208539.P8659955523163642094

noncomputable section

/-- A208539: Number of n-bead necklaces of 3 colors allowing reversal, with no adjacent beads having the same color.

Offset 1, canonical program `A208539.P8659955523163642094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A208539 (n : ℕ) : ℤ :=
  A208539.P8659955523163642094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A208539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230039.P12683130028175782261

`p?[A104279(n+1)-1]`
-/

namespace A230039.P12683130028175782261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104279 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A230039.P12683130028175782261

noncomputable section

/-- A230039: Primes p such that 2*p+1 is not prime and 2*p+3 is prime.

Offset 1, canonical program `A230039.P12683130028175782261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1370 terms. -/
def A230039 (n : ℕ) : ℤ :=
  A230039.P12683130028175782261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1370 terms. -/
def A230039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237814.P8527101259238323609

`∩[A005384(n+1), A153145(n+1)]`
-/

namespace A237814.P8527101259238323609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237814.P8527101259238323609

noncomputable section

/-- A237814: Primes p such that 2*p+1 and 2*p+19 are also prime.

Offset 1, canonical program `A237814.P8527101259238323609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A237814 (n : ℕ) : ℤ :=
  (A237814.P8527101259238323609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1603 terms. -/
def A237814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259911.P9755070438546537918

`A259913(A003991(n+1))`
-/

namespace A259911.P9755070438546537918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259913 (A003991 (n + 1)).toNat

end

end A259911.P9755070438546537918

noncomputable section

/-- A259911: Triangular array; row k shows the discriminant of the field of the number having purely periodic continued fraction with period (j,k+1-j), for j=1..k.

Offset 1, canonical program `A259911.P9755070438546537918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A259911 (n : ℕ) : ℤ :=
  A259911.P9755070438546537918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A259911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280405.P4609664803987210733

`6*A104279(n+1)+3`
-/

namespace A280405.P4609664803987210733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A104279 (n + 1) + 3

end

end A280405.P4609664803987210733

noncomputable section

/-- A280405: Odd semiprimes that cannot be represented as 2p+3q, where p and q are primes.

Offset 1, canonical program `A280405.P4609664803987210733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280405 (n : ℕ) : ℤ :=
  A280405.P4609664803987210733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289585.P5960087080967793466

`A000010(A020491(n+1))/A000005(A020491(n+1))`
-/

namespace A289585.P5960087080967793466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A020491 (n + 1)).toNat : ℚ) / (A000005 (A020491 (n + 1)).toNat : ℚ)

end

end A289585.P5960087080967793466

noncomputable section

/-- A289585: Quotients as they appear as k increases when tau(k) divides phi(k).

Offset 1, canonical program `A289585.P5960087080967793466`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A020491, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289585 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A289585.P5960087080967793466.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A020491, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A289585.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309005.P3778487510630834579

`filter[A179384(n+3), A359590(#)]`
-/

namespace A309005.P3778487510630834579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A309005.P3778487510630834579

noncomputable section

/-- A309005: Odd squarefree composite numbers m such that m+2 is prime.

Offset 1, canonical program `A309005.P3778487510630834579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5950 terms. -/
def A309005 (n : ℕ) : ℤ :=
  A309005.P3778487510630834579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5950 terms. -/
def A309005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317992.P5649410725794310829

`A001221(A033198(n+1))-1`
-/

namespace A317992.P5649410725794310829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A033198 (n + 1)).toNat - 1

end

end A317992.P5649410725794310829

noncomputable section

/-- A317992: 2-rank of the narrow class group of the real quadratic field Q(sqrt(k)), k squarefree > 1.

Offset 2, canonical program `A317992.P5649410725794310829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317992 (n : ℕ) : ℤ :=
  A317992.P5649410725794310829.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317992.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A353477.P2258751349755491853

`A353480(n+1)-A353479(n+1)`
-/

namespace A353477.P2258751349755491853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1) - A353479 (n + 1)

end

end A353477.P2258751349755491853

noncomputable section

/-- A353477: a(n) = 1 if n is a semiprime of the form 4k+1, otherwise 0.

Offset 1, canonical program `A353477.P2258751349755491853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353479, A353480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353477 (n : ℕ) : ℤ :=
  A353477.P2258751349755491853.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353479, A353480, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353477.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383487.P2708868646460127700

`A197504(n+2)²`
-/

namespace A383487.P2708868646460127700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 2) ^ 2

end

end A383487.P2708868646460127700

noncomputable section

/-- A383487: Prime powers p^r such that p == 3 (mod 4) and r is even.

Offset 1, canonical program `A383487.P2708868646460127700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A383487 (n : ℕ) : ℤ :=
  A383487.P2708868646460127700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A383487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A007510.P9655898748526012835

`∩[A025584(n+1), A067774(n+1)]`
-/

namespace A007510.P9655898748526012835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A007510.P9655898748526012835

noncomputable section

/-- A007510: Single (or isolated or non-twin) primes: Primes p such that neither p-2 nor p+2 is prime.

Offset 1, canonical program `A007510.P9655898748526012835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8565 terms. -/
def A007510 (n : ℕ) : ℤ :=
  (A007510.P9655898748526012835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8565 terms. -/
def A007510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011947.P14935983523207937062

`A179781(Δ[n²])`
-/

namespace A011947.P14935983523207937062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179781 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A011947.P14935983523207937062

noncomputable section

/-- A011947: Number of Barlow packings with group P63/mmc(O) that repeat after 4n+2 layers.

Offset 0, canonical program `A011947.P14935983523207937062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011947 (n : ℕ) : ℤ :=
  A011947.P14935983523207937062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A011947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011949.P6544439330995346585

`A056336(n+1)-A056518(n+1)`
-/

namespace A011949.P6544439330995346585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) - A056518 (n + 1)

end

end A011949.P6544439330995346585

noncomputable section

/-- A011949: Number of Barlow packings with group P6(bar)m2 that repeat after 2n layers.

Offset 1, canonical program `A011949.P6544439330995346585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949 (n : ℕ) : ℤ :=
  A011949.P6544439330995346585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A015732.P9248841914472335492

`∩[2*n, A069237(n+1)]`
-/

namespace A015732.P9248841914472335492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015732.P9248841914472335492

noncomputable section

/-- A015732: Even numbers k such that d(k) | phi(k).

Offset 1, canonical program `A015732.P9248841914472335492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4688 terms. -/
def A015732 (n : ℕ) : ℤ :=
  (A015732.P9248841914472335492.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4688 terms. -/
def A015732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045656.P5470975865177139039

`A045655(n)-∑{d}[n, A045669(#)]`
-/

namespace A045656.P5470975865177139039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - ∑ d ∈ Nat.divisors (f1 n), A045669 d

end

end A045656.P5470975865177139039

noncomputable section

/-- A045656: Number of 2n-bead balanced binary strings, rotationally equivalent to reverse, complement and reversed complement.

Offset 0, canonical program `A045656.P5470975865177139039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045656 (n : ℕ) : ℤ :=
  A045656.P5470975865177139039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045659.P18078101322428764532

`A045654(n)-A045656(n)`
-/

namespace A045659.P18078101322428764532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A045656 n

end

end A045659.P18078101322428764532

noncomputable section

/-- A045659: Number of 2n-bead balanced binary strings, rotationally equivalent to complement, inequivalent to reverse and reversed complement.

Offset 0, canonical program `A045659.P18078101322428764532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045659 (n : ℕ) : ℤ :=
  A045659.P18078101322428764532.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045660.P14796031568194010525

`A045655(n)-A045656(n)`
-/

namespace A045660.P14796031568194010525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - A045656 n

end

end A045660.P14796031568194010525

noncomputable section

/-- A045660: Number of 2n-bead balanced binary strings, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

Offset 0, canonical program `A045660.P14796031568194010525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045660 (n : ℕ) : ℤ :=
  A045660.P14796031568194010525.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047846.P4096273857081751705

`A028242(A136800(A028310(n)))`
-/

namespace A047846.P4096273857081751705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A136800 (A028310 n).toNat).toNat

end

end A047846.P4096273857081751705

noncomputable section

/-- A047846: Number of successive odd nonprimes (A014076).

Offset 1, canonical program `A047846.P4096273857081751705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047846 (n : ℕ) : ℤ :=
  A047846.P4096273857081751705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A047846.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049622.P13422498576475773910

`(n+2)²-1-A049634(n)`
-/

namespace A049622.P13422498576475773910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1 - A049634 n

end

end A049622.P13422498576475773910

noncomputable section

/-- A049622: a(n) = T(n,n+2), array T as in A049615.

Offset 0, canonical program `A049622.P13422498576475773910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A049622 (n : ℕ) : ℤ :=
  A049622.P13422498576475773910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A049622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049635.P15281965004979027358

`A216475(n+1)+A049693(n)`
-/

namespace A049635.P15281965004979027358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216475 (n + 1) + A049693 n

end

end A049635.P15281965004979027358

noncomputable section

/-- A049635: a(n) = T(n,n+3), array T as in A049627.

Offset 0, canonical program `A049635.P15281965004979027358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A049635 (n : ℕ) : ℤ :=
  A049635.P15281965004979027358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. -/
def A049635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049694.P6352157248811227265

`A049635(n)-1`
-/

namespace A049694.P6352157248811227265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049635 n - 1

end

end A049694.P6352157248811227265

noncomputable section

/-- A049694: a(n) = T(n,n+3), array T as in A049687.

Offset 0, canonical program `A049694.P6352157248811227265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2844 terms. -/
def A049694 (n : ℕ) : ℤ :=
  A049694.P6352157248811227265.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2844 terms. -/
def A049694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049699.P5945401674549983801

`A057428(n)+A049694(n)`
-/

namespace A049699.P5945401674549983801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A049694 n

end

end A049699.P5945401674549983801

noncomputable section

/-- A049699: a(n) = T(n,n+3), array T as in A049695.

Offset 0, canonical program `A049699.P5945401674549983801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A049699 (n : ℕ) : ℤ :=
  A049699.P5945401674549983801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A049699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056513.P10775552147206924827

`A056518(A233583(n+1))`
-/

namespace A056513.P10775552147206924827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A233583 (n + 1)).toNat

end

end A056513.P10775552147206924827

noncomputable section

/-- A056513: Number of primitive (period n) periodic palindromic structures using a maximum of two different symbols.

Offset 0, canonical program `A056513.P10775552147206924827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513 (n : ℕ) : ℤ :=
  A056513.P10775552147206924827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068015.P16167893793263978770

`A007510(n+2)-A007510(n+1)`
-/

namespace A068015.P16167893793263978770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 2) - A007510 (n + 1)

end

end A068015.P16167893793263978770

noncomputable section

/-- A068015: Gaps between non-twin primes.

Offset 1, canonical program `A068015.P16167893793263978770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068015 (n : ℕ) : ℤ :=
  A068015.P16167893793263978770.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A068015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074041.P16624840875090099525

`a(n-1)*A007510(n+1)` with `a(0)=2`
-/

namespace A074041.P16624840875090099525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A007510 (n + 1)

end

end A074041.P16624840875090099525

noncomputable section

/-- A074041: Product of first n single (i.e., non-twin) primes.

Offset 1, canonical program `A074041.P16624840875090099525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074041 (n : ℕ) : ℤ :=
  A074041.P16624840875090099525.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074041.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083370.P4305498635279400889

`A049591(lt[1, A047846(n+1)])`
-/

namespace A083370.P4305498635279400889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083370.P4305498635279400889

noncomputable section

/-- A083370: Primes satisfying f(2p)=p when f(1)=5 (see comment).

Offset 1, canonical program `A083370.P4305498635279400889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8573 terms. -/
def A083370 (n : ℕ) : ℤ :=
  A083370.P4305498635279400889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8573 terms. -/
def A083370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083371.P2383773422987209655

`A049591(lt[2, A047846(n+1)])`
-/

namespace A083371.P2383773422987209655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083371.P2383773422987209655

noncomputable section

/-- A083371: Primes p such that q-p >= 8, where q is the next prime after p.

Offset 1, canonical program `A083371.P2383773422987209655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6301 terms. -/
def A083371 (n : ℕ) : ℤ :=
  A083371.P2383773422987209655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6301 terms. -/
def A083371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130038.P424967591654019132

`A083370(n+1)+7`
-/

namespace A130038.P424967591654019132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1) + 7

end

end A130038.P424967591654019132

noncomputable section

/-- A130038: Even numbers n such that n-7 is prime, but neither n-3 nor n-5 is prime.

Offset 1, canonical program `A130038.P424967591654019132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130038 (n : ℕ) : ℤ :=
  A130038.P424967591654019132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131499.P15973366500604930490

`p?[A136799(n+1)+5]-4`
-/

namespace A131499.P15973366500604930490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4

end

end A131499.P15973366500604930490

noncomputable section

/-- A131499: Primes p such that nextprime(p)=p+4 and previousprime(p)

Offset 1, canonical program `A131499.P15973366500604930490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131499 (n : ℕ) : ℤ :=
  A131499.P15973366500604930490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A131499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132253.P4766283954835838953

`∩[A083370(n+1), A257645(n)]`
-/

namespace A132253.P4766283954835838953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A132253.P4766283954835838953

noncomputable section

/-- A132253: Isolated primes congruent to 29 (mod 30).

Offset 1, canonical program `A132253.P4766283954835838953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132253 (n : ℕ) : ℤ :=
  (A132253.P4766283954835838953.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A132253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134797.P10926386183801791278

`A007510(n+2)`
-/

namespace A134797.P10926386183801791278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 2)

end

end A134797.P10926386183801791278

noncomputable section

/-- A134797: Odd isolated primes.

Offset 1, canonical program `A134797.P10926386183801791278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134797 (n : ℕ) : ℤ :=
  A134797.P10926386183801791278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137869.P2950415357000949362

`p?[gcd(A083370(n+2), A134100(n+1))]`
-/

namespace A137869.P2950415357000949362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083370 (n + 2)) (A134100 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A137869.P2950415357000949362

noncomputable section

/-- A137869: Primes p with property that (p - previous prime) >= 6 and (next prime - p) >= 6.

Offset 1, canonical program `A137869.P2950415357000949362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7382 terms. -/
def A137869 (n : ℕ) : ℤ :=
  (A137869.P2950415357000949362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7382 terms. -/
def A137869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144550.P9654867779263600629

`∩[A007510(n+1), A088175(n+1)]`
-/

namespace A144550.P9654867779263600629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A144550.P9654867779263600629

noncomputable section

/-- A144550: Largest non-twin prime < n-th and (n+1)-th twin primes.

Offset 1, canonical program `A144550.P9654867779263600629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144550 (n : ℕ) : ℤ :=
  (A144550.P9654867779263600629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A146560.P14857807103795998292

`∩[A146948(n+1), A309005(n+1)]`
-/

namespace A146560.P14857807103795998292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A146560.P14857807103795998292

noncomputable section

/-- A146560: Squarefree semiprimes n such that n+1 is squarefree and n+2 is prime.

Offset 1, canonical program `A146560.P14857807103795998292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A146560 (n : ℕ) : ℤ :=
  (A146560.P14857807103795998292.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A146560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153478.P4380550818135464510

`∑[A007510(n+1)]`
-/

namespace A153478.P4380550818135464510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153478.P4380550818135464510

noncomputable section

/-- A153478: Sum of first n isolated (or single) primes A007510.

Offset 1, canonical program `A153478.P4380550818135464510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153478 (n : ℕ) : ℤ :=
  A153478.P4380550818135464510.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161164.P5309740144092016312

`abs(A001097(n+1)-A007510(n+1))`
-/

namespace A161164.P5309740144092016312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001097 (n + 1) - A007510 (n + 1)|

end

end A161164.P5309740144092016312

noncomputable section

/-- A161164: Absolute value of (the n-th twin prime minus the n-th non-twin prime).

Offset 1, canonical program `A161164.P5309740144092016312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161164 (n : ℕ) : ℤ :=
  A161164.P5309740144092016312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161165.P7740314374936360020

`A001097(n+1)+A007510(n+1)`
-/

namespace A161165.P7740314374936360020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + A007510 (n + 1)

end

end A161165.P7740314374936360020

noncomputable section

/-- A161165: The n-th twin prime plus the n-th isolated prime.

Offset 1, canonical program `A161165.P7740314374936360020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, A007510, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161165 (n : ℕ) : ℤ :=
  A161165.P7740314374936360020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, A007510, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A161165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A162734.P9082709708331958527

`A001057(A007510(n+2))-A001057(A007510(n+1)-1)`
-/

namespace A162734.P9082709708331958527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A007510 (n + 2)).toNat - A001057 (A007510 (n + 1) - 1).toNat

end

end A162734.P9082709708331958527

noncomputable section

/-- A162734: An alternating sum of all numbers from the n-th up to the (n+1)st isolated prime.

Offset 1, canonical program `A162734.P9082709708331958527`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162734 (n : ℕ) : ℤ :=
  A162734.P9082709708331958527.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A162734.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163654.P17404434252909917711

`A007510(n+1)+A007510(n+2)`
-/

namespace A163654.P17404434252909917711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + A007510 (n + 2)

end

end A163654.P17404434252909917711

noncomputable section

/-- A163654: The sum of the n-th and (n+1)st isolated prime.

Offset 1, canonical program `A163654.P17404434252909917711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163654 (n : ℕ) : ℤ :=
  A163654.P17404434252909917711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164274.P11426709217476400918

`A007510(n+1)+A014574(n+1)`
-/

namespace A164274.P11426709217476400918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) + A014574 (n + 1)

end

end A164274.P11426709217476400918

noncomputable section

/-- A164274: (n-th isolated prime) plus (n-th isolated composite).

Offset 1, canonical program `A164274.P11426709217476400918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164274 (n : ℕ) : ℤ :=
  A164274.P11426709217476400918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, A014574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A164274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164275.P16688256668584044959

`abs(A007510(n+1)-A014574(n+1))`
-/

namespace A164275.P16688256668584044959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007510 (n + 1) - A014574 (n + 1)|

end

end A164275.P16688256668584044959

noncomputable section

/-- A164275: The absolute value of (the n-th isolated composite minus the n-th isolated prime).

Offset 1, canonical program `A164275.P16688256668584044959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164275 (n : ℕ) : ℤ :=
  A164275.P16688256668584044959.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164513.P2430260910674781844

`A049591(lt[8, A047846(n+1)])`
-/

namespace A164513.P2430260910674781844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A164513.P2430260910674781844

noncomputable section

/-- A164513: Primes with gap to the next prime no less than 20.

Offset 1, canonical program `A164513.P2430260910674781844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. -/
def A164513 (n : ℕ) : ℤ :=
  A164513.P2430260910674781844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1520 terms. -/
def A164513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164534.P11491469561322458796

`A007510(n+1)-(-1)^A007510(n+1)`
-/

namespace A164534.P11491469561322458796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007510 (n + 1) : ℚ) - (-1 : ℚ) ^ (A007510 (n + 1) : ℤ)

end

end A164534.P11491469561322458796

noncomputable section

/-- A164534: (n-th isolated prime) -(-1)^(n-th isolated prime).

Offset 1, canonical program `A164534.P11491469561322458796`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164534 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164534.P11491469561322458796.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A164534.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167277.P12308341413257393222

`A007510(n+1)-1`
-/

namespace A167277.P12308341413257393222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) - 1

end

end A167277.P12308341413257393222

noncomputable section

/-- A167277: Largest nonprime

Offset 1, canonical program `A167277.P12308341413257393222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167277 (n : ℕ) : ℤ :=
  A167277.P12308341413257393222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167397.P6695962093421447498

`A007510(n+1)-(n+1)`
-/

namespace A167397.P6695962093421447498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1) - (n + 1 : ℤ)

end

end A167397.P6695962093421447498

noncomputable section

/-- A167397: n-th single (or isolated or non-twin) prime minus n.

Offset 1, canonical program `A167397.P6695962093421447498`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167397 (n : ℕ) : ℤ :=
  A167397.P6695962093421447498.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167397.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167706.P11488542031625927943

`∪[A007510(n+1), A014574(n+1)]`
-/

namespace A167706.P11488542031625927943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167706.P11488542031625927943

noncomputable section

/-- A167706: The single or isolated numbers. The union of single (or isolated or non-twin) primes and single (or isolated or average of twin prime pairs) nonprimes.

Offset 1, canonical program `A167706.P11488542031625927943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167706 (n : ℕ) : ℤ :=
  (A167706.P11488542031625927943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167771.P8141901052907375128

`A137869(n%a(n-1))` with `a(0)=2`
-/

namespace A167771.P8141901052907375128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A137869 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A167771.P8141901052907375128

noncomputable section

/-- A167771: Twice-isolated primes: primes p such that neither p+-2 nor p+-4 is prime.

Offset 1, canonical program `A167771.P8141901052907375128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167771 (n : ℕ) : ℤ :=
  A167771.P8141901052907375128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167885.P2592452161159091730

`A167706(n+1)*A167707(n+1)`
-/

namespace A167885.P2592452161159091730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) * A167707 (n + 1)

end

end A167885.P2592452161159091730

noncomputable section

/-- A167885: n-th single or isolated number*n-th non-single or nonisolated number.

Offset 1, canonical program `A167885.P2592452161159091730`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167885 (n : ℕ) : ℤ :=
  A167885.P2592452161159091730.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167886.P5242547505130811716

`A167706(n+1)-A167707(n+1)`
-/

namespace A167886.P5242547505130811716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A167707 (n + 1)

end

end A167886.P5242547505130811716

noncomputable section

/-- A167886: n-th single or isolated number minus n-th non-single or nonisolated number.

Offset 1, canonical program `A167886.P5242547505130811716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167886 (n : ℕ) : ℤ :=
  A167886.P5242547505130811716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167887.P6811191950323054762

`A167706(n+1)+A167707(n+1)`
-/

namespace A167887.P6811191950323054762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) + A167707 (n + 1)

end

end A167887.P6811191950323054762

noncomputable section

/-- A167887: n-th single or isolated number plus n-th non-single or nonisolated number.

Offset 1, canonical program `A167887.P6811191950323054762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167887 (n : ℕ) : ℤ :=
  A167887.P6811191950323054762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167888.P4384555184533195508

`A167706(n+1)^A167707(n+1)`
-/

namespace A167888.P4384555184533195508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167706 (n + 1) : ℚ) ^ (A167707 (n + 1) : ℤ)

end

end A167888.P4384555184533195508

noncomputable section

/-- A167888: n-th single or isolated number^n-th non-single or nonisolated number.

Offset 1, canonical program `A167888.P4384555184533195508`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167888 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167888.P4384555184533195508.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, A167707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A167888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168249.P10517048205738276799

`A167706(n+1)-A005117(n+1)`
-/

namespace A168249.P10517048205738276799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - A005117 (n + 1)

end

end A168249.P10517048205738276799

noncomputable section

/-- A168249: n-th single or isolated number minus n-th squarefree number.

Offset 1, canonical program `A168249.P10517048205738276799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168249 (n : ℕ) : ℤ :=
  A168249.P10517048205738276799.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168249.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168343.P10702448307998344180

`A167706(n+1)-(n+1)`
-/

namespace A168343.P10702448307998344180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1) - (n + 1 : ℤ)

end

end A168343.P10702448307998344180

noncomputable section

/-- A168343: n-th single or isolated number minus n.

Offset 1, canonical program `A168343.P10702448307998344180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168343 (n : ℕ) : ℤ :=
  A168343.P10702448307998344180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168543.P7013413832630956114

`A000720(A167706(n+1))`
-/

namespace A168543.P7013413832630956114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A167706 (n + 1)).toNat

end

end A168543.P7013413832630956114

noncomputable section

/-- A168543: pi(n-th single or isolated number).

Offset 1, canonical program `A168543.P7013413832630956114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168543 (n : ℕ) : ℤ :=
  A168543.P7013413832630956114.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171421.P931648610780433948

`A000010(A167706(n+1))`
-/

namespace A171421.P931648610780433948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A167706 (n + 1)).toNat

end

end A171421.P931648610780433948

noncomputable section

/-- A171421: Euler totient function of the n-th single or isolated number.

Offset 1, canonical program `A171421.P931648610780433948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171421 (n : ℕ) : ℤ :=
  A171421.P931648610780433948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A167706, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A171421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176656.P7092438726384079930

`A000720(A007510(n+1))`
-/

namespace A176656.P7092438726384079930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007510 (n + 1)).toNat

end

end A176656.P7092438726384079930

noncomputable section

/-- A176656: The positions of single (or isolated or non-twin) primes in A000040.

Offset 1, canonical program `A176656.P7092438726384079930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7145 terms. -/
def A176656 (n : ℕ) : ℤ :=
  A176656.P7092438726384079930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7145 terms. -/
def A176656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176657.P12577566922255081420

`A000720(∩[A007510(n+1), A334142(n+1)])`
-/

namespace A176657.P12577566922255081420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176657.P12577566922255081420

noncomputable section

/-- A176657: Numbers k such that prime(k) is not a twin prime and prime(prime(k)) is a twin prime.

Offset 1, canonical program `A176657.P12577566922255081420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 761 terms. -/
def A176657 (n : ℕ) : ℤ :=
  A176657.P12577566922255081420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 761 terms. -/
def A176657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176704.P13248784803027545844

`Δ[A176656(n+1)]-1`
-/

namespace A176704.P13248784803027545844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A176704.P13248784803027545844

noncomputable section

/-- A176704: Number of twin primes between non-twin prime(n) and non-twin prime(n+1).

Offset 1, canonical program `A176704.P13248784803027545844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176704 (n : ℕ) : ℤ :=
  A176704.P13248784803027545844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196277.P16361909060250174625

`∑[A047846(n+1)]`
-/

namespace A196277.P16361909060250174625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196277.P16361909060250174625

noncomputable section

/-- A196277: Numbers m such that A196274(m) > 1.

Offset 1, canonical program `A196277.P16361909060250174625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196277 (n : ℕ) : ℤ :=
  A196277.P16361909060250174625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A196277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A196445.P1664057712380764340

`2*A197504(n+1)`
-/

namespace A196445.P1664057712380764340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197504 (n + 1)

end

end A196445.P1664057712380764340

noncomputable section

/-- A196445: Numbers k >= 2 such that A055035(k) is an odd integer.

Offset 1, canonical program `A196445.P1664057712380764340`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196445 (n : ℕ) : ℤ :=
  A196445.P1664057712380764340.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A197504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A196445.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244066.P12419883921865423903

`∩[A162734(n+1), A163656(n+1)]`
-/

namespace A244066.P12419883921865423903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162734 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244066.P12419883921865423903

noncomputable section

/-- A244066: Arithmetic mean of two consecutive twin primes that is also the arithmetic mean of two consecutive non-twin primes.

Offset 1, canonical program `A244066.P12419883921865423903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A244066 (n : ℕ) : ℤ :=
  (A244066.P12419883921865423903.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 429 terms. -/
def A244066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273088.P1933067447831493313

`3*round(A134797(n+1)/3)`
-/

namespace A273088.P1933067447831493313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((A134797 (n + 1) : ℚ) / 3)

end

end A273088.P1933067447831493313

noncomputable section

/-- A273088: a(n) is a multiple of 6 and a(n)-1 or a(n)+1 is an isolated (non-twin) prime number.

Offset 1, canonical program `A273088.P1933067447831493313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273088 (n : ℕ) : ℤ :=
  A273088.P1933067447831493313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A273088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317990.P13986122005631344601

`2^A317992(n+2)`
-/

namespace A317990.P13986122005631344601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A317992 (n + 2) : ℤ)

end

end A317990.P13986122005631344601

noncomputable section

/-- A317990: Number of genera of the real quadratic field Q(sqrt(k)), k squarefree > 1.

Offset 2, canonical program `A317990.P13986122005631344601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317990.P13986122005631344601.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A317990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011948.P16276404241743664324

`A000046(n+6)-A056513(n+6)`
-/

namespace A011948.P16276404241743664324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000046 (n + 6) - A056513 (n + 6)

end

end A011948.P16276404241743664324

noncomputable section

/-- A011948: Number of Barlow packings with group P63mc that repeat after 2n layers.

Offset 6, canonical program `A011948.P16276404241743664324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A056513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011948 (n : ℕ) : ℤ :=
  A011948.P16276404241743664324.a (n - 6)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000046, A056513, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A011948.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A047078.P11719807738729298579

`∩[A083370(n+1)-2, A134100(n+1)]`
-/

namespace A047078.P11719807738729298579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083370 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A047078.P11719807738729298579

noncomputable section

/-- A047078: Primes at which difference pattern X2Y (X and Y >= 6) occurs in A001223.

Offset 1, canonical program `A047078.P11719807738729298579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A047078 (n : ℕ) : ℤ :=
  (A047078.P11719807738729298579.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1085 terms. -/
def A047078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A049623.P3173641935706412517

`A014209(n+1)-A049694(n)`
-/

namespace A049623.P3173641935706412517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 (n + 1) - A049694 n

end

end A049623.P3173641935706412517

noncomputable section

/-- A049623: a(n) = T(n,n+3), array T as in A049615.

Offset 0, canonical program `A049623.P3173641935706412517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A049623 (n : ℕ) : ℤ :=
  A049623.P3173641935706412517.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. -/
def A049623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085434.P6643677055624857651

`2*A134797(n+1)`
-/

namespace A085434.P6643677055624857651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134797 (n + 1)

end

end A085434.P6643677055624857651

noncomputable section

/-- A085434: Twice odd isolated primes.

Offset 1, canonical program `A085434.P6643677055624857651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085434 (n : ℕ) : ℤ :=
  A085434.P6643677055624857651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134797, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085434.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A126095.P17739323671417689772

`p?[and(1, A167706(n+2))*A167706(n+1)]`
-/

namespace A126095.P17739323671417689772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A167706 (n + 2)) * A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A126095.P17739323671417689772

noncomputable section

/-- A126095: Lesser of pairs of single (non-twin) primes.

Offset 1, canonical program `A126095.P17739323671417689772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126095 (n : ℕ) : ℤ :=
  A126095.P17739323671417689772.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A126095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130286.P5033588012465865576

`A008578(∩[A176656(n+1)+2, A176656(n+1)])`
-/

namespace A130286.P5033588012465865576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A130286.P5033588012465865576

noncomputable section

/-- A130286: Strongly-single primes: primes p such that neither previousprime(p) nor nextprime(p) is a twin prime.

Offset 1, canonical program `A130286.P5033588012465865576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A130286 (n : ℕ) : ℤ :=
  A130286.P5033588012465865576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5414 terms. -/
def A130286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163111.P14893710209663125730

`∩[A164513(n+1), A151800(A164513(n+1))]`
-/

namespace A163111.P14893710209663125730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A164513 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163111.P14893710209663125730

noncomputable section

/-- A163111: Prime numbers with gaps larger than 18 towards both neighboring primes.

Offset 1, canonical program `A163111.P14893710209663125730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A163111 (n : ℕ) : ℤ :=
  (A163111.P14893710209663125730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A163111.provenance : SequenceMachineLib.Provenance := .conjectured

