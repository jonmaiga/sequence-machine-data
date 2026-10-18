import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A367002: a(n) is the smallest prime factor of n*2^n-1.

The programs for A367002, there is no canonical definition to state claims against.
-/

/-! ## A367002.P8613252695962731150

`A094460(A168642(n))`
-/

namespace A367002.P8613252695962731150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094460 (A168642 n).toNat

end

end A367002.P8613252695962731150

/-!
# A367003: a(n) is the largest prime factor of n*2^n-1.

The programs for A367003, the canonical program `A367003.P10899407354706323176` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367003 has offset 1).

The definition of A367003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367003.P10899407354706323176

`A006530(A003261(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A367003

/-- `A006530(A003261(n+1))` -/
def P10899407354706323176.Spec : Prop :=
  ∀ n, P10899407354706323176.a n = A367003 (n + 1)

theorem P10899407354706323176.correct : P10899407354706323176.Spec := by
  intro n
  simp only [A367003, Nat.add_sub_cancel]

end A367003

/-! ## A367003.P2221144373966310201

`A006530(∑[(n+2)*2^n]-1)`
-/

namespace A367003.P2221144373966310201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A367003.P2221144373966310201

namespace A367003

/-- `A006530(∑[(n+2)*2^n]-1)` -/
def P2221144373966310201.Spec : Prop :=
  ∀ n, P2221144373966310201.a n = A367003 (n + 1)

end A367003

/-! ## A367003.P14017005604750329148

`A002034(A006530(or(n, (n+1)*∑[2^n])))`
-/

namespace A367003.P14017005604750329148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A006530 (Nat.lor n ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)))).toNat

end

end A367003.P14017005604750329148

namespace A367003

/-- `A002034(A006530(or(n, (n+1)*∑[2^n])))` -/
def P14017005604750329148.Spec : Prop :=
  ∀ n, P14017005604750329148.a n = A367003 (n + 1)

end A367003

/-! ## A367003.P5668520931561924418

`A006530(or(n, (n+1)*∑[2^n]))+A000007(n+3)`
-/

namespace A367003.P5668520931561924418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor n ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))) + A000007 (n + 3)

end

end A367003.P5668520931561924418

namespace A367003

/-- `A006530(or(n, (n+1)*∑[2^n]))+A000007(n+3)` -/
def P5668520931561924418.Spec : Prop :=
  ∀ n, P5668520931561924418.a n = A367003 (n + 1)

end A367003

/-!
# A367005: a(n) is the largest prime factor of n*2^n+1 for n>0, and a(0)=1.

The programs for A367005, the canonical program `A367005.P7593407316265420145` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367005 has offset 0).

The definition of A367005 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367005.P7593407316265420145

`A006530(A002064(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A367005

/-- `A006530(A002064(n))` -/
def P7593407316265420145.Spec : Prop :=
  ∀ n, P7593407316265420145.a n = A367005 n

theorem P7593407316265420145.correct : P7593407316265420145.Spec := by
  intro n
  simp only [A367005]

end A367005

/-! ## A367005.P17559345881379586617

`A006530(∏{p}[n*2^n+1, #])`
-/

namespace A367005.P17559345881379586617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A367005.P17559345881379586617

namespace A367005

/-- `A006530(∏{p}[n*2^n+1, #])` -/
def P17559345881379586617.Spec : Prop :=
  ∀ n, P17559345881379586617.a n = A367005 n

end A367005

/-! ## A367005.P10265092396921717060

`A006530(n*2^n+1)`
-/

namespace A367005.P10265092396921717060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n * 2 ^ n + 1)

end

end A367005.P10265092396921717060

namespace A367005

/-- `A006530(n*2^n+1)` -/
def P10265092396921717060.Spec : Prop :=
  ∀ n, P10265092396921717060.a n = A367005 n

end A367005

/-! ## A367005.P651671706304844921

`or(1, A006530(or(1, n*2^n)))`
-/

namespace A367005.P651671706304844921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (Nat.lor 1 (n * 2 ^ n)))

end

end A367005.P651671706304844921

namespace A367005

/-- `or(1, A006530(or(1, n*2^n)))` -/
def P651671706304844921.Spec : Prop :=
  ∀ n, P651671706304844921.a n = A367005 n

end A367005

/-! ## A367005.P5029963225271724867

`or(1, A006530(A062319(2^n)))`
-/

namespace A367005.P5029963225271724867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A062319 (2 ^ n)).toNat)

end

end A367005.P5029963225271724867

namespace A367005

/-- `or(1, A006530(A062319(2^n)))` -/
def P5029963225271724867.Spec : Prop :=
  ∀ n, P5029963225271724867.a n = A367005 n

end A367005

/-!
# A367007: Number of distinct prime factors of n*2^n + 1.

The programs for A367007, there is no canonical definition to state claims against.
-/

/-! ## A367007.P5032284932839906004

`A001222(A367009(n)%A168382(n+1))`
-/

namespace A367007.P5032284932839906004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A367009 n) (A168382 (n + 1))).toNat

end

end A367007.P5032284932839906004

/-! ## A367007.P6155693912374133120

`A001222(A367009(n))%A262405(2*n+3)`
-/

namespace A367007.P6155693912374133120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A367009 n).toNat) (A262405 (2 * n + 3))

end

end A367007.P6155693912374133120

/-! ## A367007.P15512317691424944489

`A124765(n*A302029(2*(n+1)))`
-/

namespace A367007.P15512317691424944489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 ((n : ℤ) * A302029 (2 * (n + 1))).toNat

end

end A367007.P15512317691424944489

/-! ## A367007.P5809898213613225759

`A103921(A186813(n)*A287628(n))`
-/

namespace A367007.P5809898213613225759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A186813 n * A287628 n).toNat

end

end A367007.P5809898213613225759

/-! ## A367007.P18243733983030614368

`A152487(A121373(n)+A034338(n+1))`
-/

namespace A367007.P18243733983030614368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152487 (A121373 n + A034338 (n + 1)).toNat

end

end A367007.P18243733983030614368

/-!
# A367008: Number of prime factors of n*2^n + 1, counted with multiplicity.

The programs for A367008, there is no canonical definition to state claims against.
-/

/-! ## A367008.P10866448598397347640

`∑{e}[A000085(A367009(n)), #]`
-/

namespace A367008.P10866448598397347640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (A367009 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A367008.P10866448598397347640

/-!
# A367009: Number of divisors of n*2^n + 1.

The programs for A367009, there is no canonical definition to state claims against.
-/

/-! ## A367009.P11544498314010460282

`∏{e}[n*2^n+1, #+1]`
-/

namespace A367009.P11544498314010460282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A367009.P11544498314010460282

/-! ## A367009.P2695239950473974987

`∑{d}[n*2^n+1, gcd(n, #)]`
-/

namespace A367009.P2695239950473974987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d

end

end A367009.P2695239950473974987

/-! ## A367009.P14637770904246875426

`∑{d}[n*2^n+1, #-xor(1, #)]`
-/

namespace A367009.P14637770904246875426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (Nat.xor 1 d : ℤ))

end

end A367009.P14637770904246875426

/-! ## A367009.P9034504936438008179

`∑{d}[2*n*2^n+2, (#+1)%2]`
-/

namespace A367009.P9034504936438008179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * 2 ^ n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1) % 2

end

end A367009.P9034504936438008179

/-! ## A367009.P14315227247128958502

`∑{d}[A036289(n)+1, and(1, #)]`
-/

namespace A367009.P14315227247128958502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.land 1 d

end

end A367009.P14315227247128958502

/-!
# A367010: a(n) is the sum of the divisors of n*2^n + 1.

The programs for A367010, the canonical program `A367010.P7494381377663068735` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367010 has offset 0).

The definition of A367010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367010.P7494381377663068735

`A000203(A002064(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367010

/-- `A000203(A002064(n))` -/
def P7494381377663068735.Spec : Prop :=
  ∀ n, P7494381377663068735.a n = A367010 n

theorem P7494381377663068735.correct : P7494381377663068735.Spec := by
  intro n
  simp only [A367010]

end A367010

/-! ## A367010.P16917861115077924896

`∑{d}[n*2^n+1, #]`
-/

namespace A367010.P16917861115077924896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A367010.P16917861115077924896

namespace A367010

/-- `∑{d}[n*2^n+1, #]` -/
def P16917861115077924896.Spec : Prop :=
  ∀ n, (P16917861115077924896.a n : ℤ) = A367010 n

end A367010

/-! ## A367010.P4217142767501782213

`A000027(∑{d}[A002064(n), #])`
-/

namespace A367010.P4217142767501782213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A367010.P4217142767501782213

namespace A367010

/-- `A000027(∑{d}[A002064(n), #])` -/
def P4217142767501782213.Spec : Prop :=
  ∀ n, P4217142767501782213.a n = A367010 n

end A367010

/-! ## A367010.P7659971214166433146

`A000027(∑{d}[A036289(n)+1, #])`
-/

namespace A367010.P7659971214166433146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A367010.P7659971214166433146

namespace A367010

/-- `A000027(∑{d}[A036289(n)+1, #])` -/
def P7659971214166433146.Spec : Prop :=
  ∀ n, P7659971214166433146.a n = A367010 n

end A367010

/-! ## A367010.P5022623583468863854

`A000203(n*2^n+1)`
-/

namespace A367010.P5022623583468863854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n * 2 ^ n + 1)

end

end A367010.P5022623583468863854

namespace A367010

/-- `A000203(n*2^n+1)` -/
def P5022623583468863854.Spec : Prop :=
  ∀ n, P5022623583468863854.a n = A367010 n

end A367010

/-!
# A367011: a(n) = Sum_{k=0..n} k! * k^(n-k).

The programs for A367011, there is no canonical definition to state claims against.
-/

/-! ## A367011.P16394502418326313222

`A325468(∑[∑[n]]+1)`
-/

namespace A367011.P16394502418326313222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A367011.P16394502418326313222

/-! ## A367011.P11044222025731805323

`A233764(A026938(n))`
-/

namespace A367011.P11044222025731805323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 (A026938 n).toNat

end

end A367011.P11044222025731805323

/-!
# A367013: Let q be the n-th prime power (A246655), then a(n) = q - Kronecker(-4,q).

