import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A227900: Expansion of eta(q)^9 * eta(q^5)^3 in powers of q.

The programs for A227900, there is no canonical definition to state claims against.
-/

/-! ## A227900.P7116383962632180850

`A227901(5*(n+1))/5`
-/

namespace A227900.P7116383962632180850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227901 (5 * (n + 1)) : ℚ) / 5

end

end A227900.P7116383962632180850

/-! ## A227900.P17180787286114007440

`A010817(n)-A040076(A374663(n+1))`
-/

namespace A227900.P17180787286114007440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010817 n - A040076 (A374663 (n + 1)).toNat

end

end A227900.P17180787286114007440

/-!
# A227902: Numbers n such that triangular(n) divides binomial(2n,n).

The programs for A227902, there is no canonical definition to state claims against.
-/

/-! ## A227902.P3223479870173662448

`A094575(n+1)-1`
-/

namespace A227902.P3223479870173662448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094575 (n + 1) - 1

end

end A227902.P3223479870173662448

/-! ## A227902.P5041460666929263358

`∪[A014847(n+1), A120622(n+1)]`
-/

namespace A227902.P5041460666929263358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A227902.P5041460666929263358

/-! ## A227902.P3765009177970777259

`record[gcd(2*A059288(n+1), n+1)]`
-/

namespace A227902.P3765009177970777259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A059288 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227902.P3765009177970777259

/-! ## A227902.P17539506323157719251

`record[gcd(2*A071416(n+1), 3*(n+1))]`
-/

namespace A227902.P17539506323157719251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A071416 (n + 1)) (3 * (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227902.P17539506323157719251

/-! ## A227902.P11594396288105276856

`record[gcd(n+1, A005843(A071416(n+1)))]`
-/

namespace A227902.P11594396288105276856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005843 (A071416 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227902.P11594396288105276856

/-! ## A227902.P18091976533209454809

`A023443(A094575(n+1))`
-/

namespace A227902.P18091976533209454809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A094575 (n + 1)).toNat

end

end A227902.P18091976533209454809

/-! ## A227902.P8673825055334945065

`record[gcd(n, A042948(A053214(n)))]`
-/

namespace A227902.P8673825055334945065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A042948 (A053214 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227902.P8673825055334945065

/-!
# A227903: Sequence of pairs k>0 and j>1 with the smallest j and the smallest sum j+k such that (k*j^n+1)*k*j^n-1 is prime.

The programs for A227903, there is no canonical definition to state claims against.
-/

/-! ## A227903.P16089166456380585182

`gcd(A303219(A038754(n)), A312283(n))`
-/

namespace A227903.P16089166456380585182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303219 (A038754 n).toNat) (A312283 n)

end

end A227903.P16089166456380585182

/-! ## A227903.P16135718014375035794

`A326334(A335182(n+1)+A326326(n))`
-/

namespace A227903.P16135718014375035794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326334 (A335182 (n + 1) + A326326 n).toNat

end

end A227903.P16135718014375035794

/-! ## A227903.P10107261528011584719

`A326700(A263273(record[A269409(n+1)]))`
-/

namespace A227903.P10107261528011584719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (A263273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A227903.P10107261528011584719

/-! ## A227903.P3576237673023072638

`gcd(A000005(A049959(n+1)), A056358(n+1))`
-/

namespace A227903.P3576237673023072638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A049959 (n + 1)).toNat) (A056358 (n + 1))

end

end A227903.P3576237673023072638

/-! ## A227903.P14805898395228082205

`A269301(A207729(n+1))+A056170(2*(n+1))`
-/

namespace A227903.P14805898395228082205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269301 (A207729 (n + 1)).toNat + A056170 (2 * (n + 1))

end

end A227903.P14805898395228082205

/-!
# A227906: Coins left after packing heart patterns (fixed orientation) into n X n coins.

The programs for A227906, the canonical program `A227906.P14213664012046040262` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227906 has offset 0).

The definition of A227906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227906.P14213664012046040262

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227906

/-- `2*a(n-2)-a(n-4)` -/
def P14213664012046040262.Spec : Prop :=
  ∀ n, P14213664012046040262.a n = A227906 n

theorem P14213664012046040262.correct : P14213664012046040262.Spec := by
  intro n
  simp only [A227906]

end A227906

/-! ## A227906.P11387622808762691882

`lcm(2, n)-n%2`
-/

namespace A227906.P11387622808762691882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A227906.P11387622808762691882

namespace A227906

/-- `lcm(2, n)-n%2` -/
def P11387622808762691882.Spec : Prop :=
  ∀ n, P11387622808762691882.a n = A227906 n

end A227906

/-! ## A227906.P16991748428174317396

`(n-1)*and(1, n)+n`
-/

namespace A227906.P16991748428174317396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ) + (n : ℤ)

end

end A227906.P16991748428174317396

namespace A227906

/-- `(n-1)*and(1, n)+n` -/
def P16991748428174317396.Spec : Prop :=
  ∀ n, P16991748428174317396.a n = A227906 n

end A227906

/-! ## A227906.P9076131723170253925

`n-(1-n)*and(1, n)`
-/

namespace A227906.P9076131723170253925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - (n : ℤ)) * (Nat.land 1 n : ℤ)

end

end A227906.P9076131723170253925

namespace A227906

/-- `n-(1-n)*and(1, n)` -/
def P9076131723170253925.Spec : Prop :=
  ∀ n, P9076131723170253925.a n = A227906 n

end A227906

/-! ## A227906.P4391535990029712236

`n^and(1, n)-1+n`
-/

namespace A227906.P4391535990029712236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n : ℤ) - 1 + (n : ℤ)

end

end A227906.P4391535990029712236

namespace A227906

/-- `n^and(1, n)-1+n` -/
def P4391535990029712236.Spec : Prop :=
  ∀ n, P4391535990029712236.a n = A227906 n

end A227906

/-! ## A227906.P4586603080286543517

`xor(1, n)%(n+1)+n`
-/

namespace A227906.P4586603080286543517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n % (n + 1) + n

end

end A227906.P4586603080286543517

namespace A227906

/-- `xor(1, n)%(n+1)+n` -/
def P4586603080286543517.Spec : Prop :=
  ∀ n, (P4586603080286543517.a n : ℤ) = A227906 n

end A227906

/-! ## A227906.P17056861402213071948

`lcm(1-n, and(1, n))+n`
-/

namespace A227906.P17056861402213071948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (Nat.land 1 n : ℤ) + n

end

end A227906.P17056861402213071948

namespace A227906

/-- `lcm(1-n, and(1, n))+n` -/
def P17056861402213071948.Spec : Prop :=
  ∀ n, (P17056861402213071948.a n : ℤ) = A227906 n

end A227906

/-! ## A227906.P13034842198684861408

`gcd(n, or(1, n))+n-1`
-/

namespace A227906.P13034842198684861408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (Nat.lor 1 n) : ℤ) + ((n : ℤ) - 1)

end

end A227906.P13034842198684861408

namespace A227906

/-- `gcd(n, or(1, n))+n-1` -/
def P13034842198684861408.Spec : Prop :=
  ∀ n, P13034842198684861408.a n = A227906 n

end A227906

/-! ## A227906.P8893570663932650617

`C(n, and(1, n))-1+n`
-/

namespace A227906.P8893570663932650617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.land 1 n) : ℤ) - 1 + (n : ℤ)

end

end A227906.P8893570663932650617

namespace A227906

/-- `C(n, and(1, n))-1+n` -/
def P8893570663932650617.Spec : Prop :=
  ∀ n, P8893570663932650617.a n = A227906 n

end A227906

/-! ## A227906.P16834698497486953270

`n-(1-C(n, and(1, n)))`
-/

namespace A227906.P16834698497486953270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - (Nat.choose n (Nat.land 1 n) : ℤ))

end

end A227906.P16834698497486953270

namespace A227906

/-- `n-(1-C(n, and(1, n)))` -/
def P16834698497486953270.Spec : Prop :=
  ∀ n, P16834698497486953270.a n = A227906 n

end A227906

/-! ## A227906.P17869049221847517648

`xor(1, a(n-2)+3)` with `a(0)=0, a(1)=1`
-/

namespace A227906.P17869049221847517648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 1 (a (n - 2) + 3)

end

end A227906.P17869049221847517648

namespace A227906

/-- `xor(1, a(n-2)+3)` -/
def P17869049221847517648.Spec : Prop :=
  ∀ n, (P17869049221847517648.a n : ℤ) = A227906 n

end A227906

/-! ## A227906.P5641822271523615263

`(n-1)*n²%2+n`
-/

namespace A227906.P5641822271523615263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n ^ 2 % 2 : ℕ) : ℤ) + (n : ℤ)

end

end A227906.P5641822271523615263

namespace A227906

/-- `(n-1)*n²%2+n` -/
def P5641822271523615263.Spec : Prop :=
  ∀ n, P5641822271523615263.a n = A227906 n

end A227906

/-! ## A227906.P9160706897963390652

`and(n-1, -and(1, n))+n`
-/

namespace A227906.P9160706897963390652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (-(Nat.land 1 n : ℤ)) + (n : ℤ)

end

end A227906.P9160706897963390652

namespace A227906

/-- `and(n-1, -and(1, n))+n` -/
def P9160706897963390652.Spec : Prop :=
  ∀ n, P9160706897963390652.a n = A227906 n

end A227906

/-! ## A227906.P2601153431055064775

`ceil(n²/gcd(n+1, ∑[n]))`
-/

namespace A227906.P2601153431055064775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌉

end

end A227906.P2601153431055064775

namespace A227906

/-- `ceil(n²/gcd(n+1, ∑[n]))` -/
def P2601153431055064775.Spec : Prop :=
  ∀ n, P2601153431055064775.a n = A227906 n

end A227906

/-! ## A227906.P1231777117921120906

`2*n-n^∑[(-1)^n]`
-/

namespace A227906.P1231777117921120906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) - (n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A227906.P1231777117921120906

namespace A227906

/-- `2*n-n^∑[(-1)^n]` -/
def P1231777117921120906.Spec : Prop :=
  ∀ n, P1231777117921120906.a n = (A227906 n : ℚ)

end A227906

/-! ## A227906.P13548755201886808958

`ceil(lcm(2*n, n²)/(n+1))`
-/

namespace A227906.P13548755201886808958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm (2 * n) (n ^ 2) : ℚ) / (n + 1 : ℚ)⌉

end

end A227906.P13548755201886808958

namespace A227906

/-- `ceil(lcm(2*n, n²)/(n+1))` -/
def P13548755201886808958.Spec : Prop :=
  ∀ n, P13548755201886808958.a n = A227906 n

end A227906

/-! ## A227906.P16005723877589093973

`∑{d}[3-a(n-1), n+1-#]` with `a(0)=1`
-/

namespace A227906.P16005723877589093973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n + 1 : ℤ) - (d : ℤ))

end

end A227906.P16005723877589093973

namespace A227906

/-- `∑{d}[3-a(n-1), n+1-#]` -/
def P16005723877589093973.Spec : Prop :=
  ∀ n, P16005723877589093973.a n = A227906 n

end A227906

/-! ## A227906.P13664062301198759181

`floor(a(n-2)-(a(n-4)-a(n-2)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A227906.P13664062301198759181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n a =>
  a (n - 2) - (a (n - 4) - a (n - 2))

end

end A227906.P13664062301198759181

namespace A227906

/-- `floor(a(n-2)-(a(n-4)-a(n-2)))` -/
def P13664062301198759181.Spec : Prop :=
  ∀ n, P13664062301198759181.a n = A227906 n

theorem P13664062301198759181.correct : P13664062301198759181.Spec := by
  intro n
  simp only [A227906, Nat.add_sub_cancel, A227906.P13664062301198759181.a, A227906.P14213664012046040262.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A227906

/-! ## A227906.P10633740729491768555

`A077221(n)%A053438(n)`
-/

namespace A227906.P10633740729491768555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077221 n) (A053438 n)

end

end A227906.P10633740729491768555

namespace A227906

/-- `A077221(n)%A053438(n)` -/
def P10633740729491768555.Spec : Prop :=
  ∀ n, P10633740729491768555.a n = A227906 n

end A227906

/-!
# A227907: Primes p such that 4*p - q is also prime, where p, q are consecutive primes.

The programs for A227907, there is no canonical definition to state claims against.
-/

/-! ## A227907.P1250751901633242161

`p?[A339691(n+1)-A098764(n+1)]`
-/

namespace A227907.P1250751901633242161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339691 (n + 1) - A098764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227907.P1250751901633242161

/-! ## A227907.P4234576757562448409

`p?[∑[A216321(A216368(n+1))]]`
-/

namespace A227907.P4234576757562448409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216321 (A216368 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227907.P4234576757562448409

/-! ## A227907.P13796635302622542401

`p?[lt[A114141(n), 7]]`
-/

namespace A227907.P13796635302622542401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114141 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A227907.P13796635302622542401

/-! ## A227907.P6566997145364744412

`record[A060699(n+1)%A119872(n+1)]`
-/

namespace A227907.P6566997145364744412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060699 (n + 1)) (A119872 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227907.P6566997145364744412

/-!
# A227908: Number of ways to write 2*n = p + q with p, q and (p-1)^2 + q^2 all prime.

The programs for A227908, there is no canonical definition to state claims against.
-/

/-! ## A227908.P9502918797928176093

`A000005(A275120(n+1))%A125767(A101024(n))`
-/

namespace A227908.P9502918797928176093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A275120 (n + 1)).toNat) (A125767 (A101024 n).toNat)

end

end A227908.P9502918797928176093

/-! ## A227908.P11622205193783290906

`A008619(A275120(n+1))%A056150(n+3)`
-/

namespace A227908.P11622205193783290906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A275120 (n + 1)).toNat) (A056150 (n + 3))

end

end A227908.P11622205193783290906

/-! ## A227908.P4614421353625731350

`A000005(Δ[A000961(n+1)])%A056150(n+3)`
-/

namespace A227908.P4614421353625731350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (f1 (n + 1) - f1 n).toNat) (A056150 (n + 3))

end

end A227908.P4614421353625731350

/-!
# A227909: Number of ways to write 2*n = p + q with p, q and (p-1)*(q+1) - 1 all prime.

The programs for A227909, there is no canonical definition to state claims against.
-/

/-! ## A227909.P15460430104437490123

`A095407(A130080(n+1)*A267392(n+1))`
-/

namespace A227909.P15460430104437490123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A130080 (n + 1) * A267392 (n + 1)).toNat

end

end A227909.P15460430104437490123

/-! ## A227909.P12293969840764392214

`A095407(lcm(A130080(n+1), A267392(n+1)))`
-/

namespace A227909.P12293969840764392214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (Int.lcm (A130080 (n + 1)) (A267392 (n + 1)))

end

end A227909.P12293969840764392214

/-! ## A227909.P14483575028616711296

`A219332(A285894(n))%A020986(n)`
-/

namespace A227909.P14483575028616711296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219332 (A285894 n).toNat) (A020986 n)

end

end A227909.P14483575028616711296

/-! ## A227909.P13627875302346209469

`A001221(or(A000143(n), A126454(n)))`
-/

namespace A227909.P13627875302346209469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A000143 n) (A126454 n)).toNat

end

end A227909.P13627875302346209469

/-! ## A227909.P8388491661726031982

`A001222(A324921(n)+A061945(n+1))`
-/

namespace A227909.P8388491661726031982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324921 n + A061945 (n + 1)).toNat

end

end A227909.P8388491661726031982

/-!
# A227910: The number of necklaces with n beads of white and red colors, including at least three white ones.

The programs for A227910, the canonical program `A227910.P2779203603949293786` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227910 has offset 3).

The definition of A227910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227910.P18441212172809091173

`A056342(n+3)-A008619(n+1)`
-/

namespace A227910.P18441212172809091173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056342 (n + 3) - A008619 (n + 1)

end

end A227910.P18441212172809091173

namespace A227910

/-- `A056342(n+3)-A008619(n+1)` -/
def P18441212172809091173.Spec : Prop :=
  ∀ n, P18441212172809091173.a n = A227910 (n + 3)

end A227910

/-! ## A227910.P11257722704249685206

`A056342(n+3)-A004526(n+3)`
-/

namespace A227910.P11257722704249685206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056342 (n + 3) - A004526 (n + 3)

end

end A227910.P11257722704249685206

namespace A227910

/-- `A056342(n+3)-A004526(n+3)` -/
def P11257722704249685206.Spec : Prop :=
  ∀ n, P11257722704249685206.a n = A227910 (n + 3)

end A227910

/-! ## A227910.P8284594061401606144

`A000029(n+3)-(A110654(n)+3)`
-/

namespace A227910.P8284594061401606144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 3) - (A110654 n + 3)

end

end A227910.P8284594061401606144

namespace A227910

/-- `A000029(n+3)-(A110654(n)+3)` -/
def P8284594061401606144.Spec : Prop :=
  ∀ n, P8284594061401606144.a n = A227910 (n + 3)

end A227910

/-! ## A227910.P2779203603949293786

`A262232(n+3)-A059076(n+3)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A227910

/-- `A262232(n+3)-A059076(n+3)` -/
def P2779203603949293786.Spec : Prop :=
  ∀ n, P2779203603949293786.a n = A227910 (n + 3)

theorem P2779203603949293786.correct : P2779203603949293786.Spec := by
  intro n
  simp only [A227910, Nat.add_sub_cancel]

end A227910

/-! ## A227910.P13195425216142622047

`A000029(n+3)-A008619(n+5)`
-/

namespace A227910.P13195425216142622047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 3) - A008619 (n + 5)

end

end A227910.P13195425216142622047

namespace A227910

/-- `A000029(n+3)-A008619(n+5)` -/
def P13195425216142622047.Spec : Prop :=
  ∀ n, P13195425216142622047.a n = A227910 (n + 3)

end A227910

/-! ## A227910.P18290555925396177943

`A000029(n+3)-A065033(n+6)`
-/

namespace A227910.P18290555925396177943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 3) - A065033 (n + 6)

end

end A227910.P18290555925396177943

namespace A227910

/-- `A000029(n+3)-A065033(n+6)` -/
def P18290555925396177943.Spec : Prop :=
  ∀ n, P18290555925396177943.a n = A227910 (n + 3)

end A227910

/-! ## A227910.P12879058910247514719

`A000029(n+3)-A123108(n+7)`
-/

namespace A227910.P12879058910247514719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 3) - A123108 (n + 7)