The programs for A367013, the canonical program `A367013.P15774676469551048142` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367013 has offset 1).

The definition of A367013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367013.P15774676469551048142

`A201629(A246655(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367013

/-- `A201629(A246655(n+1))` -/
def P15774676469551048142.Spec : Prop :=
  ∀ n, P15774676469551048142.a n = A367013 (n + 1)

theorem P15774676469551048142.correct : P15774676469551048142.Spec := by
  intro n
  simp only [A367013, Nat.add_sub_cancel]

end A367013

/-! ## A367013.P2656688737282998373

`A201629(A000961(n+2))`
-/

namespace A367013.P2656688737282998373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A000961 (n + 2)).toNat

end

end A367013.P2656688737282998373

namespace A367013

/-- `A201629(A000961(n+2))` -/
def P2656688737282998373.Spec : Prop :=
  ∀ n, P2656688737282998373.a n = A367013 (n + 1)

end A367013

/-! ## A367013.P17243217699501242107

`A201629(∑[A057820(n+1)]+1)`
-/

namespace A367013.P17243217699501242107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A367013.P17243217699501242107

namespace A367013

/-- `A201629(∑[A057820(n+1)]+1)` -/
def P17243217699501242107.Spec : Prop :=
  ∀ n, P17243217699501242107.a n = A367013 (n + 1)

end A367013

/-! ## A367013.P11964671279890630448

`A246655(n+1)+A163805(A000961(n+2))`
-/

namespace A367013.P11964671279890630448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) + A163805 (A000961 (n + 2)).toNat

end

end A367013.P11964671279890630448

namespace A367013

/-- `A246655(n+1)+A163805(A000961(n+2))` -/
def P11964671279890630448.Spec : Prop :=
  ∀ n, P11964671279890630448.a n = A367013 (n + 1)

end A367013

/-!
# A367014: Let q be the n-th prime power (A246655), then a(n) = q^3 + q^2 - q; number of solutions to x*y = z*w in the finite field F_q.

The programs for A367014, the canonical program `A367014.P6510119788565707123` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367014 has offset 1).

The definition of A367014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367014.P6510119788565707123

`A329119(n+1)+A060615(n)+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A367014

/-- `A329119(n+1)+A060615(n)+1` -/
def P6510119788565707123.Spec : Prop :=
  ∀ n, P6510119788565707123.a n = A367014 (n + 1)

theorem P6510119788565707123.correct : P6510119788565707123.Spec := by
  intro n
  simp only [A367014, Nat.add_sub_cancel]

end A367014

/-! ## A367014.P3417549461092948412

`A329119(n+1)+A246655(n+1)²`
-/

namespace A367014.P3417549461092948412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1) + A246655 (n + 1) ^ 2

end

end A367014.P3417549461092948412

namespace A367014

/-- `A329119(n+1)+A246655(n+1)²` -/
def P3417549461092948412.Spec : Prop :=
  ∀ n, P3417549461092948412.a n = A367014 (n + 1)

end A367014

/-! ## A367014.P13357750593286418339

`sqrt(A003841(n+1))+A246655(n+1)²`
-/

namespace A367014.P13357750593286418339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003841 (n + 1) : ℝ) + (A246655 (n + 1) ^ 2 : ℝ)

end

end A367014.P13357750593286418339

namespace A367014

/-- `sqrt(A003841(n+1))+A246655(n+1)²` -/
def P13357750593286418339.Spec : Prop :=
  ∀ n, P13357750593286418339.a n = (A367014 (n + 1) : ℝ)

end A367014

/-! ## A367014.P5983600592555186603

`A246655(n+1)²²-A059238(n+1)`
-/

namespace A367014.P5983600592555186603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) ^ 2) ^ 2 - A059238 (n + 1)

end

end A367014.P5983600592555186603

namespace A367014

/-- `A246655(n+1)²²-A059238(n+1)` -/
def P5983600592555186603.Spec : Prop :=
  ∀ n, P5983600592555186603.a n = A367014 (n + 1)

end A367014

/-! ## A367014.P4015993006998737309

`(A246655(n+1)+A060615(n))*A246655(n+1)`
-/

namespace A367014.P4015993006998737309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A246655 (n + 1) + A060615 n) * A246655 (n + 1)

end

end A367014.P4015993006998737309

namespace A367014

/-- `(A246655(n+1)+A060615(n))*A246655(n+1)` -/
def P4015993006998737309.Spec : Prop :=
  ∀ n, P4015993006998737309.a n = A367014 (n + 1)

end A367014

/-! ## A367014.P2696250396984634386

`A329119(n+1)+Δ[A024918(n+1)]²`
-/

namespace A367014.P2696250396984634386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329119 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A367014.P2696250396984634386

namespace A367014

/-- `A329119(n+1)+Δ[A024918(n+1)]²` -/
def P2696250396984634386.Spec : Prop :=
  ∀ n, P2696250396984634386.a n = A367014 (n + 1)

end A367014

/-! ## A367014.P14976295175320461457

`(A060615(n)+A000961(n+2))*A000961(n+2)`
-/

namespace A367014.P14976295175320461457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060615 n + A000961 (n + 2)) * A000961 (n + 2)

end

end A367014.P14976295175320461457

namespace A367014

/-- `(A060615(n)+A000961(n+2))*A000961(n+2)` -/
def P14976295175320461457.Spec : Prop :=
  ∀ n, P14976295175320461457.a n = A367014 (n + 1)

end A367014

/-! ## A367014.P145323206683048498

`A085490(A246655(n+1))`
-/

namespace A367014.P145323206683048498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A246655 (n + 1)).toNat

end

end A367014.P145323206683048498

namespace A367014

/-- `A085490(A246655(n+1))` -/
def P145323206683048498.Spec : Prop :=
  ∀ n, P145323206683048498.a n = A367014 (n + 1)

end A367014

/-! ## A367014.P4270004360887873103

`A085490(A000961(n+2))`
-/

namespace A367014.P4270004360887873103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 (A000961 (n + 2)).toNat

end

end A367014.P4270004360887873103

namespace A367014

/-- `A085490(A000961(n+2))` -/
def P4270004360887873103.Spec : Prop :=
  ∀ n, P4270004360887873103.a n = A367014 (n + 1)

end A367014

/-! ## A367014.P17516769311859265813

`A081437(A181062(n+2))`
-/

namespace A367014.P17516769311859265813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 (A181062 (n + 2)).toNat

end

end A367014.P17516769311859265813

namespace A367014

/-- `A081437(A181062(n+2))` -/
def P17516769311859265813.Spec : Prop :=
  ∀ n, P17516769311859265813.a n = A367014 (n + 1)

end A367014

/-!
# A367015: Number of regions formed after n points have been placed in general position on each edge of a triangle (as in A365929).

The programs for A367015, the canonical program `A367015.P15680902792466513827` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367015 has offset 0).

The definition of A367015 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367015.P15680902792466513827