end

end A227910.P12879058910247514719

namespace A227910

/-- `A000029(n+3)-A123108(n+7)` -/
def P12879058910247514719.Spec : Prop :=
  ∀ n, P12879058910247514719.a n = A227910 (n + 3)

end A227910

/-! ## A227910.P11148515607617651808

`record[abs(A056342(n+1)-A065033(n))]`
-/

namespace A227910.P11148515607617651808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056342 (n + 1) - A065033 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227910.P11148515607617651808

namespace A227910

/-- `record[abs(A056342(n+1)-A065033(n))]` -/
def P11148515607617651808.Spec : Prop :=
  ∀ n, P11148515607617651808.a n = A227910 (n + 3)

end A227910

/-! ## A227910.P14898889606894073477

`A000029(n+3)-(Δ[A002620(n)]+3)`
-/

namespace A227910.P14898889606894073477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 (n + 3) - (f1 (n + 1) - f1 n + 3)

end

end A227910.P14898889606894073477

namespace A227910

/-- `A000029(n+3)-(Δ[A002620(n)]+3)` -/
def P14898889606894073477.Spec : Prop :=
  ∀ n, P14898889606894073477.a n = A227910 (n + 3)

end A227910

/-!
# A227911: Number of remainders occurring only once when dividing n by 1,2,...n.

The programs for A227911, there is no canonical definition to state claims against.
-/

/-! ## A227911.P3109847140219179040

`∑[log2(gcd(2, n))]-A283190(n+1)`
-/

namespace A227911.P3109847140219179040
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A283190 (n + 1) : ℝ)

end

end A227911.P3109847140219179040

/-! ## A227911.P15891934343229662011

`A008619(n)-A283190(n+1)`
-/

namespace A227911.P15891934343229662011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A283190 (n + 1)

end

end A227911.P15891934343229662011

/-! ## A227911.P3329833055351367669

`∑[A059841(n)]-A283190(n+1)`
-/

namespace A227911.P3329833055351367669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283190 (n + 1)

end

end A227911.P3329833055351367669

/-! ## A227911.P3577545526100244797

`A004526(n)+1-A283190(n+1)`
-/

namespace A227911.P3577545526100244797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (1 - A283190 (n + 1))

end

end A227911.P3577545526100244797

/-! ## A227911.P2133433046166386081

`A065033(n+1)-A283190(n+1)`
-/

namespace A227911.P2133433046166386081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) - A283190 (n + 1)

end

end A227911.P2133433046166386081

/-! ## A227911.P5987819097434721934

`A008621(2*n)-A283190(n+1)`
-/

namespace A227911.P5987819097434721934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * n) - A283190 (n + 1)

end

end A227911.P5987819097434721934

/-! ## A227911.P17338467780197505151

`∑[A000035(n+1)]-A283190(n+1)`
-/

namespace A227911.P17338467780197505151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283190 (n + 1)

end

end A227911.P17338467780197505151

/-! ## A227911.P8663909863184118119

`∑[A000045((-1)^n+1)]-A283190(n+1)`
-/

namespace A227911.P8663909863184118119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A283190 (n + 1)

end

end A227911.P8663909863184118119

/-! ## A227911.P15960565779642773996

`A002024(A008805(n))-A283190(n+1)`
-/

namespace A227911.P15960565779642773996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A008805 n).toNat - A283190 (n + 1)

end

end A227911.P15960565779642773996

/-!
# A227914: Length of longest chain of nonempty proper subsemigroups of the symmetric inverse monoid.

The programs for A227914, there is no canonical definition to state claims against.
-/

/-! ## A227914.P5044472115119884682

`A162223(or(A081951(n+1), A116415(n)))`
-/

namespace A227914.P5044472115119884682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162223 (Int.lor (A081951 (n + 1)) (A116415 n)).toNat

end

end A227914.P5044472115119884682

/-!
# A227916: Primes that remain prime when the leftmost digit is removed.

The programs for A227916, there is no canonical definition to state claims against.
-/

/-! ## A227916.P16817988242502185177

`p?[A226099(n+1)]`
-/

namespace A227916.P16817988242502185177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227916.P16817988242502185177

/-! ## A227916.P14085396101707930663

`record[A006530(A226099(n+2))]`
-/

namespace A227916.P14085396101707930663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A226099 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227916.P14085396101707930663

/-! ## A227916.P11515525204861011254

`filter[A226099(n+1), A010051(#)]`
-/

namespace A227916.P11515525204861011254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A227916.P11515525204861011254

/-! ## A227916.P3523488838594202615

`∩[A000040(n+1), A226099(n+1)]`
-/

namespace A227916.P3523488838594202615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P3523488838594202615

/-! ## A227916.P7530441639872437910

`∩[A004139(n+1), A226099(n+1)]`
-/

namespace A227916.P7530441639872437910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P7530441639872437910

/-! ## A227916.P13808827174517277350

`∩[A006005(n+1), A226099(n+1)]`
-/

namespace A227916.P13808827174517277350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P13808827174517277350

/-! ## A227916.P9368638871491900792

`∩[A008578(n+1), A226099(n+1)]`
-/

namespace A227916.P9368638871491900792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P9368638871491900792

/-! ## A227916.P12456765375448784421

`∩[A033946(n+1), A226099(n+1)]`
-/

namespace A227916.P12456765375448784421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P12456765375448784421

/-! ## A227916.P8004595625484409727

`∩[A038680(n+1), A226099(n+1)]`
-/

namespace A227916.P8004595625484409727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P8004595625484409727

/-! ## A227916.P14527827230119514075

`∩[A045319(n+1), A226099(n+1)]`
-/

namespace A227916.P14527827230119514075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P14527827230119514075

/-! ## A227916.P3808643899787871239

`∩[A045344(n+1), A226099(n+1)]`
-/

namespace A227916.P3808643899787871239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P3808643899787871239

/-! ## A227916.P10336770578511080728

`∩[A046022(n+1), A226099(n+1)]`
-/

namespace A227916.P10336770578511080728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P10336770578511080728

/-! ## A227916.P8697968019227686872

`∩[A053813(n+1), A226099(n+1)]`
-/

namespace A227916.P8697968019227686872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P8697968019227686872

/-! ## A227916.P13943820483715566663

`∩[A065091(n+1), A226099(n+1)]`
-/

namespace A227916.P13943820483715566663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P13943820483715566663

/-! ## A227916.P2527587480024276341

`∩[A066050(n+1), A226099(n+1)]`
-/

namespace A227916.P2527587480024276341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P2527587480024276341

/-! ## A227916.P7878073080781595264

`∩[A067126(n+1), A226099(n+1)]`
-/

namespace A227916.P7878073080781595264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P7878073080781595264

/-! ## A227916.P17524479727689882397

`∩[A083249(n+1), A226099(n+1)]`
-/

namespace A227916.P17524479727689882397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P17524479727689882397

/-! ## A227916.P3410962987764256570

`∩[A106118(n+1), A226099(n+1)]`
-/

namespace A227916.P3410962987764256570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P3410962987764256570

/-! ## A227916.P4817764814364496858

`∩[A116974(n+1), A226099(n+1)]`
-/

namespace A227916.P4817764814364496858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P4817764814364496858

/-! ## A227916.P13142855170684690627

`∩[A140826(n+1), A226099(n+1)]`
-/

namespace A227916.P13142855170684690627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227916.P13142855170684690627

/-!
# A227917: Number of semi-increasing binary plane trees with n vertices.

The programs for A227917, there is no canonical definition to state claims against.
-/

/-! ## A227917.P7135764004019431609

`A011371(A000085(2*n+1)+2*n+1)`
-/

namespace A227917.P7135764004019431609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A000085 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A227917.P7135764004019431609

/-!
# A227918: Sum over all permutations beginning and ending with ascents, and without double ascents on n elements and each permutation contributes 2 to the power of the number of double descents.

The programs for A227918, there is no canonical definition to state claims against.
-/

/-! ## A227918.P12393320067835206689

`(n+1)*(a(n-1)+a(n-2))+2` with `a(0)=1, a(1)=0`
-/

namespace A227918.P12393320067835206689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n + 1) * (a (n - 1) + a (n - 2)) + 2

end

end A227918.P12393320067835206689

/-! ## A227918.P3690054750294021548

`xor(A126304(A153893(n)), A193116(n))`
-/

namespace A227918.P3690054750294021548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126304 (A153893 n).toNat) (A193116 n)

end

end A227918.P3690054750294021548

/-!
# A227919: Primes which remain prime when rightmost digit is removed.

The programs for A227919, the canonical program `A227919.P6822154070124904799` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227919 has offset 1).

The definition of A227919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 460 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227919.P6822154070124904799

`p?[A032741(A002265(n))*A045572(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227919

/-- `p?[A032741(A002265(n))*A045572(n+1)]` -/
def P6822154070124904799.Spec : Prop :=
  ∀ n, P6822154070124904799.a n = A227919 (n + 1)

theorem P6822154070124904799.correct : P6822154070124904799.Spec := by
  intro n
  simp only [A227919, Nat.add_sub_cancel]

end A227919

/-! ## A227919.P15479327309998760240

`p?[n*A032741(A059995(n))]`
-/

namespace A227919.P15479327309998760240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A059995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227919.P15479327309998760240

namespace A227919

/-- `p?[n*A032741(A059995(n))]` -/
def P15479327309998760240.Spec : Prop :=
  ∀ n, P15479327309998760240.a n = A227919 (n + 1)

end A227919

/-! ## A227919.P11327553961273319129

`p?[A022998(n)*A105700(A059995(n))]`
-/

namespace A227919.P11327553961273319129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n * A105700 (A059995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227919.P11327553961273319129

namespace A227919

/-- `p?[A022998(n)*A105700(A059995(n))]` -/
def P11327553961273319129.Spec : Prop :=
  ∀ n, P11327553961273319129.a n = A227919 (n + 1)

end A227919

/-! ## A227919.P15551020839088040212

`eq[2, A003415(n)+A003415(A059995(n))]`
-/

namespace A227919.P15551020839088040212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + A003415 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227919.P15551020839088040212

namespace A227919

/-- `eq[2, A003415(n)+A003415(A059995(n))]` -/
def P15551020839088040212.Spec : Prop :=
  ∀ n, (P15551020839088040212.a n : ℤ) = A227919 (n + 1)

end A227919

/-! ## A227919.P16660137250444317193

`eq[1, A032741(n)*A032741(A059995(n))]`
-/

namespace A227919.P16660137250444317193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n * A032741 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227919.P16660137250444317193

namespace A227919

/-- `eq[1, A032741(n)*A032741(A059995(n))]` -/
def P16660137250444317193.Spec : Prop :=
  ∀ n, (P16660137250444317193.a n : ℤ) = A227919 (n + 1)

end A227919

/-! ## A227919.P17482988032753401915

`eq[1, A105700(A059995(n))*A105700(n)]`
-/

namespace A227919.P17482988032753401915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A059995 n).toNat * A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227919.P17482988032753401915

namespace A227919

/-- `eq[1, A105700(A059995(n))*A105700(n)]` -/
def P17482988032753401915.Spec : Prop :=
  ∀ n, (P17482988032753401915.a n : ℤ) = A227919 (n + 1)

end A227919

/-! ## A227919.P8446334691019095255

`p?[A006005(n+1)*A032741(A176044(n+1))]`
-/

namespace A227919.P8446334691019095255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) * A032741 (A176044 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227919.P8446334691019095255

namespace A227919

/-- `p?[A006005(n+1)*A032741(A176044(n+1))]` -/
def P8446334691019095255.Spec : Prop :=
  ∀ n, P8446334691019095255.a n = A227919 (n + 1)

end A227919

/-! ## A227919.P5305805641167581266

`p?[n*A003415(floor(n/10))]`
-/

namespace A227919.P5305805641167581266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003415 ⌊(n : ℚ) / 10⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227919.P5305805641167581266

namespace A227919

/-- `p?[n*A003415(floor(n/10))]` -/
def P5305805641167581266.Spec : Prop :=
  ∀ n, P5305805641167581266.a n = A227919 (n + 1)

end A227919

/-! ## A227919.P15679974666405306461

`p?[A003415(A059995(n))*A004442(n)]`
-/

namespace A227919.P15679974666405306461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A059995 n).toNat * A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227919.P15679974666405306461

namespace A227919

/-- `p?[A003415(A059995(n))*A004442(n)]` -/
def P15679974666405306461.Spec : Prop :=
  ∀ n, P15679974666405306461.a n = A227919 (n + 1)

end A227919

/-!
# A227921: Odd odious numbers (A000069), all divisors of which are odious.

The programs for A227921, the canonical program `A227921.P15568228381888625967` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227921 has offset 1).

The definition of A227921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4692 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227921.P11519071360901649500

`record[A000265(A093696(n+1))]`
-/

namespace A227921.P11519071360901649500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A093696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227921.P11519071360901649500

namespace A227921

/-- `record[A000265(A093696(n+1))]` -/
def P11519071360901649500.Spec : Prop :=
  ∀ n, P11519071360901649500.a n = A227921 (n + 1)

end A227921

/-! ## A227921.P15568228381888625967

`filter[A093696(n+1), A093719(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A227921

/-- `filter[A093696(n+1), A093719(#)]` -/
def P15568228381888625967.Spec : Prop :=
  ∀ n, P15568228381888625967.a n = A227921 (n + 1)

theorem P15568228381888625967.correct : P15568228381888625967.Spec := by
  intro n
  simp only [A227921, Nat.add_sub_cancel]

end A227921

/-! ## A227921.P12399539781066905670

`filter[A093696(n+1), A162289(#)]`
-/

namespace A227921.P12399539781066905670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A227921.P12399539781066905670

namespace A227921

/-- `filter[A093696(n+1), A162289(#)]` -/
def P12399539781066905670.Spec : Prop :=
  ∀ n, P12399539781066905670.a n = A227921 (n + 1)

end A227921

/-! ## A227921.P18326216321769764

`filter[A093696(n+1), A228495(#)]`
-/

namespace A227921.P18326216321769764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228495 (f1 j).toNat = 1) n)

end

end A227921.P18326216321769764

namespace A227921

/-- `filter[A093696(n+1), A228495(#)]` -/
def P18326216321769764.Spec : Prop :=
  ∀ n, P18326216321769764.a n = A227921 (n + 1)

end A227921

/-! ## A227921.P3606756147086697647

`filter[A093696(n+1), A254651(#)]`
-/

namespace A227921.P3606756147086697647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A227921.P3606756147086697647

namespace A227921

/-- `filter[A093696(n+1), A254651(#)]` -/
def P3606756147086697647.Spec : Prop :=
  ∀ n, P3606756147086697647.a n = A227921 (n + 1)

end A227921

/-! ## A227921.P3623086345226711817

`filter[A093696(n+1), A320106(#)]`
-/

namespace A227921.P3623086345226711817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A227921.P3623086345226711817

namespace A227921

/-- `filter[A093696(n+1), A320106(#)]` -/
def P3623086345226711817.Spec : Prop :=
  ∀ n, P3623086345226711817.a n = A227921 (n + 1)

end A227921

/-! ## A227921.P17724382485101530809

`filter[A093696(n+1), A354354(#)]`
-/

namespace A227921.P17724382485101530809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A227921.P17724382485101530809

namespace A227921

/-- `filter[A093696(n+1), A354354(#)]` -/
def P17724382485101530809.Spec : Prop :=
  ∀ n, P17724382485101530809.a n = A227921 (n + 1)

end A227921

/-! ## A227921.P5277173675710152260

`filter[A093696(n+1), A373156(#)]`
-/

namespace A227921.P5277173675710152260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A227921.P5277173675710152260

namespace A227921

/-- `filter[A093696(n+1), A373156(#)]` -/
def P5277173675710152260.Spec : Prop :=
  ∀ n, P5277173675710152260.a n = A227921 (n + 1)

end A227921

/-! ## A227921.P7654247936833327319

`filter[A093696(n+1), A374134(#)]`
-/

namespace A227921.P7654247936833327319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A227921.P7654247936833327319

namespace A227921

/-- `filter[A093696(n+1), A374134(#)]` -/
def P7654247936833327319.Spec : Prop :=
  ∀ n, P7654247936833327319.a n = A227921 (n + 1)

end A227921

/-! ## A227921.P8655377419280196066

`∩[A092246(n+1), A093696(n+1)]`
-/

namespace A227921.P8655377419280196066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P8655377419280196066

namespace A227921