`3*n²*(n*(3*n-4)+5)/4+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367015

/-- `3*n²*(n*(3*n-4)+5)/4+1` -/
def P15680902792466513827.Spec : Prop :=
  ∀ n, P15680902792466513827.a n = (A367015 n : ℚ)

end A367015

/-! ## A367015.P2954956233254830607

`A374378(A139276(n))`
-/

namespace A367015.P2954956233254830607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374378 (A139276 n).toNat

end

end A367015.P2954956233254830607

namespace A367015

/-- `A374378(A139276(n))` -/
def P2954956233254830607.Spec : Prop :=
  ∀ n, P2954956233254830607.a n = A367015 n

end A367015

/-! ## A367015.P10915093479054655256

`A374378(A139277(n))`
-/

namespace A367015.P10915093479054655256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374378 (A139277 n).toNat

end

end A367015.P10915093479054655256

namespace A367015

/-- `A374378(A139277(n))` -/
def P10915093479054655256.Spec : Prop :=
  ∀ n, P10915093479054655256.a n = A367015 n

end A367015

/-! ## A367015.P3680001653734046397

`A374378(A000384(2*n+1)-(n+1))`
-/

namespace A367015.P3680001653734046397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374378 (A000384 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A367015.P3680001653734046397

namespace A367015

/-- `A374378(A000384(2*n+1)-(n+1))` -/
def P3680001653734046397.Spec : Prop :=
  ∀ n, P3680001653734046397.a n = A367015 n

end A367015

/-! ## A367015.P15336928059011344261

`A392228(∑[n]+3)`
-/

namespace A367015.P15336928059011344261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392228 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A367015.P15336928059011344261

namespace A367015

/-- `A392228(∑[n]+3)` -/
def P15336928059011344261.Spec : Prop :=
  ∀ n, P15336928059011344261.a n = A367015 n

end A367015

/-!
# A367016: G.f. satisfies A(x) = 1 + x*A(x)^4*(1 - x).

The programs for A367016, there is no canonical definition to state claims against.
-/

/-! ## A367016.P17852265578695931417

`A020913(A161798(n))`
-/

namespace A367016.P17852265578695931417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020913 (A161798 n).toNat

end

end A367016.P17852265578695931417

/-! ## A367016.P17630917504180088794

`A248559(A351200(n))`
-/

namespace A367016.P17630917504180088794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248559 (A351200 n).toNat

end

end A367016.P17630917504180088794

/-!
# A367017: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 - x).

The programs for A367017, there is no canonical definition to state claims against.
-/

/-! ## A367017.P12989020189336008797

`A301301(floor(A362245(n)/2))`
-/

namespace A367017.P12989020189336008797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 ⌊(A362245 n : ℚ) / 2⌋.toNat

end

end A367017.P12989020189336008797

/-! ## A367017.P4322030281856516378

`A370473(n)-A212618(A001710(n))`
-/

namespace A367017.P4322030281856516378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370473 n - A212618 (A001710 n).toNat

end

end A367017.P4322030281856516378

/-!
# A367018: Composite squarefree k that are not divisible by 6.

The programs for A367018, the canonical program `A367018.P17947161287673502210` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367018 has offset 1).

The definition of A367018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8979 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367018.P17947161287673502210

`filter[A366413(n+1), A097325(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A367018

/-- `filter[A366413(n+1), A097325(#)]` -/
def P17947161287673502210.Spec : Prop :=
  ∀ n, P17947161287673502210.a n = A367018 (n + 1)

theorem P17947161287673502210.correct : P17947161287673502210.Spec := by
  intro n
  simp only [A367018, Nat.add_sub_cancel]

end A367018

/-! ## A367018.P1226682363178847718

`filter[A120944(n+1), A097325(#)]`
-/

namespace A367018.P1226682363178847718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A367018.P1226682363178847718

namespace A367018

/-- `filter[A120944(n+1), A097325(#)]` -/
def P1226682363178847718.Spec : Prop :=
  ∀ n, P1226682363178847718.a n = A367018 (n + 1)

end A367018

/-! ## A367018.P9502093088409993580

`filter[A000469(n+2), A097325(#)]`
-/

namespace A367018.P9502093088409993580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A367018.P9502093088409993580

namespace A367018

/-- `filter[A000469(n+2), A097325(#)]` -/
def P9502093088409993580.Spec : Prop :=
  ∀ n, P9502093088409993580.a n = A367018 (n + 1)

end A367018

/-! ## A367018.P2990134539359335056

`∩[A047253(n+1), A120944(n+1)]`
-/

namespace A367018.P2990134539359335056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367018.P2990134539359335056

namespace A367018

/-- `∩[A047253(n+1), A120944(n+1)]` -/
def P2990134539359335056.Spec : Prop :=
  ∀ n, (P2990134539359335056.a n : ℤ) = A367018 (n + 1)

end A367018

/-! ## A367018.P10861671379001321841

`∩[A047253(n+1), A366413(n+1)]`
-/

namespace A367018.P10861671379001321841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367018.P10861671379001321841

namespace A367018

/-- `∩[A047253(n+1), A366413(n+1)]` -/
def P10861671379001321841.Spec : Prop :=
  ∀ n, (P10861671379001321841.a n : ℤ) = A367018 (n + 1)

end A367018

/-! ## A367018.P17331584079315499456

`∩[A120944(n+1), A232741(n+1)]`
-/

namespace A367018.P17331584079315499456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367018.P17331584079315499456

namespace A367018

/-- `∩[A120944(n+1), A232741(n+1)]` -/
def P17331584079315499456.Spec : Prop :=
  ∀ n, (P17331584079315499456.a n : ℤ) = A367018 (n + 1)

end A367018

/-! ## A367018.P309957059270051229

`∩[A232741(n+1), A366413(n+1)]`
-/

namespace A367018.P309957059270051229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367018.P309957059270051229

namespace A367018

/-- `∩[A232741(n+1), A366413(n+1)]` -/
def P309957059270051229.Spec : Prop :=
  ∀ n, (P309957059270051229.a n : ℤ) = A367018 (n + 1)

end A367018

/-! ## A367018.P7809492798308626052

`∩[A004525(A047263(2*(n+2))), A120944(n+1)]`
-/

namespace A367018.P7809492798308626052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367018.P7809492798308626052

namespace A367018

/-- `∩[A004525(A047263(2*(n+2))), A120944(n+1)]` -/
def P7809492798308626052.Spec : Prop :=
  ∀ n, (P7809492798308626052.a n : ℤ) = A367018 (n + 1)

end A367018

/-!
# A367020: Largest prime factor of A000058(n) = A007018(n) + 1 (Sylvester's sequence).

The programs for A367020, there is no canonical definition to state claims against.
-/

/-! ## A367020.P9618830982364484526

`A126263(A091336(n+1))`
-/

namespace A367020.P9618830982364484526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126263 (A091336 (n + 1)).toNat

end

end A367020.P9618830982364484526

/-! ## A367020.P9403281515569666843

`record[A126263(A136480(n))]`
-/

namespace A367020.P9403281515569666843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126263 (A136480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367020.P9403281515569666843

/-!
# A367022: Triangle read by rows, T(n, k) = [x^k] p(n), where p(n) = 4^n * hypergeom([1/2, -n - 1, -n], [2, 2], x).

The programs for A367022, the canonical program `A367022.P3554268763725929727` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367022 has offset 0).

The definition of A367022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4043 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367022.P3554268763725929727

`A262616(n)*A367023(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A367022

/-- `A262616(n)*A367023(n)` -/
def P3554268763725929727.Spec : Prop :=
  ∀ n, P3554268763725929727.a n = A367022 n

theorem P3554268763725929727.correct : P3554268763725929727.Spec := by
  intro n
  simp only [A367022]

end A367022

/-!
# A367023: Triangle read by rows, T(n, k) = [x^k] p(n), where p(n) = hypergeom([1/2, -n - 1, -n], [2, 2], 4*x).

The programs for A367023, the canonical program `A367023.P1465519748105078735` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367023 has offset 0).

The definition of A367023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6400 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367023.P11303405867879866340

`A000108(A002262(n))*A001263(n+1)`
-/

namespace A367023.P11303405867879866340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A001263 (n + 1)

end

end A367023.P11303405867879866340

namespace A367023

/-- `A000108(A002262(n))*A001263(n+1)` -/
def P11303405867879866340.Spec : Prop :=
  ∀ n, P11303405867879866340.a n = A367023 n

end A367023

/-! ## A367023.P5742867029757572195

`ceil(A132787(n+1)/2)*A000108(A002262(n))`
-/

namespace A367023.P5742867029757572195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132787 (n + 1) : ℚ) / 2⌉ * A000108 (A002262 n).toNat

end

end A367023.P5742867029757572195

namespace A367023

/-- `ceil(A132787(n+1)/2)*A000108(A002262(n))` -/
def P5742867029757572195.Spec : Prop :=
  ∀ n, P5742867029757572195.a n = A367023 n

end A367023

/-! ## A367023.P1064222930023411037

`ceil(A132787(n+1)/2)*A120588(A002260(n+1))`
-/

namespace A367023.P1064222930023411037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132787 (n + 1) : ℚ) / 2⌉ * A120588 (A002260 (n + 1)).toNat

end

end A367023.P1064222930023411037

namespace A367023

/-- `ceil(A132787(n+1)/2)*A120588(A002260(n+1))` -/
def P1064222930023411037.Spec : Prop :=
  ∀ n, P1064222930023411037.a n = A367023 n

end A367023

/-! ## A367023.P2480082126029924015

`A000108(A002262(n))*A131198(A007401(n+1))`
-/

namespace A367023.P2480082126029924015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A131198 (A007401 (n + 1)).toNat

end

end A367023.P2480082126029924015

namespace A367023

/-- `A000108(A002262(n))*A131198(A007401(n+1))` -/
def P2480082126029924015.Spec : Prop :=
  ∀ n, P2480082126029924015.a n = A367023 n

end A367023

/-! ## A367023.P14274858738069560613

`A000108(A002262(n))*A132808(A132119(n+1))`
-/

namespace A367023.P14274858738069560613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A132808 (A132119 (n + 1)).toNat

end

end A367023.P14274858738069560613

namespace A367023

/-- `A000108(A002262(n))*A132808(A132119(n+1))` -/
def P14274858738069560613.Spec : Prop :=
  ∀ n, P14274858738069560613.a n = A367023 n

end A367023

/-! ## A367023.P11595253645692465441

`(A132789(n+1)-A014473(n))*A000108(A002262(n))`
-/

namespace A367023.P11595253645692465441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132789 (n + 1) - A014473 n) * A000108 (A002262 n).toNat

end

end A367023.P11595253645692465441

namespace A367023

/-- `(A132789(n+1)-A014473(n))*A000108(A002262(n))` -/
def P11595253645692465441.Spec : Prop :=
  ∀ n, P11595253645692465441.a n = A367023 n

end A367023

/-! ## A367023.P12860087023391441824

`A133200(n+1)/A238303(n)*A000108(A002262(n))`
-/

namespace A367023.P12860087023391441824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133200 (n + 1) : ℚ) / (A238303 n : ℚ) * (A000108 (A002262 n).toNat : ℚ)

end

end A367023.P12860087023391441824

namespace A367023

/-- `A133200(n+1)/A238303(n)*A000108(A002262(n))` -/
def P12860087023391441824.Spec : Prop :=
  ∀ n, P12860087023391441824.a n = (A367023 n : ℚ)

end A367023

/-! ## A367023.P8197615455420244280

`A174124(n)/A154325(n)*A120588(A002260(n+1))`
-/

namespace A367023.P8197615455420244280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174124 n : ℚ) / (A154325 n : ℚ) * (A120588 (A002260 (n + 1)).toNat : ℚ)

end

end A367023.P8197615455420244280

namespace A367023

/-- `A174124(n)/A154325(n)*A120588(A002260(n+1))` -/
def P8197615455420244280.Spec : Prop :=
  ∀ n, P8197615455420244280.a n = (A367023 n : ℚ)

end A367023

/-! ## A367023.P541758331490519721

`(A132789(n+1)-A014473(n))*A120588(A002260(n+1))`
-/

namespace A367023.P541758331490519721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132789 (n + 1) - A014473 n) * A120588 (A002260 (n + 1)).toNat

end

end A367023.P541758331490519721

namespace A367023

/-- `(A132789(n+1)-A014473(n))*A120588(A002260(n+1))` -/
def P541758331490519721.Spec : Prop :=
  ∀ n, P541758331490519721.a n = A367023 n

end A367023

/-! ## A367023.P1465519748105078735

`A050169(n+1)*A161642(n)*A120588(A002260(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A367023

/-- `A050169(n+1)*A161642(n)*A120588(A002260(n+1))` -/
def P1465519748105078735.Spec : Prop :=
  ∀ n, P1465519748105078735.a n = A367023 n

theorem P1465519748105078735.correct : P1465519748105078735.Spec := by
  intro n
  simp only [A367023]

end A367023

/-! ## A367023.P3549471057968791896

`A367022(n)/A262616(n)`
-/

namespace A367023.P3549471057968791896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367022 n : ℚ) / (A262616 n : ℚ)

end

end A367023.P3549471057968791896

namespace A367023

/-- `A367022(n)/A262616(n)` -/
def P3549471057968791896.Spec : Prop :=
  ∀ n, P3549471057968791896.a n = (A367023 n : ℚ)

end A367023

/-!
# A367030: G.f. satisfies A(x) = 1 + x*A(x) - x^2*A(x)^5.

The programs for A367030, there is no canonical definition to state claims against.
-/

/-! ## A367030.P1989741174728107382

`A010892(A371142(n))*A364588(n)`
-/

namespace A367030.P1989741174728107382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A371142 n).toNat * A364588 n

end

end A367030.P1989741174728107382

/-!
# A367031: G.f. satisfies A(x) = 1 + x*A(x)^2 - x^2*A(x)^4.

The programs for A367031, there is no canonical definition to state claims against.
-/

/-! ## A367031.P10494501205770383637

`A084610(A001107(n+1))/(2*n+1)`
-/

namespace A367031.P10494501205770383637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084610 (A001107 (n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A367031.P10494501205770383637

/-!
# A367033: Von Neumann ordinals in bracket notation encoded by binary bits: '{' -> 0, '}'-> 1.

The programs for A367033, there is no canonical definition to state claims against.
-/

/-! ## A367033.P9493305464283861298

`A126646(A126646(n))-A092124(n)`
-/

namespace A367033.P9493305464283861298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A126646 n).toNat - A092124 n

end

end A367033.P9493305464283861298

/-!
# A367034: a(n) is the smallest odd number k > 1 for which the Jacobi symbol (n / k) >= 0.

The programs for A367034, there is no canonical definition to state claims against.
-/

/-! ## A367034.P1321110867414821424

`A060775(9*A366973(n))`
-/

namespace A367034.P1321110867414821424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (9 * A366973 n).toNat

end

end A367034.P1321110867414821424

/-!
# A367035: Numbers k such that the greatest prime less than 2*k is less than twice the greatest prime less than k.

The programs for A367035, there is no canonical definition to state claims against.
-/

/-! ## A367035.P15637767697667509138

`lt[A326062(A035031(2*n+1))²-n, A350074(n+1)]`
-/

namespace A367035.P15637767697667509138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326062 (A035031 (2 * n + 1)).toNat ^ 2 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367035.P15637767697667509138

/-! ## A367035.P15046968650513465606

`A324560(eq[1, A380958(3*n+2)])`
-/

namespace A367035.P15046968650513465606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380958 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A367035.P15046968650513465606

/-! ## A367035.P12849039175867056838

`A294732(eq[2, A373957(3*n+2)]+3)`
-/

namespace A367035.P12849039175867056838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373957 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A367035.P12849039175867056838

/-!
# A367037: Numbers k such that k^3*2^k - 1 is a prime.

The programs for A367037, there is no canonical definition to state claims against.
-/

/-! ## A367037.P8723257302611065570

`A270929(A001333(n))+A078307(n+1)`
-/

namespace A367037.P8723257302611065570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270929 (A001333 n).toNat + A078307 (n + 1)

end

end A367037.P8723257302611065570

/-!
# A367039: a(1) = 0, a(2) = 1; thereafter a(n) is the largest index < n not equal to i +- a(i) for any i = 1..n-1.

The programs for A367039, there is no canonical definition to state claims against.
-/

/-! ## A367039.P8951897016818413070

`and(n, n-A123679(n+1))`
-/

namespace A367039.P8951897016818413070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - A123679 (n + 1))

end

end A367039.P8951897016818413070

/-! ## A367039.P16020035736276251720

`n-A123679(A028310(n)+1)`
-/

namespace A367039.P16020035736276251720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A123679 (A028310 n + 1).toNat

end

end A367039.P16020035736276251720

/-! ## A367039.P17303597704175498297

`xor(A028310(n), A123679(n+1))`
-/

namespace A367039.P17303597704175498297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028310 n) (A123679 (n + 1))

end

end A367039.P17303597704175498297

/-! ## A367039.P15904742728590534144

`(n-A123679(n+1))*A057427(n)`
-/

namespace A367039.P15904742728590534144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A123679 (n + 1)) * A057427 n