/-- `∩[A092246(n+1), A093696(n+1)]` -/
def P8655377419280196066.Spec : Prop :=
  ∀ n, (P8655377419280196066.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P9422399803035176361

`∩[A093696(n+1), A292315(n+1)]`
-/

namespace A227921.P9422399803035176361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P9422399803035176361

namespace A227921

/-- `∩[A093696(n+1), A292315(n+1)]` -/
def P9422399803035176361.Spec : Prop :=
  ∀ n, (P9422399803035176361.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P11970065740336427959

`∩[A007775(n+1), A093696(n+1)]`
-/

namespace A227921.P11970065740336427959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P11970065740336427959

namespace A227921

/-- `∩[A007775(n+1), A093696(n+1)]` -/
def P11970065740336427959.Spec : Prop :=
  ∀ n, (P11970065740336427959.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P8719719803133949884

`∩[A069040(n+1), A093696(n+1)]`
-/

namespace A227921.P8719719803133949884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P8719719803133949884

namespace A227921

/-- `∩[A069040(n+1), A093696(n+1)]` -/
def P8719719803133949884.Spec : Prop :=
  ∀ n, (P8719719803133949884.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P12063853609406295495

`∩[A007310(n+1), A093696(n+1)]`
-/

namespace A227921.P12063853609406295495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P12063853609406295495

namespace A227921

/-- `∩[A007310(n+1), A093696(n+1)]` -/
def P12063853609406295495.Spec : Prop :=
  ∀ n, (P12063853609406295495.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P18194144114830759863

`∩[A093696(n+1), A195608(n+1)]`
-/

namespace A227921.P18194144114830759863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P18194144114830759863

namespace A227921

/-- `∩[A093696(n+1), A195608(n+1)]` -/
def P18194144114830759863.Spec : Prop :=
  ∀ n, (P18194144114830759863.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P18246809496549700347

`∩[A045572(n+1), A093696(n+1)]`
-/

namespace A227921.P18246809496549700347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P18246809496549700347

namespace A227921

/-- `∩[A045572(n+1), A093696(n+1)]` -/
def P18246809496549700347.Spec : Prop :=
  ∀ n, (P18246809496549700347.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P4223152480062265634

`∩[A064615(n+1), A093696(n+1)]`
-/

namespace A227921.P4223152480062265634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P4223152480062265634

namespace A227921

/-- `∩[A064615(n+1), A093696(n+1)]` -/
def P4223152480062265634.Spec : Prop :=
  ∀ n, (P4223152480062265634.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P14703477533884480605

`∩[A093696(n+1), A325128(n+1)]`
-/

namespace A227921.P14703477533884480605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P14703477533884480605

namespace A227921

/-- `∩[A093696(n+1), A325128(n+1)]` -/
def P14703477533884480605.Spec : Prop :=
  ∀ n, (P14703477533884480605.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P11584410305738391783

`∩[A093696(n+1), A241662(n+1)]`
-/

namespace A227921.P11584410305738391783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P11584410305738391783

namespace A227921

/-- `∩[A093696(n+1), A241662(n+1)]` -/
def P11584410305738391783.Spec : Prop :=
  ∀ n, (P11584410305738391783.a n : ℤ) = A227921 (n + 1)

end A227921

/-! ## A227921.P5107109319679806103

`∩[A084820(n+1), A093696(n+1)]`
-/

namespace A227921.P5107109319679806103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227921.P5107109319679806103

namespace A227921

/-- `∩[A084820(n+1), A093696(n+1)]` -/
def P5107109319679806103.Spec : Prop :=
  ∀ n, (P5107109319679806103.a n : ℤ) = A227921 (n + 1)

end A227921

/-!
# A227925: Triangle read by rows: number of espalier polycubes counted by height and volume.

The programs for A227925, there is no canonical definition to state claims against.
-/

/-! ## A227925.P8563855643622626025

`∑{e}[A135510(A103406(n)+1), #]`
-/

namespace A227925.P8563855643622626025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135510 (A103406 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227925.P8563855643622626025

/-! ## A227925.P15255211334485937880

`A000120(lcm(A123354(n), A152842(n)))`
-/

namespace A227925.P15255211334485937880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A123354 n) (A152842 n))

end

end A227925.P15255211334485937880

/-! ## A227925.P13431693729001110297

`A382760(A033282(n+3))`
-/

namespace A227925.P13431693729001110297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382760 (A033282 (n + 3)).toNat

end

end A227925.P13431693729001110297

/-! ## A227925.P4694518477485367629

`A025075(31*A046803(n+1))`
-/

namespace A227925.P4694518477485367629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025075 (31 * A046803 (n + 1)).toNat

end

end A227925.P4694518477485367629

/-! ## A227925.P13889011679662531932

`∑{e}[A055895(A142978(n+1)), #]`
-/

namespace A227925.P13889011679662531932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055895 (A142978 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A227925.P13889011679662531932

/-!
# A227926: Triangle read by rows: number of pyramid polycubes counted by height and volume.

The programs for A227926, there is no canonical definition to state claims against.
-/

/-! ## A227926.P283189453925406970

`A233777(A115196(n+3))`
-/

namespace A227926.P283189453925406970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233777 (A115196 (n + 3)).toNat

end

end A227926.P283189453925406970

/-! ## A227926.P4834652970165457583

`A000005(A107910(n)*A337888(n+2))`
-/

namespace A227926.P4834652970165457583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A107910 n * A337888 (n + 2)).toNat

end

end A227926.P4834652970165457583

/-! ## A227926.P1827058525916537656

`A000005(A131361(n)*A337888(n+2))`
-/

namespace A227926.P1827058525916537656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A131361 n * A337888 (n + 2)).toNat

end

end A227926.P1827058525916537656

/-! ## A227926.P18048376393165932882

`A318679(n+1)+A000005(A337888(n+2))`
-/

namespace A227926.P18048376393165932882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318679 (n + 1) + A000005 (A337888 (n + 2)).toNat

end

end A227926.P18048376393165932882

/-! ## A227926.P16992406260831735695

`A000005(A298589(n+1)*A337888(n+2))`
-/

namespace A227926.P16992406260831735695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A298589 (n + 1) * A337888 (n + 2)).toNat

end

end A227926.P16992406260831735695

/-!
# A227927: Numbers n such that phi(sigma(k))/sigma(phi(k)) < phi(sigma(n))/sigma(phi(n)) for all k < n and n is the smallest positive integer with this property.

The programs for A227927, there is no canonical definition to state claims against.
-/

/-! ## A227927.P17153921195408316667

`A277173(n+1)^A020639(A005416(n))`
-/

namespace A227927.P17153921195408316667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277173 (n + 1) : ℚ) ^ (A020639 (A005416 n).toNat : ℤ)

end

end A227927.P17153921195408316667

/-! ## A227927.P10727453973786002940

`A277173(n+1)^A020639(A255440(n))`
-/

namespace A227927.P10727453973786002940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277173 (n + 1) : ℚ) ^ (A020639 (A255440 n).toNat : ℤ)

end

end A227927.P10727453973786002940

/-! ## A227927.P12725279047279830158

`record[A328479(A285498(2*(n+1))+A231431(n+1))]`
-/

namespace A227927.P12725279047279830158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (A285498 (2 * (n + 1)) + A231431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227927.P12725279047279830158

/-!
# A227928: Powers of 2 or of 3 in order as occurring in the two ways of parenthesizing the terms in A006895.

The programs for A227928, there is no canonical definition to state claims against.
-/

/-! ## A227928.P9766141886808034461

`A000010(A006899(n+4))/2`
-/

namespace A227928.P9766141886808034461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A006899 (n + 4)).toNat : ℚ) / 2

end

end A227928.P9766141886808034461

/-! ## A227928.P924054033073453852

`A000010(Δ[A170803(n+3)])/2`
-/

namespace A227928.P924054033073453852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170803 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A227928.P924054033073453852

/-! ## A227928.P692351913440528735

`A000010(Δ[A170805(n+4)])/2`
-/

namespace A227928.P692351913440528735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170805 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A227928.P692351913440528735

/-! ## A227928.P9488864202356725481

`A014682(A000010(A006899(n+4)))`
-/

namespace A227928.P9488864202356725481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000010 (A006899 (n + 4)).toNat).toNat

end

end A227928.P9488864202356725481

/-! ## A227928.P3409204320632595964

`A070982(∑[A006895(n)])`
-/

namespace A227928.P3409204320632595964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227928.P3409204320632595964

/-!
# A227930: Primes p such that p-1 and p+1 have an even Hamming weight.

The programs for A227930, the canonical program `A227930.P13147228824602789360` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227930 has offset 1).

The definition of A227930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227930.P13147228824602789360

`∩[A095282(n+1), A176620(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A227930

/-- `∩[A095282(n+1), A176620(n+1)]` -/
def P13147228824602789360.Spec : Prop :=
  ∀ n, (P13147228824602789360.a n : ℤ) = A227930 (n + 1)

theorem P13147228824602789360.correct : P13147228824602789360.Spec := by
  intro n
  simp only [A227930, Nat.add_sub_cancel]

end A227930

/-! ## A227930.P13205853425828367466

`p?[A233388(n+1)]`
-/

namespace A227930.P13205853425828367466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227930.P13205853425828367466

namespace A227930

/-- `p?[A233388(n+1)]` -/
def P13205853425828367466.Spec : Prop :=
  ∀ n, P13205853425828367466.a n = A227930 (n + 1)

end A227930

/-! ## A227930.P17575752871094198619

`∩[A002145(n+1), A233388(n+1)]`
-/

namespace A227930.P17575752871094198619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P17575752871094198619

namespace A227930

/-- `∩[A002145(n+1), A233388(n+1)]` -/
def P17575752871094198619.Spec : Prop :=
  ∀ n, (P17575752871094198619.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P4436791020043735861

`∩[A027697(n+1), A233388(n+1)]`
-/

namespace A227930.P4436791020043735861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P4436791020043735861

namespace A227930

/-- `∩[A027697(n+1), A233388(n+1)]` -/
def P4436791020043735861.Spec : Prop :=
  ∀ n, (P4436791020043735861.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P2573406689740499130

`∩[A040116(n+1), A233388(n+1)]`
-/

namespace A227930.P2573406689740499130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P2573406689740499130

namespace A227930

/-- `∩[A040116(n+1), A233388(n+1)]` -/
def P2573406689740499130.Spec : Prop :=
  ∀ n, (P2573406689740499130.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P13206520822481539376

`∩[A045326(n+1), A233388(n+1)]`
-/

namespace A227930.P13206520822481539376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P13206520822481539376

namespace A227930

/-- `∩[A045326(n+1), A233388(n+1)]` -/
def P13206520822481539376.Spec : Prop :=
  ∀ n, (P13206520822481539376.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P8252594016464527169

`∩[A045395(n+1), A233388(n+1)]`
-/

namespace A227930.P8252594016464527169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P8252594016464527169

namespace A227930

/-- `∩[A045395(n+1), A233388(n+1)]` -/
def P8252594016464527169.Spec : Prop :=
  ∀ n, (P8252594016464527169.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P7919391093596056512

`∩[A000040(n+1), A233388(n+1)]`
-/

namespace A227930.P7919391093596056512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P7919391093596056512

namespace A227930

/-- `∩[A000040(n+1), A233388(n+1)]` -/
def P7919391093596056512.Spec : Prop :=
  ∀ n, (P7919391093596056512.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P314887620116329811

`∩[A004139(n+1), A233388(n+1)]`
-/

namespace A227930.P314887620116329811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P314887620116329811

namespace A227930

/-- `∩[A004139(n+1), A233388(n+1)]` -/
def P314887620116329811.Spec : Prop :=
  ∀ n, (P314887620116329811.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P9601883487383251991

`∩[A006005(n+1), A233388(n+1)]`
-/

namespace A227930.P9601883487383251991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P9601883487383251991

namespace A227930

/-- `∩[A006005(n+1), A233388(n+1)]` -/
def P9601883487383251991.Spec : Prop :=
  ∀ n, (P9601883487383251991.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P16950842799867663924

`∩[A008578(n+1), A233388(n+1)]`
-/

namespace A227930.P16950842799867663924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P16950842799867663924

namespace A227930

/-- `∩[A008578(n+1), A233388(n+1)]` -/
def P16950842799867663924.Spec : Prop :=
  ∀ n, (P16950842799867663924.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P12443449625916994162

`∩[A033946(n+1), A233388(n+1)]`
-/

namespace A227930.P12443449625916994162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P12443449625916994162

namespace A227930

/-- `∩[A033946(n+1), A233388(n+1)]` -/
def P12443449625916994162.Spec : Prop :=
  ∀ n, (P12443449625916994162.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P13995797588647216149

`∩[A053813(n+1), A233388(n+1)]`
-/

namespace A227930.P13995797588647216149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P13995797588647216149

namespace A227930

/-- `∩[A053813(n+1), A233388(n+1)]` -/
def P13995797588647216149.Spec : Prop :=
  ∀ n, (P13995797588647216149.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P7233421897342272554

`∩[A067126(n+1), A233388(n+1)]`
-/

namespace A227930.P7233421897342272554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P7233421897342272554

namespace A227930

/-- `∩[A067126(n+1), A233388(n+1)]` -/
def P7233421897342272554.Spec : Prop :=
  ∀ n, (P7233421897342272554.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P8325493362252521163

`∩[A062972(n+1), A233388(n+1)]`
-/

namespace A227930.P8325493362252521163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P8325493362252521163

namespace A227930

/-- `∩[A062972(n+1), A233388(n+1)]` -/
def P8325493362252521163.Spec : Prop :=
  ∀ n, (P8325493362252521163.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P9781936693119789173

`∩[A000430(n+1), A233388(n+1)]`
-/

namespace A227930.P9781936693119789173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P9781936693119789173

namespace A227930

/-- `∩[A000430(n+1), A233388(n+1)]` -/
def P9781936693119789173.Spec : Prop :=
  ∀ n, (P9781936693119789173.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P3719440486462900292

`∩[A009087(n+1), A233388(n+1)]`
-/

namespace A227930.P3719440486462900292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P3719440486462900292

namespace A227930

/-- `∩[A009087(n+1), A233388(n+1)]` -/
def P3719440486462900292.Spec : Prop :=
  ∀ n, (P3719440486462900292.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P11868590137158977423

`∩[A115919(n+1), A233388(n+1)]`
-/

namespace A227930.P11868590137158977423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P11868590137158977423

namespace A227930

/-- `∩[A115919(n+1), A233388(n+1)]` -/
def P11868590137158977423.Spec : Prop :=
  ∀ n, (P11868590137158977423.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P11458694315531263299

`∩[A089237(n+1), A233388(n+1)]`
-/

namespace A227930.P11458694315531263299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P11458694315531263299

namespace A227930

/-- `∩[A089237(n+1), A233388(n+1)]` -/
def P11458694315531263299.Spec : Prop :=
  ∀ n, (P11458694315531263299.a n : ℤ) = A227930 (n + 1)

end A227930

/-! ## A227930.P10087187972630300842

`∩[A117288(n+1), A233388(n+1)]`
-/

namespace A227930.P10087187972630300842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227930.P10087187972630300842

namespace A227930

/-- `∩[A117288(n+1), A233388(n+1)]` -/
def P10087187972630300842.Spec : Prop :=
  ∀ n, (P10087187972630300842.a n : ℤ) = A227930 (n + 1)

end A227930

/-!
# A227934: G.f.: Sum_{n>=0} x^n / (1-x)^(n^4).

The programs for A227934, there is no canonical definition to state claims against.
-/

/-! ## A227934.P665251886008021395

`A184324(n)*A339602(A184298(2*n+1))`
-/

namespace A227934.P665251886008021395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184324 n * A339602 (A184298 (2 * n + 1)).toNat

end

end A227934.P665251886008021395

/-!
# A227935: G.f.: Sum_{n>=0} x^n / (1-x)^(n^5).

The programs for A227935, there is no canonical definition to state claims against.
-/

/-! ## A227935.P8592290863991661371

`∑[A103205((n-1)^(n+2))]`
-/

namespace A227935.P8592290863991661371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103205 (((n : ℤ) - 1) ^ (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227935.P8592290863991661371

/-!
# A227936: Triangular numbers which become primes when their rightmost digit is removed.

The programs for A227936, there is no canonical definition to state claims against.
-/

/-! ## A227936.P8477819331968247937

`eq[A013609(n), A032741(A059995(n))]`
-/

namespace A227936.P8477819331968247937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227936.P8477819331968247937

/-! ## A227936.P6997298921933105990

`eq[A024462(n), A032741(A059995(n))]`
-/

namespace A227936.P6997298921933105990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227936.P6997298921933105990

/-! ## A227936.P3767291625626037695

`eq[A003415(A059995(n)), A064861(n)]`
-/

namespace A227936.P3767291625626037695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A059995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227936.P3767291625626037695

/-! ## A227936.P2846050177518505621

`eq[A003415(A059995(n)), A193842(n)]`
-/

namespace A227936.P2846050177518505621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A059995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227936.P2846050177518505621

/-! ## A227936.P7526497961859707785

`eq[A095660(n), A105700(A059995(n))]`
-/

namespace A227936.P7526497961859707785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A059995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227936.P7526497961859707785

/-!
# A227937: Partitions of n labeled elements into subsets of two or three elements.

The programs for A227937, the canonical program `A227937.P11138348560485684359` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227937 has offset 0).

The definition of A227937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227937.P11138348560485684359

`(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3)/2` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227937

/-- `(n-1)*a(n-2)+(n-1)*(n-2)*a(n-3)/2` -/
def P11138348560485684359.Spec : Prop :=
  ∀ n, P11138348560485684359.a n = (A227937 n : ℚ)

end A227937

/-! ## A227937.P12132920701390268831

`A305632(A327475(n))`
-/

namespace A227937.P12132920701390268831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305632 (A327475 n).toNat

end

end A227937.P12132920701390268831

namespace A227937

/-- `A305632(A327475(n))` -/
def P12132920701390268831.Spec : Prop :=
  ∀ n, P12132920701390268831.a n = A227937 n

end A227937

/-!
# A227939: Values of n such that the equation x^2 - 2*n*y^2 = n has integer solutions.

The programs for A227939, there is no canonical definition to state claims against.
-/

/-! ## A227939.P16855777118065552186

`A161781(n)-A285957(A090884(n+1))`
-/

namespace A227939.P16855777118065552186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161781 n - A285957 (A090884 (n + 1)).toNat

end

end A227939.P16855777118065552186

/-! ## A227939.P12230569383394839701

`eq[A186746(n), A187950(n+1)]-A186746(n)`
-/

namespace A227939.P12230569383394839701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A186746 n

end

end A227939.P12230569383394839701

/-!
# A227940: Number of runs of strictly increasing numbers of 2 X 2 squares in the list of partitions of n^2 into squares, where partition sorting order is ascending with larger squares taking higher precedence.

The programs for A227940, there is no canonical definition to state claims against.
-/

/-! ## A227940.P14285616412441642983

`A329396(A175125(n))`
-/

namespace A227940.P14285616412441642983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329396 (A175125 n).toNat

end

end A227940.P14285616412441642983

/-! ## A227940.P17581378553151332818

`A365737(A148902(n))`
-/

namespace A227940.P17581378553151332818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365737 (A148902 n).toNat

end

end A227940.P17581378553151332818

/-! ## A227940.P14817804383185986762

`A352328(A282239(n+1))`
-/

namespace A227940.P14817804383185986762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352328 (A282239 (n + 1)).toNat

end

end A227940.P14817804383185986762

/-! ## A227940.P10573424773778550811

`A260653(floor(3^n/2^n)%A201644(n+1))`
-/

namespace A227940.P10573424773778550811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (Int.tmod ⌊(3 ^ n : ℚ) / (2 ^ n : ℚ)⌋ (A201644 (n + 1))).toNat

end

end A227940.P10573424773778550811

/-! ## A227940.P17433420932639538748

`A062157(A251596(n))+A001045(n)`
-/

namespace A227940.P17433420932639538748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A251596 n).toNat + A001045 n

end

end A227940.P17433420932639538748

/-!
# A227944: Number of iterations of "take odd part of phi" (A053575) to reach 1 from n.

The programs for A227944, the canonical program `A227944.P4655710062517557212` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227944 has offset 1).

The definition of A227944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227944.P4655710062517557212

`A049115(A000010(n+1))+1-C(2, n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A227944

/-- `A049115(A000010(n+1))+1-C(2, n+2)` -/
def P4655710062517557212.Spec : Prop :=
  ∀ n, P4655710062517557212.a n = A227944 (n + 1)

theorem P4655710062517557212.correct : P4655710062517557212.Spec := by
  intro n
  simp only [A227944, Nat.add_sub_cancel]

end A227944

/-! ## A227944.P8062074120904121000

`A049108(n+1)-A049113(A000010(n+1))`
-/

namespace A227944.P8062074120904121000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1) - A049113 (A000010 (n + 1)).toNat

end

end A227944.P8062074120904121000

namespace A227944

/-- `A049108(n+1)-A049113(A000010(n+1))` -/
def P8062074120904121000.Spec : Prop :=
  ∀ n, P8062074120904121000.a n = A227944 (n + 1)

end A227944

/-! ## A227944.P2189575337435057834

`A209229(A004442(n)+2)+A049115(n+1)`
-/

namespace A227944.P2189575337435057834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A004442 n + 2).toNat + A049115 (n + 1)