end

end A367039.P15904742728590534144

/-! ## A367039.P14164102943802577497

`(n-A123679(n+1))%A098358(n)`
-/

namespace A367039.P14164102943802577497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A123679 (n + 1)) (A098358 n)

end

end A367039.P14164102943802577497

/-! ## A367039.P5829685505381271330

`A063524(n+1)-A123679(n+1)+n`
-/

namespace A367039.P5829685505381271330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) - A123679 (n + 1) + (n : ℤ)

end

end A367039.P5829685505381271330

/-! ## A367039.P934079393049459958

`(A123088(n+1)-1)%(n+1)`
-/

namespace A367039.P934079393049459958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123088 (n + 1) - 1) (n + 1 : ℤ)

end

end A367039.P934079393049459958

/-! ## A367039.P10530581534043034710

`A123088(n+1)-A065475(n+1)`
-/

namespace A367039.P10530581534043034710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123088 (n + 1) - A065475 (n + 1)

end

end A367039.P10530581534043034710

/-!
# A367040: G.f. satisfies A(x) = 1 + x^2 + x*A(x)^3.

The programs for A367040, there is no canonical definition to state claims against.
-/

/-! ## A367040.P16579406761148032966

`A241086(A008007(n))`
-/

namespace A367040.P16579406761148032966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (A008007 n).toNat

end

end A367040.P16579406761148032966

/-! ## A367040.P14392724772052785189

`A376953(A376957(n!))`
-/

namespace A367040.P14392724772052785189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376953 (A376957 (Nat.factorial n)).toNat

end

end A367040.P14392724772052785189

/-!
# A367041: G.f. satisfies A(x) = 1 + x^2 + x*A(x)^4.

The programs for A367041, there is no canonical definition to state claims against.
-/

/-! ## A367041.P18392896316853873383

`A127763(A304979(n)-n)`
-/

namespace A367041.P18392896316853873383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A304979 n - (n : ℤ)).toNat

end

end A367041.P18392896316853873383

/-! ## A367041.P2654382153592594719

`A215524(n)+A054899(A073513(n+1))`
-/

namespace A367041.P2654382153592594719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215524 n + A054899 (A073513 (n + 1)).toNat

end

end A367041.P2654382153592594719

/-!
# A367042: G.f. satisfies A(x) = 1 + x^3 + x*A(x)^2.

The programs for A367042, there is no canonical definition to state claims against.
-/

/-! ## A367042.P13786291133621175521

`A226190(A135336(n+1))-log2(A309861(n))`
-/

namespace A367042.P13786291133621175521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A226190 (A135336 (n + 1)).toNat : ℝ) - Real.logb 2 (A309861 n : ℝ)

end

end A367042.P13786291133621175521

/-! ## A367042.P16429761030698228940

`A214843(n+1)-A000122(A128154(n+1))`
-/

namespace A367042.P16429761030698228940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214843 (n + 1) - A000122 (A128154 (n + 1)).toNat

end

end A367042.P16429761030698228940

/-! ## A367042.P4355389867957209606

`A291189(n+1)-A219098(A082939(n+1))`
-/

namespace A367042.P4355389867957209606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291189 (n + 1) - A219098 (A082939 (n + 1)).toNat

end

end A367042.P4355389867957209606

/-! ## A367042.P1495126043650354792

`A214843(n+1)-A348341(A132838(n+1))`
-/

namespace A367042.P1495126043650354792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214843 (n + 1) - A348341 (A132838 (n + 1)).toNat

end

end A367042.P1495126043650354792

/-!
# A367043: G.f. satisfies A(x) = 1 + x^3 + x*A(x)^4.

The programs for A367043, there is no canonical definition to state claims against.
-/

/-! ## A367043.P9419421434232199327

`A085268(lcm(2, A054993(n)))`
-/

namespace A367043.P9419421434232199327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 (Int.lcm 2 (A054993 n) + 32)

end

end A367043.P9419421434232199327

/-! ## A367043.P9385321278309693973

`A235919(A002110(n))+A002293(n)`
-/

namespace A367043.P9385321278309693973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235919 (A002110 n).toNat + A002293 n

end

end A367043.P9385321278309693973

/-!
# A367044: G.f. satisfies A(x) = 1 - x^2 + x*A(x)^3.

The programs for A367044, there is no canonical definition to state claims against.
-/

/-! ## A367044.P5789035833015553880

`A349456(A051223(n+4))+A268039(n+1)`
-/

namespace A367044.P5789035833015553880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349456 (A051223 (n + 4)).toNat + A268039 (n + 1)

end

end A367044.P5789035833015553880

/-!
# A367045: G.f. satisfies A(x) = 1 - x^2 + x*A(x)^4.

The programs for A367045, there is no canonical definition to state claims against.
-/

/-! ## A367045.P17667966329393348478

`A002264(A004187(n))+A000930(n)`
-/

namespace A367045.P17667966329393348478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A004187 n).toNat + A000930 n

end

end A367045.P17667966329393348478

/-! ## A367045.P7591202828437566335

`A127088(n)-A127255(A000108(n))`
-/

namespace A367045.P7591202828437566335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127088 n - A127255 (A000108 n).toNat

end

end A367045.P7591202828437566335

/-!
# A367046: G.f. satisfies A(x) = 1 - x^3 + x*A(x)^3.

The programs for A367046, there is no canonical definition to state claims against.
-/

/-! ## A367046.P12679109195911002603

`A292927(n+1)+A054908(A000598(n))`
-/

namespace A367046.P12679109195911002603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292927 (n + 1) + A054908 (A000598 n).toNat

end

end A367046.P12679109195911002603

/-! ## A367046.P1526602293350756619

`A292927(n+1)+A165655(A000389(n))`
-/

namespace A367046.P1526602293350756619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292927 (n + 1) + A165655 (A000389 n).toNat

end

end A367046.P1526602293350756619

/-! ## A367046.P1370776346584811796

`A373155(A250504(n+1))+A292927(n+1)`
-/

namespace A367046.P1370776346584811796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373155 (A250504 (n + 1)).toNat + A292927 (n + 1)

end

end A367046.P1370776346584811796

/-!
# A367047: G.f. satisfies A(x) = 1 - x^3 + x*A(x)^4.

The programs for A367047, there is no canonical definition to state claims against.
-/

/-! ## A367047.P1420606623049171677

`A292928(n+1)+A037912(A007297(n+1))`
-/

namespace A367047.P1420606623049171677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292928 (n + 1) + A037912 (A007297 (n + 1)).toNat

end

end A367047.P1420606623049171677

/-!
# A367048: G.f. satisfies A(x) = 1 + x*A(x)^4 + x^2*A(x).

The programs for A367048, there is no canonical definition to state claims against.
-/