end

end A227944.P2189575337435057834

namespace A227944

/-- `A209229(A004442(n)+2)+A049115(n+1)` -/
def P2189575337435057834.Spec : Prop :=
  ∀ n, P2189575337435057834.a n = A227944 (n + 1)

end A227944

/-! ## A227944.P10675920880567024551

`A049115(A000010(n+1))+A019429(2*n)`
-/

namespace A227944.P10675920880567024551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A000010 (n + 1)).toNat + A019429 (2 * n)

end

end A227944.P10675920880567024551

namespace A227944

/-- `A049115(A000010(n+1))+A019429(2*n)` -/
def P10675920880567024551.Spec : Prop :=
  ∀ n, P10675920880567024551.a n = A227944 (n + 1)

end A227944

/-! ## A227944.P3339044239675736544

`A003434(n+1)+1-A049113(A000010(n+1))`
-/

namespace A227944.P3339044239675736544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) + (1 - A049113 (A000010 (n + 1)).toNat)

end

end A227944.P3339044239675736544

namespace A227944

/-- `A003434(n+1)+1-A049113(A000010(n+1))` -/
def P3339044239675736544.Spec : Prop :=
  ∀ n, P3339044239675736544.a n = A227944 (n + 1)

end A227944

/-! ## A227944.P7350133800194300979

`A049115(n+1)+A209229(n+1)-A209229(2*n+1)`
-/

namespace A227944.P7350133800194300979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + (A209229 (n + 1) - A209229 (2 * n + 1))

end

end A227944.P7350133800194300979

namespace A227944

/-- `A049115(n+1)+A209229(n+1)-A209229(2*n+1)` -/
def P7350133800194300979.Spec : Prop :=
  ∀ n, P7350133800194300979.a n = A227944 (n + 1)

end A227944

/-! ## A227944.P14870305599630453228

`A049115(Δ[A053644(n)]+1+n)`
-/

namespace A227944.P14870305599630453228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (f1 (n + 1) - f1 n + 1 + (n : ℤ)).toNat

end

end A227944.P14870305599630453228

namespace A227944

/-- `A049115(Δ[A053644(n)]+1+n)` -/
def P14870305599630453228.Spec : Prop :=
  ∀ n, P14870305599630453228.a n = A227944 (n + 1)

end A227944

/-! ## A227944.P5012653403126417634

`A049115(A000010(n+1)*A209229(n+1)+n+1)`
-/

namespace A227944.P5012653403126417634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A000010 (n + 1) * A209229 (n + 1) + (n + 1 : ℤ)).toNat

end

end A227944.P5012653403126417634

namespace A227944

/-- `A049115(A000010(n+1)*A209229(n+1)+n+1)` -/
def P5012653403126417634.Spec : Prop :=
  ∀ n, P5012653403126417634.a n = A227944 (n + 1)

end A227944

/-! ## A227944.P18307645054821223353

`A049115(A187601(n+1))`
-/

namespace A227944.P18307645054821223353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A187601 (n + 1)).toNat

end

end A227944.P18307645054821223353

namespace A227944

/-- `A049115(A187601(n+1))` -/
def P18307645054821223353.Spec : Prop :=
  ∀ n, P18307645054821223353.a n = A227944 (n + 1)

end A227944

/-! ## A227944.P8681889505215227009

`A049115(A340512(n+1))`
-/

namespace A227944.P8681889505215227009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (A340512 (n + 1)).toNat

end

end A227944.P8681889505215227009

namespace A227944

/-- `A049115(A340512(n+1))` -/
def P8681889505215227009.Spec : Prop :=
  ∀ n, P8681889505215227009.a n = A227944 (n + 1)

end A227944

/-!
# A227945: Smallest possible number of nonzero digits in a positive multiple of n.

The programs for A227945, the canonical program `A227945.P11162813114022877264` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227945 has offset 1).

The definition of A227945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227945.P11162813114022877264

`A098378(A132740(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A227945

/-- `A098378(A132740(n+1))` -/
def P11162813114022877264.Spec : Prop :=
  ∀ n, P11162813114022877264.a n = A227945 (n + 1)

theorem P11162813114022877264.correct : P11162813114022877264.Spec := by
  intro n
  simp only [A227945, Nat.add_sub_cancel]

end A227945

/-! ## A227945.P8413282251492636984

`A000120(A138902(A132740((n+1)²)))`
-/

namespace A227945.P8413282251492636984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A138902 (A132740 ((n + 1) ^ 2)).toNat).toNat

end

end A227945.P8413282251492636984

namespace A227945

/-- `A000120(A138902(A132740((n+1)²)))` -/
def P8413282251492636984.Spec : Prop :=
  ∀ n, P8413282251492636984.a n = A227945 (n + 1)

end A227945

/-! ## A227945.P10362223553483171178

`A138902(A000196(A132740(n+1)²))`
-/

namespace A227945.P10362223553483171178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A000196 (A132740 (n + 1) ^ 2).toNat).toNat

end

end A227945.P10362223553483171178

namespace A227945

/-- `A138902(A000196(A132740(n+1)²))` -/
def P10362223553483171178.Spec : Prop :=
  ∀ n, P10362223553483171178.a n = A227945 (n + 1)

end A227945

/-! ## A227945.P15570059554204093230

`gcd(A055642(A132740(n+1)), A331765(n+1))`
-/

namespace A227945.P15570059554204093230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 (A132740 (n + 1)).toNat) (A331765 (n + 1))

end

end A227945.P15570059554204093230

namespace A227945

/-- `gcd(A055642(A132740(n+1)), A331765(n+1))` -/
def P15570059554204093230.Spec : Prop :=
  ∀ n, (P15570059554204093230.a n : ℤ) = A227945 (n + 1)

end A227945

/-! ## A227945.P7273474922984491650

`A138902(A132740(n+1)%A209041(n+1))`
-/

namespace A227945.P7273474922984491650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (Int.tmod (A132740 (n + 1)) (A209041 (n + 1))).toNat

end

end A227945.P7273474922984491650

namespace A227945

/-- `A138902(A132740(n+1)%A209041(n+1))` -/
def P7273474922984491650.Spec : Prop :=
  ∀ n, P7273474922984491650.a n = A227945 (n + 1)

end A227945

/-! ## A227945.P12410876584495526107

`A138902(A132740(n+1)%A016238(n))`
-/

namespace A227945.P12410876584495526107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (Int.tmod (A132740 (n + 1)) (A016238 n)).toNat

end

end A227945.P12410876584495526107

namespace A227945

/-- `A138902(A132740(n+1)%A016238(n))` -/
def P12410876584495526107.Spec : Prop :=
  ∀ n, P12410876584495526107.a n = A227945 (n + 1)

end A227945

/-! ## A227945.P15431101346551870293

`A043539(A327076(n+1)+1)`
-/

namespace A227945.P15431101346551870293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043539 (A327076 (n + 1) + 1).toNat

end

end A227945.P15431101346551870293

namespace A227945

/-- `A043539(A327076(n+1)+1)` -/
def P15431101346551870293.Spec : Prop :=
  ∀ n, P15431101346551870293.a n = A227945 (n + 1)

end A227945

/-!
# A227946: Smallest m such that the number of iterations of "take odd part of phi" to reach 1 from m (A227944) is n.

The programs for A227946, there is no canonical definition to state claims against.
-/

/-! ## A227946.P7986887728618083176

`A256758(n+1)-A019590(A256758(n))`
-/

namespace A227946.P7986887728618083176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256758 (n + 1) - A019590 (A256758 n).toNat

end

end A227946.P7986887728618083176

/-! ## A227946.P13371176755293294505

`A256758(2*n-A227944(A256758(n)))`
-/

namespace A227946.P13371176755293294505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256758 ((2 * n : ℤ) - A227944 (A256758 n).toNat).toNat

end

end A227946.P13371176755293294505

/-! ## A227946.P5366351547101452572

`record[A038502(A256758(n))]`
-/

namespace A227946.P5366351547101452572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A256758 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227946.P5366351547101452572

/-! ## A227946.P18283582236764161806

`filter[A256758(n), A011655(#)]`
-/

namespace A227946.P18283582236764161806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A227946.P18283582236764161806

/-! ## A227946.P11829559058860160182

`filter[A256758(n), A156595(#)]`
-/

namespace A227946.P11829559058860160182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A227946.P11829559058860160182

/-!
# A227947: Each term is a palindrome such that the sum of its proper divisors is a palindrome > 1.

The programs for A227947, there is no canonical definition to state claims against.
-/

/-! ## A227947.P17656874444524895718

`∩[A002113(n+1), A072362(n+1)]`
-/

namespace A227947.P17656874444524895718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227947.P17656874444524895718

/-! ## A227947.P17157202931241539039

`∩[A032350(n+1), A072362(n+1)]`
-/

namespace A227947.P17157202931241539039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227947.P17157202931241539039

/-! ## A227947.P902604417336163938

`∩[A072362(n+1), A083158(n+1)]`
-/

namespace A227947.P902604417336163938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227947.P902604417336163938

/-! ## A227947.P13335357693996139894

`∩[A072362(n+1), A110751(n+1)]`
-/

namespace A227947.P13335357693996139894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227947.P13335357693996139894

/-! ## A227947.P15610642055198021090

`record[A047813(A072362(n+1))]`
-/

namespace A227947.P15610642055198021090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A072362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227947.P15610642055198021090

/-!
# A227951: The number of consecutive values juxtaposed to obtain the value A227949(n).

The programs for A227951, there is no canonical definition to state claims against.
-/

/-! ## A227951.P2092393833023838539

`gcd(A125855(n+1), A315887(A164387(n)))`
-/

namespace A227951.P2092393833023838539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125855 (n + 1)) (A315887 (A164387 n).toNat)

end

end A227951.P2092393833023838539

/-! ## A227951.P10143617832016187142

`gcd(A000980(n), A001223(A050723(3*(n+1))))`
-/

namespace A227951.P10143617832016187142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000980 n) (A001223 (A050723 (3 * (n + 1))).toNat)

end

end A227951.P10143617832016187142

/-! ## A227951.P17816203975547531287

`A083533(xor(A025205(2*n+3), A025247(n+1)))`
-/

namespace A227951.P17816203975547531287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (Int.xor (A025205 (2 * n + 3)) (A025247 (n + 1))).toNat

end

end A227951.P17816203975547531287

/-! ## A227951.P5461554054180495955

`2*A294733(A193722(n))`
-/

namespace A227951.P5461554054180495955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294733 (A193722 n).toNat

end

end A227951.P5461554054180495955

/-! ## A227951.P12835746987749817084

`A077462(or(13, A148342(n)))`
-/

namespace A227951.P12835746987749817084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (Int.lor 13 (A148342 n)).toNat

end

end A227951.P12835746987749817084

/-!
# A227953: Smallest m such that A070965(m) = n.

The programs for A227953, there is no canonical definition to state claims against.
-/

/-! ## A227953.P15372113951469845067

`A108872(A052905(a(n-1)+a(n-2)))` with `a(0)=3, a(1)=1, a(2)=30`
-/

namespace A227953.P15372113951469845067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 30] fun n a =>
  A108872 (A052905 (a (n - 1) + a (n - 2)).toNat).toNat

end

end A227953.P15372113951469845067

/-!
# A227954: Smallest m such that A070965(m) = -n.

The programs for A227954, there is no canonical definition to state claims against.
-/

/-! ## A227954.P3570394296713310465

`or(A007969(A063947(n+1)), A051936(n+4))`
-/

namespace A227954.P3570394296713310465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007969 (A063947 (n + 1)).toNat) (A051936 (n + 4))

end

end A227954.P3570394296713310465

/-!
# A227955: Triangle read by rows, T(n, k) = prime(1)^p(k,1)*...*prime(n)^p(k,n) where p(k,j) is the j-th part of the k-th partition of n. The partitions of n are ordered in reversed lexicographic order read from left-to-right, starting with [1,1,...1] going down to [n].

The programs for A227955, there is no canonical definition to state claims against.
-/

/-! ## A227955.P510282940364744019

`A181821(A334434(n))`
-/

namespace A227955.P510282940364744019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A334434 n).toNat

end

end A227955.P510282940364744019

/-! ## A227955.P7208291264648586544

`A108951(A185974(n))`
-/

namespace A227955.P7208291264648586544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A185974 n).toNat

end

end A227955.P7208291264648586544

/-! ## A227955.P8368304575837634825

`A108951(A334438(n))`
-/

namespace A227955.P8368304575837634825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A334438 n).toNat

end

end A227955.P8368304575837634825

/-! ## A227955.P7548858732256476436

`∏{e}[A036035(n), A002110(#)]`
-/

namespace A227955.P7548858732256476436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A227955.P7548858732256476436

/-! ## A227955.P10523792002799553375

`∏{e}[A059901(n), A002110(#)]`
-/

namespace A227955.P10523792002799553375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A227955.P10523792002799553375

/-! ## A227955.P11850890181697486018

`∏{e}[A036035(n), A034386(A000040(#))]`
-/

namespace A227955.P11850890181697486018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034386 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A227955.P11850890181697486018

/-! ## A227955.P6290088607307566272

`∏{e}[A036035(n), A181821(A000079(#))]`
-/

namespace A227955.P6290088607307566272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A181821 (A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A227955.P6290088607307566272

/-! ## A227955.P12470706003479124719

`∏{e}[A181821(A185974(n)), A002110(#)]`
-/

namespace A227955.P12470706003479124719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A185974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A227955.P12470706003479124719

/-!
# A227956: Possible lengths of minimal prime number rulers.

The programs for A227956, there is no canonical definition to state claims against.
-/

/-! ## A227956.P15106897631795157030

`p?[∑[floor(log(n+1))]]+1`
-/

namespace A227956.P15106897631795157030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A227956.P15106897631795157030

/-! ## A227956.P10459401586330929501

`record[A000010(∑[ceil(n/12)]+1)]+2`
-/

namespace A227956.P10459401586330929501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 12⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A227956.P10459401586330929501

/-! ## A227956.P8406650345685535027

`A000040(comp[floor((n+9)*sqrt(2))]+1)+1`
-/

namespace A227956.P8406650345685535027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 9 : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A227956.P8406650345685535027

/-! ## A227956.P4833706952042574249

`record[A000010(∑[floor(n/10)+1]+1)+2]`
-/

namespace A227956.P4833706952042574249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋ + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227956.P4833706952042574249

/-! ## A227956.P6889169092212700744

`A008864(∑[∑[A088154(n)]])`
-/

namespace A227956.P6889169092212700744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088154 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227956.P6889169092212700744

/-!
# A227957: Number of primes that are of the form n - 2^k - k^2.

The programs for A227957, there is no canonical definition to state claims against.
-/

/-! ## A227957.P16587504650958364969

`A287360(xor(A059942(n+1), A229672(n+1)))`
-/

namespace A227957.P16587504650958364969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287360 (Int.xor (A059942 (n + 1)) (A229672 (n + 1))).toNat

end

end A227957.P16587504650958364969

/-! ## A227957.P1484016762360849420

`C(A205032(A281904(n+5)), A205032(n+1))`
-/

namespace A227957.P1484016762360849420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A205032 (A281904 (n + 5)).toNat).toNat (A205032 (n + 1)).toNat

end

end A227957.P1484016762360849420

/-! ## A227957.P13102687850411585870

`A286998(A100712(n+1))+A286998(A179130(n+1))`
-/

namespace A227957.P13102687850411585870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286998 (A100712 (n + 1)).toNat + A286998 (A179130 (n + 1)).toNat

end

end A227957.P13102687850411585870

/-! ## A227957.P6915602357832505461

`A088950(∑[A103871(A001031(n+1))])`
-/

namespace A227957.P6915602357832505461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103871 (A001031 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A227957.P6915602357832505461

/-! ## A227957.P6323430207436914468

`A124760(A000700(2*(n+2))*A185258(n+1))`
-/

namespace A227957.P6323430207436914468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A000700 (2 * (n + 2)) * A185258 (n + 1)).toNat

end

end A227957.P6323430207436914468

/-!
# A227959: Number of tilings using monominoes and L-trominoes in 2 X n chessboard, such that three monominoes cannot occur together in shape of L-tromino.

The programs for A227959, the canonical program `A227959.P6280504264022011232` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227959 has offset 0).

The definition of A227959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227959.P6280504264022011232

`4*a(n-2)+2*a(n-3)+2*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=6, a(4)=20`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227959

/-- `4*a(n-2)+2*a(n-3)+2*a(n-4)+4*a(n-5)` -/
def P6280504264022011232.Spec : Prop :=
  ∀ n, (P6280504264022011232.a n : ℤ) = A227959 n

theorem P6280504264022011232.correct : P6280504264022011232.Spec := by
  intro n
  simp only [A227959]

end A227959

/-! ## A227959.P6238567151180046425

`A110262(A129922(n))`
-/

namespace A227959.P6238567151180046425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110262 (A129922 n).toNat

end

end A227959.P6238567151180046425

namespace A227959

/-- `A110262(A129922(n))` -/
def P6238567151180046425.Spec : Prop :=
  ∀ n, P6238567151180046425.a n = A227959 n

end A227959

/-!
# A227960: Big equivalence classes (A227723) related to subgroups of nimber addition (A190939).

The programs for A227960, there is no canonical definition to state claims against.
-/

/-! ## A227960.P12034950972565978225

`A241469(A020639(n+1))+A062878(n)`
-/

namespace A227960.P12034950972565978225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241469 (A020639 (n + 1)).toNat + A062878 n

end

end A227960.P12034950972565978225

/-! ## A227960.P13717230752410229518

`A134023(A220778(n))+A062878(n)`
-/

namespace A227960.P13717230752410229518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 (A220778 n).toNat + A062878 n

end

end A227960.P13717230752410229518

/-! ## A227960.P6221040312252666849

`A288807(2*n+1)+A006927(A006921(n))`
-/

namespace A227960.P6221040312252666849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 (2 * n + 1) + A006927 (A006921 n).toNat

end

end A227960.P6221040312252666849

/-!
# A227962: Triangle of permutations that assign sona-becs (A227960) to their complements.

The programs for A227962, there is no canonical definition to state claims against.
-/

/-! ## A227962.P8420136368465912184

`A241551(A348892(n))+A036044(n+1)/2`
-/

namespace A227962.P8420136368465912184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241551 (A348892 n).toNat : ℚ) + (A036044 (n + 1) : ℚ) / 2

end

end A227962.P8420136368465912184

/-! ## A227962.P6245689221915757682

`A015959(A013613(n))+A036044(n+1)/2`
-/

namespace A227962.P6245689221915757682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015959 (A013613 n).toNat : ℚ) + (A036044 (n + 1) : ℚ) / 2

end

end A227962.P6245689221915757682

/-! ## A227962.P937085167636304538

`A138363(A138368(n+1))+A036044(n+1)/2`
-/

namespace A227962.P937085167636304538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138363 (A138368 (n + 1)).toNat : ℚ) + (A036044 (n + 1) : ℚ) / 2

end

end A227962.P937085167636304538

/-! ## A227962.P7022655023892413189

`A035327(A331274(n+1))+A016389(A156953(n))`
-/

namespace A227962.P7022655023892413189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A331274 (n + 1)).toNat + A016389 (A156953 n).toNat

end

end A227962.P7022655023892413189

/-! ## A227962.P14198970731051466532

`A290254(A000005(2^n)+1)%(n+1)`
-/

namespace A227962.P14198970731051466532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290254 (A000005 (2 ^ n) + 1).toNat) (n + 1 : ℤ)

end

end A227962.P14198970731051466532

/-!
# A227968: Determinant of the (p_n+1)/2 X (p_n+1)/2 matrix with (i,j)-entry (i,j=0,...,(p_n-1)/2) equal to the Legendre symbol((i^2+j^2)/p_n), where p_n is the n-th prime.

The programs for A227968, there is no canonical definition to state claims against.
-/

/-! ## A227968.P16056810194085866574

`A005097(n+1)*A227609(n+2)`
-/

namespace A227968.P16056810194085866574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A227609 (n + 2)

end

end A227968.P16056810194085866574

/-! ## A227968.P12876120135750726635

`A102781(n+2)*A227609(n+2)`
-/

namespace A227968.P12876120135750726635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2) * A227609 (n + 2)

end

end A227968.P12876120135750726635

/-! ## A227968.P6113939688129816604

`A130290(n+2)*A227609(n+2)`
-/

namespace A227968.P6113939688129816604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) * A227609 (n + 2)

end

end A227968.P6113939688129816604

/-! ## A227968.P498791091419640541

`record[A069897(n+1)]*A227609(n+2)`
-/

namespace A227968.P498791091419640541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A227609 (n + 2)

end

end A227968.P498791091419640541

/-! ## A227968.P1494440994516942322

`record[A023022(n+2)]*A227609(n+2)`
-/

namespace A227968.P1494440994516942322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A227609 (n + 2)

end

end A227968.P1494440994516942322

/-!
# A227969: Powers of primes other than 2 and 5 in order by cycle length of reciprocal in decimal.

The programs for A227969, there is no canonical definition to state claims against.
-/

/-! ## A227969.P1546613363002134634

`filter[A226477(n+1), A174275(#)]`
-/

namespace A227969.P1546613363002134634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A227969.P1546613363002134634

/-! ## A227969.P6166983314315028824

`filter[A226477(n+1), A211487(#)]`
-/

namespace A227969.P6166983314315028824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A227969.P6166983314315028824

/-! ## A227969.P588541252121004161

`filter[A226477(n+1), A340373(#)]`
-/

namespace A227969.P588541252121004161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A227969.P588541252121004161

/-! ## A227969.P5221769240375231374

`filter[A226477(n+2), A010055(#)]`
-/

namespace A227969.P5221769240375231374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A227969.P5221769240375231374

/-!
# A227970: Triangular arithmetic on half-squares: b(n)*(b(n) - 1)/2 where b(n) = floor(n^2/2).

The programs for A227970, the canonical program `A227970.P10918835427550834978` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227970 has offset 0).

The definition of A227970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227970.P10918835427550834978

`C(∑[and(n, -2)], 2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227970

/-- `C(∑[and(n, -2)], 2)` -/
def P10918835427550834978.Spec : Prop :=
  ∀ n, (P10918835427550834978.a n : ℤ) = A227970 n

theorem P10918835427550834978.correct : P10918835427550834978.Spec := by
  intro n
  simp only [A227970]

end A227970

/-! ## A227970.P18210394685903584775

`C(floor(n²/2), 2)`
-/

namespace A227970.P18210394685903584775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n ^ 2 : ℚ) / 2⌋.toNat 2

end

end A227970.P18210394685903584775

namespace A227970

/-- `C(floor(n²/2), 2)` -/
def P18210394685903584775.Spec : Prop :=
  ∀ n, (P18210394685903584775.a n : ℤ) = A227970 n

end A227970

/-! ## A227970.P10072369233932359423

`∑[(n²-(n+1))*floor(n/2)]`
-/

namespace A227970.P10072369233932359423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n + 1 : ℤ)) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227970.P10072369233932359423

namespace A227970

/-- `∑[(n²-(n+1))*floor(n/2)]` -/
def P10072369233932359423.Spec : Prop :=
  ∀ n, P10072369233932359423.a n = A227970 n

end A227970

/-! ## A227970.P13342379341907328853

`∑[and(n, -2)]²/2-floor((n/2)²)`
-/

namespace A227970.P13342379341907328853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2 - (⌊((n : ℚ) / 2) ^ 2⌋ : ℚ)

end

end A227970.P13342379341907328853

namespace A227970

/-- `∑[and(n, -2)]²/2-floor((n/2)²)` -/
def P13342379341907328853.Spec : Prop :=
  ∀ n, P13342379341907328853.a n = (A227970 n : ℚ)

end A227970

/-! ## A227970.P12442686426171951749

`A007590(n)²/2-floor((n/2)²)`
-/

namespace A227970.P12442686426171951749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 n ^ 2 : ℚ) / 2 - (⌊((n : ℚ) / 2) ^ 2⌋ : ℚ)

end

end A227970.P12442686426171951749

namespace A227970

/-- `A007590(n)²/2-floor((n/2)²)` -/
def P12442686426171951749.Spec : Prop :=
  ∀ n, P12442686426171951749.a n = (A227970 n : ℚ)

end A227970

/-! ## A227970.P16588357477482978083

`C(n²-ceil(n²/2), 2)%A107600(n+9)`
-/

namespace A227970.P16588357477482978083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.choose ((n ^ 2 : ℤ) - ⌈(n ^ 2 : ℚ) / 2⌉).toNat 2 : ℤ) (A107600 (n + 9))

end

end A227970.P16588357477482978083

namespace A227970

/-- `C(n²-ceil(n²/2), 2)%A107600(n+9)` -/
def P16588357477482978083.Spec : Prop :=
  ∀ n, P16588357477482978083.a n = A227970 n

end A227970

/-! ## A227970.P7546665273444831534

`A212892(n)-A002620(n)`
-/

namespace A227970.P7546665273444831534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212892 n - A002620 n

end

end A227970.P7546665273444831534

namespace A227970

/-- `A212892(n)-A002620(n)` -/
def P7546665273444831534.Spec : Prop :=
  ∀ n, P7546665273444831534.a n = A227970 n

end A227970

/-! ## A227970.P369565396683814912

`(A007590(n)-1)*A002620(n)`
-/

namespace A227970.P369565396683814912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007590 n - 1) * A002620 n

end

end A227970.P369565396683814912

namespace A227970

/-- `(A007590(n)-1)*A002620(n)` -/
def P369565396683814912.Spec : Prop :=
  ∀ n, P369565396683814912.a n = A227970 n

end A227970

/-! ## A227970.P8797551914456905962

`2*A030179(n)-A002620(n)`
-/

namespace A227970.P8797551914456905962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030179 n - A002620 n

end

end A227970.P8797551914456905962

namespace A227970

/-- `2*A030179(n)-A002620(n)` -/
def P8797551914456905962.Spec : Prop :=
  ∀ n, P8797551914456905962.a n = A227970 n

end A227970

/-! ## A227970.P7020848286408677922

`lcm(A007590(n)-1, sqrt(A030179(n)))`
-/

namespace A227970.P7020848286408677922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007590 n - 1) (SequenceMachineLib.roundAway (Real.sqrt (A030179 n : ℝ)))

end

end A227970.P7020848286408677922

namespace A227970

/-- `lcm(A007590(n)-1, sqrt(A030179(n)))` -/
def P7020848286408677922.Spec : Prop :=
  ∀ n, (P7020848286408677922.a n : ℤ) = A227970 n

end A227970

/-! ## A227970.P640956823696795559

`(A078126(n)+A002620(n))*A002620(n)`
-/

namespace A227970.P640956823696795559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078126 n + A002620 n) * A002620 n

end

end A227970.P640956823696795559

namespace A227970

/-- `(A078126(n)+A002620(n))*A002620(n)` -/
def P640956823696795559.Spec : Prop :=
  ∀ n, P640956823696795559.a n = A227970 n

end A227970

/-! ## A227970.P10094687188375359782

`(A000982(n)-A000034(n))*A002620(n)`
-/

namespace A227970.P10094687188375359782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000982 n - A000034 n) * A002620 n

end

end A227970.P10094687188375359782

namespace A227970

/-- `(A000982(n)-A000034(n))*A002620(n)` -/
def P10094687188375359782.Spec : Prop :=
  ∀ n, P10094687188375359782.a n = A227970 n

end A227970

/-! ## A227970.P15003992136862882745

`(A242477(n)-A033638(n))*A002620(n)`
-/

namespace A227970.P15003992136862882745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A242477 n - A033638 n) * A002620 n

end

end A227970.P15003992136862882745

namespace A227970

/-- `(A242477(n)-A033638(n))*A002620(n)` -/
def P15003992136862882745.Spec : Prop :=
  ∀ n, P15003992136862882745.a n = A227970 n

end A227970

/-! ## A227970.P9272368030883312174

`(A000217(n)-A008619(n+1))*A002620(n)`
-/

namespace A227970.P9272368030883312174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - A008619 (n + 1)) * A002620 n

end

end A227970.P9272368030883312174

namespace A227970

/-- `(A000217(n)-A008619(n+1))*A002620(n)` -/
def P9272368030883312174.Spec : Prop :=
  ∀ n, P9272368030883312174.a n = A227970 n

end A227970

/-! ## A227970.P12178944042258185212

`(A131475(n)-A004526(n))*A004526(n+1)`
-/

namespace A227970.P12178944042258185212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131475 n - A004526 n) * A004526 (n + 1)

end

end A227970.P12178944042258185212

namespace A227970

/-- `(A131475(n)-A004526(n))*A004526(n+1)` -/
def P12178944042258185212.Spec : Prop :=
  ∀ n, P12178944042258185212.a n = A227970 n

end A227970

/-! ## A227970.P6076026761381656469

`(A000217(n)-A263997(n+2))*A002620(n)`
-/

namespace A227970.P6076026761381656469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - A263997 (n + 2)) * A002620 n

end

end A227970.P6076026761381656469

namespace A227970

/-- `(A000217(n)-A263997(n+2))*A002620(n)` -/
def P6076026761381656469.Spec : Prop :=
  ∀ n, P6076026761381656469.a n = A227970 n

end A227970

/-! ## A227970.P1506397443394001753

`(A130519(2*n+1)-1)*A008238(2*n)`
-/

namespace A227970.P1506397443394001753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130519 (2 * n + 1) - 1) * A008238 (2 * n)

end

end A227970.P1506397443394001753

namespace A227970

/-- `(A130519(2*n+1)-1)*A008238(2*n)` -/
def P1506397443394001753.Spec : Prop :=
  ∀ n, P1506397443394001753.a n = A227970 n

end A227970

/-! ## A227970.P1405853818770916529

`(∑[A109613(n)]-(n+2))*∑[A002265(2*n)]`
-/

namespace A227970.P1405853818770916529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A227970.P1405853818770916529

namespace A227970

/-- `(∑[A109613(n)]-(n+2))*∑[A002265(2*n)]` -/
def P1405853818770916529.Spec : Prop :=
  ∀ n, P1405853818770916529.a n = A227970 n

end A227970

/-! ## A227970.P7572673673669744205

`A000217(floor(n²/2))-floor(n²/2)`
-/

namespace A227970.P7572673673669744205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(n ^ 2 : ℚ) / 2⌋.toNat - ⌊(n ^ 2 : ℚ) / 2⌋

end

end A227970.P7572673673669744205

namespace A227970

/-- `A000217(floor(n²/2))-floor(n²/2)` -/
def P7572673673669744205.Spec : Prop :=
  ∀ n, P7572673673669744205.a n = A227970 n

end A227970

/-! ## A227970.P7151018681654599477

`A000217(∑[char[2*(n+2)]-1+n]+1)`
-/

namespace A227970.P7151018681654599477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A227970.P7151018681654599477

namespace A227970

/-- `A000217(∑[char[2*(n+2)]-1+n]+1)` -/
def P7151018681654599477.Spec : Prop :=
  ∀ n, P7151018681654599477.a n = A227970 n

end A227970

/-!
# A227974: Minimum composite squarefree numbers k such that p(i)+n divides k-n, for n=1, 2, 3, 4,..., where p(i) are the prime factors of k .

The programs for A227974, there is no canonical definition to state claims against.
-/

/-! ## A227974.P16086127312191480465

`A000026(A382484(n+1))`
-/

namespace A227974.P16086127312191480465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A382484 (n + 1)).toNat

end

end A227974.P16086127312191480465

/-!
# A227978: a(0)=1, a(1)=2; for n>1, a(n) = n*(2^n+4)/4.

The programs for A227978, the canonical program `A227978.P8745630215526480970` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227978 has offset 0).

The definition of A227978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A227978.P8745630215526480970

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=20, a(5)=45`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A227978

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P8745630215526480970.Spec : Prop :=
  ∀ n, P8745630215526480970.a n = A227978 n

theorem P8745630215526480970.correct : P8745630215526480970.Spec := by
  intro n
  simp only [A227978]

end A227978

/-! ## A227978.P190746333246556651

`A129952(n)+n`
-/

namespace A227978.P190746333246556651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 n + (n : ℤ)

end

end A227978.P190746333246556651

namespace A227978

/-- `A129952(n)+n` -/
def P190746333246556651.Spec : Prop :=
  ∀ n, P190746333246556651.a n = A227978 n

end A227978

/-! ## A227978.P681930147737807999

`A057711(A028310(n))+n`
-/

namespace A227978.P681930147737807999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (A028310 n).toNat + (n : ℤ)

end

end A227978.P681930147737807999

namespace A227978

/-- `A057711(A028310(n))+n` -/
def P681930147737807999.Spec : Prop :=
  ∀ n, P681930147737807999.a n = A227978 n

end A227978

/-! ## A227978.P12151285875190721273

`(A166444(n)+1)*A028310(n)`
-/

namespace A227978.P12151285875190721273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166444 n + 1) * A028310 n

end

end A227978.P12151285875190721273

namespace A227978

/-- `(A166444(n)+1)*A028310(n)` -/
def P12151285875190721273.Spec : Prop :=
  ∀ n, P12151285875190721273.a n = A227978 n

end A227978

/-! ## A227978.P7270116709295532591

`A065033(2*n)+A057711(n)`
-/

namespace A227978.P7270116709295532591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + A057711 n

end

end A227978.P7270116709295532591

namespace A227978

/-- `A065033(2*n)+A057711(n)` -/
def P7270116709295532591.Spec : Prop :=
  ∀ n, P7270116709295532591.a n = A227978 n

end A227978

/-! ## A227978.P11169250163266773409

`A057711(A000007(n)+n)+n`
-/

namespace A227978.P11169250163266773409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (A000007 n + (n : ℤ)).toNat + (n : ℤ)

end

end A227978.P11169250163266773409

namespace A227978

/-- `A057711(A000007(n)+n)+n` -/
def P11169250163266773409.Spec : Prop :=
  ∀ n, P11169250163266773409.a n = A227978 n

end A227978

/-! ## A227978.P5274195370976816952

`A097067(n)+A166444(n)+n`
-/

namespace A227978.P5274195370976816952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n + (A166444 n + (n : ℤ))

end

end A227978.P5274195370976816952

namespace A227978

/-- `A097067(n)+A166444(n)+n` -/
def P5274195370976816952.Spec : Prop :=
  ∀ n, P5274195370976816952.a n = A227978 n

end A227978

/-! ## A227978.P3569114028630534693

`A004277(n)+A057711(n)-n`
-/

namespace A227978.P3569114028630534693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A057711 n - (n : ℤ))

end

end A227978.P3569114028630534693

namespace A227978

/-- `A004277(n)+A057711(n)-n` -/
def P3569114028630534693.Spec : Prop :=
  ∀ n, P3569114028630534693.a n = A227978 n

end A227978

/-! ## A227978.P13081969841148411231

`A129954(n)+n-A155559(n)`
-/

namespace A227978.P13081969841148411231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 n + ((n : ℤ) - A155559 n)

end

end A227978.P13081969841148411231

namespace A227978

/-- `A129954(n)+n-A155559(n)` -/
def P13081969841148411231.Spec : Prop :=
  ∀ n, P13081969841148411231.a n = A227978 n

end A227978

/-! ## A227978.P1960176660893260849

`A005843(n)-(n-A129952(n))`
-/

namespace A227978.P1960176660893260849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A129952 n)

end

end A227978.P1960176660893260849

namespace A227978

/-- `A005843(n)-(n-A129952(n))` -/
def P1960176660893260849.Spec : Prop :=
  ∀ n, P1960176660893260849.a n = A227978 n