/-! ## A367048.P698762619843619922

`A330560(A141371(n+1))+A303925(n)`
-/

namespace A367048.P698762619843619922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330560 (A141371 (n + 1)).toNat + A303925 n

end

end A367048.P698762619843619922

/-! ## A367048.P8242176831386006845

`A020126(n+3)-A062756(A056756(2*(n+1)))`
-/

namespace A367048.P8242176831386006845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020126 (n + 3) - A062756 (A056756 (2 * (n + 1))).toNat

end

end A367048.P8242176831386006845

/-!
# A367049: G.f. satisfies A(x) = 1 + x*A(x)^4 + x^2*A(x)^2.

The programs for A367049, there is no canonical definition to state claims against.
-/

/-! ## A367049.P16385614660878571686

`A070321(A367240(n))-A139748(n)`
-/

namespace A367049.P16385614660878571686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A367240 n).toNat - A139748 n

end

end A367049.P16385614660878571686

/-!
# A367050: G.f. satisfies A(x) = 1 + x*A(x)^4 + x^2*A(x)^3.

The programs for A367050, there is no canonical definition to state claims against.
-/

/-! ## A367050.P15756545342489898981

`A255350(n^6)`
-/

namespace A367050.P15756545342489898981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (n ^ 6)

end

end A367050.P15756545342489898981

/-!
# A367054: Number of iterations until a repeating cycle begins in rule 161 cellular automaton in a cyclic universe of circumference n starting with one cell on.

The programs for A367054, there is no canonical definition to state claims against.
-/

/-! ## A367054.P14321426065866592853

`A052928(gcd(round(n/2)+1, A011782(n)))`
-/

namespace A367054.P14321426065866592853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (Int.gcd (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1) (A011782 n))

end

end A367054.P14321426065866592853

/-! ## A367054.P14970952767984821487

`A065176(gcd(A000217(n+2), A011782(n)))`
-/

namespace A367054.P14970952767984821487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065176 (Int.gcd (A000217 (n + 2)) (A011782 n))

end

end A367054.P14970952767984821487

/-! ## A367054.P6654745944271437726

`A052928(gcd(A002623(2*n+3), A174882(n)))`
-/

namespace A367054.P6654745944271437726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (Int.gcd (A002623 (2 * n + 3)) (A174882 n))

end

end A367054.P6654745944271437726

/-! ## A367054.P11295746535638411246

`and(A104594(A010078(n+1)), A104594(n+4))`
-/

namespace A367054.P11295746535638411246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104594 (A010078 (n + 1)).toNat) (A104594 (n + 4))

end

end A367054.P11295746535638411246

/-!
# A367055: Triangle read by rows: T(n, k) = A000120(n) + A000120(k), 0 <= k <= n.

The programs for A367055, the canonical program `A367055.P714048659223113584` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367055 has offset 0).

The definition of A367055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367055.P714048659223113584