end A227978

/-! ## A227978.P5818936533134347720

`A057711(gcd(n, A022144(n)))+n`
-/

namespace A227978.P5818936533134347720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (Int.gcd (n : ℤ) (A022144 n)) + (n : ℤ)

end

end A227978.P5818936533134347720

namespace A227978

/-- `A057711(gcd(n, A022144(n)))+n` -/
def P5818936533134347720.Spec : Prop :=
  ∀ n, P5818936533134347720.a n = A227978 n

end A227978

/-! ## A227978.P6120279918206830103

`A101279(2*n+1)+A057711(n)`
-/

namespace A227978.P6120279918206830103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (2 * n + 1) + A057711 n

end

end A227978.P6120279918206830103

namespace A227978

/-- `A101279(2*n+1)+A057711(n)` -/
def P6120279918206830103.Spec : Prop :=
  ∀ n, P6120279918206830103.a n = A227978 n

end A227978

/-! ## A227978.P14489254597623589086

`A129955(n)-A111286(n+1)+n`
-/

namespace A227978.P14489254597623589086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129955 n - A111286 (n + 1) + (n : ℤ)

end

end A227978.P14489254597623589086

namespace A227978

/-- `A129955(n)-A111286(n+1)+n` -/
def P14489254597623589086.Spec : Prop :=
  ∀ n, P14489254597623589086.a n = A227978 n

end A227978

/-! ## A227978.P18402767067872342149

`A257113(n+1)+n-A172160(n)`
-/

namespace A227978.P18402767067872342149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 1) + ((n : ℤ) - A172160 n)

end

end A227978.P18402767067872342149

namespace A227978

/-- `A257113(n+1)+n-A172160(n)` -/
def P18402767067872342149.Spec : Prop :=
  ∀ n, P18402767067872342149.a n = A227978 n

end A227978

/-! ## A227978.P2559514000058821138

`A139756(n)+A000079(A289207(n))+n`
-/

namespace A227978.P2559514000058821138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + (A000079 (A289207 n).toNat + (n : ℤ))

end

end A227978.P2559514000058821138

namespace A227978

/-- `A139756(n)+A000079(A289207(n))+n` -/
def P2559514000058821138.Spec : Prop :=
  ∀ n, P2559514000058821138.a n = A227978 n

end A227978

/-! ## A227978.P15353993485475294006

`∑[ceil(((n+1)*2^(n-1)+2)/4)]`
-/

namespace A227978.P15353993485475294006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A227978.P15353993485475294006

namespace A227978

/-- `∑[ceil(((n+1)*2^(n-1)+2)/4)]` -/
def P15353993485475294006.Spec : Prop :=
  ∀ n, P15353993485475294006.a n = A227978 n

end A227978

/-! ## A227978.P3216662367111612113

`(char[1]+(abs(1-n)+1)*A011782(n))/2+n`
-/

namespace A227978.P3216662367111612113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (|1 - (n : ℤ)| + 1) * A011782 n : ℚ) / 2 + (n : ℚ)

end

end A227978.P3216662367111612113

namespace A227978

/-- `(char[1]+(abs(1-n)+1)*A011782(n))/2+n` -/
def P3216662367111612113.Spec : Prop :=
  ∀ n, P3216662367111612113.a n = (A227978 n : ℚ)

end A227978

/-! ## A227978.P15696794702864396157

`∑[A129953(n)+1]-A129953(n)`
-/

namespace A227978.P15696794702864396157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129953 n

end

end A227978.P15696794702864396157

namespace A227978

/-- `∑[A129953(n)+1]-A129953(n)` -/
def P15696794702864396157.Spec : Prop :=
  ∀ n, P15696794702864396157.a n = A227978 n

end A227978

/-! ## A227978.P12363227446250154021

`A057711(n+1)-A129953(n)+n`
-/

namespace A227978.P12363227446250154021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (n + 1) - A129953 n + (n : ℤ)

end

end A227978.P12363227446250154021

namespace A227978

/-- `A057711(n+1)-A129953(n)+n` -/
def P12363227446250154021.Spec : Prop :=
  ∀ n, P12363227446250154021.a n = A227978 n

end A227978

/-! ## A227978.P2462770047729075821

`floor(Δ[A188716(abs(1-n))]/2)+n+1`
-/

namespace A227978.P2462770047729075821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188716 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A227978.P2462770047729075821

namespace A227978

/-- `floor(Δ[A188716(abs(1-n))]/2)+n+1` -/
def P2462770047729075821.Spec : Prop :=
  ∀ n, P2462770047729075821.a n = A227978 n

end A227978

/-!
# A227979: Integers not of the form (a^k+b^k)/(a+b) for any positive integer values of a, b, k with b > a.

The programs for A227979, there is no canonical definition to state claims against.
-/

/-! ## A227979.P17393535553898016336

`comp[A229791(n+1)-1]+1`
-/

namespace A227979.P17393535553898016336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229791 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A227979.P17393535553898016336

/-! ## A227979.P10008892965055705081

`eq[char[A229791(n+1)], A099894(n)]`
-/

namespace A227979.P10008892965055705081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229791 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A227979.P10008892965055705081

/-! ## A227979.P15462052986544624445

`eq[char[A229791(n+1)], A127802(n)]`
-/

namespace A227979.P15462052986544624445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229791 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A227979.P15462052986544624445

/-! ## A227979.P12749061156383588334

`eq[char[A229791(n+1)], A151933(n)]`
-/

namespace A227979.P12749061156383588334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229791 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A227979.P12749061156383588334

/-!
# A227980: Numbers n such that sigma(n-1) - sigma(n+1) >= sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

The programs for A227980, there is no canonical definition to state claims against.
-/

/-! ## A227980.P9024322424567908596

`A145284(A263016(n+1))`
-/

namespace A227980.P9024322424567908596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145284 (A263016 (n + 1)).toNat

end

end A227980.P9024322424567908596

/-!
# A227981: Numbers n such that sigma(n-1) - sigma(n+1) < sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

The programs for A227981, the canonical program `A227981.P14584001994796265052` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227981 has offset 1).

The definition of A227981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227981.P8401085955865546439

`record[n+2-A304042(A135764(n+1))]`
-/

namespace A227981.P8401085955865546439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A304042 (A135764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227981.P8401085955865546439

namespace A227981

/-- `record[n+2-A304042(A135764(n+1))]` -/
def P8401085955865546439.Spec : Prop :=
  ∀ n, P8401085955865546439.a n = A227981 (n + 1)

end A227981

/-! ## A227981.P10890038340489568112

`record[A000027(n+1)/A304042(A135764(n+1))]`
-/

namespace A227981.P10890038340489568112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A304042 (A135764 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227981.P10890038340489568112

namespace A227981

/-- `record[A000027(n+1)/A304042(A135764(n+1))]` -/
def P10890038340489568112.Spec : Prop :=
  ∀ n, P10890038340489568112.a n = (A227981 (n + 1) : ℚ)

end A227981

/-! ## A227981.P14584001994796265052

`A323048(n+1)+A255270(A008621(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227981

/-- `A323048(n+1)+A255270(A008621(n))` -/
def P14584001994796265052.Spec : Prop :=
  ∀ n, P14584001994796265052.a n = A227981 (n + 1)

theorem P14584001994796265052.correct : P14584001994796265052.Spec := by
  intro n
  simp only [A227981, Nat.add_sub_cancel]

end A227981

/-! ## A227981.P1562652198694880146

`A323048(n+1)+A032550(A324160(n))`
-/

namespace A227981.P1562652198694880146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1) + A032550 (A324160 n).toNat

end

end A227981.P1562652198694880146

namespace A227981

/-- `A323048(n+1)+A032550(A324160(n))` -/
def P1562652198694880146.Spec : Prop :=
  ∀ n, P1562652198694880146.a n = A227981 (n + 1)

end A227981

/-! ## A227981.P3887395537743457311

`A324160(A328577(n))+A323048(n+1)`
-/

namespace A227981.P3887395537743457311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324160 (A328577 n).toNat + A323048 (n + 1)

end

end A227981.P3887395537743457311

namespace A227981

/-- `A324160(A328577(n))+A323048(n+1)` -/
def P3887395537743457311.Spec : Prop :=
  ∀ n, P3887395537743457311.a n = A227981 (n + 1)

end A227981

/-! ## A227981.P18290974531480690388

`A323048(n+1)+A206497(A262079(n+1))`
-/

namespace A227981.P18290974531480690388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1) + A206497 (A262079 (n + 1)).toNat

end

end A227981.P18290974531480690388

namespace A227981

/-- `A323048(n+1)+A206497(A262079(n+1))` -/
def P18290974531480690388.Spec : Prop :=
  ∀ n, P18290974531480690388.a n = A227981 (n + 1)

end A227981

/-! ## A227981.P1898500800031979

`A324160(A067099(n+3))+A323048(n+1)`
-/

namespace A227981.P1898500800031979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324160 (A067099 (n + 3)).toNat + A323048 (n + 1)

end

end A227981.P1898500800031979

namespace A227981

/-- `A324160(A067099(n+3))+A323048(n+1)` -/
def P1898500800031979.Spec : Prop :=
  ∀ n, P1898500800031979.a n = A227981 (n + 1)

end A227981

/-! ## A227981.P2903459417863875223

`ceil(A003849(A168234(n+1))/(A000040(n+1)+1))+1+n`
-/

namespace A227981.P2903459417863875223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003849 (A168234 (n + 1)).toNat : ℚ) / (A000040 (n + 1) + 1 : ℚ)⌉ + 1 + (n : ℤ)

end

end A227981.P2903459417863875223

namespace A227981

/-- `ceil(A003849(A168234(n+1))/(A000040(n+1)+1))+1+n` -/
def P2903459417863875223.Spec : Prop :=
  ∀ n, P2903459417863875223.a n = A227981 (n + 1)

end A227981

/-! ## A227981.P1528402904386369707

`A353638(C(n, 59)+1)+n+1`
-/

namespace A227981.P1528402904386369707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (Nat.choose n 59 + 1) + (n + 1 : ℤ)

end

end A227981.P1528402904386369707

namespace A227981

/-- `A353638(C(n, 59)+1)+n+1` -/
def P1528402904386369707.Spec : Prop :=
  ∀ n, P1528402904386369707.a n = A227981 (n + 1)

end A227981

/-!
# A227982: Numbers n such that sigma(n+1) - sigma(n-1) > sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

The programs for A227982, the canonical program `A227982.P6866240745655209750` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227982 has offset 1).

The definition of A227982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227982.P6866240745655209750

`lt[A039653(n), A053246(n+1)]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227982

/-- `lt[A039653(n), A053246(n+1)]+1` -/
def P6866240745655209750.Spec : Prop :=
  ∀ n, (P6866240745655209750.a n : ℤ) = A227982 (n + 1)

theorem P6866240745655209750.correct : P6866240745655209750.Spec := by
  intro n
  simp only [A227982, Nat.add_sub_cancel]

end A227982

/-! ## A227982.P16239208071646270738

`A004442(lt[A039653(n), A053246(n+1)])`
-/

namespace A227982.P16239208071646270738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227982.P16239208071646270738

namespace A227982

/-- `A004442(lt[A039653(n), A053246(n+1)])` -/
def P16239208071646270738.Spec : Prop :=
  ∀ n, P16239208071646270738.a n = A227982 (n + 1)

end A227982

/-! ## A227982.P16023899900827756365

`A020725(lt[A039653(n), A053246(n+1)])`
-/

namespace A227982.P16023899900827756365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227982.P16023899900827756365

namespace A227982

/-- `A020725(lt[A039653(n), A053246(n+1)])` -/
def P16023899900827756365.Spec : Prop :=
  ∀ n, P16023899900827756365.a n = A227982 (n + 1)

end A227982

/-! ## A227982.P15068716557262413431

`A065475(lt[A039653(n), A053246(n+1)])`
-/

namespace A227982.P15068716557262413431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227982.P15068716557262413431

namespace A227982

/-- `A065475(lt[A039653(n), A053246(n+1)])` -/
def P15068716557262413431.Spec : Prop :=
  ∀ n, P15068716557262413431.a n = A227982 (n + 1)

end A227982

/-! ## A227982.P14905515406848236162

`A153152(lt[A039653(n), A053246(n+1)])`
-/

namespace A227982.P14905515406848236162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227982.P14905515406848236162

namespace A227982

/-- `A153152(lt[A039653(n), A053246(n+1)])` -/
def P14905515406848236162.Spec : Prop :=
  ∀ n, P14905515406848236162.a n = A227982 (n + 1)

end A227982

/-!
# A227983: Numbers n such that sigma(n+1) - sigma(n-1) < sigma(n); where sigma(n) = A000203(n) = sum of the divisors of n.

The programs for A227983, the canonical program `A227983.P8800211659433414183` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227983 has offset 1).

The definition of A227983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227983.P8800211659433414183

`lt[Δ[A000203(n+2)], A000203(n+1)]+2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A227983

/-- `lt[Δ[A000203(n+2)], A000203(n+1)]+2` -/
def P8800211659433414183.Spec : Prop :=
  ∀ n, (P8800211659433414183.a n : ℤ) = A227983 (n + 1)

theorem P8800211659433414183.correct : P8800211659433414183.Spec := by
  intro n
  simp only [A227983, Nat.add_sub_cancel]

end A227983

/-! ## A227983.P1184937514538045288

`lt[A053246(n+1), A039653(n)]+1`
-/

namespace A227983.P1184937514538045288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A227983.P1184937514538045288

namespace A227983

/-- `lt[A053246(n+1), A039653(n)]+1` -/
def P1184937514538045288.Spec : Prop :=
  ∀ n, (P1184937514538045288.a n : ℤ) = A227983 (n + 1)

end A227983

/-! ## A227983.P7287217118780895385

`A020725(lt[A053246(n+1), A039653(n)])`
-/

namespace A227983.P7287217118780895385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227983.P7287217118780895385

namespace A227983

/-- `A020725(lt[A053246(n+1), A039653(n)])` -/
def P7287217118780895385.Spec : Prop :=
  ∀ n, P7287217118780895385.a n = A227983 (n + 1)

end A227983

/-! ## A227983.P3382987916079586132

`A065475(lt[A053246(n+1), A039653(n)])`
-/

namespace A227983.P3382987916079586132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A227983.P3382987916079586132

namespace A227983

/-- `A065475(lt[A053246(n+1), A039653(n)])` -/
def P3382987916079586132.Spec : Prop :=
  ∀ n, P3382987916079586132.a n = A227983 (n + 1)

end A227983

/-! ## A227983.P10728220946905126757

`lt[A184387(n+1), A002659(A103505(n))]`
-/

namespace A227983.P10728220946905126757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (A103505 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227983.P10728220946905126757

namespace A227983

/-- `lt[A184387(n+1), A002659(A103505(n))]` -/
def P10728220946905126757.Spec : Prop :=
  ∀ n, (P10728220946905126757.a n : ℤ) = A227983 (n + 1)

end A227983

/-! ## A227983.P3298128510146647104

`lt[A086436(n+1), A056924(A103505(n))]`
-/

namespace A227983.P3298128510146647104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (A103505 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227983.P3298128510146647104

namespace A227983

/-- `lt[A086436(n+1), A056924(A103505(n))]` -/
def P3298128510146647104.Spec : Prop :=
  ∀ n, (P3298128510146647104.a n : ℤ) = A227983 (n + 1)

end A227983

/-! ## A227983.P10101121073638653037

`lt[A336570(n+1), A032741(C(n, 2))]`
-/

namespace A227983.P10101121073638653037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227983.P10101121073638653037

namespace A227983

/-- `lt[A336570(n+1), A032741(C(n, 2))]` -/
def P10101121073638653037.Spec : Prop :=
  ∀ n, (P10101121073638653037.a n : ℤ) = A227983 (n + 1)

end A227983

/-! ## A227983.P3669108909253791795

`lt[A336570(n+1), A074206(C(n, 2))]`
-/

namespace A227983.P3669108909253791795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (Nat.choose n 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227983.P3669108909253791795

namespace A227983

/-- `lt[A336570(n+1), A074206(C(n, 2))]` -/
def P3669108909253791795.Spec : Prop :=
  ∀ n, (P3669108909253791795.a n : ℤ) = A227983 (n + 1)

end A227983

/-! ## A227983.P7476300969945052613

`lt[n+2, A093370(A301764(n+1)+1)]`
-/

namespace A227983.P7476300969945052613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093370 (A301764 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227983.P7476300969945052613

namespace A227983

/-- `lt[n+2, A093370(A301764(n+1)+1)]` -/
def P7476300969945052613.Spec : Prop :=
  ∀ n, (P7476300969945052613.a n : ℤ) = A227983 (n + 1)

end A227983

/-! ## A227983.P2491247279091735346

`lt[A029665(A294787(n+1)), A008794(n)]`
-/

namespace A227983.P2491247279091735346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029665 (A294787 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A227983.P2491247279091735346

namespace A227983

/-- `lt[A029665(A294787(n+1)), A008794(n)]` -/
def P2491247279091735346.Spec : Prop :=
  ∀ n, (P2491247279091735346.a n : ℤ) = A227983 (n + 1)

end A227983

/-!
# A227984: Triangle T(n,k), read by rows: T(n,k) is the numerator of (1-2^(n-k+1))/(1-2^(k+1)).

The programs for A227984, the canonical program `A227984.P7060352613725131740` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227984 has offset 0).

The definition of A227984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227984.P15146634581347671143

`A228035(A061579(n))`
-/

namespace A227984.P15146634581347671143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228035 (A061579 n).toNat

end

end A227984.P15146634581347671143

namespace A227984

/-- `A228035(A061579(n))` -/
def P15146634581347671143.Spec : Prop :=
  ∀ n, P15146634581347671143.a n = A227984 n

end A227984

/-! ## A227984.P13322257789904165375

`A228035(A038722(n+2))`
-/

namespace A227984.P13322257789904165375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228035 (A038722 (n + 2)).toNat

end

end A227984.P13322257789904165375

namespace A227984

/-- `A228035(A038722(n+2))` -/
def P13322257789904165375.Spec : Prop :=
  ∀ n, P13322257789904165375.a n = A227984 n

end A227984

/-! ## A227984.P7060352613725131740

`A130330(n)/A204116(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A227984

/-- `A130330(n)/A204116(n+1)` -/
def P7060352613725131740.Spec : Prop :=
  ∀ n, P7060352613725131740.a n = (A227984 n : ℚ)

end A227984

/-! ## A227984.P16718033766167835650

`A228035(A002024(n+1)²-(n+1))`
-/

namespace A227984.P16718033766167835650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228035 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A227984.P16718033766167835650

namespace A227984

/-- `A228035(A002024(n+1)²-(n+1))` -/
def P16718033766167835650.Spec : Prop :=
  ∀ n, P16718033766167835650.a n = A227984 n

end A227984

/-! ## A227984.P1000144132725089031

`A130330(n)/gcd(A130330(n), A131816(n))`
-/

namespace A227984.P1000144132725089031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130330 n : ℚ) / (Int.gcd (A130330 n) (A131816 n) : ℚ)

end

end A227984.P1000144132725089031

namespace A227984

/-- `A130330(n)/gcd(A130330(n), A131816(n))` -/
def P1000144132725089031.Spec : Prop :=
  ∀ n, P1000144132725089031.a n = (A227984 n : ℚ)

end A227984

/-!
# A227985: Numerators of the fractional triangle T(n,k) = binomial(n-1,k)*B_k for 0 <= k < n.

The programs for A227985, there is no canonical definition to state claims against.
-/

/-! ## A227985.P7947434617929673332

`A244895(lcm(7, A182406(n+1)))`
-/

namespace A227985.P7947434617929673332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (Int.lcm 7 (A182406 (n + 1)))

end

end A227985.P7947434617929673332

/-! ## A227985.P9224444548411913905

`A008482(A002262(n))^A326180(n)`
-/

namespace A227985.P9224444548411913905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008482 (A002262 n).toNat : ℚ) ^ (A326180 n : ℤ)