`A000120(A002262(n))+A000120(A003056(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A367055

/-- `A000120(A002262(n))+A000120(A003056(n))` -/
def P714048659223113584.Spec : Prop :=
  ∀ n, P714048659223113584.a n = A367055 n

theorem P714048659223113584.correct : P714048659223113584.Spec := by
  intro n
  simp only [A367055]

end A367055

/-! ## A367055.P4346916224698658190

`A000120(A341521(n))`
-/

namespace A367055.P4346916224698658190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A341521 n).toNat

end

end A367055.P4346916224698658190

namespace A367055

/-- `A000120(A341521(n))` -/
def P4346916224698658190.Spec : Prop :=
  ∀ n, P4346916224698658190.a n = A367055 n

end A367055

/-! ## A367055.P188181308645728374

`A365618(A245300(n))`
-/

namespace A367055.P188181308645728374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365618 (A245300 n).toNat

end

end A367055.P188181308645728374

namespace A367055

/-- `A365618(A245300(n))` -/
def P188181308645728374.Spec : Prop :=
  ∀ n, P188181308645728374.a n = A367055 n

end A367055

/-! ## A367055.P620681141642838272

`A064547(A100851(n))`
-/

namespace A367055.P620681141642838272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A100851 n).toNat

end

end A367055.P620681141642838272

namespace A367055

/-- `A064547(A100851(n))` -/
def P620681141642838272.Spec : Prop :=
  ∀ n, P620681141642838272.a n = A367055 n

end A367055

/-! ## A367055.P16606837039078341651

`A064547(A100852(n))`
-/

namespace A367055.P16606837039078341651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A100852 n).toNat

end

end A367055.P16606837039078341651

namespace A367055

/-- `A064547(A100852(n))` -/
def P16606837039078341651.Spec : Prop :=
  ∀ n, P16606837039078341651.a n = A367055 n

end A367055

/-!
# A367056: G.f. satisfies A(x) = 1 + x*A(x)^2 + x^3*A(x).

The programs for A367056, there is no canonical definition to state claims against.
-/

/-! ## A367056.P4371452703251485137

`A070564(A294822(n+1))`
-/

namespace A367056.P4371452703251485137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070564 (A294822 (n + 1)).toNat

end

end A367056.P4371452703251485137

/-! ## A367056.P14089601512894771677

`A226762(∑[4*a(n-1)-a(n-3)])` with `a(0)=2, a(1)=1, a(2)=4, a(3)=16`
-/

namespace A367056.P14089601512894771677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4, 16] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A367056.P14089601512894771677

/-! ## A367056.P1475957265465068764

`A001462(A162326(n))`
-/

namespace A367056.P1475957265465068764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A162326 n).toNat

end

end A367056.P1475957265465068764

/-!
# A367057: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^3*A(x).

The programs for A367057, there is no canonical definition to state claims against.
-/

/-! ## A367057.P1731387690991036930

`A379159(n)+A044940(A007289(n))`
-/

namespace A367057.P1731387690991036930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379159 n + A044940 (A007289 n).toNat

end

end A367057.P1731387690991036930

/-! ## A367057.P9543292209217235442

`A379159(n)+A121210(A015886(n))`
-/

namespace A367057.P9543292209217235442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379159 n + A121210 (A015886 n).toNat

end

end A367057.P9543292209217235442

/-! ## A367057.P4851018250056314256

`A379159(n)+A316863(A088714(n))`
-/

namespace A367057.P4851018250056314256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379159 n + A316863 (A088714 n).toNat

end

end A367057.P4851018250056314256

/-!
# A367058: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^3*A(x)^2.

The programs for A367058, there is no canonical definition to state claims against.
-/

/-! ## A367058.P8558394571303353901

`A273887(A378463(n)+1)`
-/

namespace A367058.P8558394571303353901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273887 (A378463 n + 1).toNat

end

end A367058.P8558394571303353901

/-! ## A367058.P3141950983680531556

`A001462(A316652(n+1))-n`
-/

namespace A367058.P3141950983680531556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A316652 (n + 1)).toNat - (n : ℤ)

end

end A367058.P3141950983680531556

/-!
# A367059: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^3*A(x)^3.

The programs for A367059, there is no canonical definition to state claims against.
-/

/-! ## A367059.P11043667307864426423

`A372313(A201970(n))`
-/

namespace A367059.P11043667307864426423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372313 (A201970 n).toNat

end

end A367059.P11043667307864426423

/-! ## A367059.P15752562502896092899

`A214920(A003149(n)+1)`
-/

namespace A367059.P15752562502896092899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214920 (A003149 n + 1).toNat

end

end A367059.P15752562502896092899

/-!
# A367061: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^3*A(x)^5.

The programs for A367061, there is no canonical definition to state claims against.
-/

/-! ## A367061.P16883262331087443275

`A193112(n)+A083896(A000302(n))`
-/

namespace A367061.P16883262331087443275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193112 n + A083896 (A000302 n).toNat

end

end A367061.P16883262331087443275

/-! ## A367061.P8189527144457802134

`A193112(n)+A011744(A144039(n))`
-/

namespace A367061.P8189527144457802134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193112 n + A011744 (A144039 n).toNat

end

end A367061.P8189527144457802134

/-! ## A367061.P17720213082954402394

`A316863(A088714(n))+A193112(n)`
-/

namespace A367061.P17720213082954402394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A088714 n).toNat + A193112 n

end

end A367061.P17720213082954402394

/-!
# A367062: G.f. satisfies A(x) = 1 + x*A(x)^3 + x^3*A(x)^6.

The programs for A367062, there is no canonical definition to state claims against.
-/

/-! ## A367062.P13728784892193595454

`A366701(A366732(n)+A303731(n))`
-/

namespace A367062.P13728784892193595454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366701 (A366732 n + A303731 n).toNat

end

end A367062.P13728784892193595454

/-! ## A367062.P7043322909902981075

`A011272(n^A367219(n))`
-/

namespace A367062.P7043322909902981075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011272 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A367219 n : ℤ))).toNat

end

end A367062.P7043322909902981075

/-!
# A367065: a(1)=2, thereafter a(n) is the least positive integer not yet in the sequence such that Sum_{i=1..n} a(i) == 2 (mod n+2).

The programs for A367065, there is no canonical definition to state claims against.
-/

/-! ## A367065.P13774689431896902390

`A340510(n+2)-1`
-/

namespace A367065.P13774689431896902390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340510 (n + 2) - 1

end

end A367065.P13774689431896902390

/-! ## A367065.P13551072944921721343

`A023443(A340510(n+2))`
-/

namespace A367065.P13551072944921721343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A340510 (n + 2)).toNat

end

end A367065.P13551072944921721343

/-!
# A367066: a(n) = ((Sum_{i=1..n} A367065(i))-2)/(n+2).

The programs for A367066, there is no canonical definition to state claims against.
-/

/-! ## A367066.P5899464156533491894

`floor(cot(ϕ/(n+3)))-1`
-/

namespace A367066.P5899464156533491894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.goldenRatio / (n + 3 : ℝ))⌋ - 1

end

end A367066.P5899464156533491894

/-! ## A367066.P12631404519443085397

`ceil(cot(ϕ/(n+3)))-2`
-/

namespace A367066.P12631404519443085397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.goldenRatio / (n + 3 : ℝ))⌉ - 2

end

end A367066.P12631404519443085397

/-! ## A367066.P17745840098410512714

`floor((n+2)/(acot(n)+ϕ))`
-/

namespace A367066.P17745840098410512714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / (SequenceMachineLib.acot (n : ℝ) + Real.goldenRatio)⌋

end

end A367066.P17745840098410512714

/-! ## A367066.P12654031219781464638

`round((atan(n+1)+n-1)/ϕ)`
-/

namespace A367066.P12654031219781464638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arctan (n + 1 : ℝ) + ((n : ℤ) - 1 : ℝ)) / Real.goldenRatio)

end

end A367066.P12654031219781464638

/-! ## A367066.P6845889120315762325

`round((n+1)/(n+3)+(n-1)/ϕ)`
-/

namespace A367066.P6845889120315762325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℚ) / (n + 3 : ℚ) : ℝ) + ((n : ℤ) - 1 : ℝ) / Real.goldenRatio)

end

end A367066.P6845889120315762325

/-! ## A367066.P2847103124025591710

`A005379(n+2)-1`
-/

namespace A367066.P2847103124025591710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (n + 2) - 1

end

end A367066.P2847103124025591710

/-! ## A367066.P10366112748541553931

`∑[A131309(n+1)]-1`
-/

namespace A367066.P10366112748541553931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A367066.P10366112748541553931

/-! ## A367066.P12376545808953739833

`A367065(n+1)%(n+2)`
-/

namespace A367066.P12376545808953739833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367065 (n + 1)) (n + 2 : ℤ)

end

end A367066.P12376545808953739833

/-! ## A367066.P5206941189516104166

`A305849(n+2)%(n+3)`
-/

namespace A367066.P5206941189516104166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305849 (n + 2)) (n + 3 : ℤ)

end

end A367066.P5206941189516104166

/-! ## A367066.P8764904292715133461

`A339765(A305849(n+2))`
-/

namespace A367066.P8764904292715133461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339765 (A305849 (n + 2)).toNat

end

end A367066.P8764904292715133461

/-!
# A367067: a(1)=3, thereafter a(n) is the least positive integer not yet in the sequence such that Sum_{i=1..n} a(i) == 3 (mod n+3).

The programs for A367067, there is no canonical definition to state claims against.
-/

/-! ## A367067.P7368180572135089265

`Δ[(n+3)*(floor((n+3)/ϕ)-2)]`
-/

namespace A367067.P7368180572135089265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (⌊(n + 3 : ℝ) / Real.goldenRatio⌋ - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A367067.P7368180572135089265

/-! ## A367067.P16856380269985405434

`A002251(n+3)-2`
-/

namespace A367067.P16856380269985405434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 3) - 2

end

end A367067.P16856380269985405434

/-! ## A367067.P15601057699005332648

`A073929(n+3)-2`
-/

namespace A367067.P15601057699005332648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073929 (n + 3) - 2

end

end A367067.P15601057699005332648

/-! ## A367067.P15492621274995164655

`A019444(n+4)-3`
-/

namespace A367067.P15492621274995164655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 4) - 3

end

end A367067.P15492621274995164655

/-! ## A367067.P6469815686285843772

`A054081(∑[n+2]+4)`
-/

namespace A367067.P6469815686285843772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054081 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A367067.P6469815686285843772

/-! ## A367067.P5281207094360905725

`A130526(n+3)+n+1`
-/

namespace A367067.P5281207094360905725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130526 (n + 3) + (n + 1 : ℤ)

end

end A367067.P5281207094360905725

/-! ## A367067.P3493783198539566522

`A026352(A026273(A026272(n+1)))-n`
-/

namespace A367067.P3493783198539566522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (A026273 (A026272 (n + 1)).toNat).toNat - (n : ℤ)

end

end A367067.P3493783198539566522

/-!
# A367068: a(n) = ((Sum_{i=1..n} A340510(i))-1)/(n+1).

The programs for A367068, there is no canonical definition to state claims against.
-/

/-! ## A367068.P14805324258911925469

`floor(cot(ϕ/(n+2)))`
-/

namespace A367068.P14805324258911925469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.goldenRatio / (n + 2 : ℝ))⌋

end

end A367068.P14805324258911925469

/-! ## A367068.P17198341985848206917

`floor(tan(acos(ϕ/(n+2))))`
-/

namespace A367068.P17198341985848206917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Real.arccos (Real.goldenRatio / (n + 2 : ℝ)))⌋

end

end A367068.P17198341985848206917

/-! ## A367068.P37103398570908638

`floor(1/tan(ϕ/(n+2)))`
-/

namespace A367068.P37103398570908638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tan (Real.goldenRatio / (n + 2 : ℝ))⌋

end

end A367068.P37103398570908638

/-! ## A367068.P5473263742574053383

`ceil(cot(ϕ/(n+2)))-1`
-/

namespace A367068.P5473263742574053383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.goldenRatio / (n + 2 : ℝ))⌉ - 1

end

end A367068.P5473263742574053383

/-! ## A367068.P11899650519301146810

`floor((n+2-acot(n))/ϕ)`
-/

namespace A367068.P11899650519301146810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 2 : ℝ) - SequenceMachineLib.acot (n : ℝ)) / Real.goldenRatio⌋

end

end A367068.P11899650519301146810

/-! ## A367068.P14809557319562117187

`-ceil(cot(-ϕ/(n+2)))`
-/

namespace A367068.P14809557319562117187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.cot (-(Real.goldenRatio / (n + 2 : ℝ)))⌉

end

end A367068.P14809557319562117187

/-! ## A367068.P11575896726584905991

`floor(sqrt(((n+2)/ϕ)²-1))`
-/

namespace A367068.P11575896726584905991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 2 : ℝ) / Real.goldenRatio) ^ 2 - 1)⌋

end

end A367068.P11575896726584905991

/-! ## A367068.P16534055507958184002

`A005379(n+1)`
-/

namespace A367068.P16534055507958184002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (n + 1)

end

end A367068.P16534055507958184002

/-! ## A367068.P17951022029622098367

`∑[A131309(n)]-1`
-/

namespace A367068.P17951022029622098367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A367068.P17951022029622098367

/-!
# A367069: a(n) = ((Sum_{i=1..n} A367067(i))-3)/(n+3).

The programs for A367069, there is no canonical definition to state claims against.
-/

/-! ## A367069.P8746576287498188649

`round(n/tan(45))`
-/

namespace A367069.P8746576287498188649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.tan (45 : ℝ))

end

end A367069.P8746576287498188649

/-! ## A367069.P8463619335073958771

`round(n*cot(45))`
-/

namespace A367069.P8463619335073958771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.cot (45 : ℝ))

end

end A367069.P8463619335073958771

/-! ## A367069.P14509840663097034706

`round(50*n/81)`
-/

namespace A367069.P14509840663097034706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (50 * ((n : ℚ) / 81))

end

end A367069.P14509840663097034706

/-! ## A367069.P17650652387551008926

`ceil(n/ϕ-cos(1))`
-/

namespace A367069.P17650652387551008926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio - Real.cos (1 : ℝ)⌉

end

end A367069.P17650652387551008926

/-! ## A367069.P12256439038999627658

`ceil((n-sin(1))/ϕ)`
-/

namespace A367069.P12256439038999627658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.sin (1 : ℝ)) / Real.goldenRatio⌉

end

end A367069.P12256439038999627658

/-! ## A367069.P1329863519758226040

`floor((n-sin(4))/ϕ)`
-/

namespace A367069.P1329863519758226040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) - Real.sin (4 : ℝ)) / Real.goldenRatio⌋

end

end A367069.P1329863519758226040

/-! ## A367069.P13227030040556877629

`floor((cos(7)+n)/ϕ)`
-/

namespace A367069.P13227030040556877629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.cos (7 : ℝ) + (n : ℝ)) / Real.goldenRatio⌋

end

end A367069.P13227030040556877629

/-! ## A367069.P17029862226898257569

`floor((tanh(1)+n)/ϕ)`
-/

namespace A367069.P17029862226898257569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.tanh (1 : ℝ) + (n : ℝ)) / Real.goldenRatio⌋

end

end A367069.P17029862226898257569

/-! ## A367069.P12322973396624889626

`ceil((n-tan(7))/ϕ)`
-/

namespace A367069.P12322973396624889626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.tan (7 : ℝ)) / Real.goldenRatio⌉

end

end A367069.P12322973396624889626

/-! ## A367069.P4086414613674114324

`ceil((n-cot(4))/ϕ)`
-/

namespace A367069.P4086414613674114324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - Real.cot (4 : ℝ)) / Real.goldenRatio⌉

end

end A367069.P4086414613674114324

/-!
# A367070: Numbers k such that k = (product of nonzero digits) * (sum of digits) for the digits of k in base 7.

The programs for A367070, there is no canonical definition to state claims against.
-/

/-! ## A367070.P8973508725523391469

`∩[A114061(n+1), A196730(n+1)]`
-/

namespace A367070.P8973508725523391469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367070.P8973508725523391469

/-!
# A367071: G.f. satisfies A(x) = 1 + 2*x + 2*x^2*A(x)^2.

The programs for A367071, there is no canonical definition to state claims against.
-/

/-! ## A367071.P10691917366769458964

`A263433(abs(A025174(n)-n-n))`
-/

namespace A367071.P10691917366769458964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263433 |A025174 n - (n : ℤ) - (n : ℤ)|.toNat

end

end A367071.P10691917366769458964

/-! ## A367071.P15177814310489379275

`A206915(A000670(n)-A284628(n))`
-/

namespace A367071.P15177814310489379275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (A000670 n - A284628 n).toNat

end

end A367071.P15177814310489379275

/-! ## A367071.P4544632323514014467

`A087135(n)*A105209(A120970(n))`
-/

namespace A367071.P4544632323514014467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087135 n * A105209 (A120970 n).toNat

end

end A367071.P4544632323514014467

/-!
# A367076: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). T(n,k) = -Sum_{i=0..k} A365968(n,i).

The programs for A367076, the canonical program `A367076.P8374161418526432458` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367076 has offset 0).

The definition of A367076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367076.P8374161418526432458

`abs(∑[A365968(n)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367076

/-- `abs(∑[A365968(n)])` -/
def P8374161418526432458.Spec : Prop :=
  ∀ n, P8374161418526432458.a n = A367076 n

theorem P8374161418526432458.correct : P8374161418526432458.Spec := by
  intro n
  simp only [A367076]

end A367076

/-! ## A367076.P9922110972873762937

`∑[A359400(n+1)-A124757(n+1)]`
-/

namespace A367076.P9922110972873762937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 (n + 1) - A124757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367076.P9922110972873762937

namespace A367076

/-- `∑[A359400(n+1)-A124757(n+1)]` -/
def P9922110972873762937.Spec : Prop :=
  ∀ n, P9922110972873762937.a n = A367076 n

end A367076

/-! ## A367076.P13069722290859434165

`A365968(n+1)-∑[A365968(n+1)]`
-/

namespace A367076.P13069722290859434165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367076.P13069722290859434165

namespace A367076

/-- `A365968(n+1)-∑[A365968(n+1)]` -/
def P13069722290859434165.Spec : Prop :=
  ∀ n, P13069722290859434165.a n = A367076 n

end A367076

/-! ## A367076.P2056217953992197493

`-∑[A029931(n+1)-A029931(A054429(n+1))]`
-/

namespace A367076.P2056217953992197493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (n + 1) - A029931 (A054429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367076.P2056217953992197493

namespace A367076

/-- `-∑[A029931(n+1)-A029931(A054429(n+1))]` -/
def P2056217953992197493.Spec : Prop :=
  ∀ n, P2056217953992197493.a n = A367076 n

end A367076

/-! ## A367076.P1713878183026614520

`∑[-A365968(A004525(2*n))]`
-/

namespace A367076.P1713878183026614520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A365968 (A004525 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367076.P1713878183026614520

namespace A367076

/-- `∑[-A365968(A004525(2*n))]` -/
def P1713878183026614520.Spec : Prop :=
  ∀ n, P1713878183026614520.a n = A367076 n

end A367076

/-! ## A367076.P8456573024518905177

`∑[A070939(n+1)-A309983(2*(n+1))]`
-/

namespace A367076.P8456573024518905177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A309983 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367076.P8456573024518905177

namespace A367076

/-- `∑[A070939(n+1)-A309983(2*(n+1))]` -/
def P8456573024518905177.Spec : Prop :=
  ∀ n, P8456573024518905177.a n = A367076 n

end A367076

/-! ## A367076.P14078579340912139742

`∑[A000523(2*(n+1))-A309983(2*(n+1))]`
-/

namespace A367076.P14078579340912139742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * (n + 1)) - A309983 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367076.P14078579340912139742

namespace A367076

/-- `∑[A000523(2*(n+1))-A309983(2*(n+1))]` -/
def P14078579340912139742.Spec : Prop :=
  ∀ n, P14078579340912139742.a n = A367076 n

end A367076

/-!
# A367078: E.g.f. satisfies A(x) = 1 + log(1 + x*A(x)^2).

The programs for A367078, there is no canonical definition to state claims against.
-/

/-! ## A367078.P591491710122551791

`A233296(A357153(n))+A054726(n)`
-/

namespace A367078.P591491710122551791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233296 (A357153 n).toNat + A054726 n

end

end A367078.P591491710122551791

/-! ## A367078.P12821549755789572590

`A168503(n)-A107457(A080938(n))`
-/

namespace A367078.P12821549755789572590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168503 n - A107457 ((A080938 n).toNat + 18)

end

end A367078.P12821549755789572590

/-!
# A367079: E.g.f. satisfies A(x) = 1 + log(1 + x*A(x)^3).

The programs for A367079, there is no canonical definition to state claims against.
-/

/-! ## A367079.P11515284499336832207

`A310041(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A367079.P11515284499336832207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A310041 ((n : ℤ) * a (n - 1)).toNat

end

end A367079.P11515284499336832207

/-!
# A367080: E.g.f. satisfies A(x) = 1 - log(1 - x*A(x)^2).

The programs for A367080, there is no canonical definition to state claims against.
-/

/-! ## A367080.P73599202338793611

`A187226(A291219(∑[n]))`
-/

namespace A367080.P73599202338793611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187226 (A291219 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A367080.P73599202338793611

/-!
# A367083: List of powers of 3 and powers of 4, in increasing order, starting with a(0) = 3^0 = 4^0 = 1.

The programs for A367083, there is no canonical definition to state claims against.
-/

/-! ## A367083.P4731719750020692126

`∩[A025613(n+1), A337801(n+1)]`
-/

namespace A367083.P4731719750020692126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367083.P4731719750020692126

/-! ## A367083.P10297086466836160849

`∩[A025613(n+1), A306044(n+1)]`
-/

namespace A367083.P10297086466836160849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367083.P10297086466836160849

/-! ## A367083.P12237497082435281940

`∩[A006899(n+1), A025613(n+1)]`
-/

namespace A367083.P12237497082435281940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367083.P12237497082435281940

/-! ## A367083.P5937974781490116957

`∩[A025613(n+1), A325662(n+1)]`
-/

namespace A367083.P5937974781490116957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367083.P5937974781490116957

/-! ## A367083.P11191061881834202339

`∩[A025613(n+1), A231811(n+1)]`
-/

namespace A367083.P11191061881834202339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367083.P11191061881834202339

/-!
# A367084: Indices k such that A367083(k) and A367083(k+1) are both odd.

The programs for A367084, there is no canonical definition to state claims against.
-/

/-! ## A367084.P2841785956051713174

`A237514(2*n+1)+n-1`
-/

namespace A367084.P2841785956051713174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237514 (2 * n + 1) + ((n : ℤ) - 1)

end

end A367084.P2841785956051713174

/-! ## A367084.P16293548353546394050

`A004273(A367085(n))-(n+1)`
-/

namespace A367084.P16293548353546394050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A367085 n).toNat - (n + 1 : ℤ)

end

end A367084.P16293548353546394050

/-! ## A367084.P12087849849345065157

`A311471(2*n)-A093578(A319759(n))`
-/

namespace A367084.P12087849849345065157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311471 (2 * n) - A093578 (A319759 n).toNat

end

end A367084.P12087849849345065157

/-! ## A367084.P5676216025820497859

`A250120(2*n)-A000120(A082449(n))`
-/

namespace A367084.P5676216025820497859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n) - A000120 (A082449 n).toNat

end

end A367084.P5676216025820497859

/-! ## A367084.P9649674775997603815

`A250120(2*n)-A000120(A246495(n+1))`
-/

namespace A367084.P9649674775997603815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * n) - A000120 (A246495 (n + 1)).toNat

end

end A367084.P9649674775997603815

/-!
# A367085: 3-valuation r(n) of the terms A367083(A367084(n)+1) = 3^r(n) which are the odd terms preceded by another odd term.

The programs for A367085, there is no canonical definition to state claims against.
-/

/-! ## A367085.P9634781431399166471

`comp[ceil(2*n/log2(3))]`
-/

namespace A367085.P9634781431399166471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / Real.logb 2 (3 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A367085.P9634781431399166471

/-! ## A367085.P16327040168526476901

`floor(2*n*sin(2)+2*n+1)+n`
-/

namespace A367085.P16327040168526476901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) * Real.sin (2 : ℝ) + (2 * n + 1 : ℝ)⌋ + (n : ℤ)

end

end A367085.P16327040168526476901

/-! ## A367085.P8048731369588928448

`A367086(n)+n`
-/

namespace A367085.P8048731369588928448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367086 n + (n : ℤ)

end

end A367085.P8048731369588928448

/-! ## A367085.P227204639477725812

`comp[A136409(2*(n+1))]+1`
-/

namespace A367085.P227204639477725812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367085.P227204639477725812

/-! ## A367085.P5840776075041468539

`floor(A008592(n)/(ϕ+1)+n)+1`
-/

namespace A367085.P5840776075041468539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008592 n : ℝ) / (Real.goldenRatio + 1) + (n : ℝ)⌋ + 1

end

end A367085.P5840776075041468539

/-! ## A367085.P2202249654540126479

`A195172(A008706(n))+n`
-/

namespace A367085.P2202249654540126479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (A008706 n).toNat + (n : ℤ)

end

end A367085.P2202249654540126479

/-! ## A367085.P2606102891245373920

`A037915(A313779(n))+n`
-/

namespace A367085.P2606102891245373920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A313779 n).toNat + (n : ℤ)

end

end A367085.P2606102891245373920

/-! ## A367085.P2766511689721924133

`A210436(A310456(n))+n`
-/

namespace A367085.P2766511689721924133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210436 (A310456 n).toNat + (n : ℤ)

end

end A367085.P2766511689721924133

/-! ## A367085.P17425616652142877700

`A210436(A313730(n))+n`
-/

namespace A367085.P17425616652142877700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210436 (A313730 n).toNat + (n : ℤ)

end

end A367085.P17425616652142877700

/-! ## A367085.P5797094456635019771

`A313730(n)-A023805(n+1)+n`
-/

namespace A367085.P5797094456635019771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313730 n - A023805 (n + 1) + (n : ℤ)

end

end A367085.P5797094456635019771

/-!
# A367086: Exponents k > 0 such that the interval [4^(k-1), 4^k] contains two powers of 3.

The programs for A367086, the canonical program `A367086.P3116202800278906353` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367086 has offset 0).

The definition of A367086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367086.P3116202800278906353

`abs(comp[ceil(2*n/log2(3))]-n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A367086

/-- `abs(comp[ceil(2*n/log2(3))]-n)` -/
def P3116202800278906353.Spec : Prop :=
  ∀ n, P3116202800278906353.a n = A367086 n

theorem P3116202800278906353.correct : P3116202800278906353.Spec := by
  intro n
  simp only [A367086]

end A367086

/-! ## A367086.P13027574896993820720

`A367085(n)-n`
-/

namespace A367086.P13027574896993820720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367085 n - (n : ℤ)

end

end A367086.P13027574896993820720

namespace A367086

/-- `A367085(n)-n` -/
def P13027574896993820720.Spec : Prop :=
  ∀ n, P13027574896993820720.a n = A367086 n

end A367086

/-! ## A367086.P1939953595880083008

`A138467(A367085(n))`
-/

namespace A367086.P1939953595880083008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138467 (A367085 n).toNat

end

end A367086.P1939953595880083008

namespace A367086

/-- `A138467(A367085(n))` -/
def P1939953595880083008.Spec : Prop :=
  ∀ n, P1939953595880083008.a n = A367086 n

end A367086

/-! ## A367086.P9158395577225574994

`A372780(Δ[n²])-n`
-/

namespace A367086.P9158395577225574994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372780 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A367086.P9158395577225574994

namespace A367086

/-- `A372780(Δ[n²])-n` -/
def P9158395577225574994.Spec : Prop :=
  ∀ n, P9158395577225574994.a n = A367086 n

end A367086

/-! ## A367086.P7348410971229731907

`A088141(A381109(n))`
-/

namespace A367086.P7348410971229731907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A381109 n).toNat

end

end A367086.P7348410971229731907

namespace A367086

/-- `A088141(A381109(n))` -/
def P7348410971229731907.Spec : Prop :=
  ∀ n, P7348410971229731907.a n = A367086 n

end A367086

/-!
# A367093: Least positive integer with n more semiprime divisors than semi-sums of prime indices.

The programs for A367093, there is no canonical definition to state claims against.
-/

/-! ## A367093.P7957026602409597363

`A384723(A125689(n))`
-/

namespace A367093.P7957026602409597363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384723 (A125689 n).toNat

end

end A367093.P7957026602409597363

/-!
# A367095: Number of distinct sums of pairs (repeats allowed) of prime indices of n.

The programs for A367095, there is no canonical definition to state claims against.
-/

/-! ## A367095.P8447150609548666717

`A366739((n+1)²)`
-/

namespace A367095.P8447150609548666717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366739 ((n + 1) ^ 2)

end

end A367095.P8447150609548666717

/-! ## A367095.P12406256119289098484

`dr(A366739(∑[2*n+1]))`
-/

namespace A367095.P12406256119289098484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A366739 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A367095.P12406256119289098484

/-! ## A367095.P4214423252788498492

`A031347(A366739((n+1)*∏{p}[n+1, #]))`
-/

namespace A367095.P4214423252788498492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A366739 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))).toNat