end

end A227985.P9224444548411913905

/-! ## A227985.P2643158600277033115

`A075553(A002262(n)+A310546(n)²)`
-/

namespace A227985.P2643158600277033115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (A002262 n + A310546 n ^ 2).toNat

end

end A227985.P2643158600277033115

/-! ## A227985.P17199108250610869446

`A075553(xor(A310546(n)², A002262(n)))`
-/

namespace A227985.P17199108250610869446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (Int.xor (A310546 n ^ 2) (A002262 n)).toNat

end

end A227985.P17199108250610869446

/-! ## A227985.P18225623682916047359

`A244895(2*A182406(n+1))`
-/

namespace A227985.P18225623682916047359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (2 * A182406 (n + 1)).toNat

end

end A227985.P18225623682916047359

/-!
# A227986: Antiharmonic mean of the divisors of A227771(n) (the n-th antiharmonic number that is not a square).

The programs for A227986, there is no canonical definition to state claims against.
-/

/-! ## A227986.P13967123887279585745

`A158274(A227771(n+1))`
-/

namespace A227986.P13967123887279585745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (A227771 (n + 1)).toNat

end

end A227986.P13967123887279585745

/-! ## A227986.P8415220383866364920

`A158274(∩[A000415(n+1), A020487(n+1)])`
-/

namespace A227986.P8415220383866364920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A227986.P8415220383866364920

/-! ## A227986.P13537347606502265666

`A158274(∩[A007624(n+1), A020487(n+1)])`
-/

namespace A227986.P13537347606502265666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A227986.P13537347606502265666

/-! ## A227986.P9384156458009409351

`A158274(∩[A020487(n+1), A051144(n+1)])`
-/

namespace A227986.P9384156458009409351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A227986.P9384156458009409351

/-! ## A227986.P11115161252333042452

`A158274(∩[A020487(n+1), A072588(n+1)])`
-/

namespace A227986.P11115161252333042452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A227986.P11115161252333042452

/-! ## A227986.P15935308640950270491

`A158274(∩[A020487(n+1), A303946(n+1)])`
-/

namespace A227986.P15935308640950270491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A227986.P15935308640950270491

/-! ## A227986.P8842547708442587602

`A158274(eq[1, (A100587(n+1)+1)%3/A158275(n+1)]+1)`
-/

namespace A227986.P8842547708442587602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A100587 (n + 1) + 1) 3 : ℚ) / (A158275 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158274 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A227986.P8842547708442587602

/-!
# A227987: If the run lengths of the binary representation of n are [1+r_1, 1+r_2, 1+r_3, ..., 1+r_k], then those of a(n) are [1+(r_1), 1+(r_1 XOR r_2), 1+(r_1 XOR r_2 XOR r_3), ..., 1+(r_1 XOR ... XOR r_k)], where XOR denotes the XOR binary operator.

The programs for A227987, there is no canonical definition to state claims against.
-/

/-! ## A227987.P9890639271439203618

`A225607(A225607(A225607(n+1)%A000043(n+1)))`
-/

namespace A227987.P9890639271439203618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225607 (A225607 (Int.tmod (A225607 (n + 1)) (A000043 (n + 1))).toNat).toNat

end

end A227987.P9890639271439203618

/-! ## A227987.P15505340759965261451

`A225607(A225607(A225607(n+1)%A117102(n)))`
-/

namespace A227987.P15505340759965261451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225607 (A225607 (Int.tmod (A225607 (n + 1)) (A117102 n)).toNat).toNat

end

end A227987.P15505340759965261451

/-! ## A227987.P15728681558813492911

`A225607(A225607(A225607(n+1))%A141214(n))`
-/

namespace A227987.P15728681558813492911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225607 (Int.tmod (A225607 (A225607 (n + 1)).toNat) (A141214 n)).toNat

end

end A227987.P15728681558813492911

/-! ## A227987.P3597403856084708947

`A225607(A226532(A226569(A225607(A225607(n+1)))))`
-/

namespace A227987.P3597403856084708947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225607 (A226532 (A226569 (A225607 (A225607 (n + 1)).toNat).toNat).toNat).toNat

end

end A227987.P3597403856084708947

/-!
# A227990: 3^a(n) is the highest power of 3 dividing prime(n)+1.

The programs for A227990, the canonical program `A227990.P13507140651712075009` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227990 has offset 1).

The definition of A227990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227990.P13507140651712075009

`val(A008864(n+1), 3)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227990

/-- `val(A008864(n+1), 3)` -/
def P13507140651712075009.Spec : Prop :=
  ∀ n, (P13507140651712075009.a n : ℤ) = A227990 (n + 1)

theorem P13507140651712075009.correct : P13507140651712075009.Spec := by
  intro n
  simp only [A227990, Nat.add_sub_cancel]

end A227990

/-! ## A227990.P17605990601963948399

`val(A028815(n+1), 3)`
-/

namespace A227990.P17605990601963948399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028815 (n + 1)).toNat 3

end

end A227990.P17605990601963948399

namespace A227990

/-- `val(A028815(n+1), 3)` -/
def P17605990601963948399.Spec : Prop :=
  ∀ n, (P17605990601963948399.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P13492777342377794929

`val(A057024(n+1), 3)`
-/

namespace A227990.P13492777342377794929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057024 (n + 1)).toNat 3

end

end A227990.P13492777342377794929

namespace A227990

/-- `val(A057024(n+1), 3)` -/
def P13492777342377794929.Spec : Prop :=
  ∀ n, (P13492777342377794929.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P5832175724880478291

`val(A089241(n+1), 3)`
-/

namespace A227990.P5832175724880478291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A089241 (n + 1)).toNat 3

end

end A227990.P5832175724880478291

namespace A227990

/-- `val(A089241(n+1), 3)` -/
def P5832175724880478291.Spec : Prop :=
  ∀ n, (P5832175724880478291.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P11626171612658004036

`val(A131991(n+1), 3)`
-/

namespace A227990.P11626171612658004036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131991 (n + 1)).toNat 3

end

end A227990.P11626171612658004036

namespace A227990

/-- `val(A131991(n+1), 3)` -/
def P11626171612658004036.Spec : Prop :=
  ∀ n, (P11626171612658004036.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P17022785023622657589

`val(A227991(n+1), 3)`
-/

namespace A227990.P17022785023622657589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A227991 (n + 1)).toNat 3

end

end A227990.P17022785023622657589

namespace A227990

/-- `val(A227991(n+1), 3)` -/
def P17022785023622657589.Spec : Prop :=
  ∀ n, (P17022785023622657589.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P7200009197072401356

`val(A240068(n+1), 3)`
-/

namespace A227990.P7200009197072401356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A240068 (n + 1)).toNat 3

end

end A227990.P7200009197072401356

namespace A227990

/-- `val(A240068(n+1), 3)` -/
def P7200009197072401356.Spec : Prop :=
  ∀ n, (P7200009197072401356.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P8477829858369571603

`val(A306591(n+1), 3)`
-/

namespace A227990.P8477829858369571603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A306591 (n + 1)).toNat 3

end

end A227990.P8477829858369571603

namespace A227990

/-- `val(A306591(n+1), 3)` -/
def P8477829858369571603.Spec : Prop :=
  ∀ n, (P8477829858369571603.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P2389641610531320086

`val(A110833(n+1), 9)`
-/

namespace A227990.P2389641610531320086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110833 (n + 1)).toNat 9

end

end A227990.P2389641610531320086

namespace A227990

/-- `val(A110833(n+1), 9)` -/
def P2389641610531320086.Spec : Prop :=
  ∀ n, (P2389641610531320086.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P6886972524526536622

`val(A178398(n+1), 9)`
-/

namespace A227990.P6886972524526536622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178398 (n + 1)).toNat 9

end

end A227990.P6886972524526536622

namespace A227990

/-- `val(A178398(n+1), 9)` -/
def P6886972524526536622.Spec : Prop :=
  ∀ n, (P6886972524526536622.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P12418411614420490566

`val(A000040(n+1)+1, 3)`
-/

namespace A227990.P12418411614420490566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) + 1).toNat 3

end

end A227990.P12418411614420490566

namespace A227990

/-- `val(A000040(n+1)+1, 3)` -/
def P12418411614420490566.Spec : Prop :=
  ∀ n, (P12418411614420490566.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P17890888032446814393

`A001222(A227991(n+1))`
-/

namespace A227990.P17890888032446814393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A227991 (n + 1)).toNat

end

end A227990.P17890888032446814393

namespace A227990

/-- `A001222(A227991(n+1))` -/
def P17890888032446814393.Spec : Prop :=
  ∀ n, P17890888032446814393.a n = A227990 (n + 1)

end A227990

/-! ## A227990.P2611189407561857424

`val(A006093(n+1)+2, A023585(n+1))`
-/

namespace A227990.P2611189407561857424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006093 (n + 1) + 2).toNat (A023585 (n + 1)).toNat

end

end A227990.P2611189407561857424

namespace A227990

/-- `val(A006093(n+1)+2, A023585(n+1))` -/
def P2611189407561857424.Spec : Prop :=
  ∀ n, (P2611189407561857424.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P8561574976576413134

`val(A299763(n+2), 3)`
-/

namespace A227990.P8561574976576413134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299763 (n + 2)).toNat 3

end

end A227990.P8561574976576413134

namespace A227990

/-- `val(A299763(n+2), 3)` -/
def P8561574976576413134.Spec : Prop :=
  ∀ n, (P8561574976576413134.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P4109340283181475065

`val(record[A000010(n+1)]+2, 3)`
-/

namespace A227990.P4109340283181475065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat 3

end

end A227990.P4109340283181475065

namespace A227990

/-- `val(record[A000010(n+1)]+2, 3)` -/
def P4109340283181475065.Spec : Prop :=
  ∀ n, (P4109340283181475065.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P6425936297428799405

`val(record[(A006530(n+2)²+1)*(n+3)], 3)`
-/

namespace A227990.P6425936297428799405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 2) ^ 2 + 1) * (n + 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 3

end

end A227990.P6425936297428799405

namespace A227990

/-- `val(record[(A006530(n+2)²+1)*(n+3)], 3)` -/
def P6425936297428799405.Spec : Prop :=
  ∀ n, (P6425936297428799405.a n : ℤ) = A227990 (n + 1)

end A227990

/-! ## A227990.P9644465176205628330

`A354100(A000040(n+1))`
-/

namespace A227990.P9644465176205628330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354100 (A000040 (n + 1)).toNat

end

end A227990.P9644465176205628330

namespace A227990

/-- `A354100(A000040(n+1))` -/
def P9644465176205628330.Spec : Prop :=
  ∀ n, P9644465176205628330.a n = A227990 (n + 1)

end A227990

/-! ## A227990.P10122719456775253699

`A354100(A296375(n+1))`
-/

namespace A227990.P10122719456775253699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354100 (A296375 (n + 1)).toNat

end

end A227990.P10122719456775253699

namespace A227990

/-- `A354100(A296375(n+1))` -/
def P10122719456775253699.Spec : Prop :=
  ∀ n, P10122719456775253699.a n = A227990 (n + 1)

end A227990

/-! ## A227990.P9602107948184872617

`A354100(record[A006530(n+2)])`
-/

namespace A227990.P9602107948184872617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227990.P9602107948184872617

namespace A227990

/-- `A354100(record[A006530(n+2)])` -/
def P9602107948184872617.Spec : Prop :=
  ∀ n, P9602107948184872617.a n = A227990 (n + 1)

end A227990

/-! ## A227990.P1667897556677428449

`A354100(record[A020639(n+2)])`
-/

namespace A227990.P1667897556677428449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354100 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227990.P1667897556677428449

namespace A227990

/-- `A354100(record[A020639(n+2)])` -/
def P1667897556677428449.Spec : Prop :=
  ∀ n, P1667897556677428449.a n = A227990 (n + 1)

end A227990

/-!
# A227991: Highest power of 3 dividing prime(n)+1.

The programs for A227991, the canonical program `A227991.P607222595589635829` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227991 has offset 1).

The definition of A227991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227990, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A227991.P607222595589635829

`3^A227990(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227991

/-- `3^A227990(n+1)` -/
def P607222595589635829.Spec : Prop :=
  ∀ n, P607222595589635829.a n = (A227991 (n + 1) : ℚ)

end A227991

/-! ## A227991.P6193400405113622247

`3^val(Δ[A007504(n)]+1, 3)`
-/

namespace A227991.P6193400405113622247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (f1 (n + 1) - f1 n + 1).toNat 3

end

end A227991.P6193400405113622247

namespace A227991

/-- `3^val(Δ[A007504(n)]+1, 3)` -/
def P6193400405113622247.Spec : Prop :=
  ∀ n, (P6193400405113622247.a n : ℤ) = A227991 (n + 1)

end A227991

/-! ## A227991.P12876042888289972500

`3^val(A000040(n+1)+1, 3)`
-/

namespace A227991.P12876042888289972500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A000040 (n + 1) + 1).toNat 3

end

end A227991.P12876042888289972500

namespace A227991

/-- `3^val(A000040(n+1)+1, 3)` -/
def P12876042888289972500.Spec : Prop :=
  ∀ n, (P12876042888289972500.a n : ℤ) = A227991 (n + 1)

end A227991

/-! ## A227991.P4817032732107274942

`A000244(val(A000040(n+1)+1, 3))`
-/

namespace A227991.P4817032732107274942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (A000040 (n + 1) + 1).toNat 3)

end

end A227991.P4817032732107274942

namespace A227991

/-- `A000244(val(A000040(n+1)+1, 3))` -/
def P4817032732107274942.Spec : Prop :=
  ∀ n, P4817032732107274942.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P479574349220232977

`3^val(A000203(A008578(n+2)), 3)`
-/

namespace A227991.P479574349220232977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A000203 (A008578 (n + 2)).toNat).toNat 3

end

end A227991.P479574349220232977

namespace A227991

/-- `3^val(A000203(A008578(n+2)), 3)` -/
def P479574349220232977.Spec : Prop :=
  ∀ n, (P479574349220232977.a n : ℤ) = A227991 (n + 1)

end A227991

/-! ## A227991.P8867787686844475302

`gcd(A000203(A000040(n+1)), 3*A132171(n))`
-/

namespace A227991.P8867787686844475302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A000040 (n + 1)).toNat) (3 * A132171 n)

end

end A227991.P8867787686844475302

namespace A227991

/-- `gcd(A000203(A000040(n+1)), 3*A132171(n))` -/
def P8867787686844475302.Spec : Prop :=
  ∀ n, (P8867787686844475302.a n : ℤ) = A227991 (n + 1)

end A227991

/-! ## A227991.P624435130198803587

`gcd(A040976(n+1)^8, A000217(A000040(n+1)))`
-/

namespace A227991.P624435130198803587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040976 (n + 1) ^ 8) (A000217 (A000040 (n + 1)).toNat)

end

end A227991.P624435130198803587

namespace A227991

/-- `gcd(A040976(n+1)^8, A000217(A000040(n+1)))` -/
def P624435130198803587.Spec : Prop :=
  ∀ n, (P624435130198803587.a n : ℤ) = A227991 (n + 1)

end A227991

/-! ## A227991.P12632886662640436391

`A038500(A057024(n+1))`
-/

namespace A227991.P12632886662640436391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A057024 (n + 1)).toNat

end

end A227991.P12632886662640436391

namespace A227991

/-- `A038500(A057024(n+1))` -/
def P12632886662640436391.Spec : Prop :=
  ∀ n, P12632886662640436391.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P184473875096127353

`A379473(A000040(n+1))`
-/

namespace A227991.P184473875096127353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379473 (A000040 (n + 1)).toNat

end

end A227991.P184473875096127353

namespace A227991

/-- `A379473(A000040(n+1))` -/
def P184473875096127353.Spec : Prop :=
  ∀ n, P184473875096127353.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P17586911694024734298

`A379473(A296375(n+1))`
-/

namespace A227991.P17586911694024734298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379473 (A296375 (n + 1)).toNat

end

end A227991.P17586911694024734298

namespace A227991

/-- `A379473(A296375(n+1))` -/
def P17586911694024734298.Spec : Prop :=
  ∀ n, P17586911694024734298.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P8274622717795065757

`A038500(A008864(n+1))`
-/

namespace A227991.P8274622717795065757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A008864 (n + 1)).toNat

end

end A227991.P8274622717795065757

namespace A227991

/-- `A038500(A008864(n+1))` -/
def P8274622717795065757.Spec : Prop :=
  ∀ n, P8274622717795065757.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P1303443060129617313

`A038500(A028815(n+1))`
-/

namespace A227991.P1303443060129617313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A028815 (n + 1)).toNat

end

end A227991.P1303443060129617313

namespace A227991