end

end A367095.P4214423252788498492

/-! ## A367095.P17432756663133751290

`A366739(A000290(n+1))%A000118(n)`
-/

namespace A367095.P17432756663133751290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366739 (A000290 (n + 1)).toNat) (A000118 n)

end

end A367095.P17432756663133751290

/-! ## A367095.P1744578144142926288

`A060576(n+4)*A366739(A000290(n+1))`
-/

namespace A367095.P1744578144142926288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (n + 4) * A366739 (A000290 (n + 1)).toNat

end

end A367095.P1744578144142926288

/-! ## A367095.P12246131610831285388

`A373256(A367633(n+1))+A367482(n+1)`
-/

namespace A367095.P12246131610831285388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373256 (A367633 (n + 1)).toNat + A367482 (n + 1)

end

end A367095.P12246131610831285388

/-! ## A367095.P13343136446962689574

`A309891(A383535(n+1))`
-/

namespace A367095.P13343136446962689574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309891 (A383535 (n + 1)).toNat

end

end A367095.P13343136446962689574

/-! ## A367095.P9620270045764503142

`A001221(A343035(n+1))`
-/

namespace A367095.P9620270045764503142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A343035 (n + 1)).toNat

end

end A367095.P9620270045764503142

/-! ## A367095.P6601148210480725991

`A256993(A034380(record[2-xor(1, -n)]²))`
-/

namespace A367095.P6601148210480725991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256993 (A034380 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2).toNat).toNat

end

end A367095.P6601148210480725991

/-!
# A367096: Irregular triangle read by rows where row n lists the semiprime divisors of n. Alternatively, row n lists the semiprime divisors of A002808(n).

The programs for A367096, there is no canonical definition to state claims against.
-/

/-! ## A367096.P2084697284645837334

`filter[A027749(n+1), A064911(#)]`
-/

namespace A367096.P2084697284645837334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367096.P2084697284645837334

/-! ## A367096.P295220297641217733

`filter[A269065(n+1), A064911(#)]`
-/

namespace A367096.P295220297641217733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367096.P295220297641217733

/-!
# A367097: Least positive integer whose multiset of prime indices has exactly n distinct semi-sums.

The programs for A367097, there is no canonical definition to state claims against.
-/

/-! ## A367097.P8535393602388730196

`A339810(A059304(n))`
-/

namespace A367097.P8535393602388730196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339810 (A059304 n).toNat

end

end A367097.P8535393602388730196

/-! ## A367097.P6387009207980602194

`A178862(A301114(n))`
-/

namespace A367097.P6387009207980602194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178862 (A301114 n).toNat

end

end A367097.P6387009207980602194

/-!
# A367098: Number of divisors of n with exactly two distinct prime factors.

The programs for A367098, the canonical program `A367098.P9964343177810395654` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367098 has offset 1).

The definition of A367098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A090885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367098.P9964343177810395654

`(A001222(n+1)²-A090885(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A367098

/-- `(A001222(n+1)²-A090885(n+1))/2` -/
def P9964343177810395654.Spec : Prop :=
  ∀ n, P9964343177810395654.a n = (A367098 (n + 1) : ℚ)

end A367098

/-! ## A367098.P17633404178575165510

`∑{d}[n+1, A215480(#)]`
-/

namespace A367098.P17633404178575165510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A215480 d

end

end A367098.P17633404178575165510

namespace A367098

/-- `∑{d}[n+1, A215480(#)]` -/
def P17633404178575165510.Spec : Prop :=
  ∀ n, P17633404178575165510.a n = A367098 (n + 1)

end A367098

/-! ## A367098.P2550311448802686745

`A351397(2^∑{e}[n+1, #])-A351397(n+1)`
-/

namespace A367098.P2550311448802686745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351397 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) - A351397 (n + 1)

end

end A367098.P2550311448802686745

namespace A367098

/-- `A351397(2^∑{e}[n+1, #])-A351397(n+1)` -/
def P2550311448802686745.Spec : Prop :=
  ∀ n, P2550311448802686745.a n = A367098 (n + 1)

end A367098

/-! ## A367098.P17272794103667975427

`A022290(A281116(n+1)%A299403(n+1))`
-/

namespace A367098.P17272794103667975427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (Int.tmod (A281116 (n + 1)) (A299403 (n + 1))).toNat

end

end A367098.P17272794103667975427

namespace A367098

/-- `A022290(A281116(n+1)%A299403(n+1))` -/
def P17272794103667975427.Spec : Prop :=
  ∀ n, P17272794103667975427.a n = A367098 (n + 1)

end A367098

/-! ## A367098.P2417129094651821563

`A325770(n+1)-∑{e}[n+1, #]`
-/

namespace A367098.P2417129094651821563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A367098.P2417129094651821563

namespace A367098

/-- `A325770(n+1)-∑{e}[n+1, #]` -/
def P2417129094651821563.Spec : Prop :=
  ∀ n, P2417129094651821563.a n = A367098 (n + 1)

end A367098

/-! ## A367098.P15952448024868951720

`A325770(n+1)-A001222(n+1)`
-/

namespace A367098.P15952448024868951720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1) - A001222 (n + 1)

end

end A367098.P15952448024868951720

namespace A367098

/-- `A325770(n+1)-A001222(n+1)` -/
def P15952448024868951720.Spec : Prop :=
  ∀ n, P15952448024868951720.a n = A367098 (n + 1)

end A367098

/-! ## A367098.P9966657665627954973

`A343660(n+1)-A335520(n+1)`
-/

namespace A367098.P9966657665627954973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343660 (n + 1) - A335520 (n + 1)

end

end A367098.P9966657665627954973

namespace A367098

/-- `A343660(n+1)-A335520(n+1)` -/
def P9966657665627954973.Spec : Prop :=
  ∀ n, P9966657665627954973.a n = A367098 (n + 1)

end A367098

/-! ## A367098.P3808211214769225619

`A081707(n+1)-A081707(A335450(n+1))`
-/

namespace A367098.P3808211214769225619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) - A081707 (A335450 (n + 1)).toNat

end

end A367098.P3808211214769225619

namespace A367098

/-- `A081707(n+1)-A081707(A335450(n+1))` -/
def P3808211214769225619.Spec : Prop :=
  ∀ n, P3808211214769225619.a n = A367098 (n + 1)

end A367098

/-! ## A367098.P74186079558025350

`A335519(n+1)-A073093(n+1)`
-/

namespace A367098.P74186079558025350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335519 (n + 1) - A073093 (n + 1)

end

end A367098.P74186079558025350

namespace A367098

/-- `A335519(n+1)-A073093(n+1)` -/
def P74186079558025350.Spec : Prop :=
  ∀ n, P74186079558025350.a n = A367098 (n + 1)

end A367098

/-! ## A367098.P8136423070135618864

`A318875(A331580(n+1))`
-/

namespace A367098.P8136423070135618864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318875 (A331580 (n + 1)).toNat

end

end A367098.P8136423070135618864

namespace A367098

/-- `A318875(A331580(n+1))` -/
def P8136423070135618864.Spec : Prop :=
  ∀ n, P8136423070135618864.a n = A367098 (n + 1)

end A367098

/-!
# A367099: Least positive integer such that the number of divisors having two distinct prime factors is n.

The programs for A367099, there is no canonical definition to state claims against.
-/

/-! ## A367099.P18230592875580060797

`A250270(2*n+2)+A240354(A000085(n+1))`
-/

namespace A367099.P18230592875580060797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250270 (2 * n + 2) + A240354 (A000085 (n + 1)).toNat

end

end A367099.P18230592875580060797

/-! ## A367099.P13714403817656036713

`A250270(2*(n+1))-A088917(A282056(3*n+2))`
-/

namespace A367099.P13714403817656036713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250270 (2 * (n + 1)) - A088917 (A282056 (3 * n + 2)).toNat

end

end A367099.P13714403817656036713

/-! ## A367099.P1719607794540005587

`A025487(lt[1, A160474(n+2)])`
-/

namespace A367099.P1719607794540005587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160474 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A367099.P1719607794540005587

/-! ## A367099.P12784135289294888075

`A025487(lt[A160487(n+2), 1])`
-/

namespace A367099.P12784135289294888075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160487 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A367099.P12784135289294888075

/-! ## A367099.P7299415504423942831

`A025487(eq[A006983(n+1), A060821(n)])`
-/

namespace A367099.P7299415504423942831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A367099.P7299415504423942831