/-- `A038500(A028815(n+1))` -/
def P1303443060129617313.Spec : Prop :=
  ∀ n, P1303443060129617313.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P12920031140698342973

`A038500(A306591(n+1))`
-/

namespace A227991.P12920031140698342973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A306591 (n + 1)).toNat

end

end A227991.P12920031140698342973

namespace A227991

/-- `A038500(A306591(n+1))` -/
def P12920031140698342973.Spec : Prop :=
  ∀ n, P12920031140698342973.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P7968127008109557284

`A038500(A299763(n+2))`
-/

namespace A227991.P7968127008109557284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A299763 (n + 2)).toNat

end

end A227991.P7968127008109557284

namespace A227991

/-- `A038500(A299763(n+2))` -/
def P7968127008109557284.Spec : Prop :=
  ∀ n, P7968127008109557284.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P5525415735376312487

`A038500(A000040(n+1)+1)`
-/

namespace A227991.P5525415735376312487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A000040 (n + 1) + 1).toNat

end

end A227991.P5525415735376312487

namespace A227991

/-- `A038500(A000040(n+1)+1)` -/
def P5525415735376312487.Spec : Prop :=
  ∀ n, P5525415735376312487.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P2991785903410628214

`A038500(A006093(n+1)+2)`
-/

namespace A227991.P2991785903410628214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A006093 (n + 1) + 2).toNat

end

end A227991.P2991785903410628214

namespace A227991

/-- `A038500(A006093(n+1)+2)` -/
def P2991785903410628214.Spec : Prop :=
  ∀ n, P2991785903410628214.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P13146362761348566908

`A038500(A052147(n+1)-1)`
-/

namespace A227991.P13146362761348566908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A052147 (n + 1) - 1).toNat

end

end A227991.P13146362761348566908

namespace A227991

/-- `A038500(A052147(n+1)-1)` -/
def P13146362761348566908.Spec : Prop :=
  ∀ n, P13146362761348566908.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P14622346724305693984

`A038500(A089241(n+1)/2)`
-/

namespace A227991.P14622346724305693984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)).toNat

end

end A227991.P14622346724305693984

namespace A227991

/-- `A038500(A089241(n+1)/2)` -/
def P14622346724305693984.Spec : Prop :=
  ∀ n, P14622346724305693984.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P3099496553239139275

`A038500(record[A000010(n+1)+2])`
-/

namespace A227991.P3099496553239139275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227991.P3099496553239139275

namespace A227991

/-- `A038500(record[A000010(n+1)+2])` -/
def P3099496553239139275.Spec : Prop :=
  ∀ n, P3099496553239139275.a n = A227991 (n + 1)

end A227991

/-! ## A227991.P15017728031195041363

`A038500(record[A006530(n+2)+1])`
-/

namespace A227991.P15017728031195041363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A227991.P15017728031195041363

namespace A227991

/-- `A038500(record[A006530(n+2)+1])` -/
def P15017728031195041363.Spec : Prop :=
  ∀ n, P15017728031195041363.a n = A227991 (n + 1)

end A227991

/-!
# A227992: Numbers m such that the continuants of their binary representations defined in A072347 equal 1.

The programs for A227992, the canonical program `A227992.P16096606270884194142` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227992 has offset 1).

The definition of A227992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227992.P16096606270884194142

`and(A132679(n+1)-1, A179888(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A227992

/-- `and(A132679(n+1)-1, A179888(n+1))` -/
def P16096606270884194142.Spec : Prop :=
  ∀ n, P16096606270884194142.a n = A227992 (n + 1)

theorem P16096606270884194142.correct : P16096606270884194142.Spec := by
  intro n
  simp only [A227992, Nat.add_sub_cancel]

end A227992

/-! ## A227992.P5384850027743054868

`A126684(n+1)+and(A000695(n+1), A126684(n+1))`
-/

namespace A227992.P5384850027743054868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (n + 1) + Int.land (A000695 (n + 1)) (A126684 (n + 1))

end

end A227992.P5384850027743054868

namespace A227992

/-- `A126684(n+1)+and(A000695(n+1), A126684(n+1))` -/
def P5384850027743054868.Spec : Prop :=
  ∀ n, P5384850027743054868.a n = A227992 (n + 1)

end A227992

/-! ## A227992.P1426101426551466975

`record[2*(n-a(floor(n/2)))]` with `a(0)=0, a(1)=1`
-/

namespace A227992.P1426101426551466975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227992.P1426101426551466975

namespace A227992

/-- `record[2*(n-a(floor(n/2)))]` -/
def P1426101426551466975.Spec : Prop :=
  ∀ n, P1426101426551466975.a n = A227992 (n + 1)

end A227992

/-! ## A227992.P3387667091404125172

`A023717(eq[A117966(n), A338241(n)])`
-/

namespace A227992.P3387667091404125172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A227992.P3387667091404125172

namespace A227992

/-- `A023717(eq[A117966(n), A338241(n)])` -/
def P3387667091404125172.Spec : Prop :=
  ∀ n, P3387667091404125172.a n = A227992 (n + 1)

end A227992

/-! ## A227992.P5186018250781931939

`eq[n, and(n, A048647(n)-(n+1))]`
-/

namespace A227992.P5186018250781931939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A048647 n - (n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227992.P5186018250781931939

namespace A227992

/-- `eq[n, and(n, A048647(n)-(n+1))]` -/
def P5186018250781931939.Spec : Prop :=
  ∀ n, (P5186018250781931939.a n : ℤ) = A227992 (n + 1)

end A227992

/-! ## A227992.P16723054894241871718

`lt[0, A151669(A006257(n))]`
-/

namespace A227992.P16723054894241871718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 (A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A227992.P16723054894241871718

namespace A227992

/-- `lt[0, A151669(A006257(n))]` -/
def P16723054894241871718.Spec : Prop :=
  ∀ n, (P16723054894241871718.a n : ℤ) = A227992 (n + 1)

end A227992

/-! ## A227992.P172017483162890442

`A023717(eq[n, A140263(A128173(n))])`
-/

namespace A227992.P172017483162890442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140263 (A128173 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A227992.P172017483162890442

namespace A227992

/-- `A023717(eq[n, A140263(A128173(n))])` -/
def P172017483162890442.Spec : Prop :=
  ∀ n, P172017483162890442.a n = A227992 (n + 1)

end A227992

/-! ## A227992.P8258645458409629793

`eq[1, A072347(n)]`
-/

namespace A227992.P8258645458409629793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A227992.P8258645458409629793

namespace A227992

/-- `eq[1, A072347(n)]` -/
def P8258645458409629793.Spec : Prop :=
  ∀ n, (P8258645458409629793.a n : ℤ) = A227992 (n + 1)

end A227992

/-! ## A227992.P2958808033588723287

`lt[floor(A072347(n)/2)*A004277(n+2), 2*(n+1)]`
-/

namespace A227992.P2958808033588723287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A072347 n : ℚ) / 2⌋ * A004277 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A227992.P2958808033588723287

namespace A227992

/-- `lt[floor(A072347(n)/2)*A004277(n+2), 2*(n+1)]` -/
def P2958808033588723287.Spec : Prop :=
  ∀ n, (P2958808033588723287.a n : ℤ) = A227992 (n + 1)

end A227992

/-! ## A227992.P8097721187045990189

`eq[A000120(n), A160381(A006257(n))]`
-/

namespace A227992.P8097721187045990189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A227992.P8097721187045990189

namespace A227992

/-- `eq[A000120(n), A160381(A006257(n))]` -/
def P8097721187045990189.Spec : Prop :=
  ∀ n, (P8097721187045990189.a n : ℤ) = A227992 (n + 1)

end A227992

/-! ## A227992.P5205065739432839760

`record[n-A063695(A053645(2*n+1))]`
-/

namespace A227992.P5205065739432839760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A063695 (A053645 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A227992.P5205065739432839760

namespace A227992

/-- `record[n-A063695(A053645(2*n+1))]` -/
def P5205065739432839760.Spec : Prop :=
  ∀ n, P5205065739432839760.a n = A227992 (n + 1)

end A227992

/-!
# A227993: Let d(1) < d(2) < ... < d(q) denote the divisors of k. Sequence lists numbers k > 1 such that d(1)/d(2) + d(2)/d(3) + ... + d(q-1)/d(q) is an integer.

The programs for A227993, there is no canonical definition to state claims against.
-/

/-! ## A227993.P17622683609426239274

`∩[A129827(n+1), A342130(n+1)]`
-/

namespace A227993.P17622683609426239274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A227993.P17622683609426239274

/-! ## A227993.P11379069332153286807

`A328415(n+1)+A317871(A328417(n+1))`
-/

namespace A227993.P11379069332153286807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328415 (n + 1) + A317871 (A328417 (n + 1)).toNat

end

end A227993.P11379069332153286807

/-!
# A227994: Primes that are the sum of the squares of three integers that form an arithmetic sequence with difference 7.

The programs for A227994, there is no canonical definition to state claims against.
-/

/-! ## A227994.P5375960081084015600

`p?[A005893(n+12)+n²]`
-/

namespace A227994.P5375960081084015600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (n + 12) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227994.P5375960081084015600

/-! ## A227994.P3325090997236824924

`p?[6*4*(A167614(n+2)+1)+5]`
-/

namespace A227994.P3325090997236824924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (4 * (A167614 (n + 2) + 1)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227994.P3325090997236824924

/-! ## A227994.P6838638995482035924

`p?[A067727(n+5)+A033429(n)]`
-/

namespace A227994.P6838638995482035924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067727 (n + 5) + A033429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227994.P6838638995482035924

/-! ## A227994.P12121147592774806599

`p?[A010000(n)+A001105(n+12)]`
-/

namespace A227994.P12121147592774806599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n + A001105 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227994.P12121147592774806599

/-! ## A227994.P6246956791969725773

`p?[A058331(n+12)+A002522(n)]`
-/

namespace A227994.P6246956791969725773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (n + 12) + A002522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227994.P6246956791969725773

/-! ## A227994.P4812227896010506216

`p?[A135453(n+3)+A017581(n+11)]`
-/

namespace A227994.P4812227896010506216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (n + 3) + A017581 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227994.P4812227896010506216

/-! ## A227994.P17670474062025788517

`p?[A164897(n+7)+A001105(2*n+3)]`
-/

namespace A227994.P17670474062025788517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164897 (n + 7) + A001105 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A227994.P17670474062025788517

/-!
# A227995: Alternate partial sums of the binomial coefficients C(4*n,n).

The programs for A227995, the canonical program `A227995.P329768956790891278` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A227995 has offset 0).

The definition of A227995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A227995.P329768956790891278

`A005810(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A227995

/-- `A005810(n)-a(n-1)` -/
def P329768956790891278.Spec : Prop :=
  ∀ n, P329768956790891278.a n = A227995 n

theorem P329768956790891278.correct : P329768956790891278.Spec := by
  intro n
  simp only [A227995]

end A227995

/-! ## A227995.P6455518662550685774

`A119304(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A227995.P6455518662550685774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A119304 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A227995.P6455518662550685774

namespace A227995

/-- `A119304(∑[n])-a(n-1)` -/
def P6455518662550685774.Spec : Prop :=
  ∀ n, P6455518662550685774.a n = A227995 n

end A227995

/-! ## A227995.P12387848726669684153

`A051036(4*n)-a(n-1)` with `a(0)=1`
-/

namespace A227995.P12387848726669684153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051036 (4 * n) - a (n - 1)

end

end A227995.P12387848726669684153

namespace A227995

/-- `A051036(4*n)-a(n-1)` -/
def P12387848726669684153.Spec : Prop :=
  ∀ n, P12387848726669684153.a n = A227995 n

end A227995

/-! ## A227995.P14579113933412530063

`abs(∑[A005810(n)*A033999(n)])`
-/

namespace A227995.P14579113933412530063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A227995.P14579113933412530063

namespace A227995

/-- `abs(∑[A005810(n)*A033999(n)])` -/
def P14579113933412530063.Spec : Prop :=
  ∀ n, P14579113933412530063.a n = A227995 n

end A227995

/-! ## A227995.P16592238765374805153

`(A016813(n)-n)*A002293(n)-a(n-1)` with `a(0)=1`
-/

namespace A227995.P16592238765374805153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A016813 n - (n : ℤ)) * A002293 n - a (n - 1)

end

end A227995.P16592238765374805153

namespace A227995

/-- `(A016813(n)-n)*A002293(n)-a(n-1)` -/
def P16592238765374805153.Spec : Prop :=
  ∀ n, P16592238765374805153.a n = A227995 n

end A227995

/-! ## A227995.P15542134627806134348

`A052203(n)-n*A002293(n)-a(n-1)` with `a(0)=1`
-/

namespace A227995.P15542134627806134348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052203 n - (n : ℤ) * A002293 n - a (n - 1)

end

end A227995.P15542134627806134348

namespace A227995

/-- `A052203(n)-n*A002293(n)-a(n-1)` -/
def P15542134627806134348.Spec : Prop :=
  ∀ n, P15542134627806134348.a n = A227995 n

end A227995

/-! ## A227995.P1131639932404091014

`A001651(A005408(n))*A002293(n)-a(n-1)` with `a(0)=1`
-/

namespace A227995.P1131639932404091014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001651 (A005408 n).toNat * A002293 n - a (n - 1)

end

end A227995.P1131639932404091014

namespace A227995

/-- `A001651(A005408(n))*A002293(n)-a(n-1)` -/
def P1131639932404091014.Spec : Prop :=
  ∀ n, P1131639932404091014.a n = A227995 n

end A227995

/-! ## A227995.P16953290831600448403

`C(4*n, n)-a(n-1)` with `a(0)=1`
-/

namespace A227995.P16953290831600448403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (4 * n) n : ℤ) - a (n - 1)

end

end A227995.P16953290831600448403

namespace A227995

/-- `C(4*n, n)-a(n-1)` -/
def P16953290831600448403.Spec : Prop :=
  ∀ n, P16953290831600448403.a n = A227995 n

end A227995

/-!
# A227996: Alternate partial sums of the binomial coefficients C(5*n,n).

The programs for A227996, there is no canonical definition to state claims against.
-/

/-! ## A227996.P10575660350401459681

`A001449(n)-a(n-1)` with `a(0)=1`
-/

namespace A227996.P10575660350401459681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001449 n - a (n - 1)

end

end A227996.P10575660350401459681

/-! ## A227996.P16427586890149474966

`abs(a(n-1)-A051052(5*n))` with `a(0)=1`
-/

namespace A227996.P16427586890149474966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A051052 (5 * n)|

end

end A227996.P16427586890149474966

/-! ## A227996.P14929249529475197041

`A051052(5*n)-a(A004526(A004273(n)))` with `a(0)=1`
-/

namespace A227996.P14929249529475197041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051052 (5 * n) - a (A004526 (A004273 n).toNat).toNat

end

end A227996.P14929249529475197041

/-! ## A227996.P9754258271900993244

`C(5*n, n)-a(n-1)` with `a(0)=1`
-/

namespace A227996.P9754258271900993244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (5 * n) n : ℤ) - a (n - 1)

end

end A227996.P9754258271900993244

/-! ## A227996.P17538303800083279677

`abs(∑[C(5*n, n)*A033999(n)])`
-/

namespace A227996.P17538303800083279677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) n : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A227996.P17538303800083279677

/-!
# A227997: Triangular array read by rows. T(n,k) is the number of square lattice walks that start and end at the origin after 2n steps having k primitive loops; n>=1, 1<=k<=n.

The programs for A227997, there is no canonical definition to state claims against.
-/

/-! ## A227997.P12813390901234010577

`A182728(A289377(n+1))`
-/

namespace A227997.P12813390901234010577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182728 (A289377 (n + 1)).toNat

end

end A227997.P12813390901234010577

/-!
# A227998: Number T(n,k,s) of partitions of an n X k rectangle into s integer-sided squares, considering only the list of parts; irregular triangle T(n,k,s), 1 <= k <= n, s >= 1, read by rows.

The programs for A227998, there is no canonical definition to state claims against.
-/

/-! ## A227998.P18245683910754814014

`A285464(17*A184868(n+1))`
-/

namespace A227998.P18245683910754814014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285464 (17 * A184868 (n + 1)).toNat

end

end A227998.P18245683910754814014

/-! ## A227998.P8324499791713668662

`A285464(lcm(17, A184868(n+1)))`
-/

namespace A227998.P8324499791713668662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285464 (Int.lcm 17 (A184868 (n + 1)))

end

end A227998.P8324499791713668662

/-! ## A227998.P13448042345970147709

`A337485(A344159(2*n+3))%2`
-/

namespace A227998.P13448042345970147709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337485 (A344159 (2 * n + 3)).toNat) 2

end

end A227998.P13448042345970147709

/-! ## A227998.P17127321954310130764

`A151622(and(A042948(n), A061667(n+1)))`
-/

namespace A227998.P17127321954310130764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 (Int.land (A042948 n) (A061667 (n + 1))).toNat

end

end A227998.P17127321954310130764

/-! ## A227998.P2638981298787968490

`and(A167501(A000203(n+1)), A322741(3*n+1))`
-/

namespace A227998.P2638981298787968490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167501 (A000203 (n + 1)).toNat) (A322741 (3 * n + 1))

end

end A227998.P2638981298787968490

/-!
# A227999: a(n) = (a(n-1) * a(n-5) + a(n-2) * a(n-4) + a(n-3)^2) / a(n-6), a(0) = a(1) = a(2) = a(3) = 1, a(4) = a(5) = 2.

The programs for A227999, there is no canonical definition to state claims against.
-/

/-! ## A227999.P2517835322704296959

`6^((a(n-1)*a(n-5)+a(n-2))*a(n-4)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=2, a(6)=5, a(7)=11, a(8)=25, a(9)=97`
-/

namespace A227999.P2517835322704296959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 2, 5, 11, 25, 97] fun n a =>
  6 ^ ((a (n - 1) * a (n - 5) + a (n - 2)) * a (n - 4) + a (n - 3))

end

end A227999.P2517835322704296959

/-! ## A227999.P8079915034556234817

`A005555(A000029(n))-A004281(n)`
-/

namespace A227999.P8079915034556234817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A000029 n).toNat - A004281 n

end

end A227999.P8079915034556234817

/-! ## A227999.P16835816155149356112

`A005555(A000029(n))-A008732(n)`
-/

namespace A227999.P16835816155149356112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A000029 n).toNat - A008732 n

end

end A227999.P16835816155149356112

