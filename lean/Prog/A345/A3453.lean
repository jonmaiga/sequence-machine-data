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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A345300: a(n) is the number of distinct primes of the form n + A - B where A and B are sums of subsets of the prime factors of n.

The programs for A345300, there is no canonical definition to state claims against.
-/

/-! ## A345300.P8818344316763204968

`A063833(A325806(n+1))%A052938(n)`
-/

namespace A345300.P8818344316763204968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063833 (A325806 (n + 1)).toNat) (A052938 n)

end

end A345300.P8818344316763204968

/-! ## A345300.P18288092895770825639

`A055641(A187829(n+1))+A136176(n+1)²`
-/

namespace A345300.P18288092895770825639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A187829 (n + 1)).toNat + A136176 (n + 1) ^ 2

end

end A345300.P18288092895770825639

/-! ## A345300.P5499100026798892282

`A055641(n+1)+(A061395(A324202(3*(n+1)))-(n+1)/∏{p}[n+1, #])²`
-/

namespace A345300.P5499100026798892282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055641 (n + 1) : ℚ) + ((A061395 (A324202 (3 * (n + 1))).toNat : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2

end

end A345300.P5499100026798892282

/-! ## A345300.P7527756303981046505

`A055641(n+1)+(A079218(A079167(n+1))%A079171(n+1))²`
-/

namespace A345300.P7527756303981046505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (n + 1) + Int.tmod (A079218 (A079167 (n + 1)).toNat) (A079171 (n + 1)) ^ 2

end

end A345300.P7527756303981046505

/-!
# A345301: a(n) = Sum_{p|n, p prime} p^pi(n/p).

The programs for A345301, the canonical program `A345301.P8370085524223564322` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345301 has offset 1).

The definition of A345301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345301.P15752922441999729431

`∑{p}[n+1, #^A000720((n+1)/#)]`
-/

namespace A345301.P15752922441999729431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat : ℤ)

end

end A345301.P15752922441999729431

namespace A345301

/-- `∑{p}[n+1, #^A000720((n+1)/#)]` -/
def P15752922441999729431.Spec : Prop :=
  ∀ n, P15752922441999729431.a n = (A345301 (n + 1) : ℚ)

end A345301

/-! ## A345301.P8370085524223564322

`∑{p}[n+1, #^A230980((n+1)/#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345301

/-- `∑{p}[n+1, #^A230980((n+1)/#)]` -/
def P8370085524223564322.Spec : Prop :=
  ∀ n, P8370085524223564322.a n = (A345301 (n + 1) : ℚ)

end A345301

/-! ## A345301.P11945283846115090859

`A007953(A000045(n)^A340653(2*(n+1)))`
-/

namespace A345301.P11945283846115090859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A000045 n : ℚ) ^ (A340653 (2 * (n + 1)) : ℤ))).toNat

end

end A345301.P11945283846115090859

namespace A345301

/-- `A007953(A000045(n)^A340653(2*(n+1)))` -/
def P11945283846115090859.Spec : Prop :=
  ∀ n, P11945283846115090859.a n = A345301 (n + 1)

end A345301

/-!
# A345302: a(n) = Sum_{p|n, p prime} lcm(p,n/p).

The programs for A345302, the canonical program `A345302.P7077126449735329200` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345302 has offset 1).

The definition of A345302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345302.P7077126449735329200

`∑{p}[n+1, lcm(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345302

/-- `∑{p}[n+1, lcm(#, (n+1)/#)]` -/
def P7077126449735329200.Spec : Prop :=
  ∀ n, (P7077126449735329200.a n : ℤ) = A345302 (n + 1)

theorem P7077126449735329200.correct : P7077126449735329200.Spec := by
  intro n
  simp only [A345302, Nat.add_sub_cancel]

end A345302

/-! ## A345302.P15846343012505312316

`∑{p}[n+1, (n+1)/gcd(#, (n+1)/#)]`
-/

namespace A345302.P15846343012505312316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (Int.gcd (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))) : ℚ)

end

end A345302.P15846343012505312316

namespace A345302

/-- `∑{p}[n+1, (n+1)/gcd(#, (n+1)/#)]` -/
def P15846343012505312316.Spec : Prop :=
  ∀ n, P15846343012505312316.a n = (A345302 (n + 1) : ℚ)

end A345302

/-! ## A345302.P13279742324747217349

`∑{p}[n+1, ceil(n/#+n+1)]-A345305(n+1)`
-/

namespace A345302.P13279742324747217349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ) + (n + 1 : ℚ)⌉ - A345305 (n + 1)

end

end A345302.P13279742324747217349

namespace A345302

/-- `∑{p}[n+1, ceil(n/#+n+1)]-A345305(n+1)` -/
def P13279742324747217349.Spec : Prop :=
  ∀ n, P13279742324747217349.a n = A345302 (n + 1)

end A345302

/-! ## A345302.P12946158357529235686

`A065967(n+1)-A345305(n+1)`
-/

namespace A345302.P12946158357529235686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (n + 1) - A345305 (n + 1)

end

end A345302.P12946158357529235686

namespace A345302

/-- `A065967(n+1)-A345305(n+1)` -/
def P12946158357529235686.Spec : Prop :=
  ∀ n, P12946158357529235686.a n = A345302 (n + 1)

end A345302

/-! ## A345302.P4464482009182980053

`(n+1)*∑{p}[n+1, A000203(#)/#]-A345305(n+1)`
-/

namespace A345302.P4464482009182980053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ p ∈ Nat.primeFactors (f1 n), (A000203 p : ℚ) / (p : ℚ)) - (A345305 (n + 1) : ℚ)

end

end A345302.P4464482009182980053

namespace A345302

/-- `(n+1)*∑{p}[n+1, A000203(#)/#]-A345305(n+1)` -/
def P4464482009182980053.Spec : Prop :=
  ∀ n, P4464482009182980053.a n = (A345302 (n + 1) : ℚ)

end A345302

/-! ## A345302.P10916651891028658707

`A069359(n+1)+A328260(n+1)-A345305(n+1)`
-/

namespace A345302.P10916651891028658707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + (A328260 (n + 1) - A345305 (n + 1))

end

end A345302.P10916651891028658707

namespace A345302

/-- `A069359(n+1)+A328260(n+1)-A345305(n+1)` -/
def P10916651891028658707.Spec : Prop :=
  ∀ n, P10916651891028658707.a n = A345302 (n + 1)

end A345302

/-! ## A345302.P7869704030838867221

`∑{d}[n+1, A008683(#)*A180253((n+1)/#)]-A345305(n+1)`
-/

namespace A345302.P7869704030838867221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A180253 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A345305 (n + 1)

end

end A345302.P7869704030838867221

namespace A345302

/-- `∑{d}[n+1, A008683(#)*A180253((n+1)/#)]-A345305(n+1)` -/
def P7869704030838867221.Spec : Prop :=
  ∀ n, P7869704030838867221.a n = A345302 (n + 1)

end A345302

/-!
# A345303: a(n) = Sum_{p|n, p prime} p * gcd(p,n/p).

The programs for A345303, the canonical program `A345303.P11732611294349947026` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345303 has offset 1).

The definition of A345303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345303.P11732611294349947026

`∑{p}[n+1, gcd(n+1, #²)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345303

/-- `∑{p}[n+1, gcd(n+1, #²)]` -/
def P11732611294349947026.Spec : Prop :=
  ∀ n, (P11732611294349947026.a n : ℤ) = A345303 (n + 1)

theorem P11732611294349947026.correct : P11732611294349947026.Spec := by
  intro n
  simp only [A345303, Nat.add_sub_cancel]

end A345303

/-! ## A345303.P937209866597857186

`∑{p}[n+1, #*gcd(#, (n+1)/#)]`
-/

namespace A345303.P937209866597857186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p * Int.gcd (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ)))

end

end A345303.P937209866597857186

namespace A345303

/-- `∑{p}[n+1, #*gcd(#, (n+1)/#)]` -/
def P937209866597857186.Spec : Prop :=
  ∀ n, (P937209866597857186.a n : ℤ) = A345303 (n + 1)

end A345303

/-! ## A345303.P12666324713196677698

`A008475(gcd(∑[2*n], ∏{p}[n+1, #²]))`
-/

namespace A345303.P12666324713196677698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∏ p ∈ Nat.primeFactors (f2 n), p ^ 2))

end

end A345303.P12666324713196677698

namespace A345303

/-- `A008475(gcd(∑[2*n], ∏{p}[n+1, #²]))` -/
def P12666324713196677698.Spec : Prop :=
  ∀ n, P12666324713196677698.a n = A345303 (n + 1)

end A345303

/-! ## A345303.P11170272301814726497

`A008475(gcd((n+1)*Δ[n^3], ∏{p}[n+1, #]²))`
-/

namespace A345303.P11170272301814726497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Int.gcd ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (((∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2 : ℕ) : ℤ))

end

end A345303.P11170272301814726497

namespace A345303

/-- `A008475(gcd((n+1)*Δ[n^3], ∏{p}[n+1, #]²))` -/
def P11170272301814726497.Spec : Prop :=
  ∀ n, P11170272301814726497.a n = A345303 (n + 1)

end A345303

/-! ## A345303.P8021833965202254195

`A008475(∏{p}[n+1, #]*∏{p}[ceil(n/∏{p}[n+1, #]), #])`
-/

namespace A345303.P8021833965202254195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 ((∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p))

end

end A345303.P8021833965202254195

namespace A345303

/-- `A008475(∏{p}[n+1, #]*∏{p}[ceil(n/∏{p}[n+1, #]), #])` -/
def P8021833965202254195.Spec : Prop :=
  ∀ n, P8021833965202254195.a n = A345303 (n + 1)

end A345303

/-! ## A345303.P15326030641332047390

`A008475(A007948(n+1))`
-/

namespace A345303.P15326030641332047390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A007948 (n + 1)).toNat

end

end A345303.P15326030641332047390

namespace A345303

/-- `A008475(A007948(n+1))` -/
def P15326030641332047390.Spec : Prop :=
  ∀ n, P15326030641332047390.a n = A345303 (n + 1)

end A345303

/-! ## A345303.P14252364190088722213

`A071327(n+1)+A063956(n+1)`
-/

namespace A345303.P14252364190088722213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (n + 1) + A063956 (n + 1)

end

end A345303.P14252364190088722213

namespace A345303

/-- `A071327(n+1)+A063956(n+1)` -/
def P14252364190088722213.Spec : Prop :=
  ∀ n, P14252364190088722213.a n = A345303 (n + 1)

end A345303

/-! ## A345303.P13863641636545681246

`A008475((n+1)/A062378(n+1))`
-/

namespace A345303.P13863641636545681246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (n + 1) : ℚ))).toNat

end

end A345303.P13863641636545681246

namespace A345303

/-- `A008475((n+1)/A062378(n+1))` -/
def P13863641636545681246.Spec : Prop :=
  ∀ n, P13863641636545681246.a n = A345303 (n + 1)

end A345303

/-! ## A345303.P18245188892138697324

`A008475(gcd(n+1, A078615(n+1)))`
-/

namespace A345303.P18245188892138697324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Int.gcd (n + 1 : ℤ) (A078615 (n + 1)))

end

end A345303.P18245188892138697324

namespace A345303

/-- `A008475(gcd(n+1, A078615(n+1)))` -/
def P18245188892138697324.Spec : Prop :=
  ∀ n, P18245188892138697324.a n = A345303 (n + 1)

end A345303

/-! ## A345303.P226286502624034398

`A008475((n+1)/A003557(A003557(n+1)))`
-/

namespace A345303.P226286502624034398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A345303.P226286502624034398

namespace A345303

/-- `A008475((n+1)/A003557(A003557(n+1)))` -/
def P226286502624034398.Spec : Prop :=
  ∀ n, P226286502624034398.a n = A345303 (n + 1)

end A345303

/-! ## A345303.P7304345032248387310

`A008472(n+1)+A071327(n+1)-A063958(n+1)`
-/

namespace A345303.P7304345032248387310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A071327 (n + 1) - A063958 (n + 1))

end

end A345303.P7304345032248387310

namespace A345303

/-- `A008472(n+1)+A071327(n+1)-A063958(n+1)` -/
def P7304345032248387310.Spec : Prop :=
  ∀ n, P7304345032248387310.a n = A345303 (n + 1)

end A345303

/-!
# A345304: a(n) = Sum_{p|n, p prime} p * lcm(p,n/p).

The programs for A345304, the canonical program `A345304.P15592110358994627710` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345304 has offset 1).

The definition of A345304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345304.P15592110358994627710

`∑{p}[n+1, lcm(n+1, #²)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345304

/-- `∑{p}[n+1, lcm(n+1, #²)]` -/
def P15592110358994627710.Spec : Prop :=
  ∀ n, (P15592110358994627710.a n : ℤ) = A345304 (n + 1)

theorem P15592110358994627710.correct : P15592110358994627710.Spec := by
  intro n
  simp only [A345304, Nat.add_sub_cancel]

end A345304

/-! ## A345304.P16186791274869738773

`∑{p}[n+1, #*lcm(#, (n+1)/#)]`
-/

namespace A345304.P16186791274869738773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p * Int.lcm (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ)))

end

end A345304.P16186791274869738773

namespace A345304

/-- `∑{p}[n+1, #*lcm(#, (n+1)/#)]` -/
def P16186791274869738773.Spec : Prop :=
  ∀ n, (P16186791274869738773.a n : ℤ) = A345304 (n + 1)

end A345304

/-! ## A345304.P10196395840410379821

`(n+1)*(A063956(n+1)+A056170(n+1))`
-/

namespace A345304.P10196395840410379821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A063956 (n + 1) + A056170 (n + 1))

end

end A345304.P10196395840410379821

namespace A345304

/-- `(n+1)*(A063956(n+1)+A056170(n+1))` -/
def P10196395840410379821.Spec : Prop :=
  ∀ n, P10196395840410379821.a n = A345304 (n + 1)

end A345304

/-! ## A345304.P14306602580508592731

`(n+1)/∏{p}[n+1, #^val(n+1, #²)]*∑{p}[∏{d}[n+1, #²], #]`
-/

namespace A345304.P14306602580508592731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) * ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A345304.P14306602580508592731

namespace A345304

/-- `(n+1)/∏{p}[n+1, #^val(n+1, #²)]*∑{p}[∏{d}[n+1, #²], #]` -/
def P14306602580508592731.Spec : Prop :=
  ∀ n, P14306602580508592731.a n = (A345304 (n + 1) : ℚ)

end A345304

/-! ## A345304.P2545625473905091677

`∑{p}[n+1, #]*A015053(A218323(n+1))`
-/

namespace A345304.P2545625473905091677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A015053 (A218323 (n + 1)).toNat

end

end A345304.P2545625473905091677

namespace A345304

/-- `∑{p}[n+1, #]*A015053(A218323(n+1))` -/
def P2545625473905091677.Spec : Prop :=
  ∀ n, P2545625473905091677.a n = A345304 (n + 1)

end A345304

/-!
# A345305: a(n) = n * Sum_{p|n, p prime} gcd(p,n/p) / p.

The programs for A345305, the canonical program `A345305.P6358394442348008068` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345305 has offset 1).

The definition of A345305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345305.P6358394442348008068

`∑{p}[n+1, gcd(n+1, ((n+1)/#)²)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345305

/-- `∑{p}[n+1, gcd(n+1, ((n+1)/#)²)]` -/
def P6358394442348008068.Spec : Prop :=
  ∀ n, (P6358394442348008068.a n : ℤ) = A345305 (n + 1)

theorem P6358394442348008068.correct : P6358394442348008068.Spec := by
  intro n
  simp only [A345305, Nat.add_sub_cancel]

end A345305

/-! ## A345305.P14924530283230882927

`∑{p}[n+1, (n+1)²/lcm(n+1, #²)]`
-/

namespace A345305.P14924530283230882927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ 2 : ℚ) / (Nat.lcm (n + 1) (p ^ 2) : ℚ)

end

end A345305.P14924530283230882927

namespace A345305

/-- `∑{p}[n+1, (n+1)²/lcm(n+1, #²)]` -/
def P14924530283230882927.Spec : Prop :=
  ∀ n, P14924530283230882927.a n = (A345305 (n + 1) : ℚ)

end A345305

/-! ## A345305.P17137979936253921568

`∑{p}[n+1, ceil(n/#+n+1)]-∑{p}[n+1, lcm(#, (n+1)/#)]`
-/

namespace A345305.P17137979936253921568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ) + (n + 1 : ℚ)⌉ - ((∑ p ∈ Nat.primeFactors (f2 n), Int.lcm (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))) : ℕ) : ℤ)

end

end A345305.P17137979936253921568

namespace A345305

/-- `∑{p}[n+1, ceil(n/#+n+1)]-∑{p}[n+1, lcm(#, (n+1)/#)]` -/
def P17137979936253921568.Spec : Prop :=
  ∀ n, P17137979936253921568.a n = A345305 (n + 1)

end A345305

/-! ## A345305.P6243713595307881868

`A065967(n+1)-∑{p}[n+1, lcm(#, (n+1)/#)]`
-/

namespace A345305.P6243713595307881868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Int.lcm (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))) : ℕ) : ℤ)

end

end A345305.P6243713595307881868

namespace A345305

/-- `A065967(n+1)-∑{p}[n+1, lcm(#, (n+1)/#)]` -/
def P6243713595307881868.Spec : Prop :=
  ∀ n, P6243713595307881868.a n = A345305 (n + 1)

end A345305

/-! ## A345305.P16064801471035279054

`∑{p}[n+1, ceil(n/#+n+1)]-A345302(n+1)`
-/

namespace A345305.P16064801471035279054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ) + (n + 1 : ℚ)⌉ - A345302 (n + 1)

end

end A345305.P16064801471035279054

namespace A345305

/-- `∑{p}[n+1, ceil(n/#+n+1)]-A345302(n+1)` -/
def P16064801471035279054.Spec : Prop :=
  ∀ n, P16064801471035279054.a n = A345305 (n + 1)

end A345305

/-! ## A345305.P491860988443559756

`A065967(n+1)-A345302(n+1)`
-/

namespace A345305.P491860988443559756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065967 (n + 1) - A345302 (n + 1)

end

end A345305.P491860988443559756

namespace A345305

/-- `A065967(n+1)-A345302(n+1)` -/
def P491860988443559756.Spec : Prop :=
  ∀ n, P491860988443559756.a n = A345305 (n + 1)

end A345305

/-! ## A345305.P17307297067013444263

`A065967(A000027(n+1))-∑{p}[n+1, (n+1)/gcd(#, (n+1)/#)]`
-/

namespace A345305.P17307297067013444263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065967 (A000027 (n + 1)).toNat : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (Int.gcd (p : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))) : ℚ)

end

end A345305.P17307297067013444263

namespace A345305

/-- `A065967(A000027(n+1))-∑{p}[n+1, (n+1)/gcd(#, (n+1)/#)]` -/
def P17307297067013444263.Spec : Prop :=
  ∀ n, P17307297067013444263.a n = (A345305 (n + 1) : ℚ)

end A345305

/-! ## A345305.P7966346228119993930

`A069359(n+1)+A328260(n+1)-A345302(n+1)`
-/

namespace A345305.P7966346228119993930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + (A328260 (n + 1) - A345302 (n + 1))

end

end A345305.P7966346228119993930

namespace A345305

/-- `A069359(n+1)+A328260(n+1)-A345302(n+1)` -/
def P7966346228119993930.Spec : Prop :=
  ∀ n, P7966346228119993930.a n = A345305 (n + 1)

end A345305

/-! ## A345305.P884289170325206107

`A334341(n+1)+A351371(n+1)-A345302(n+1)`
-/

namespace A345305.P884289170325206107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334341 (n + 1) + (A351371 (n + 1) - A345302 (n + 1))

end

end A345305.P884289170325206107

namespace A345305

/-- `A334341(n+1)+A351371(n+1)-A345302(n+1)` -/
def P884289170325206107.Spec : Prop :=
  ∀ n, P884289170325206107.a n = A345305 (n + 1)

end A345305

/-!
# A345306: a(n) = n * Sum_{p|n, p prime} lcm(p,n/p) / p.

The programs for A345306, the canonical program `A345306.P17321986190921118897` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345306 has offset 1).

The definition of A345306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345306.P17321986190921118897

`∑{p}[n+1, lcm(#, ((n+1)/#)²)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345306

/-- `∑{p}[n+1, lcm(#, ((n+1)/#)²)]` -/
def P17321986190921118897.Spec : Prop :=
  ∀ n, (P17321986190921118897.a n : ℤ) = A345306 (n + 1)

theorem P17321986190921118897.correct : P17321986190921118897.Spec := by
  intro n
  simp only [A345306, Nat.add_sub_cancel]

end A345306

/-! ## A345306.P13934176461221554979

`∑{p}[n+1, (n+1)²/gcd(n+1, #²)]`
-/

namespace A345306.P13934176461221554979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ 2 : ℚ) / (Nat.gcd (n + 1) (p ^ 2) : ℚ)

end

end A345306.P13934176461221554979

namespace A345306

/-- `∑{p}[n+1, (n+1)²/gcd(n+1, #²)]` -/
def P13934176461221554979.Spec : Prop :=
  ∀ n, P13934176461221554979.a n = (A345306 (n + 1) : ℚ)

end A345306

/-! ## A345306.P9955825488520739527

`(n+1)*A369915(n+1)`
-/

namespace A345306.P9955825488520739527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A369915 (n + 1)

end

end A345306.P9955825488520739527

namespace A345306

/-- `(n+1)*A369915(n+1)` -/
def P9955825488520739527.Spec : Prop :=
  ∀ n, P9955825488520739527.a n = A345306 (n + 1)

end A345306

/-! ## A345306.P17946409995988280687

`∑{p}[n+1, ceil(n/#)]*A015053(((n+1)*∏{p}[n+1, #])²)`
-/

namespace A345306.P17946409995988280687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉) * A015053 (((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)) ^ 2)

end

end A345306.P17946409995988280687

namespace A345306

/-- `∑{p}[n+1, ceil(n/#)]*A015053(((n+1)*∏{p}[n+1, #])²)` -/
def P17946409995988280687.Spec : Prop :=
  ∀ n, P17946409995988280687.a n = A345306 (n + 1)

end A345306

/-! ## A345306.P3343015185285424649

`A007956(n+1)*A097974(A053167(n+1))`
-/

namespace A345306.P3343015185285424649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A097974 (A053167 (n + 1)).toNat

end

end A345306.P3343015185285424649

namespace A345306

/-- `A007956(n+1)*A097974(A053167(n+1))` -/
def P3343015185285424649.Spec : Prop :=
  ∀ n, P3343015185285424649.a n = A345306 (n + 1)

end A345306

/-!
# A345309: Numbers whose digital sum coincides with digital sum of their largest proper divisor.

The programs for A345309, there is no canonical definition to state claims against.
-/

/-! ## A345309.P16419791853083600735

`∑[gcd(2, ∑[n])]*A010735(2^(n+1))`
-/

namespace A345309.P16419791853083600735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A010735 (2 ^ (n + 1))

end

end A345309.P16419791853083600735

/-! ## A345309.P1696997571454789866

`∑[A040073(A155212(n)²)]`
-/

namespace A345309.P1696997571454789866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 (A155212 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345309.P1696997571454789866

/-! ## A345309.P11205487597890882990

`∩[A145283(n+1), A312101(n)]`
-/

namespace A345309.P11205487597890882990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345309.P11205487597890882990

/-! ## A345309.P10428080741613098973

`∩[A337244(n+1), A310373(n)]`
-/

namespace A345309.P10428080741613098973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310373 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345309.P10428080741613098973

/-! ## A345309.P9978051155605875640

`∩[A337244(n+1), A312123(n)]`
-/

namespace A345309.P9978051155605875640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345309.P9978051155605875640

/-!
# A345310: a(n) = Sum_{p|n, p prime} p^gcd(p,n/p).

The programs for A345310, the canonical program `A345310.P13412290029699623089` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345310 has offset 1).

The definition of A345310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345310.P13412290029699623089

`∑{p}[n+1, #^gcd(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345310

/-- `∑{p}[n+1, #^gcd(#, (n+1)/#)]` -/
def P13412290029699623089.Spec : Prop :=
  ∀ n, (P13412290029699623089.a n : ℤ) = A345310 (n + 1)

theorem P13412290029699623089.correct : P13412290029699623089.Spec := by
  intro n
  simp only [A345310, Nat.add_sub_cancel]

end A345310

/-! ## A345310.P8685992552041927752

`A046643(A046630(n))*A345303(n+1)`
-/

namespace A345310.P8685992552041927752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A046630 n).toNat * A345303 (n + 1)

end

end A345310.P8685992552041927752

namespace A345310

/-- `A046643(A046630(n))*A345303(n+1)` -/
def P8685992552041927752.Spec : Prop :=
  ∀ n, P8685992552041927752.a n = A345310 (n + 1)

end A345310

/-! ## A345310.P14709227821865040642

`A327401(A187829(n+1))*A345303(n+1)`
-/

namespace A345310.P14709227821865040642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327401 (A187829 (n + 1)).toNat * A345303 (n + 1)

end

end A345310.P14709227821865040642

namespace A345310

/-- `A327401(A187829(n+1))*A345303(n+1)` -/
def P14709227821865040642.Spec : Prop :=
  ∀ n, P14709227821865040642.a n = A345310 (n + 1)

end A345310

/-! ## A345310.P6665559407089629023

`lcm(A327401(A008833(n+1)²), A345303(n+1))`
-/

namespace A345310.P6665559407089629023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A327401 (A008833 (n + 1) ^ 2).toNat) (A345303 (n + 1))

end

end A345310.P6665559407089629023

namespace A345310

/-- `lcm(A327401(A008833(n+1)²), A345303(n+1))` -/
def P6665559407089629023.Spec : Prop :=
  ∀ n, (P6665559407089629023.a n : ℤ) = A345310 (n + 1)

end A345310

/-!
# A345311: a(n) = Sum_{p|n, p prime} p^lcm(p,n/p).

The programs for A345311, there is no canonical definition to state claims against.
-/

/-! ## A345311.P7338534599070567525

`A200768(∏{p}[n+1, #]^A152157(n))`
-/

namespace A345311.P7338534599070567525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200768 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A152157 n : ℤ))).toNat

end

end A345311.P7338534599070567525

/-! ## A345311.P14106025785415132204

`A200768(A008550(n)*A052410(n+1))`
-/

namespace A345311.P14106025785415132204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200768 (A008550 n * A052410 (n + 1)).toNat

end

end A345311.P14106025785415132204

/-! ## A345311.P5345144125618392982

`A200768(A007947(n+1)^A054576(n+1))`
-/

namespace A345311.P5345144125618392982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200768 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A054576 (n + 1) : ℤ))).toNat

end

end A345311.P5345144125618392982

/-! ## A345311.P12171749876058382553

`A200768(A053166(n+1)^A054576(n+1))`
-/

namespace A345311.P12171749876058382553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200768 (SequenceMachineLib.roundAway ((A053166 (n + 1) : ℚ) ^ (A054576 (n + 1) : ℤ))).toNat

end

end A345311.P12171749876058382553

/-!
# A345313: a(n) = Sum_{p|n, p prime} (n/p)^lcm(p,n/p).

The programs for A345313, there is no canonical definition to state claims against.
-/

/-! ## A345313.P8662142542885157567

`A034097(lcm(80, a(n-1)))-1` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A345313.P8662142542885157567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n a =>
  A034097 (Int.lcm 80 (a (n - 1))) - 1

end

end A345313.P8662142542885157567

/-! ## A345313.P9610155360853717764

`A007689(abs(or(n+1, 1-a(n-1))))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A345313.P9610155360853717764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n a =>
  A007689 |Int.lor (n + 1 : ℤ) (1 - a (n - 1))|.toNat

end

end A345313.P9610155360853717764

/-!
# A345315: a(n) = Sum_{d|n} d^[Omega(d) = 2], where [ ] is the Iverson bracket.

The programs for A345315, the canonical program `A345315.P17248214990085666330` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345315 has offset 1).

The definition of A345315 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076290, A086971, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345315.P17248214990085666330

`A076290(n+1)+A000005(n+1)-A086971(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A345315

/-- `A076290(n+1)+A000005(n+1)-A086971(n+1)` -/
def P17248214990085666330.Spec : Prop :=
  ∀ n, P17248214990085666330.a n = A345315 (n + 1)

theorem P17248214990085666330.correct : P17248214990085666330.Spec := by
  intro n
  simp only [A345315, Nat.add_sub_cancel]

end A345315

/-! ## A345315.P3269658070938666462

`A262095(n+1)+A076290(n+1)`
-/

namespace A345315.P3269658070938666462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (n + 1) + A076290 (n + 1)

end

end A345315.P3269658070938666462

namespace A345315

/-- `A262095(n+1)+A076290(n+1)` -/
def P3269658070938666462.Spec : Prop :=
  ∀ n, P3269658070938666462.a n = A345315 (n + 1)

end A345315

/-! ## A345315.P1458201652785848509

`A262095(n+1)+∑{d}[n+1, #*A064911(#)]`
-/

namespace A345315.P1458201652785848509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A064911 d

end

end A345315.P1458201652785848509

namespace A345315

/-- `A262095(n+1)+∑{d}[n+1, #*A064911(#)]` -/
def P1458201652785848509.Spec : Prop :=
  ∀ n, P1458201652785848509.a n = A345315 (n + 1)

end A345315

/-! ## A345315.P11056600016848754727

`A262095(n+1)+A350337(n+1)-A008472(n+1)`
-/

namespace A345315.P11056600016848754727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (n + 1) + (A350337 (n + 1) - A008472 (n + 1))

end

end A345315.P11056600016848754727

namespace A345315

/-- `A262095(n+1)+A350337(n+1)-A008472(n+1)` -/
def P11056600016848754727.Spec : Prop :=
  ∀ n, P11056600016848754727.a n = A345315 (n + 1)

end A345315

/-! ## A345315.P505234685771183150

`A163407(A007947(n+1))+A262095(n+1)+A071327(n+1)`
-/

namespace A345315.P505234685771183150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163407 (A007947 (n + 1)).toNat + (A262095 (n + 1) + A071327 (n + 1))

end

end A345315.P505234685771183150

namespace A345315

/-- `A163407(A007947(n+1))+A262095(n+1)+A071327(n+1)` -/
def P505234685771183150.Spec : Prop :=
  ∀ n, P505234685771183150.a n = A345315 (n + 1)

end A345315

/-! ## A345315.P17403341276088923156

`A262095(n+1)+∑{d}[n+1, #*A101605(2*#)]`
-/

namespace A345315.P17403341276088923156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262095 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101605 (2 * d)

end

end A345315.P17403341276088923156

namespace A345315

/-- `A262095(n+1)+∑{d}[n+1, #*A101605(2*#)]` -/
def P17403341276088923156.Spec : Prop :=
  ∀ n, P17403341276088923156.a n = A345315 (n + 1)

end A345315

/-!
# A345317: Number of transitive but not symmetric relations on an n-set.

The programs for A345317, there is no canonical definition to state claims against.
-/

/-! ## A345317.P7712566245510882109

`A006905(n)-A000110(n+1)`
-/

namespace A345317.P7712566245510882109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - A000110 (n + 1)

end

end A345317.P7712566245510882109

/-! ## A345317.P2201137405675587062

`A006905(n)-record[A095149(n)]`
-/

namespace A345317.P2201137405675587062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345317.P2201137405675587062

/-! ## A345317.P15665262931910151746

`A006905(n)-record[A186020(n)]`
-/

namespace A345317.P15665262931910151746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345317.P15665262931910151746

/-! ## A345317.P12864565365676449675

`A006905(n)-record[A212431(n)]`
-/

namespace A345317.P12864565365676449675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345317.P12864565365676449675

/-! ## A345317.P11187102469547279665

`A006905(n)-record[A275069(n)]`
-/

namespace A345317.P11187102469547279665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006905 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345317.P11187102469547279665

/-!
# A345318: Median absolute deviation of {2*k^2 | k=1..n}.

The programs for A345318, there is no canonical definition to state claims against.
-/

/-! ## A345318.P1628117668159932735

`ceil(A011601(n)+log2(A197662(n+1)))`
-/

namespace A345318.P1628117668159932735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011601 n : ℝ) + Real.logb 2 (A197662 (n + 1) : ℝ)⌉

end

end A345318.P1628117668159932735

/-! ## A345318.P12706293185800095932

`and(A145803(2*n+3), A145805(3*n+5))`
-/

namespace A345318.P12706293185800095932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145803 (2 * n + 3)) (A145805 (3 * n + 5))

end

end A345318.P12706293185800095932

/-!
# A345320: Sum of the divisors of n whose square does not divide n.

The programs for A345320, the canonical program `A345320.P2768063189840868714` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345320 has offset 1).

The definition of A345320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069290, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345320.P2768063189840868714

`A000203(n+1)-A069290(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A345320

/-- `A000203(n+1)-A069290(n+1)` -/
def P2768063189840868714.Spec : Prop :=
  ∀ n, P2768063189840868714.a n = A345320 (n + 1)

theorem P2768063189840868714.correct : P2768063189840868714.Spec := by
  intro n
  simp only [A345320, Nat.add_sub_cancel]

end A345320

/-! ## A345320.P15022361379978636510

`∑{d}[n+1, #%((n+1)%#²+1)]`
-/

namespace A345320.P15022361379978636510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % ((n + 1) % d ^ 2 + 1)

end

end A345320.P15022361379978636510

namespace A345320

/-- `∑{d}[n+1, #%((n+1)%#²+1)]` -/
def P15022361379978636510.Spec : Prop :=
  ∀ n, (P15022361379978636510.a n : ℤ) = A345320 (n + 1)

end A345320

/-! ## A345320.P8516713029055591966

`∑{d}[n+1, #-A037213(#)]`
-/

namespace A345320.P8516713029055591966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A037213 d)

end

end A345320.P8516713029055591966

namespace A345320

/-- `∑{d}[n+1, #-A037213(#)]` -/
def P8516713029055591966.Spec : Prop :=
  ∀ n, P8516713029055591966.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P17336286170769861799

`Δ[A160664(n)]-A069290(n+1)`
-/

namespace A345320.P17336286170769861799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A069290 (n + 1)

end

end A345320.P17336286170769861799

namespace A345320

/-- `Δ[A160664(n)]-A069290(n+1)` -/
def P17336286170769861799.Spec : Prop :=
  ∀ n, P17336286170769861799.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P717326998612727540

`A338231(n+1)-A024816(n+1)`
-/

namespace A345320.P717326998612727540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338231 (n + 1) - A024816 (n + 1)

end

end A345320.P717326998612727540

namespace A345320

/-- `A338231(n+1)-A024816(n+1)` -/
def P717326998612727540.Spec : Prop :=
  ∀ n, P717326998612727540.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P2830746208488451886

`A000203(n+1)-∑{d}[A000188(n+1), #]`
-/

namespace A345320.P2830746208488451886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A345320.P2830746208488451886

namespace A345320

/-- `A000203(n+1)-∑{d}[A000188(n+1), #]` -/
def P2830746208488451886.Spec : Prop :=
  ∀ n, P2830746208488451886.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P1001379034132634405

`A000203(n+1)-A000203(A000188(n+1))`
-/

namespace A345320.P1001379034132634405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A000188 (n + 1)).toNat

end

end A345320.P1001379034132634405

namespace A345320

/-- `A000203(n+1)-A000203(A000188(n+1))` -/
def P1001379034132634405.Spec : Prop :=
  ∀ n, P1001379034132634405.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P1310853799601538508

`A088580(n+1)-A088580(A000188(n+1))`
-/

namespace A345320.P1310853799601538508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A088580 (A000188 (n + 1)).toNat

end

end A345320.P1310853799601538508

namespace A345320

/-- `A088580(n+1)-A088580(A000188(n+1))` -/
def P1310853799601538508.Spec : Prop :=
  ∀ n, P1310853799601538508.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P16444811005359606399

`A000203(n+1)-A000203(sqrt(A008833(n+1)))`
-/

namespace A345320.P16444811005359606399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A345320.P16444811005359606399

namespace A345320

/-- `A000203(n+1)-A000203(sqrt(A008833(n+1)))` -/
def P16444811005359606399.Spec : Prop :=
  ∀ n, P16444811005359606399.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P4091242229523581515

`A000203(n+1)-A000203(A057918(n+1)+1)`
-/

namespace A345320.P4091242229523581515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A057918 (n + 1) + 1).toNat

end

end A345320.P4091242229523581515

namespace A345320

/-- `A000203(n+1)-A000203(A057918(n+1)+1)` -/
def P4091242229523581515.Spec : Prop :=
  ∀ n, P4091242229523581515.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P8855665757263727411

`A029837(n+1)+A163298(n+1)-A069290(n+1)`
-/

namespace A345320.P8855665757263727411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) + (A163298 (n + 1) - A069290 (n + 1))

end

end A345320.P8855665757263727411

namespace A345320

/-- `A029837(n+1)+A163298(n+1)-A069290(n+1)` -/
def P8855665757263727411.Spec : Prop :=
  ∀ n, P8855665757263727411.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P16022969204757603741

`A163297(n+1)-(A069290(n+1)+A029837(n+1))`
-/

namespace A345320.P16022969204757603741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163297 (n + 1) - (A069290 (n + 1) + A029837 (n + 1))

end

end A345320.P16022969204757603741

namespace A345320

/-- `A163297(n+1)-(A069290(n+1)+A029837(n+1))` -/
def P16022969204757603741.Spec : Prop :=
  ∀ n, P16022969204757603741.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P12345965472586237675

`A000203(n+1)+A338231(n+1)-A000217(n+1)`
-/

namespace A345320.P12345965472586237675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A338231 (n + 1) - A000217 (n + 1))

end

end A345320.P12345965472586237675

namespace A345320

/-- `A000203(n+1)+A338231(n+1)-A000217(n+1)` -/
def P12345965472586237675.Spec : Prop :=
  ∀ n, P12345965472586237675.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P8685379717124221732

`A335182(n+1)+A349659(n+1)-A069290(n+1)`
-/

namespace A345320.P8685379717124221732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335182 (n + 1) + (A349659 (n + 1) - A069290 (n + 1))

end

end A345320.P8685379717124221732

namespace A345320

/-- `A335182(n+1)+A349659(n+1)-A069290(n+1)` -/
def P8685379717124221732.Spec : Prop :=
  ∀ n, P8685379717124221732.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P7766223107309304691

`A164533(n+1)/A051027(n+1)-A069290(n+1)`
-/

namespace A345320.P7766223107309304691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164533 (n + 1) : ℚ) / (A051027 (n + 1) : ℚ) - (A069290 (n + 1) : ℚ)

end

end A345320.P7766223107309304691

namespace A345320

/-- `A164533(n+1)/A051027(n+1)-A069290(n+1)` -/
def P7766223107309304691.Spec : Prop :=
  ∀ n, P7766223107309304691.a n = (A345320 (n + 1) : ℚ)

end A345320

/-! ## A345320.P5256285515861471054

`A007955(n+1)-(A076721(n+1)+A069290(n+1))`
-/

namespace A345320.P5256285515861471054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - (A076721 (n + 1) + A069290 (n + 1))

end

end A345320.P5256285515861471054

namespace A345320

/-- `A007955(n+1)-(A076721(n+1)+A069290(n+1))` -/
def P5256285515861471054.Spec : Prop :=
  ∀ n, P5256285515861471054.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P1019473103456719087

`A076720(n+1)-(A069290(n+1)+A007955(n+1))`
-/

namespace A345320.P1019473103456719087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (n + 1) - (A069290 (n + 1) + A007955 (n + 1))

end

end A345320.P1019473103456719087

namespace A345320

/-- `A076720(n+1)-(A069290(n+1)+A007955(n+1))` -/
def P1019473103456719087.Spec : Prop :=
  ∀ n, P1019473103456719087.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P13921148471424437419

`A076722(n+1)/A007955(n+1)-A069290(n+1)`
-/

namespace A345320.P13921148471424437419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076722 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) - (A069290 (n + 1) : ℚ)

end

end A345320.P13921148471424437419

namespace A345320

/-- `A076722(n+1)/A007955(n+1)-A069290(n+1)` -/
def P13921148471424437419.Spec : Prop :=
  ∀ n, P13921148471424437419.a n = (A345320 (n + 1) : ℚ)

end A345320

/-! ## A345320.P10052916707703146132

`A333843(n+1)+A345321(n+1)-A069290(n+1)`
-/

namespace A345320.P10052916707703146132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333843 (n + 1) + (A345321 (n + 1) - A069290 (n + 1))

end

end A345320.P10052916707703146132

namespace A345320

/-- `A333843(n+1)+A345321(n+1)-A069290(n+1)` -/
def P10052916707703146132.Spec : Prop :=
  ∀ n, P10052916707703146132.a n = A345320 (n + 1)

end A345320

/-! ## A345320.P17592925982095989020

`A069290((n+1)²)-A069290(n+1)`
-/

namespace A345320.P17592925982095989020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 ((n + 1) ^ 2) - A069290 (n + 1)

end

end A345320.P17592925982095989020

namespace A345320

/-- `A069290((n+1)²)-A069290(n+1)` -/
def P17592925982095989020.Spec : Prop :=
  ∀ n, P17592925982095989020.a n = A345320 (n + 1)

end A345320

/-!
# A345321: Sum of the divisors of n whose cube does not divide n.

The programs for A345321, the canonical program `A345321.P1628524416626667783` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345321 has offset 1).

The definition of A345321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333843, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345321.P1628524416626667783

`A000203(n+1)-A333843(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A345321

/-- `A000203(n+1)-A333843(n+1)` -/
def P1628524416626667783.Spec : Prop :=
  ∀ n, P1628524416626667783.a n = A345321 (n + 1)

theorem P1628524416626667783.correct : P1628524416626667783.Spec := by
  intro n
  simp only [A345321, Nat.add_sub_cancel]

end A345321

/-! ## A345321.P274046335507694057

`Δ[A160664(n)]-A333843(n+1)`
-/

namespace A345321.P274046335507694057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A333843 (n + 1)

end

end A345321.P274046335507694057

namespace A345321

/-- `Δ[A160664(n)]-A333843(n+1)` -/
def P274046335507694057.Spec : Prop :=
  ∀ n, P274046335507694057.a n = A345321 (n + 1)

end A345321

/-! ## A345321.P16069101998779340503

`sqrt(A072861(n+1))-A333843(n+1)`
-/

namespace A345321.P16069101998779340503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A333843 (n + 1) : ℝ)

end

end A345321.P16069101998779340503

namespace A345321

/-- `sqrt(A072861(n+1))-A333843(n+1)` -/
def P16069101998779340503.Spec : Prop :=
  ∀ n, P16069101998779340503.a n = (A345321 (n + 1) : ℝ)

end A345321

/-! ## A345321.P577427540308409048

`A245092(A005408(n))-A333843(n+1)`
-/

namespace A345321.P577427540308409048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A005408 n).toNat - A333843 (n + 1)

end

end A345321.P577427540308409048

namespace A345321

/-- `A245092(A005408(n))-A333843(n+1)` -/
def P577427540308409048.Spec : Prop :=
  ∀ n, P577427540308409048.a n = A345321 (n + 1)

end A345321

/-! ## A345321.P12396519573654963507

`A000203(n+1)-A000203(A053150(n+1))`
-/

namespace A345321.P12396519573654963507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A053150 (n + 1)).toNat

end

end A345321.P12396519573654963507

namespace A345321

/-- `A000203(n+1)-A000203(A053150(n+1))` -/
def P12396519573654963507.Spec : Prop :=
  ∀ n, P12396519573654963507.a n = A345321 (n + 1)

end A345321

/-! ## A345321.P6297432706469792759

`A069290(n+1)+A345320(n+1)-A333843(n+1)`
-/

namespace A345321.P6297432706469792759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (n + 1) + (A345320 (n + 1) - A333843 (n + 1))

end

end A345321.P6297432706469792759

namespace A345321

/-- `A069290(n+1)+A345320(n+1)-A333843(n+1)` -/
def P6297432706469792759.Spec : Prop :=
  ∀ n, P6297432706469792759.a n = A345321 (n + 1)

end A345321

/-!
# A345322: Number of unlabeled 2-connected simple graphs with maximum degree at most 3.

The programs for A345322, there is no canonical definition to state claims against.
-/

/-! ## A345322.P14118955603694972605

`A166737(A176501(n+1))`
-/

namespace A345322.P14118955603694972605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166737 (A176501 (n + 1)).toNat

end

end A345322.P14118955603694972605

/-! ## A345322.P1068973816479389306

`A020986(A004254(n))+A004177(n)`
-/

namespace A345322.P1068973816479389306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 (A004254 n).toNat + A004177 n

end

end A345322.P1068973816479389306

/-! ## A345322.P9228203469127836925

`A134478(A104252(n+1))+A025581(n)`
-/

namespace A345322.P9228203469127836925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A104252 (n + 1)).toNat + A025581 n

end

end A345322.P9228203469127836925

/-!
# A345324: Number of unlabeled 2-connected simple graphs with girth at least 6.

The programs for A345324, there is no canonical definition to state claims against.
-/

/-! ## A345324.P13033186476894306305

`A106432(A123108(n)+A026898(n))`
-/

namespace A345324.P13033186476894306305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A123108 n + A026898 n).toNat

end

end A345324.P13033186476894306305

/-! ## A345324.P2399871446919370742

`A106432(A347609(n)+A026898(n))`
-/

namespace A345324.P2399871446919370742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A347609 n + A026898 n).toNat

end

end A345324.P2399871446919370742

/-! ## A345324.P8903415477499242042

`A191893(A223968(n)+A178381(n))`
-/

namespace A345324.P8903415477499242042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191893 (A223968 n + A178381 n).toNat

end

end A345324.P8903415477499242042

/-! ## A345324.P6652651187313813058

`A029895(n)-A032741(A273921(n+1))`
-/

namespace A345324.P6652651187313813058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029895 n - A032741 (A273921 (n + 1)).toNat

end

end A345324.P6652651187313813058

/-!
# A345325: Number of primes less than 10^n with digits in nondecreasing order.

The programs for A345325, there is no canonical definition to state claims against.
-/

/-! ## A345325.P11429004880008382430

`A352130(A119590(n+1))`
-/

namespace A345325.P11429004880008382430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A119590 (n + 1)).toNat

end

end A345325.P11429004880008382430

/-! ## A345325.P4715126820953848505

`∑[A194439(3*(n+1))]-A110320(n+1)`
-/

namespace A345325.P4715126820953848505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194439 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A110320 (n + 1)

end

end A345325.P4715126820953848505

/-!
# A345326: Number of primes less than 10^n with digits in nonincreasing order.

The programs for A345326, there is no canonical definition to state claims against.
-/

/-! ## A345326.P15238404858877097007

`A051530(3*n+1)+A051516(A051536(n))`
-/

namespace A345326.P15238404858877097007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051530 (3 * n + 1) + A051516 (A051536 n).toNat

end

end A345326.P15238404858877097007

/-!
# A345328: a(n) is the smallest integer k>1 such that |log(k)-round(log(k))| is smaller than 10^(-n).

The programs for A345328, there is no canonical definition to state claims against.
-/

/-! ## A345328.P14119569330438523117

`A080021(A080137(n+2))`
-/

namespace A345328.P14119569330438523117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080021 (A080137 (n + 2)).toNat

end

end A345328.P14119569330438523117

/-!
# A345330: Composite numbers k for which m == 0 (mod k) is the only solution to m^(2^v(k-1)+1) == -m (mod k), where v(k) = A007814(k) is the 2-adic valuation of k.

The programs for A345330, there is no canonical definition to state claims against.
-/

/-! ## A345330.P16497186969620009933

`filter[A071904(n+1), A360113(#)]`
-/

namespace A345330.P16497186969620009933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P16497186969620009933

/-! ## A345330.P7123663986959588778

`filter[A071904(n+1), A360116(#)]`
-/

namespace A345330.P7123663986959588778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A345330.P7123663986959588778

/-! ## A345330.P17242586868798213763

`filter[A014076(n+2), A360113(#)]`
-/

namespace A345330.P17242586868798213763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P17242586868798213763

/-! ## A345330.P10951448109951094113

`filter[A014076(n+2), A360116(#)]`
-/

namespace A345330.P10951448109951094113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A345330.P10951448109951094113

/-! ## A345330.P18147706443608430502

`filter[A270574(n+1), A360113(#)]`
-/

namespace A345330.P18147706443608430502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P18147706443608430502

/-! ## A345330.P1443777811071219870

`filter[A270574(n+1), A360116(#)]`
-/

namespace A345330.P1443777811071219870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A345330.P1443777811071219870

/-! ## A345330.P5801940097388028475

`filter[A078505(n+1), A360113(#)]`
-/

namespace A345330.P5801940097388028475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P5801940097388028475

/-! ## A345330.P11686066459483431050

`filter[A078505(n+2), A360116(#)]`
-/

namespace A345330.P11686066459483431050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A345330.P11686066459483431050

/-! ## A345330.P6503776350192696176

`filter[A039769(n+1), A360113(#)]`
-/

namespace A345330.P6503776350192696176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P6503776350192696176

/-! ## A345330.P10936091539037940375

`filter[A039769(n+1), A360116(#)]`
-/

namespace A345330.P10936091539037940375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A345330.P10936091539037940375

/-! ## A345330.P3808260866928537332

`filter[A058957(n+1), A360113(#)]`
-/

namespace A345330.P3808260866928537332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P3808260866928537332

/-! ## A345330.P16848638379782563930

`filter[A333312(n+1), A360113(#)]`
-/

namespace A345330.P16848638379782563930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P16848638379782563930

/-! ## A345330.P11600113337706380645

`filter[A333312(n+1), A360116(#)]`
-/

namespace A345330.P11600113337706380645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A345330.P11600113337706380645

/-! ## A345330.P2822263465851423281

`filter[A079364(n+1), A360113(#)]`
-/

namespace A345330.P2822263465851423281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P2822263465851423281

/-! ## A345330.P11395961235958129584

`filter[A171845(n+2), A360113(#)]`
-/

namespace A345330.P11395961235958129584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P11395961235958129584

/-! ## A345330.P7884695561781429182

`filter[A105441(n+1), A360113(#)]`
-/

namespace A345330.P7884695561781429182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P7884695561781429182

/-! ## A345330.P11627702144535535575

`filter[A105441(n+1), A360116(#)]`
-/

namespace A345330.P11627702144535535575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A345330.P11627702144535535575

/-! ## A345330.P206566405283899253

`filter[A347202(n+2), A360113(#)]`
-/

namespace A345330.P206566405283899253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P206566405283899253

/-! ## A345330.P16875560906032735320

`filter[A365408(n+1), A360113(#)]`
-/

namespace A345330.P16875560906032735320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A345330.P16875560906032735320

/-! ## A345330.P17585792227193732306

`filter[A365408(n+1), A360116(#)]`
-/

namespace A345330.P17585792227193732306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A345330.P17585792227193732306

/-!
# A345331: Odd numbers k > 1 such that m^(2^v(k-1)+1) == -m (mod k) has more than one solution modulo k, where v(k) = A007814(k) is the 2-adic valuation of k.

The programs for A345331, there is no canonical definition to state claims against.
-/

/-! ## A345331.P17916914518387810851

`lt[1, A333570(A093178(n))]`
-/

namespace A345331.P17916914518387810851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333570 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345331.P17916914518387810851

/-! ## A345331.P13458910801502909363

`eq[A056594(n), A360113(n+2)]+2`
-/

namespace A345331.P13458910801502909363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360113 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A345331.P13458910801502909363

/-! ## A345331.P3127034127043558214

`eq[A276084(3*n+2), A360113(n+2)]+2`
-/

namespace A345331.P3127034127043558214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360113 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A345331.P3127034127043558214

/-! ## A345331.P8128071020584745695

`∩[A329589(n+1), A348612(n+1)]`
-/

namespace A345331.P8128071020584745695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345331.P8128071020584745695

/-!
# A345332: a(n) is the number of consecutive even prime gap pairs (g1, g2) satisfying g1 == 0 (mod 6) and g2 == 0 (mod 6) out of the first 2^n consecutive even prime gap pairs.

The programs for A345332, there is no canonical definition to state claims against.
-/

/-! ## A345332.P9334734754429117031

`A340948(n)-(A345333(n)+A345334(n+1))`
-/

namespace A345332.P9334734754429117031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340948 n - (A345333 n + A345334 (n + 1))

end

end A345332.P9334734754429117031

/-! ## A345332.P7768803623955410749

`A269850(2^n+1)-(A345334(n+1)+A345333(n))`
-/

namespace A345332.P7768803623955410749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269850 (2 ^ n + 1) - (A345334 (n + 1) + A345333 n)

end

end A345332.P7768803623955410749

/-! ## A345332.P1934254019403442249

`A000196(A216246(n))-A028234(n+1)`
-/

namespace A345332.P1934254019403442249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A216246 n).toNat - A028234 (n + 1)

end

end A345332.P1934254019403442249

/-! ## A345332.P16260728849215912853

`A352873(A084239(n))-A082977(n+2)`
-/

namespace A345332.P16260728849215912853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352873 (A084239 n).toNat - A082977 (n + 2)

end

end A345332.P16260728849215912853

/-! ## A345332.P1377893649907371024

`A035486(A146472(n+1))-A146471(n+1)`
-/

namespace A345332.P1377893649907371024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035486 (A146472 (n + 1)).toNat - A146471 (n + 1)

end

end A345332.P1377893649907371024

/-!
# A345333: a(n) is the number of consecutive even prime gap pairs (g1, g2) satisfying g1 == 0 (mod 6) and g2 == 2 (mod 6) out of the first 2^n consecutive even prime gap pairs.

The programs for A345333, there is no canonical definition to state claims against.
-/

/-! ## A345333.P18241523341078487784

`A340948(n)-(A345332(n)+A345334(n+1))`
-/

namespace A345333.P18241523341078487784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340948 n - (A345332 n + A345334 (n + 1))

end

end A345333.P18241523341078487784

/-! ## A345333.P7614298344761301741

`A269850(2^n+1)-(A345334(n+1)+A345332(n))`
-/

namespace A345333.P7614298344761301741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269850 (2 ^ n + 1) - (A345334 (n + 1) + A345332 n)

end

end A345333.P7614298344761301741

/-! ## A345333.P12668108947330646679

`A273859(A298204(n+1))`
-/

namespace A345333.P12668108947330646679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A298204 (n + 1)).toNat

end

end A345333.P12668108947330646679

/-! ## A345333.P5802062304085166209

`A179510(record[Δ[A037027(n)]])`
-/

namespace A345333.P5802062304085166209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179510 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345333.P5802062304085166209

/-! ## A345333.P1898437112413246588

`A305820(∑[A095009(n+1)])`
-/

namespace A345333.P1898437112413246588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345333.P1898437112413246588

/-!
# A345334: a(n) is the number of consecutive even prime gap pairs (g1, g2) satisfying g1 == 0 (mod 6) and g2 == 4 (mod 6) out of the first 2^n consecutive even prime gap pairs.

The programs for A345334, there is no canonical definition to state claims against.
-/

/-! ## A345334.P4750238159753249565

`A340948(n)-(A345332(n)+A345333(n))`
-/

namespace A345334.P4750238159753249565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340948 n - (A345332 n + A345333 n)

end

end A345334.P4750238159753249565

/-! ## A345334.P2240568901176537552

`A346776(n)-A287372(A113374(n))`
-/

namespace A345334.P2240568901176537552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346776 n - A287372 (A113374 n).toNat

end

end A345334.P2240568901176537552

/-! ## A345334.P10151815134972015369

`A341531(n)-(A346777(n)+1)-A287372(A113374(n))`
-/

namespace A345334.P10151815134972015369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341531 n - (A346777 n + 1) - A287372 (A113374 n).toNat

end

end A345334.P10151815134972015369

/-! ## A345334.P4396939237606297366

`A269850(2^n+1)-(A345333(n)+A345332(n))`
-/

namespace A345334.P4396939237606297366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269850 (2 ^ n + 1) - (A345333 n + A345332 n)

end

end A345334.P4396939237606297366

/-! ## A345334.P5510624846665075905

`A346776(n)-A286748(A206432(n))`
-/

namespace A345334.P5510624846665075905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346776 n - A286748 (A206432 n).toNat

end

end A345334.P5510624846665075905

/-!
# A345335: Primes p such that A014499(k) / A000120(k) is an integer, where k = A000720(p).

The programs for A345335, the canonical program `A345335.P2679634228096003161` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345335 has offset 1).

The definition of A345335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1754 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345335.P2679634228096003161

`A000040(eq[0, A014499(n+1)%A000120(n+1)]+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A345335

/-- `A000040(eq[0, A014499(n+1)%A000120(n+1)]+1)` -/
def P2679634228096003161.Spec : Prop :=
  ∀ n, P2679634228096003161.a n = A345335 (n + 1)

theorem P2679634228096003161.correct : P2679634228096003161.Spec := by
  intro n
  simp only [A345335, Nat.add_sub_cancel]

end A345335

/-! ## A345335.P232901133968075891

`p?[lt[A211360(n), A211362(n+3)]]`
-/

namespace A345335.P232901133968075891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211360 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211362 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A345335.P232901133968075891

namespace A345335

/-- `p?[lt[A211360(n), A211362(n+3)]]` -/
def P232901133968075891.Spec : Prop :=
  ∀ n, (P232901133968075891.a n : ℤ) = A345335 (n + 1)

end A345335

/-! ## A345335.P6596551341902072166

`p?[∑[A136761(A182564(n))]]`
-/

namespace A345335.P6596551341902072166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136761 (A182564 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345335.P6596551341902072166

namespace A345335

/-- `p?[∑[A136761(A182564(n))]]` -/
def P6596551341902072166.Spec : Prop :=
  ∀ n, P6596551341902072166.a n = A345335 (n + 1)

end A345335

/-! ## A345335.P12025833698290570086

`record[A006530(record[A096134(n+1)])]`
-/

namespace A345335.P12025833698290570086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096134 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345335.P12025833698290570086

namespace A345335

/-- `record[A006530(record[A096134(n+1)])]` -/
def P12025833698290570086.Spec : Prop :=
  ∀ n, P12025833698290570086.a n = A345335 (n + 1)

end A345335

/-! ## A345335.P6227374862075100694

`∩[A147820(n+1), A244529(n+1)]`
-/

namespace A345335.P6227374862075100694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345335.P6227374862075100694

namespace A345335

/-- `∩[A147820(n+1), A244529(n+1)]` -/
def P6227374862075100694.Spec : Prop :=
  ∀ n, (P6227374862075100694.a n : ℤ) = A345335 (n + 1)

end A345335

/-!
# A345336: Prime numbers p such that the sum and the product of digits of p^2 are both squares.

The programs for A345336, there is no canonical definition to state claims against.
-/

/-! ## A345336.P16628110821979447763

`p?[A061868(n+1)]`
-/

namespace A345336.P16628110821979447763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345336.P16628110821979447763

/-! ## A345336.P17878547287187620681

`p?[record[A061868(A292266(n))]]`
-/

namespace A345336.P17878547287187620681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345336.P17878547287187620681

/-! ## A345336.P6500123927424894671

`p?[record[A061868(A324347(n))]]`
-/

namespace A345336.P6500123927424894671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345336.P6500123927424894671

/-! ## A345336.P9967180211421814715

`filter[A061868(n+2), A010051(#)]`
-/

namespace A345336.P9967180211421814715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A345336.P9967180211421814715

/-! ## A345336.P3690800685376489649

`∩[A000040(n+1), A061868(n+1)]`
-/

namespace A345336.P3690800685376489649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P3690800685376489649

/-! ## A345336.P16289608585132918864

`∩[A045319(n+1), A061868(n+1)]`
-/

namespace A345336.P16289608585132918864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P16289608585132918864

/-! ## A345336.P16839899552298333947

`∩[A051948(n+1), A061868(n+1)]`
-/

namespace A345336.P16839899552298333947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P16839899552298333947

/-! ## A345336.P13016536443902073208

`∩[A053813(n+1), A061868(n+1)]`
-/

namespace A345336.P13016536443902073208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P13016536443902073208

/-! ## A345336.P10963073460872311397

`∩[A061868(n+1), A070159(n+1)]`
-/

namespace A345336.P10963073460872311397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P10963073460872311397

/-! ## A345336.P3564335547889784840

`∩[A061868(n+1), A076503(n+1)]`
-/

namespace A345336.P3564335547889784840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P3564335547889784840

/-! ## A345336.P17598079987152990368

`∩[A061868(n+1), A116974(n+1)]`
-/

namespace A345336.P17598079987152990368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P17598079987152990368

/-! ## A345336.P8777929497958837739

`∩[A061868(n+1), A132630(n+1)]`
-/

namespace A345336.P8777929497958837739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P8777929497958837739

/-! ## A345336.P10003275555141707662

`∩[A061868(n+1), A175787(n+1)]`
-/

namespace A345336.P10003275555141707662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P10003275555141707662

/-! ## A345336.P13756250752908750179

`∩[A061868(n+1), A182140(n+1)]`
-/

namespace A345336.P13756250752908750179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P13756250752908750179

/-! ## A345336.P8512510588347369315

`∩[A061868(n+1), A186285(n+1)]`
-/

namespace A345336.P8512510588347369315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P8512510588347369315

/-! ## A345336.P14803774258696791643

`∩[A061868(n+1), A197636(n+1)]`
-/

namespace A345336.P14803774258696791643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P14803774258696791643

/-! ## A345336.P3125238366868343710

`∩[A061868(n+1), A268391(n+1)]`
-/

namespace A345336.P3125238366868343710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P3125238366868343710

/-! ## A345336.P9154821189469448231

`∩[A061868(n+1), A393213(n+1)]`
-/

namespace A345336.P9154821189469448231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345336.P9154821189469448231

/-! ## A345336.P12137896747609894866

`p?[record[A061868(A133310(n))]]`
-/

namespace A345336.P12137896747609894866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061868 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345336.P12137896747609894866

/-!
# A345339: a(n) = 18*n + 20.

The programs for A345339, the canonical program `A345339.P10722228534531448958` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345339 has offset 0).

The definition of A345339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n+20` (program `A345339.P10722228534531448958`, by `A345339.P10722228534531448958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345339.P10722228534531448958

`18*n+20`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345339

/-- `18*n+20` -/
def P10722228534531448958.Spec : Prop :=
  ∀ n, (P10722228534531448958.a n : ℤ) = A345339 n

theorem P10722228534531448958.correct : P10722228534531448958.Spec := by
  intro n
  simp only [A345339]

end A345339

/-!
# A345340: The number of squares with vertices from the vertices of the n-dimensional hypercube.

The programs for A345340, the canonical program `A345340.P16162185247943534130` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345340 has offset 0).

The definition of A345340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345340.P16162185247943534130

`2^(n-2)*A097861(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A345340

/-- `2^(n-2)*A097861(n)` -/
def P16162185247943534130.Spec : Prop :=
  ∀ n, P16162185247943534130.a n = (A345340 n : ℚ)

end A345340

/-! ## A345340.P7330606812959013869

`A097861(n)*A166444(n)`
-/

namespace A345340.P7330606812959013869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n * A166444 n

end

end A345340.P7330606812959013869

namespace A345340

/-- `A097861(n)*A166444(n)` -/
def P7330606812959013869.Spec : Prop :=
  ∀ n, P7330606812959013869.a n = A345340 n

end A345340

/-! ## A345340.P16195313728194633992

`(A257520(n)-1)*A034008(n)`
-/

namespace A345340.P16195313728194633992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A257520 n - 1) * A034008 n

end

end A345340.P16195313728194633992

namespace A345340

/-- `(A257520(n)-1)*A034008(n)` -/
def P16195313728194633992.Spec : Prop :=
  ∀ n, P16195313728194633992.a n = A345340 n

end A345340

/-! ## A345340.P2189193850507120963

`(A257520(n)-1)*A166444(n)`
-/

namespace A345340.P2189193850507120963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A257520 n - 1) * A166444 n

end

end A345340.P2189193850507120963

namespace A345340

/-- `(A257520(n)-1)*A166444(n)` -/
def P2189193850507120963.Spec : Prop :=
  ∀ n, P2189193850507120963.a n = A345340 n

end A345340

/-! ## A345340.P13476398172905248303

`A007283(n)/3*A097861(n)/4`
-/

namespace A345340.P13476398172905248303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n : ℚ) / 3 * (A097861 n : ℚ) / 4

end

end A345340.P13476398172905248303

namespace A345340

/-- `A007283(n)/3*A097861(n)/4` -/
def P13476398172905248303.Spec : Prop :=
  ∀ n, P13476398172905248303.a n = (A345340 n : ℚ)

end A345340

/-!
# A345341: Total number of cycles in all permutations of [n] having cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A345341, there is no canonical definition to state claims against.
-/

/-! ## A345341.P358465647210610731

`A032634(ceil(sqrt(A063902(n+2))))`
-/

namespace A345341.P358465647210610731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 ⌈Real.sqrt (A063902 (n + 2) : ℝ)⌉.toNat

end

end A345341.P358465647210610731

/-! ## A345341.P16327928400616675799

`A032634(round(sqrt(A063902(n+2))))`
-/

namespace A345341.P16327928400616675799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (SequenceMachineLib.roundAway (Real.sqrt (A063902 (n + 2) : ℝ))).toNat

end

end A345341.P16327928400616675799

/-!
# A345342: Number of permutations of [2n] having n cycles of the form (c1, c2, ..., c_m) where c1 = min_{i>=1} c_i and c_j = min_{i>=j} c_i or c_j = max_{i>=j} c_i.

The programs for A345342, there is no canonical definition to state claims against.
-/

/-! ## A345342.P14082005122117240456

`A340264(∑[4*n])`
-/

namespace A345342.P14082005122117240456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345342.P14082005122117240456

/-! ## A345342.P5766864884690793426

`A344855(∑[4*n])`
-/

namespace A345342.P5766864884690793426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345342.P5766864884690793426

/-! ## A345342.P8509992804716559559

`or(1, A344855(A046092(n)))`
-/

namespace A345342.P8509992804716559559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344855 (A046092 n).toNat)

end

end A345342.P8509992804716559559

/-! ## A345342.P15963887927563131440

`or(1, A344855(A106232(n+1)))`
-/

namespace A345342.P15963887927563131440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344855 (A106232 (n + 1)).toNat)

end

end A345342.P15963887927563131440

/-! ## A345342.P10596291900971475574

`gcd(A000038(n), A344855(A046092(n)))`
-/

namespace A345342.P10596291900971475574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A344855 (A046092 n).toNat)

end

end A345342.P10596291900971475574

/-!
# A345344: a(n) = Sum_{d^2|n} Omega(n/d^2).

The programs for A345344, the canonical program `A345344.P15163552631888963032` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345344 has offset 1).

The definition of A345344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345344.P15550797740052597346

`A001222((n+1)/∏{p}[n+1, #^val(n+1, #²)])*∏{e}[n+1, floor(#/2)+1]`
-/

namespace A345344.P15550797740052597346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat * (∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 2⌋ + 1))

end

end A345344.P15550797740052597346

namespace A345344

/-- `A001222((n+1)/∏{p}[n+1, #^val(n+1, #²)])*∏{e}[n+1, floor(#/2)+1]` -/
def P15550797740052597346.Spec : Prop :=
  ∀ n, P15550797740052597346.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P15163552631888963032

`∑{d}[n+1, A001222(#)*A010052((n+1)/#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345344

/-- `∑{d}[n+1, A001222(#)*A010052((n+1)/#)]` -/
def P15163552631888963032.Spec : Prop :=
  ∀ n, P15163552631888963032.a n = A345344 (n + 1)

theorem P15163552631888963032.correct : P15163552631888963032.Spec := by
  intro n
  simp only [A345344, Nat.add_sub_cancel]

end A345344

/-! ## A345344.P9946186530145865036

`∑{d}[n+1, A008836(#)*A069264((n+1)/#)]`
-/

namespace A345344.P9946186530145865036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A069264 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345344.P9946186530145865036

namespace A345344

/-- `∑{d}[n+1, A008836(#)*A069264((n+1)/#)]` -/
def P9946186530145865036.Spec : Prop :=
  ∀ n, P9946186530145865036.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P1572549979441766351

`∑{d}[n+1, A046951(#)*A069513((n+1)/#)]`
-/

namespace A345344.P1572549979441766351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345344.P1572549979441766351

namespace A345344

/-- `∑{d}[n+1, A046951(#)*A069513((n+1)/#)]` -/
def P1572549979441766351.Spec : Prop :=
  ∀ n, P1572549979441766351.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P13787002580529819236

`A001222((n+1)/∏{p}[n+1, #^val(n+1, #²)])*A046951(n+1)`
-/

namespace A345344.P13787002580529819236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat * A046951 (n + 1)

end

end A345344.P13787002580529819236

namespace A345344

/-- `A001222((n+1)/∏{p}[n+1, #^val(n+1, #²)])*A046951(n+1)` -/
def P13787002580529819236.Spec : Prop :=
  ∀ n, P13787002580529819236.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P6544166944483554053

`A001222(A019554(n+1))*A046951(n+1)`
-/

namespace A345344.P6544166944483554053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019554 (n + 1)).toNat * A046951 (n + 1)

end

end A345344.P6544166944483554053

namespace A345344

/-- `A001222(A019554(n+1))*A046951(n+1)` -/
def P6544166944483554053.Spec : Prop :=
  ∀ n, P6544166944483554053.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P11314738430354689725

`A001222(A019554(n+1))*∑{d}[n+1, A000005(#)%2]`
-/

namespace A345344.P11314738430354689725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019554 (n + 1)).toNat * (∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000005 d) 2)

end

end A345344.P11314738430354689725

namespace A345344

/-- `A001222(A019554(n+1))*∑{d}[n+1, A000005(#)%2]` -/
def P11314738430354689725.Spec : Prop :=
  ∀ n, P11314738430354689725.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P8114487281468032409

`A001222(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^∏{e}[n+1, floor(#/2)+1])`
-/

namespace A345344.P8114487281468032409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ (∏ p ∈ Nat.primeFactors (f2 n), (⌊(Nat.factorization (f2 n) p : ℚ) / 2⌋ + 1) : ℤ))).toNat

end

end A345344.P8114487281468032409

namespace A345344

/-- `A001222(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^∏{e}[n+1, floor(#/2)+1])` -/
def P8114487281468032409.Spec : Prop :=
  ∀ n, P8114487281468032409.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P5283275343256632861

`A001222(A019554(n+1)^∏{e}[n+1, floor(#/2)+1])`
-/

namespace A345344.P5283275343256632861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A019554 (n + 1) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) : ℤ))).toNat

end

end A345344.P5283275343256632861

namespace A345344

/-- `A001222(A019554(n+1)^∏{e}[n+1, floor(#/2)+1])` -/
def P5283275343256632861.Spec : Prop :=
  ∀ n, P5283275343256632861.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P3078770064221069152

`A001222(A019554(n+1)^∏{p}[n+1, val(n+1, #²)+1])`
-/

namespace A345344.P3078770064221069152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019554 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) (p ^ 2) + 1))).toNat

end

end A345344.P3078770064221069152

namespace A345344

/-- `A001222(A019554(n+1)^∏{p}[n+1, val(n+1, #²)+1])` -/
def P3078770064221069152.Spec : Prop :=
  ∀ n, P3078770064221069152.a n = A345344 (n + 1)

end A345344

/-! ## A345344.P14634036216273196257

`A001222(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^A046951(n+1))`
-/

namespace A345344.P14634036216273196257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ (A046951 (n + 1) : ℤ))).toNat

end

end A345344.P14634036216273196257

namespace A345344

/-- `A001222(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^A046951(n+1))` -/
def P14634036216273196257.Spec : Prop :=
  ∀ n, P14634036216273196257.a n = A345344 (n + 1)

end A345344

/-!
# A345345: a(n) = Sum_{d^2|n} omega(n/d^2).

The programs for A345345, the canonical program `A345345.P14068785434058537424` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345345 has offset 1).

The definition of A345345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345345.P14135660126075795905

`∑{d}[n+1, A358769(#)]`
-/

namespace A345345.P14135660126075795905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A358769 d

end

end A345345.P14135660126075795905

namespace A345345

/-- `∑{d}[n+1, A358769(#)]` -/
def P14135660126075795905.Spec : Prop :=
  ∀ n, P14135660126075795905.a n = A345345 (n + 1)

end A345345

/-! ## A345345.P3802986593474408556

`∑{p}[n+1, A046951((n+1)/#)]`
-/

namespace A345345.P3802986593474408556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A345345.P3802986593474408556

namespace A345345

/-- `∑{p}[n+1, A046951((n+1)/#)]` -/
def P3802986593474408556.Spec : Prop :=
  ∀ n, P3802986593474408556.a n = A345345 (n + 1)

end A345345

/-! ## A345345.P1659934717901800686

`∑{d}[n+1, A010051(#)*A046951((n+1)/#)]`
-/

namespace A345345.P1659934717901800686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345345.P1659934717901800686

namespace A345345

/-- `∑{d}[n+1, A010051(#)*A046951((n+1)/#)]` -/
def P1659934717901800686.Spec : Prop :=
  ∀ n, P1659934717901800686.a n = A345345 (n + 1)

end A345345

/-! ## A345345.P17822516793909219441

`∑{d}[n+1, A008836(#)*A062799((n+1)/#)]`
-/

namespace A345345.P17822516793909219441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A062799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345345.P17822516793909219441

namespace A345345

/-- `∑{d}[n+1, A008836(#)*A062799((n+1)/#)]` -/
def P17822516793909219441.Spec : Prop :=
  ∀ n, P17822516793909219441.a n = A345345 (n + 1)

end A345345

/-! ## A345345.P14068785434058537424

`∑{d}[n+1, A124315(#)*A143519((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A345345

/-- `∑{d}[n+1, A124315(#)*A143519((n+1)/#)]` -/
def P14068785434058537424.Spec : Prop :=
  ∀ n, P14068785434058537424.a n = A345345 (n + 1)

theorem P14068785434058537424.correct : P14068785434058537424.Spec := by
  intro n
  simp only [A345345, Nat.add_sub_cancel]

end A345345

/-! ## A345345.P15933526872013798389

`∑{d}[n+1, A065704(#)*A304438((n+1)/#)]`
-/

namespace A345345.P15933526872013798389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065704 d * A304438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345345.P15933526872013798389

namespace A345345

/-- `∑{d}[n+1, A065704(#)*A304438((n+1)/#)]` -/
def P15933526872013798389.Spec : Prop :=
  ∀ n, P15933526872013798389.a n = A345345 (n + 1)

end A345345

/-! ## A345345.P16542543207822046469

`∑{d}[n+1, A000005(#)*A392285((n+1)/#)]`
-/

namespace A345345.P16542543207822046469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345345.P16542543207822046469

namespace A345345

/-- `∑{d}[n+1, A000005(#)*A392285((n+1)/#)]` -/
def P16542543207822046469.Spec : Prop :=
  ∀ n, P16542543207822046469.a n = A345345 (n + 1)

end A345345

/-! ## A345345.P13475227107062627970

`round(A088873((n+1)²)/4)`
-/

namespace A345345.P13475227107062627970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088873 ((n + 1) ^ 2) : ℚ) / 4)

end

end A345345.P13475227107062627970

namespace A345345

/-- `round(A088873((n+1)²)/4)` -/
def P13475227107062627970.Spec : Prop :=
  ∀ n, P13475227107062627970.a n = A345345 (n + 1)

end A345345

/-! ## A345345.P86642591689454187

`round(A325770(n+1)/2)`
-/

namespace A345345.P86642591689454187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A325770 (n + 1) : ℚ) / 2)

end

end A345345.P86642591689454187

namespace A345345

/-- `round(A325770(n+1)/2)` -/
def P86642591689454187.Spec : Prop :=
  ∀ n, P86642591689454187.a n = A345345 (n + 1)

end A345345

/-! ## A345345.P1174254792345973003

`A062108(A325770(n+1))`
-/

namespace A345345.P1174254792345973003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A325770 (n + 1)).toNat

end

end A345345.P1174254792345973003

namespace A345345

/-- `A062108(A325770(n+1))` -/
def P1174254792345973003.Spec : Prop :=
  ∀ n, P1174254792345973003.a n = A345345 (n + 1)

end A345345

/-!
# A345346: Primes whose digit reversal is twice a prime.

The programs for A345346, there is no canonical definition to state claims against.
-/

/-! ## A345346.P6714329076297178772

`∩[A085778(n+1), A355430(n+1)]`
-/

namespace A345346.P6714329076297178772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345346.P6714329076297178772

/-! ## A345346.P9955677791325029486

`∩[A085778(n+1), A273892(n+1)]`
-/

namespace A345346.P9955677791325029486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345346.P9955677791325029486

/-!
# A345347: Find the largest k with F(k) <= n, where F(k) is the k-th Fibonacci number. a(n) = F(k+2) + n.

The programs for A345347, the canonical program `A345347.P1503989825449935598` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345347 has offset 0).

The definition of A345347 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A108852, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345347.P1503989825449935598

`n+A000045(1+A108852(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A345347

/-- `n+A000045(1+A108852(n))` -/
def P1503989825449935598.Spec : Prop :=
  ∀ n, P1503989825449935598.a n = A345347 n

theorem P1503989825449935598.correct : P1503989825449935598.Spec := by
  intro n
  simp only [A345347]

end A345347

/-! ## A345347.P18296194917164691566

`∑[n*A104162(n)+1]`
-/

namespace A345347.P18296194917164691566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A104162 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345347.P18296194917164691566

namespace A345347

/-- `∑[n*A104162(n)+1]` -/
def P18296194917164691566.Spec : Prop :=
  ∀ n, P18296194917164691566.a n = A345347 n

end A345347

/-! ## A345347.P8981236963865072768

`∑[n*(char[1]+char[A000045(n)])+1]`
-/

namespace A345347.P8981236963865072768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((if ∃ j, f2 j = n then 1 else 0) + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345347.P8981236963865072768

namespace A345347

/-- `∑[n*(char[1]+char[A000045(n)])+1]` -/
def P8981236963865072768.Spec : Prop :=
  ∀ n, (P8981236963865072768.a n : ℤ) = A345347 n

end A345347

/-! ## A345347.P18318973048668309578

`A256654(floor(ϕ*(n+1)))+n`
-/

namespace A345347.P18318973048668309578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 ⌊Real.goldenRatio * (n + 1 : ℝ)⌋.toNat + (n : ℤ)

end

end A345347.P18318973048668309578

namespace A345347

/-- `A256654(floor(ϕ*(n+1)))+n` -/
def P18318973048668309578.Spec : Prop :=
  ∀ n, P18318973048668309578.a n = A345347 n

end A345347

/-! ## A345347.P6542415934739698114

`eq[1, val(A277331(n), 2)]`
-/

namespace A345347.P6542415934739698114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277331 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345347.P6542415934739698114

namespace A345347

/-- `eq[1, val(A277331(n), 2)]` -/
def P6542415934739698114.Spec : Prop :=
  ∀ n, (P6542415934739698114.a n : ℤ) = A345347 n

end A345347

/-! ## A345347.P11724045045720386853

`A056017(comp[floor(ϕ*n)-1])`
-/

namespace A345347.P11724045045720386853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056017 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345347.P11724045045720386853

namespace A345347

/-- `A056017(comp[floor(ϕ*n)-1])` -/
def P11724045045720386853.Spec : Prop :=
  ∀ n, P11724045045720386853.a n = A345347 n

end A345347

/-! ## A345347.P8540989829477974395

`A087172(comp[ceil(ϕ*n)])+n`
-/

namespace A345347.P8540989829477974395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (n : ℤ)

end

end A345347.P8540989829477974395

namespace A345347

/-- `A087172(comp[ceil(ϕ*n)])+n` -/
def P8540989829477974395.Spec : Prop :=
  ∀ n, P8540989829477974395.a n = A345347 n

end A345347

/-! ## A345347.P14526716995662802261

`lt[a(A019586(n))², 1]` with `a(0)=1, a(1)=0`
-/

namespace A345347.P14526716995662802261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (A019586 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345347.P14526716995662802261

namespace A345347

/-- `lt[a(A019586(n))², 1]` -/
def P14526716995662802261.Spec : Prop :=
  ∀ n, (P14526716995662802261.a n : ℤ) = A345347 n

end A345347

/-! ## A345347.P6670300183846162765

`eq[2, A317208(n+1)%4]`
-/

namespace A345347.P6670300183846162765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317208 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345347.P6670300183846162765

namespace A345347

/-- `eq[2, A317208(n+1)%4]` -/
def P6670300183846162765.Spec : Prop :=
  ∀ n, (P6670300183846162765.a n : ℤ) = A345347 n

end A345347

/-! ## A345347.P5868007764212295095

`eq[2, A317208(n)%4]-1`
-/

namespace A345347.P5868007764212295095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317208 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A345347.P5868007764212295095

namespace A345347

/-- `eq[2, A317208(n)%4]-1` -/
def P5868007764212295095.Spec : Prop :=
  ∀ n, P5868007764212295095.a n = A345347 n

end A345347

/-!
# A345348: Triangular numbers that in base 2 have the same number of 0's and 1's.

The programs for A345348, there is no canonical definition to state claims against.
-/

/-! ## A345348.P14554538513653594111

`∩[A031443(n+1), A000217(n)]`
-/

namespace A345348.P14554538513653594111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345348.P14554538513653594111

/-! ## A345348.P14221903778228702023

`∩[A031443(n+1), A253145(n)]`
-/

namespace A345348.P14221903778228702023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345348.P14221903778228702023

/-! ## A345348.P9836408975664313624

`∩[A031443(n+1), A161680(n+1)]`
-/

namespace A345348.P9836408975664313624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345348.P9836408975664313624

/-! ## A345348.P2627851027593141373

`∩[A031443(n+1), A350295(n+3)]`
-/

namespace A345348.P2627851027593141373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345348.P2627851027593141373

/-!
# A345349: Number of connected labeled n-node graphs with no cycles of length less than 5.

The programs for A345349, there is no canonical definition to state claims against.
-/

/-! ## A345349.P6370539592532899721

`A141205((n-2)*a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A345349.P6370539592532899721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A141205 (((n : ℤ) - 2) * a (n - 1) + 1).toNat

end

end A345349.P6370539592532899721

/-! ## A345349.P4680757957982461120

`A191447(A047066(n))`
-/

namespace A345349.P4680757957982461120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191447 (A047066 n).toNat

end

end A345349.P4680757957982461120

/-!
# A345350: Even triangular numbers such that the next integer is nonprime.

The programs for A345350, there is no canonical definition to state claims against.
-/

/-! ## A345350.P772876876682727234

`eq[A000124(A172471(n)), A171435(n+1)]`
-/

namespace A345350.P772876876682727234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A172471 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345350.P772876876682727234

/-! ## A345350.P6277760955827042015

`2*eq[A005171(2*n+1), A013609(2*n)]`
-/

namespace A345350.P6277760955827042015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345350.P6277760955827042015

/-! ## A345350.P12015993785791540724

`A000217(eq[0, A002126(A000124(n))])`
-/

namespace A345350.P12015993785791540724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345350.P12015993785791540724

/-! ## A345350.P185325899870052210

`eq[A005171(A141310(n)), A013609(n)]`
-/

namespace A345350.P185325899870052210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A141310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345350.P185325899870052210

/-! ## A345350.P292710180475992186

`eq[A000124(A003056(n)), A171435(n+1)]`
-/

namespace A345350.P292710180475992186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003056 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345350.P292710180475992186

/-!
# A345352: The binary expansion of a(n) is obtained by left-padding the binary expansion of n with 0's so that it has 2^k digits for some k > 0 as small as possible and then reversing the first half and the second half of this binary expansion.

The programs for A345352, there is no canonical definition to state claims against.
-/

/-! ## A345352.P9967095462347790524

`A057300(A294080(A132732(n))+n)`
-/

namespace A345352.P9967095462347790524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A294080 (A132732 n).toNat + (n : ℤ)).toNat

end

end A345352.P9967095462347790524

/-! ## A345352.P1796231534911565826

`A057300(n)-A294080(A132732(n))`
-/

namespace A345352.P1796231534911565826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n - A294080 (A132732 n).toNat

end

end A345352.P1796231534911565826

/-! ## A345352.P985345184383057882

`A057300(n)-A117945(A018623(n+1))`
-/

namespace A345352.P985345184383057882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n - A117945 (A018623 (n + 1)).toNat

end

end A345352.P985345184383057882

/-!
# A345353: Largest prime with strictly ascending digits in base n.

The programs for A345353, there is no canonical definition to state claims against.
-/

/-! ## A345353.P17336457754319795439

`A006530(A291815(n+1)*A344549(n+3))`
-/

namespace A345353.P17336457754319795439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A291815 (n + 1) * A344549 (n + 3)).toNat

end

end A345353.P17336457754319795439

/-!
# A345354: a(n) = Sum_{p|n, p prime} omega(n/p).

The programs for A345354, the canonical program `A345354.P8610858115869796837` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345354 has offset 1).

The definition of A345354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345354.P4496890949588160398

`∑{p}[n+1, gcd(n, #)]²-∑{e}[n+1, round(acot(#))]`
-/

namespace A345354.P4496890949588160398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) ^ 2 : ℕ) : ℤ) - ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.factorization (f2 n) p : ℝ))

end

end A345354.P4496890949588160398

namespace A345354

/-- `∑{p}[n+1, gcd(n, #)]²-∑{e}[n+1, round(acot(#))]` -/
def P4496890949588160398.Spec : Prop :=
  ∀ n, P4496890949588160398.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P8313023374379614334

`∑{d}[n+1, A230595(#)]`
-/

namespace A345354.P8313023374379614334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230595 d

end

end A345354.P8313023374379614334

namespace A345354

/-- `∑{d}[n+1, A230595(#)]` -/
def P8313023374379614334.Spec : Prop :=
  ∀ n, P8313023374379614334.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P1198014161901783532

`∑{p}[n+1, A001221(ceil(n/#))]`
-/

namespace A345354.P1198014161901783532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 ⌈(n : ℚ) / (p : ℚ)⌉.toNat

end

end A345354.P1198014161901783532

namespace A345354

/-- `∑{p}[n+1, A001221(ceil(n/#))]` -/
def P1198014161901783532.Spec : Prop :=
  ∀ n, P1198014161901783532.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P10407669331171085734

`∑{p}[n+1, gcd(n, #)]²-A056169(n+1)`
-/

namespace A345354.P10407669331171085734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) ^ 2 : ℕ) : ℤ) - A056169 (n + 1)

end

end A345354.P10407669331171085734

namespace A345354

/-- `∑{p}[n+1, gcd(n, #)]²-A056169(n+1)` -/
def P10407669331171085734.Spec : Prop :=
  ∀ n, P10407669331171085734.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P6045895102753470331

`A001221(n+1)²-∑{e}[n+1, round(acot(#))]`
-/

namespace A345354.P6045895102753470331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) ^ 2 - ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ))

end

end A345354.P6045895102753470331

namespace A345354

/-- `A001221(n+1)²-∑{e}[n+1, round(acot(#))]` -/
def P6045895102753470331.Spec : Prop :=
  ∀ n, P6045895102753470331.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P11058061277699802434

`∑{p}[n+1, A001221((n+1)/#)]%(n+1)`
-/

namespace A345354.P11058061277699802434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ p ∈ Nat.primeFactors (f1 n), A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat) (n + 1 : ℤ)

end

end A345354.P11058061277699802434

namespace A345354

/-- `∑{p}[n+1, A001221((n+1)/#)]%(n+1)` -/
def P11058061277699802434.Spec : Prop :=
  ∀ n, P11058061277699802434.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P12010713959079471894

`A001222(∏{p}[n+1, #])²-∑{e}[n+1, C(2, #+1)]`
-/

namespace A345354.P12010713959079471894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) ^ 2 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A345354.P12010713959079471894

namespace A345354

/-- `A001222(∏{p}[n+1, #])²-∑{e}[n+1, C(2, #+1)]` -/
def P12010713959079471894.Spec : Prop :=
  ∀ n, P12010713959079471894.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P13655093286258093145

`A086971(n+1)+A079275(n+1)`
-/

namespace A345354.P13655093286258093145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) + A079275 (n + 1)

end

end A345354.P13655093286258093145

namespace A345354

/-- `A086971(n+1)+A079275(n+1)` -/
def P13655093286258093145.Spec : Prop :=
  ∀ n, P13655093286258093145.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P16663979483642965815

`A001221(n+1)²-A056169(n+1)`
-/

namespace A345354.P16663979483642965815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) ^ 2 - A056169 (n + 1)

end

end A345354.P16663979483642965815

namespace A345354

/-- `A001221(n+1)²-A056169(n+1)` -/
def P16663979483642965815.Spec : Prop :=
  ∀ n, P16663979483642965815.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P16438708963087111405

`A056170(n+1)+2*A079275(n+1)`
-/

namespace A345354.P16438708963087111405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + 2 * A079275 (n + 1)

end

end A345354.P16438708963087111405

namespace A345354

/-- `A056170(n+1)+2*A079275(n+1)` -/
def P16438708963087111405.Spec : Prop :=
  ∀ n, P16438708963087111405.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P9839483583902080993

`2*A086971(n+1)-A056170(n+1)`
-/

namespace A345354.P9839483583902080993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086971 (n + 1) - A056170 (n + 1)

end

end A345354.P9839483583902080993

namespace A345354

/-- `2*A086971(n+1)-A056170(n+1)` -/
def P9839483583902080993.Spec : Prop :=
  ∀ n, P9839483583902080993.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P13980146592659501058

`∑{d}[n+1, A001221(#)*A010051((n+1)/#)]`
-/

namespace A345354.P13980146592659501058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345354.P13980146592659501058

namespace A345354

/-- `∑{d}[n+1, A001221(#)*A010051((n+1)/#)]` -/
def P13980146592659501058.Spec : Prop :=
  ∀ n, P13980146592659501058.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P1700870830360385968

`∑{d}[n+1, A008683(#)*A070288((n+1)/#)]`
-/

namespace A345354.P1700870830360385968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A070288 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345354.P1700870830360385968

namespace A345354

/-- `∑{d}[n+1, A008683(#)*A070288((n+1)/#)]` -/
def P1700870830360385968.Spec : Prop :=
  ∀ n, P1700870830360385968.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P8610858115869796837

`∑{d}[n+1, A062799(#)*A143519((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A345354

/-- `∑{d}[n+1, A062799(#)*A143519((n+1)/#)]` -/
def P8610858115869796837.Spec : Prop :=
  ∀ n, P8610858115869796837.a n = A345354 (n + 1)

theorem P8610858115869796837.correct : P8610858115869796837.Spec := by
  intro n
  simp only [A345354, Nat.add_sub_cancel]

end A345354

/-! ## A345354.P11219036810170868097

`A086971(A007947(n+1))+A086971(n+1)`
-/

namespace A345354.P11219036810170868097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A007947 (n + 1)).toNat + A086971 (n + 1)

end

end A345354.P11219036810170868097

namespace A345354

/-- `A086971(A007947(n+1))+A086971(n+1)` -/
def P11219036810170868097.Spec : Prop :=
  ∀ n, P11219036810170868097.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P15767823812143876249

`A001221(n+1)²-A001221(A055231(n+1))`
-/

namespace A345354.P15767823812143876249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) ^ 2 - A001221 (A055231 (n + 1)).toNat

end

end A345354.P15767823812143876249

namespace A345354

/-- `A001221(n+1)²-A001221(A055231(n+1))` -/
def P15767823812143876249.Spec : Prop :=
  ∀ n, P15767823812143876249.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P5247041875342108435

`A056169(A007947(n+1))²-A056169(n+1)`
-/

namespace A345354.P5247041875342108435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A007947 (n + 1)).toNat ^ 2 - A056169 (n + 1)

end

end A345354.P5247041875342108435

namespace A345354

/-- `A056169(A007947(n+1))²-A056169(n+1)` -/
def P5247041875342108435.Spec : Prop :=
  ∀ n, P5247041875342108435.a n = A345354 (n + 1)

end A345354

/-! ## A345354.P15215876553973224482

`A056170(n+1)+A001221(n+1)*(A001221(n+1)-1)`
-/

namespace A345354.P15215876553973224482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (n + 1) + A001221 (n + 1) * (A001221 (n + 1) - 1)

end

end A345354.P15215876553973224482

namespace A345354

/-- `A056170(n+1)+A001221(n+1)*(A001221(n+1)-1)` -/
def P15215876553973224482.Spec : Prop :=
  ∀ n, P15215876553973224482.a n = A345354 (n + 1)

end A345354

/-!
# A345355: a(n) = Sum_{p|n, p prime} p^omega(n/p).

The programs for A345355, the canonical program `A345355.P18399799280978424985` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345355 has offset 1).

The definition of A345355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345355.P18399799280978424985

`∑{p}[n+1, #^A001221((n+1)/#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345355

/-- `∑{p}[n+1, #^A001221((n+1)/#)]` -/
def P18399799280978424985.Spec : Prop :=
  ∀ n, P18399799280978424985.a n = (A345355 (n + 1) : ℚ)

end A345355

/-! ## A345355.P362607041906140421

`A345303(n+1)/A014963(A007955(n+1))`
-/

namespace A345355.P362607041906140421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345303 (n + 1) : ℚ) / (A014963 (A007955 (n + 1)).toNat : ℚ)

end

end A345355.P362607041906140421

namespace A345355

/-- `A345303(n+1)/A014963(A007955(n+1))` -/
def P362607041906140421.Spec : Prop :=
  ∀ n, P362607041906140421.a n = (A345355 (n + 1) : ℚ)

end A345355

/-! ## A345355.P7489834932391455224

`A345303(n+1)/A014963(A183103(n+1))`
-/

namespace A345355.P7489834932391455224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345303 (n + 1) : ℚ) / (A014963 (A183103 (n + 1)).toNat : ℚ)

end

end A345355.P7489834932391455224

namespace A345355

/-- `A345303(n+1)/A014963(A183103(n+1))` -/
def P7489834932391455224.Spec : Prop :=
  ∀ n, P7489834932391455224.a n = (A345355 (n + 1) : ℚ)

end A345355

/-! ## A345355.P5933036071723259786

`A326067(n+1)+A006530(A277169(n+1))`
-/

namespace A345355.P5933036071723259786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326067 (n + 1) + A006530 (A277169 (n + 1)).toNat

end

end A345355.P5933036071723259786

namespace A345355

/-- `A326067(n+1)+A006530(A277169(n+1))` -/
def P5933036071723259786.Spec : Prop :=
  ∀ n, P5933036071723259786.a n = A345355 (n + 1)

end A345355

/-! ## A345355.P16202837180307431999

`A051801(A369744(n+1))%A051812(n+1)`
-/

namespace A345355.P16202837180307431999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051801 (A369744 (n + 1)).toNat) (A051812 (n + 1))

end

end A345355.P16202837180307431999

namespace A345355

/-- `A051801(A369744(n+1))%A051812(n+1)` -/
def P16202837180307431999.Spec : Prop :=
  ∀ n, P16202837180307431999.a n = A345355 (n + 1)

end A345355

/-!
# A345356: Numbers k coprime to 30 such that ceiling(sqrt(k))^2 - k is a square.

The programs for A345356, there is no canonical definition to state claims against.
-/

/-! ## A345356.P17355383208476644103

`filter[A256173(n+2), A162289(#)]`
-/

namespace A345356.P17355383208476644103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256173 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A345356.P17355383208476644103

/-! ## A345356.P16022742541537781240

`∩[A007775(n+1), A256173(n+1)]`
-/

namespace A345356.P16022742541537781240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345356.P16022742541537781240

/-! ## A345356.P16855921154415442702

`filter[A176039(n+1), A162289(#)]`
-/

namespace A345356.P16855921154415442702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A345356.P16855921154415442702

/-! ## A345356.P14235057960592823275

`∩[A007775(n+1), A176039(n+1)]`
-/

namespace A345356.P14235057960592823275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345356.P14235057960592823275

/-! ## A345356.P7634575380684470161

`∩[A325395(n+1), A380410(n+1)]`
-/

namespace A345356.P7634575380684470161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345356.P7634575380684470161

/-!
# A345358: Lexicographically earliest sequence of distinct nonnegative integers such that the product of two terms, not necessarily distinct, can be computed without carry in base 10.

The programs for A345358, there is no canonical definition to state claims against.
-/

/-! ## A345358.P17491520868276603381

`eq[A067552(n), A078771(A002061(n))]`
-/

namespace A345358.P17491520868276603381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (A002061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345358.P17491520868276603381

/-! ## A345358.P2654734610989800973

`eq[A069912(n), A078771(A002061(n))]`
-/

namespace A345358.P2654734610989800973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (A002061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345358.P2654734610989800973

/-! ## A345358.P813802228524785014

`eq[A033869(A003557(n+1)), A067552(n)]`
-/

namespace A345358.P813802228524785014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033869 (A003557 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345358.P813802228524785014

/-! ## A345358.P5726715431818792380

`eq[A033869(A003557(n+1)), A069912(n)]`
-/

namespace A345358.P5726715431818792380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033869 (A003557 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069912 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345358.P5726715431818792380

/-! ## A345358.P17134882434732144493

`eq[A067552(n), A112345(A066060(n+1))]`
-/

namespace A345358.P17134882434732144493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112345 (A066060 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345358.P17134882434732144493

/-!
# A345359: Lexicographically earliest sequence of distinct nonnegative integers such that the product of two terms, not necessarily distinct, can be computed without carry in base 3.

The programs for A345359, there is no canonical definition to state claims against.
-/

/-! ## A345359.P17650293869487495140

`lt[A353742(n+1), A106224(A117940(n))]`
-/

namespace A345359.P17650293869487495140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106224 (A117940 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345359.P17650293869487495140

/-! ## A345359.P15636531608780363218

`eq[A039966(n), A214247(A025487(n+1))]`
-/

namespace A345359.P15636531608780363218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (A025487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345359.P15636531608780363218

/-! ## A345359.P9539292903959026981

`A005836(lt[A160046(n+3), A075650(n+1)])`
-/

namespace A345359.P9539292903959026981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160046 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345359.P9539292903959026981

/-!
# A345360: a(n) = n^n*n - n.

The programs for A345360, the canonical program `A345360.P9024215343825180112` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345360 has offset 0).

The definition of A345360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n*n-n` (program `A345360.P9024215343825180112`, by `A345360.P9024215343825180112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345360.P10098626691966726500

`n^(n+1)-n`
-/

namespace A345360.P10098626691966726500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ (n + 1) : ℤ) - (n : ℤ)

end

end A345360.P10098626691966726500

namespace A345360

/-- `n^(n+1)-n` -/
def P10098626691966726500.Spec : Prop :=
  ∀ n, P10098626691966726500.a n = A345360 n

theorem P10098626691966726500.correct : P10098626691966726500.Spec := by
  intro n
  simp only [A345360, Nat.add_sub_cancel, A345360.P10098626691966726500.a, A345360.P9024215343825180112.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A345360

/-! ## A345360.P9024215343825180112

`n^n*n-n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345360

/-- `n^n*n-n` -/
def P9024215343825180112.Spec : Prop :=
  ∀ n, P9024215343825180112.a n = A345360 n

theorem P9024215343825180112.correct : P9024215343825180112.Spec := by
  intro n
  simp only [A345360]

end A345360

/-! ## A345360.P13442127625812314246

`lcm(n, 1-n^n)`
-/

namespace A345360.P13442127625812314246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (1 - (n ^ n : ℤ))

end

end A345360.P13442127625812314246

namespace A345360

/-- `lcm(n, 1-n^n)` -/
def P13442127625812314246.Spec : Prop :=
  ∀ n, (P13442127625812314246.a n : ℤ) = A345360 n

end A345360

/-! ## A345360.P1851513900474531847

`floor(record[(n-3)^(n-2)]-n)`
-/

namespace A345360.P1851513900474531847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ)⌋

end

end A345360.P1851513900474531847

namespace A345360

/-- `floor(record[(n-3)^(n-2)]-n)` -/
def P1851513900474531847.Spec : Prop :=
  ∀ n, P1851513900474531847.a n = A345360 n

end A345360

/-! ## A345360.P14242303491912164716

`round(record[(n-3)^(n-2)]-n)`
-/

namespace A345360.P14242303491912164716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℚ))

end

end A345360.P14242303491912164716

namespace A345360

/-- `round(record[(n-3)^(n-2)]-n)` -/
def P14242303491912164716.Spec : Prop :=
  ∀ n, P14242303491912164716.a n = A345360 n

end A345360

/-! ## A345360.P7606781916927098846

`-ceil(n-record[(n-3)^(n-2)])`
-/

namespace A345360.P7606781916927098846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(n : ℚ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A345360.P7606781916927098846

namespace A345360

/-- `-ceil(n-record[(n-3)^(n-2)])` -/
def P7606781916927098846.Spec : Prop :=
  ∀ n, P7606781916927098846.a n = A345360 n

end A345360

/-! ## A345360.P2124084780313501541

`abs(n-A007778(n))`
-/

namespace A345360.P2124084780313501541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A007778 n|

end

end A345360.P2124084780313501541

namespace A345360

/-- `abs(n-A007778(n))` -/
def P2124084780313501541.Spec : Prop :=
  ∀ n, P2124084780313501541.a n = A345360 n

end A345360

/-! ## A345360.P5585680397323118468

`n*(A000312(n)-1)`
-/

namespace A345360.P5585680397323118468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000312 n - 1)

end

end A345360.P5585680397323118468

namespace A345360

/-- `n*(A000312(n)-1)` -/
def P5585680397323118468.Spec : Prop :=
  ∀ n, P5585680397323118468.a n = A345360 n

theorem P5585680397323118468.correct : P5585680397323118468.Spec := by
  intro n
  simp only [A345360, Nat.add_sub_cancel, A345360.P5585680397323118468.a, A345360.P9024215343825180112.a, A000312, A000312.P3932771318196185165.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345360

/-! ## A345360.P14819315754775855169

`(n-1)*A031972(n)`
-/

namespace A345360.P14819315754775855169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A031972 n

end

end A345360.P14819315754775855169

namespace A345360

/-- `(n-1)*A031972(n)` -/
def P14819315754775855169.Spec : Prop :=
  ∀ n, P14819315754775855169.a n = A345360 n

end A345360

/-! ## A345360.P8487429819363139834

`n*(A014566(n)-2)`
-/

namespace A345360.P8487429819363139834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A014566 n - 2)

end

end A345360.P8487429819363139834

namespace A345360

/-- `n*(A014566(n)-2)` -/
def P8487429819363139834.Spec : Prop :=
  ∀ n, P8487429819363139834.a n = A345360 n

theorem P8487429819363139834.correct : P8487429819363139834.Spec := by
  intro n
  simp only [A345360, Nat.add_sub_cancel, A345360.P8487429819363139834.a, A345360.P9024215343825180112.a, A014566, A014566.P17220125683731441908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345360

/-!
# A345361: Numbers that are not palindromes even after removing trailing zeros and are divisible by their reverses.

The programs for A345361, there is no canonical definition to state claims against.
-/

/-! ## A345361.P18107900185772025814

`∩[A118959(n+1), A192130(n+1)]`
-/

namespace A345361.P18107900185772025814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345361.P18107900185772025814

/-! ## A345361.P18099249189451564055

`∩[A169824(n+1), A192130(n+1)]`
-/

namespace A345361.P18099249189451564055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345361.P18099249189451564055

/-! ## A345361.P11213105668357911128

`∩[A090053(n+1), A118959(n+1)]`
-/

namespace A345361.P11213105668357911128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345361.P11213105668357911128

/-! ## A345361.P13183470864895206854

`∩[A090053(n+1), A192130(n+1)]`
-/

namespace A345361.P13183470864895206854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345361.P13183470864895206854

/-!
# A345362: Fixed points of A345352.

The programs for A345362, there is no canonical definition to state claims against.
-/

/-! ## A345362.P17189727609712727052

`eq[n, A345352(n)]`
-/

namespace A345362.P17189727609712727052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345362.P17189727609712727052

/-! ## A345362.P7450737870324068095

`A345352(record[and(n, A345352(n))])`
-/

namespace A345362.P7450737870324068095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A345352 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345352 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345362.P7450737870324068095

/-!
# A345363: Composite numbers that are the exact average of three consecutive primes.

The programs for A345363, there is no canonical definition to state claims against.
-/

/-! ## A345363.P3903916953446513140

`filter[A075540(n+1), A005171(#)]`
-/

namespace A345363.P3903916953446513140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A345363.P3903916953446513140

/-! ## A345363.P15200886754717029686

`filter[A075540(n+1), A066247(#)]`
-/

namespace A345363.P15200886754717029686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A345363.P15200886754717029686

/-! ## A345363.P5362855549498051090

`filter[A075540(n+1), A202238(#)]`
-/

namespace A345363.P5362855549498051090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A345363.P5362855549498051090

/-! ## A345363.P6042081034121066850

`filter[A075540(n+1), A292438(#)]`
-/

namespace A345363.P6042081034121066850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A345363.P6042081034121066850

/-! ## A345363.P13045143321280216857

`filter[A075540(n+1), A323162(#)]`
-/

namespace A345363.P13045143321280216857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A345363.P13045143321280216857

/-! ## A345363.P11160871842116365068

`filter[A075540(n+1), A174898(#)]`
-/

namespace A345363.P11160871842116365068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A345363.P11160871842116365068

/-! ## A345363.P3759495155163388367

`∩[A018252(n+1), A075540(n+1)]`
-/

namespace A345363.P3759495155163388367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345363.P3759495155163388367

/-!
# A345365: a(n) = (2*n)!*Pi^(-2*n)*PolyLog(2*n, 1)*Clausen(2*n - 1)/2, where Clausen(n) = A160014(n, 1).

The programs for A345365, there is no canonical definition to state claims against.
-/

/-! ## A345365.P2920049981350745193

`abs(A051718(2*n+1))*4^n`
-/

namespace A345365.P2920049981350745193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051718 (2 * n + 1)| * (4 ^ n : ℤ)

end

end A345365.P2920049981350745193

/-! ## A345365.P1520496879286277009

`lcm(A000079(n)², A000367(n+1))`
-/

namespace A345365.P1520496879286277009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n ^ 2) (A000367 (n + 1))

end

end A345365.P1520496879286277009

/-! ## A345365.P16486210657470891624

`abs(A000367(n+1))*record[A059268(n)²]`
-/

namespace A345365.P16486210657470891624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000367 (n + 1)| * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345365.P16486210657470891624

/-! ## A345365.P15861137974885585340

`abs(A000367(n+1)*A011782(n+1)²)`
-/

namespace A345365.P15861137974885585340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000367 (n + 1) * A011782 (n + 1) ^ 2|

end

end A345365.P15861137974885585340

/-! ## A345365.P1441864995058687923

`abs(A000367(n+1)*A011782(2*n+1))`
-/

namespace A345365.P1441864995058687923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000367 (n + 1) * A011782 (2 * n + 1)|

end

end A345365.P1441864995058687923

/-!
# A345366: a(n) = (p*q+1) mod (p+q) where p=prime(n) and q=prime(n+1).

The programs for A345366, the canonical program `A345366.P10256940836531311170` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345366 has offset 1).

The definition of A345366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345366.P10256940836531311170

`A023523(n+2)%A001043(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345366

/-- `A023523(n+2)%A001043(n+1)` -/
def P10256940836531311170.Spec : Prop :=
  ∀ n, P10256940836531311170.a n = A345366 (n + 1)

theorem P10256940836531311170.correct : P10256940836531311170.Spec := by
  intro n
  simp only [A345366, Nat.add_sub_cancel]

end A345366

/-! ## A345366.P6154496919403499449

`A083553(n+1)%Δ[A061802(n)]`
-/

namespace A345366.P6154496919403499449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083553 (n + 1)) (f1 (n + 1) - f1 n)

end

end A345366.P6154496919403499449

namespace A345366

/-- `A083553(n+1)%Δ[A061802(n)]` -/
def P6154496919403499449.Spec : Prop :=
  ∀ n, P6154496919403499449.a n = A345366 (n + 1)

end A345366

/-! ## A345366.P11153970766361686045

`A180617(n+1)%A001043(n+1)`
-/

namespace A345366.P11153970766361686045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180617 (n + 1)) (A001043 (n + 1))

end

end A345366.P11153970766361686045

namespace A345366

/-- `A180617(n+1)%A001043(n+1)` -/
def P11153970766361686045.Spec : Prop :=
  ∀ n, P11153970766361686045.a n = A345366 (n + 1)

end A345366

/-! ## A345366.P815390493126222718

`(A006094(n+1)+1)%A001043(n+1)`
-/

namespace A345366.P815390493126222718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006094 (n + 1) + 1) (A001043 (n + 1))

end

end A345366.P815390493126222718

namespace A345366

/-- `(A006094(n+1)+1)%A001043(n+1)` -/
def P815390493126222718.Spec : Prop :=
  ∀ n, P815390493126222718.a n = A345366 (n + 1)

end A345366

/-! ## A345366.P14291256098138550745

`(A037165(n+1)+1)%A001043(n+1)`
-/

namespace A345366.P14291256098138550745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037165 (n + 1) + 1) (A001043 (n + 1))

end

end A345366.P14291256098138550745

namespace A345366

/-- `(A037165(n+1)+1)%A001043(n+1)` -/
def P14291256098138550745.Spec : Prop :=
  ∀ n, P14291256098138550745.a n = A345366 (n + 1)

end A345366

/-! ## A345366.P1333086376233938279

`A063041(A065091(n+1))%A001043(n+1)`
-/

namespace A345366.P1333086376233938279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063041 (A065091 (n + 1)).toNat) (A001043 (n + 1))

end

end A345366.P1333086376233938279

namespace A345366

/-- `A063041(A065091(n+1))%A001043(n+1)` -/
def P1333086376233938279.Spec : Prop :=
  ∀ n, P1333086376233938279.a n = A345366 (n + 1)

end A345366

/-! ## A345366.P327399815667588953

`A000203(A006094(n+1))%Δ[A061802(n)]`
-/

namespace A345366.P327399815667588953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A006094 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A345366.P327399815667588953

namespace A345366

/-- `A000203(A006094(n+1))%Δ[A061802(n)]` -/
def P327399815667588953.Spec : Prop :=
  ∀ n, P327399815667588953.a n = A345366 (n + 1)

end A345366

/-! ## A345366.P1017125418630787900

`A000010(A006094(n+1))%A011974(n+2)`
-/

namespace A345366.P1017125418630787900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A006094 (n + 1)).toNat) (A011974 (n + 2))

end

end A345366.P1017125418630787900

namespace A345366

/-- `A000010(A006094(n+1))%A011974(n+2)` -/
def P1017125418630787900.Spec : Prop :=
  ∀ n, P1017125418630787900.a n = A345366 (n + 1)

end A345366

/-!
# A345367: a(n) = Sum_{k=0..n} binomial(4*k,k) / (3*k + 1).

The programs for A345367, the canonical program `A345367.P10545880049763385947` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345367 has offset 0).

The definition of A345367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345367.P10545880049763385947

`∑[A002293(n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A345367

/-- `∑[A002293(n)]` -/
def P10545880049763385947.Spec : Prop :=
  ∀ n, P10545880049763385947.a n = A345367 n

theorem P10545880049763385947.correct : P10545880049763385947.Spec := by
  intro n
  simp only [A345367]

end A345367

/-! ## A345367.P8039917800717484152

`∑[A369082(2*n)]`
-/

namespace A345367.P8039917800717484152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P8039917800717484152

namespace A345367

/-- `∑[A369082(2*n)]` -/
def P8039917800717484152.Spec : Prop :=
  ∀ n, P8039917800717484152.a n = A345367 n

end A345367

/-! ## A345367.P12193963039530487612

`∑[A124753(3*n)]`
-/

namespace A345367.P12193963039530487612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P12193963039530487612

namespace A345367

/-- `∑[A124753(3*n)]` -/
def P12193963039530487612.Spec : Prop :=
  ∀ n, P12193963039530487612.a n = A345367 n

end A345367

/-! ## A345367.P4112916540034152493

`∑[abs(A109962(∑[n]))]`
-/

namespace A345367.P4112916540034152493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109962 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P4112916540034152493

namespace A345367

/-- `∑[abs(A109962(∑[n]))]` -/
def P4112916540034152493.Spec : Prop :=
  ∀ n, P4112916540034152493.a n = A345367 n

end A345367

/-! ## A345367.P11228429554824061962

`∑[A069270(∑[n]+n)]`
-/

namespace A345367.P11228429554824061962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P11228429554824061962

namespace A345367

/-- `∑[A069270(∑[n]+n)]` -/
def P11228429554824061962.Spec : Prop :=
  ∀ n, P11228429554824061962.a n = A345367 n

end A345367

/-! ## A345367.P6949331569163868444

`A002293(round(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A345367.P6949331569163868444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002293 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + a (n - 1)

end

end A345367.P6949331569163868444

namespace A345367

/-- `A002293(round(sqrt(n²+1)))+a(n-1)` -/
def P6949331569163868444.Spec : Prop :=
  ∀ n, P6949331569163868444.a n = A345367 n

end A345367

/-! ## A345367.P1010694766119589257

`∑[A188108(A133263(n))]`
-/

namespace A345367.P1010694766119589257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P1010694766119589257

namespace A345367

/-- `∑[A188108(A133263(n))]` -/
def P1010694766119589257.Spec : Prop :=
  ∀ n, P1010694766119589257.a n = A345367 n

end A345367

/-! ## A345367.P2963047326653154127

`a(n-1)+∑[A334682(n)]+1-A334682(n)` with `a(0)=1`
-/

namespace A345367.P2963047326653154127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334682 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1 - A334682 n)

end

end A345367.P2963047326653154127

namespace A345367

/-- `a(n-1)+∑[A334682(n)]+1-A334682(n)` -/
def P2963047326653154127.Spec : Prop :=
  ∀ n, P2963047326653154127.a n = A345367 n

end A345367

/-! ## A345367.P7082353242663721018

`∑[A126596(n)/Δ[n²]]`
-/

namespace A345367.P7082353242663721018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126596 n : ℚ) / ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P7082353242663721018

namespace A345367

/-- `∑[A126596(n)/Δ[n²]]` -/
def P7082353242663721018.Spec : Prop :=
  ∀ n, P7082353242663721018.a n = (A345367 n : ℚ)

end A345367

/-! ## A345367.P3154561785613989104

`∑[A208983(2*n)/(2*n+1)]`
-/

namespace A345367.P3154561785613989104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208983 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P3154561785613989104

namespace A345367

/-- `∑[A208983(2*n)/(2*n+1)]` -/
def P3154561785613989104.Spec : Prop :=
  ∀ n, P3154561785613989104.a n = (A345367 n : ℚ)

end A345367

/-! ## A345367.P9059560968552202376

`∑[A005810(n)/A016777(n)]`
-/

namespace A345367.P9059560968552202376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n : ℚ) / (A016777 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P9059560968552202376

namespace A345367

/-- `∑[A005810(n)/A016777(n)]` -/
def P9059560968552202376.Spec : Prop :=
  ∀ n, P9059560968552202376.a n = (A345367 n : ℚ)

end A345367

/-! ## A345367.P12235625208848449674

`∑[A052203(n)/A016813(n)]`
-/

namespace A345367.P12235625208848449674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052203 n : ℚ) / (A016813 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P12235625208848449674

namespace A345367

/-- `∑[A052203(n)/A016813(n)]` -/
def P12235625208848449674.Spec : Prop :=
  ∀ n, P12235625208848449674.a n = (A345367 n : ℚ)

end A345367

/-! ## A345367.P14931266281191402627

`∑[gcd(A005810(n), A052203(n))]`
-/

namespace A345367.P14931266281191402627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005810 n) (A052203 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P14931266281191402627

namespace A345367

/-- `∑[gcd(A005810(n), A052203(n))]` -/
def P14931266281191402627.Spec : Prop :=
  ∀ n, (P14931266281191402627.a n : ℤ) = A345367 n

end A345367

/-! ## A345367.P17142135440773775991

`∑[A052203(n)/(A016777(n)+n)]`
-/

namespace A345367.P17142135440773775991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052203 n : ℚ) / (A016777 n + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P17142135440773775991

namespace A345367

/-- `∑[A052203(n)/(A016777(n)+n)]` -/
def P17142135440773775991.Spec : Prop :=
  ∀ n, P17142135440773775991.a n = (A345367 n : ℚ)

end A345367

/-! ## A345367.P17514215776760579443

`∑[A243663(A152947(n+1))]`
-/

namespace A345367.P17514215776760579443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243663 (A152947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345367.P17514215776760579443

namespace A345367

/-- `∑[A243663(A152947(n+1))]` -/
def P17514215776760579443.Spec : Prop :=
  ∀ n, P17514215776760579443.a n = A345367 n

end A345367

/-!
# A345368: a(n) = Sum_{k=0..n} binomial(5*k,k) / (4*k + 1).

The programs for A345368, there is no canonical definition to state claims against.
-/

/-! ## A345368.P12700621175395711977

`∑[A002294(n)]`
-/

namespace A345368.P12700621175395711977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P12700621175395711977

/-! ## A345368.P8368853591369729634

`∑[A143546(2*n)]`
-/

namespace A345368.P8368853591369729634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P8368853591369729634

/-! ## A345368.P10118264165906109499

`∑[A118968(4*n)]`
-/

namespace A345368.P10118264165906109499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118968 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P10118264165906109499

/-! ## A345368.P4543706098623920039

`∑[A005408(n)/A016861(n)*A118969(n)]`
-/

namespace A345368.P4543706098623920039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A016861 n : ℚ) * (A118969 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P4543706098623920039

/-! ## A345368.P14770518806413567434

`∑[A001449(n)/(4*n+1)]`
-/

namespace A345368.P14770518806413567434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (4 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P14770518806413567434

/-! ## A345368.P11375420916549358389

`∑[A079589(n)/A016861(n)]`
-/

namespace A345368.P11375420916549358389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079589 n : ℚ) / (A016861 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P11375420916549358389

/-! ## A345368.P17053077333681946539

`∑[gcd(A001449(n), A079589(n))]`
-/

namespace A345368.P17053077333681946539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001449 n) (A079589 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P17053077333681946539

/-! ## A345368.P11773212645799381348

`∑[ceil(A001449(n)/A016813(n))]`
-/

namespace A345368.P11773212645799381348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001449 n : ℚ) / (A016813 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P11773212645799381348

/-! ## A345368.P17435388159097629052

`∑[C(5*n, n)/(4*n+1)]`
-/

namespace A345368.P17435388159097629052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) n : ℚ) / (4 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P17435388159097629052

/-! ## A345368.P9642843467315923723

`∑[A070914(A052905(n+2))]`
-/

namespace A345368.P9642843467315923723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A052905 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345368.P9642843467315923723

/-!
# A345369: Lexicographically earliest sequence of distinct positive integers such that for any n > 0, the product of the first n terms can be computed without carry in base 10.

The programs for A345369, there is no canonical definition to state claims against.
-/

/-! ## A345369.P9996998168624853225

`record[A343132(2*n+1)+A010051(n+1)]`
-/

namespace A345369.P9996998168624853225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343132 (2 * n + 1) + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345369.P9996998168624853225

/-! ## A345369.P17800384486846524867

`lt[A072480(A057147(n)), A062028(n)]`
-/

namespace A345369.P17800384486846524867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345369.P17800384486846524867

/-! ## A345369.P17785566737032878847

`lt[A054842(n), A257588(A257948(n+1))]`
-/

namespace A345369.P17785566737032878847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 (A257948 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345369.P17785566737032878847

/-! ## A345369.P10107222928867158424

`eq[A046926(2*(n+1)), A360708(A007953(n))]`
-/

namespace A345369.P10107222928867158424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360708 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345369.P10107222928867158424

/-!
# A345371: Number of squarefree divisors of n whose square does not divide n.

The programs for A345371, the canonical program `A345371.P15943345332420559631` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345371 has offset 1).

The definition of A345371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, A323308, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345371.P15943345332420559631

`A034444(n+1)-A323308(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345371

/-- `A034444(n+1)-A323308(n+1)` -/
def P15943345332420559631.Spec : Prop :=
  ∀ n, P15943345332420559631.a n = A345371 (n + 1)

theorem P15943345332420559631.correct : P15943345332420559631.Spec := by
  intro n
  simp only [A345371, Nat.add_sub_cancel]

end A345371

/-! ## A345371.P17987957338325016127

`∏{p}[n+1, ceil(atan(#))]-∏{e}[n+1, ceil(atan(#))]`
-/

namespace A345371.P17987957338325016127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉ - ∏ p ∈ Nat.primeFactors (f2 n), ⌈Real.arctan (Nat.factorization (f2 n) p : ℝ)⌉

end

end A345371.P17987957338325016127

namespace A345371

/-- `∏{p}[n+1, ceil(atan(#))]-∏{e}[n+1, ceil(atan(#))]` -/
def P17987957338325016127.Spec : Prop :=
  ∀ n, P17987957338325016127.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P12712311335755440907

`2^A001221(n+1)-∏{e}[n+1, ceil(atan(#))]`
-/

namespace A345371.P12712311335755440907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (Nat.factorization (f1 n) p : ℝ)⌉ : ℤ) : ℚ)

end

end A345371.P12712311335755440907

namespace A345371

/-- `2^A001221(n+1)-∏{e}[n+1, ceil(atan(#))]` -/
def P12712311335755440907.Spec : Prop :=
  ∀ n, P12712311335755440907.a n = (A345371 (n + 1) : ℚ)

end A345371

/-! ## A345371.P9038273539062868529

`A000005(∏{p}[n+1, #])-∏{e}[n+1, ceil(atan(#))]`
-/

namespace A345371.P9038273539062868529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - ∏ p ∈ Nat.primeFactors (f2 n), ⌈Real.arctan (Nat.factorization (f2 n) p : ℝ)⌉

end

end A345371.P9038273539062868529

namespace A345371

/-- `A000005(∏{p}[n+1, #])-∏{e}[n+1, ceil(atan(#))]` -/
def P9038273539062868529.Spec : Prop :=
  ∀ n, P9038273539062868529.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P7608939045811336921

`A173787(A350331(n+1))`
-/

namespace A345371.P7608939045811336921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 (A350331 (n + 1)).toNat

end

end A345371.P7608939045811336921

namespace A345371

/-- `A173787(A350331(n+1))` -/
def P7608939045811336921.Spec : Prop :=
  ∀ n, P7608939045811336921.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P16782286208357114627

`(A056671(n+1)-1)*A323308(n+1)`
-/

namespace A345371.P16782286208357114627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056671 (n + 1) - 1) * A323308 (n + 1)

end

end A345371.P16782286208357114627

namespace A345371

/-- `(A056671(n+1)-1)*A323308(n+1)` -/
def P16782286208357114627.Spec : Prop :=
  ∀ n, P16782286208357114627.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P15586504148960564726

`A034444(n+1)-A034444(A000188(n+1))`
-/

namespace A345371.P15586504148960564726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A034444 (A000188 (n + 1)).toNat

end

end A345371.P15586504148960564726

namespace A345371

/-- `A034444(n+1)-A034444(A000188(n+1))` -/
def P15586504148960564726.Spec : Prop :=
  ∀ n, P15586504148960564726.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P3790764034220350179

`A034444(n+1)-A034444(A000189(n+1))`
-/

namespace A345371.P3790764034220350179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A034444 (A000189 (n + 1)).toNat

end

end A345371.P3790764034220350179

namespace A345371

/-- `A034444(n+1)-A034444(A000189(n+1))` -/
def P3790764034220350179.Spec : Prop :=
  ∀ n, P3790764034220350179.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P15653143617650130946

`A034444(n+1)-A034444(A000190(n+1))`
-/

namespace A345371.P15653143617650130946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A034444 (A000190 (n + 1)).toNat

end

end A345371.P15653143617650130946

namespace A345371

/-- `A034444(n+1)-A034444(A000190(n+1))` -/
def P15653143617650130946.Spec : Prop :=
  ∀ n, P15653143617650130946.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P10798472500100216973

`A034444(n+1)-A034444(A003557(n+1))`
-/

namespace A345371.P10798472500100216973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A034444 (A003557 (n + 1)).toNat

end

end A345371.P10798472500100216973

namespace A345371

/-- `A034444(n+1)-A034444(A003557(n+1))` -/
def P10798472500100216973.Spec : Prop :=
  ∀ n, P10798472500100216973.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P5203195358649254283

`A034444(n+1)-A034444(A008833(n+1))`
-/

namespace A345371.P5203195358649254283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A034444 (A008833 (n + 1)).toNat

end

end A345371.P5203195358649254283

namespace A345371

/-- `A034444(n+1)-A034444(A008833(n+1))` -/
def P5203195358649254283.Spec : Prop :=
  ∀ n, P5203195358649254283.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P16152693093914855092

`A034444(n+1)-A000005(A071773(n+1))`
-/

namespace A345371.P16152693093914855092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A000005 (A071773 (n + 1)).toNat

end

end A345371.P16152693093914855092

namespace A345371

/-- `A034444(n+1)-A000005(A071773(n+1))` -/
def P16152693093914855092.Spec : Prop :=
  ∀ n, P16152693093914855092.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P1080516886458710067

`A034444(n+1)-A034444(A057521(n+1))`
-/

namespace A345371.P1080516886458710067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A034444 (A057521 (n + 1)).toNat

end

end A345371.P1080516886458710067

namespace A345371

/-- `A034444(n+1)-A034444(A057521(n+1))` -/
def P1080516886458710067.Spec : Prop :=
  ∀ n, P1080516886458710067.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P9183068367916098243

`A034444(n+1)-A034444(A292589(n+1))`
-/

namespace A345371.P9183068367916098243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A034444 (A292589 (n + 1)).toNat

end

end A345371.P9183068367916098243

namespace A345371

/-- `A034444(n+1)-A034444(A292589(n+1))` -/
def P9183068367916098243.Spec : Prop :=
  ∀ n, P9183068367916098243.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P4788152271520393675

`A034444(n+1)-A034444(n+1)/A056671(n+1)`
-/

namespace A345371.P4788152271520393675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) - (A034444 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A345371.P4788152271520393675

namespace A345371

/-- `A034444(n+1)-A034444(n+1)/A056671(n+1)` -/
def P4788152271520393675.Spec : Prop :=
  ∀ n, P4788152271520393675.a n = (A345371 (n + 1) : ℚ)

end A345371

/-! ## A345371.P10724669892291163305

`A248663(A284476(n+1))`
-/

namespace A345371.P10724669892291163305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A284476 (n + 1)).toNat

end

end A345371.P10724669892291163305

namespace A345371

/-- `A248663(A284476(n+1))` -/
def P10724669892291163305.Spec : Prop :=
  ∀ n, P10724669892291163305.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P17758343302082016112

`A034444(n+1)-A034444(A322020(n+1))`
-/

namespace A345371.P17758343302082016112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A034444 (A322020 (n + 1)).toNat

end

end A345371.P17758343302082016112

namespace A345371

/-- `A034444(n+1)-A034444(A322020(n+1))` -/
def P17758343302082016112.Spec : Prop :=
  ∀ n, P17758343302082016112.a n = A345371 (n + 1)

end A345371

/-! ## A345371.P5629006342645753858

`A323308((n+1)²)-A323308(n+1)`
-/

namespace A345371.P5629006342645753858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 ((n + 1) ^ 2) - A323308 (n + 1)

end

end A345371.P5629006342645753858

namespace A345371

/-- `A323308((n+1)²)-A323308(n+1)` -/
def P5629006342645753858.Spec : Prop :=
  ∀ n, P5629006342645753858.a n = A345371 (n + 1)

end A345371

/-!
# A345372: a(n) = Sum_{i=1..n} nac(i,n) where nac(i,n) is the n-th i-bonacci number. The n-th i-bonacci number here is equal to 1 for the first i terms, with subsequent terms equaling the sum of the previous n terms.

The programs for A345372, there is no canonical definition to state claims against.
-/

/-! ## A345372.P16405239422583123788

`A131577(n)+A026819(A002203(n))`
-/

namespace A345372.P16405239422583123788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A026819 (A002203 n).toNat

end

end A345372.P16405239422583123788

/-! ## A345372.P3766756175494619120

`A100196(A069403(n)+A026780(n))`
-/

namespace A345372.P3766756175494619120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A069403 n + A026780 n).toNat

end

end A345372.P3766756175494619120

/-! ## A345372.P15424881490876125924

`A100196(A249488(n)+A069403(n))`
-/

namespace A345372.P15424881490876125924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A249488 n + A069403 n).toNat

end

end A345372.P15424881490876125924

/-! ## A345372.P8720314169252660255

`A100196(or(A026780(n), A069403(n)))`
-/

namespace A345372.P8720314169252660255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (A026780 n) (A069403 n)).toNat

end

end A345372.P8720314169252660255

/-! ## A345372.P13610575612706619246

`A100196(or(A069403(n), A249488(n)))`
-/

namespace A345372.P13610575612706619246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.lor (A069403 n) (A249488 n)).toNat

end

end A345372.P13610575612706619246

/-!
# A345373: Sum of the divisor complements of the unitary prime divisors of n.

The programs for A345373, the canonical program `A345373.P12587254191846375400` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345373 has offset 1).

The definition of A345373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345373.P12587254191846375400

`∑{p}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], (n+1)/#]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345373

/-- `∑{p}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], (n+1)/#]` -/
def P12587254191846375400.Spec : Prop :=
  ∀ n, P12587254191846375400.a n = (A345373 (n + 1) : ℚ)

end A345373

/-! ## A345373.P8266008770425418583

`∑{p}[A055231(n+1), ceil(n/#)]`
-/

namespace A345373.P8266008770425418583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌈(n : ℚ) / (p : ℚ)⌉

end

end A345373.P8266008770425418583

namespace A345373

/-- `∑{p}[A055231(n+1), ceil(n/#)]` -/
def P8266008770425418583.Spec : Prop :=
  ∀ n, P8266008770425418583.a n = A345373 (n + 1)

end A345373

/-! ## A345373.P9301571750054512860

`∑{p}[A007913(A007948(n+1)), (n+1)/#]`
-/

namespace A345373.P9301571750054512860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007948 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (n + 1 : ℚ) / (p : ℚ)

end

end A345373.P9301571750054512860

namespace A345373

/-- `∑{p}[A007913(A007948(n+1)), (n+1)/#]` -/
def P9301571750054512860.Spec : Prop :=
  ∀ n, P9301571750054512860.a n = (A345373 (n + 1) : ℚ)

end A345373

/-! ## A345373.P27975136544143557

`A003415(A055231(n+1))*A057521(n+1)`
-/

namespace A345373.P27975136544143557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055231 (n + 1)).toNat * A057521 (n + 1)

end

end A345373.P27975136544143557

namespace A345373

/-- `A003415(A055231(n+1))*A057521(n+1)` -/
def P27975136544143557.Spec : Prop :=
  ∀ n, P27975136544143557.a n = A345373 (n + 1)

end A345373

/-! ## A345373.P4462488515217356577

`A003415(A055231(n+1))*A064549(A003557(n+1))`
-/

namespace A345373.P4462488515217356577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055231 (n + 1)).toNat * A064549 (A003557 (n + 1)).toNat

end

end A345373.P4462488515217356577

namespace A345373

/-- `A003415(A055231(n+1))*A064549(A003557(n+1))` -/
def P4462488515217356577.Spec : Prop :=
  ∀ n, P4462488515217356577.a n = A345373 (n + 1)

end A345373

/-! ## A345373.P5919532020652407258

`A345312(n+1)%A053143(n+1)`
-/

namespace A345373.P5919532020652407258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345312 (n + 1)) (A053143 (n + 1))

end

end A345373.P5919532020652407258

namespace A345373

/-- `A345312(n+1)%A053143(n+1)` -/
def P5919532020652407258.Spec : Prop :=
  ∀ n, P5919532020652407258.a n = A345373 (n + 1)

end A345373

/-! ## A345373.P9000429031165670789

`∑{p}[n+1, (((n+1)/#)^#)%(n+1)]`
-/

namespace A345373.P9000429031165670789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (p : ℚ)) ^ p)) (n + 1 : ℤ)

end

end A345373.P9000429031165670789

namespace A345373

/-- `∑{p}[n+1, (((n+1)/#)^#)%(n+1)]` -/
def P9000429031165670789.Spec : Prop :=
  ∀ n, P9000429031165670789.a n = A345373 (n + 1)

end A345373

/-! ## A345373.P11134706210600034417

`A345305(n+1)%A124260(n+1)`
-/

namespace A345373.P11134706210600034417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345305 (n + 1)) (A124260 (n + 1))

end

end A345373.P11134706210600034417

namespace A345373

/-- `A345305(n+1)%A124260(n+1)` -/
def P11134706210600034417.Spec : Prop :=
  ∀ n, P11134706210600034417.a n = A345373 (n + 1)

end A345373

/-!
# A345374: Number of unitary prime divisors of n whose prime index is odd.

The programs for A345374, the canonical program `A345374.P2600913004741557822` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345374 has offset 1).

The definition of A345374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345374.P6212519871229954208

`A056169(n+1)-A345375(n+1)`
-/

namespace A345374.P6212519871229954208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A345375 (n + 1)

end

end A345374.P6212519871229954208

namespace A345374

/-- `A056169(n+1)-A345375(n+1)` -/
def P6212519871229954208.Spec : Prop :=
  ∀ n, P6212519871229954208.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P192235648281955184

`∑{e}[A247503(n+1), floor(1/#)]`
-/

namespace A345374.P192235648281955184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊1 / (Nat.factorization (f1 n).natAbs p : ℚ)⌋

end

end A345374.P192235648281955184

namespace A345374

/-- `∑{e}[A247503(n+1), floor(1/#)]` -/
def P192235648281955184.Spec : Prop :=
  ∀ n, P192235648281955184.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P2600913004741557822

`A257991(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A345374

/-- `A257991(∏{p}[n+1, lcm(n+1, #²)/(n+1)])` -/
def P2600913004741557822.Spec : Prop :=
  ∀ n, P2600913004741557822.a n = A345374 (n + 1)

theorem P2600913004741557822.correct : P2600913004741557822.Spec := by
  intro n
  simp only [A345374, Nat.add_sub_cancel]

end A345374

/-! ## A345374.P4534807154321433511

`A257991(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A345374.P4534807154321433511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A345374.P4534807154321433511

namespace A345374

/-- `A257991(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P4534807154321433511.Spec : Prop :=
  ∀ n, P4534807154321433511.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P3990677760440727663

`A324966(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A345374.P3990677760440727663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A345374.P3990677760440727663

namespace A345374

/-- `A324966(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P3990677760440727663.Spec : Prop :=
  ∀ n, P3990677760440727663.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P1885582095977137957

`A056169(A247503(n+1))`
-/

namespace A345374.P1885582095977137957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A247503 (n + 1)).toNat

end

end A345374.P1885582095977137957

namespace A345374

/-- `A056169(A247503(n+1))` -/
def P1885582095977137957.Spec : Prop :=
  ∀ n, P1885582095977137957.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P3619813577835897590

`A257991(A055231(n+1))`
-/

namespace A345374.P3619813577835897590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A055231 (n + 1)).toNat

end

end A345374.P3619813577835897590

namespace A345374

/-- `A257991(A055231(n+1))` -/
def P3619813577835897590.Spec : Prop :=
  ∀ n, P3619813577835897590.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P8323013392085528258

`A056169(A319521(n+1))`
-/

namespace A345374.P8323013392085528258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A319521 (n + 1)).toNat

end

end A345374.P8323013392085528258

namespace A345374

/-- `A056169(A319521(n+1))` -/
def P8323013392085528258.Spec : Prop :=
  ∀ n, P8323013392085528258.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P17858282230887357728

`A056169(n+1)-A056169(A248101(n+1))`
-/

namespace A345374.P17858282230887357728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A056169 (A248101 (n + 1)).toNat

end

end A345374.P17858282230887357728

namespace A345374

/-- `A056169(n+1)-A056169(A248101(n+1))` -/
def P17858282230887357728.Spec : Prop :=
  ∀ n, P17858282230887357728.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P9644813268612769740

`A056169(n+1)-A056169(A319522(n+1))`
-/

namespace A345374.P9644813268612769740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A056169 (A319522 (n + 1)).toNat

end

end A345374.P9644813268612769740

namespace A345374

/-- `A056169(n+1)-A056169(A319522(n+1))` -/
def P9644813268612769740.Spec : Prop :=
  ∀ n, P9644813268612769740.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P2722558683941156313

`A324966(3*A055231(n+1))`
-/

namespace A345374.P2722558683941156313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (3 * A055231 (n + 1)).toNat

end

end A345374.P2722558683941156313

namespace A345374

/-- `A324966(3*A055231(n+1))` -/
def P2722558683941156313.Spec : Prop :=
  ∀ n, P2722558683941156313.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P16908269896263327453

`A345375(A061898(n+1))`
-/

namespace A345374.P16908269896263327453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345375 (A061898 (n + 1)).toNat

end

end A345374.P16908269896263327453

namespace A345374

/-- `A345375(A061898(n+1))` -/
def P16908269896263327453.Spec : Prop :=
  ∀ n, P16908269896263327453.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P3524800262803326030

`A345375(A003961(n+1))`
-/

namespace A345374.P3524800262803326030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345375 (A003961 (n + 1)).toNat

end

end A345374.P3524800262803326030

namespace A345374

/-- `A345375(A003961(n+1))` -/
def P3524800262803326030.Spec : Prop :=
  ∀ n, P3524800262803326030.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P14012871395623323739

`A345375(A045965(n+1))`
-/

namespace A345374.P14012871395623323739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345375 (A045965 (n + 1)).toNat

end

end A345374.P14012871395623323739

namespace A345374

/-- `A345375(A045965(n+1))` -/
def P14012871395623323739.Spec : Prop :=
  ∀ n, P14012871395623323739.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P17245087750725666352

`A345375(A118306(n+1))`
-/

namespace A345374.P17245087750725666352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345375 (A118306 (n + 1)).toNat

end

end A345374.P17245087750725666352

namespace A345374

/-- `A345375(A118306(n+1))` -/
def P17245087750725666352.Spec : Prop :=
  ∀ n, P17245087750725666352.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P14161101838983791314

`A101436(A247503(n+1)²)`
-/

namespace A345374.P14161101838983791314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101436 (A247503 (n + 1) ^ 2).toNat

end

end A345374.P14161101838983791314

namespace A345374

/-- `A101436(A247503(n+1)²)` -/
def P14161101838983791314.Spec : Prop :=
  ∀ n, P14161101838983791314.a n = A345374 (n + 1)

end A345374

/-! ## A345374.P2658219436361943865

`A324966(A055231(n+1)²)`
-/

namespace A345374.P2658219436361943865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A055231 (n + 1) ^ 2).toNat

end

end A345374.P2658219436361943865

namespace A345374

/-- `A324966(A055231(n+1)²)` -/
def P2658219436361943865.Spec : Prop :=
  ∀ n, P2658219436361943865.a n = A345374 (n + 1)

end A345374

/-!
# A345375: Number of unitary prime divisors of n whose prime index is even.

The programs for A345375, the canonical program `A345375.P6058782107004537506` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345375 has offset 1).

The definition of A345375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056169, A345374, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345375.P6058782107004537506

`A056169(n+1)-A345374(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A345375

/-- `A056169(n+1)-A345374(n+1)` -/
def P6058782107004537506.Spec : Prop :=
  ∀ n, P6058782107004537506.a n = A345375 (n + 1)

theorem P6058782107004537506.correct : P6058782107004537506.Spec := by
  intro n
  simp only [A345375, Nat.add_sub_cancel]

end A345375

/-! ## A345375.P7906153264553847972

`∑{e}[A248101(n+1), floor(1/#)]`
-/

namespace A345375.P7906153264553847972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊1 / (Nat.factorization (f1 n).natAbs p : ℚ)⌋

end

end A345375.P7906153264553847972

namespace A345375

/-- `∑{e}[A248101(n+1), floor(1/#)]` -/
def P7906153264553847972.Spec : Prop :=
  ∀ n, P7906153264553847972.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P2258373884461896798

`A257992(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A345375.P2258373884461896798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat

end

end A345375.P2258373884461896798

namespace A345375

/-- `A257992(∏{p}[n+1, lcm(n+1, #²)/(n+1)])` -/
def P2258373884461896798.Spec : Prop :=
  ∀ n, P2258373884461896798.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P8991175872145407496

`A257992(∏{p}[n+1, #]/∏{p}[ceil(n/∏{p}[n+1, #]), #])`
-/

namespace A345375.P8991175872145407496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℚ))).toNat

end

end A345375.P8991175872145407496

namespace A345375

/-- `A257992(∏{p}[n+1, #]/∏{p}[ceil(n/∏{p}[n+1, #]), #])` -/
def P8991175872145407496.Spec : Prop :=
  ∀ n, P8991175872145407496.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P7561372138021294346

`A257992(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A345375.P7561372138021294346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A345375.P7561372138021294346

namespace A345375

/-- `A257992(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P7561372138021294346.Spec : Prop :=
  ∀ n, P7561372138021294346.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P13519733361466355407

`A056169(A248101(n+1))`
-/

namespace A345375.P13519733361466355407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A248101 (n + 1)).toNat

end

end A345375.P13519733361466355407

namespace A345375

/-- `A056169(A248101(n+1))` -/
def P13519733361466355407.Spec : Prop :=
  ∀ n, P13519733361466355407.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P9781455452359279629

`A257992(A055231(n+1))`
-/

namespace A345375.P9781455452359279629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A055231 (n + 1)).toNat

end

end A345375.P9781455452359279629

namespace A345375

/-- `A257992(A055231(n+1))` -/
def P9781455452359279629.Spec : Prop :=
  ∀ n, P9781455452359279629.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P17294983834893473811

`A056169(A319522(n+1))`
-/

namespace A345375.P17294983834893473811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A319522 (n + 1)).toNat

end

end A345375.P17294983834893473811

namespace A345375

/-- `A056169(A319522(n+1))` -/
def P17294983834893473811.Spec : Prop :=
  ∀ n, P17294983834893473811.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P433507751360106437

`A345374(A064989(n+1))`
-/

namespace A345375.P433507751360106437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345374 (A064989 (n + 1)).toNat

end

end A345375.P433507751360106437

namespace A345375

/-- `A345374(A064989(n+1))` -/
def P433507751360106437.Spec : Prop :=
  ∀ n, P433507751360106437.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P10078630561039464453

`A056169(n+1)-A056169(A247503(n+1))`
-/

namespace A345375.P10078630561039464453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A056169 (A247503 (n + 1)).toNat

end

end A345375.P10078630561039464453

namespace A345375

/-- `A056169(n+1)-A056169(A247503(n+1))` -/
def P10078630561039464453.Spec : Prop :=
  ∀ n, P10078630561039464453.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P7965414457676216877

`A056169(n+1)-A056169(A319521(n+1))`
-/

namespace A345375.P7965414457676216877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A056169 (A319521 (n + 1)).toNat

end

end A345375.P7965414457676216877

namespace A345375

/-- `A056169(n+1)-A056169(A319521(n+1))` -/
def P7965414457676216877.Spec : Prop :=
  ∀ n, P7965414457676216877.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P4475003948077433224

`A345374(A061898(n+1))`
-/

namespace A345375.P4475003948077433224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345374 (A061898 (n + 1)).toNat

end

end A345375.P4475003948077433224

namespace A345375

/-- `A345374(A061898(n+1))` -/
def P4475003948077433224.Spec : Prop :=
  ∀ n, P4475003948077433224.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P15468813334513072538

`A345374(A003961(n+1))`
-/

namespace A345375.P15468813334513072538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345374 (A003961 (n + 1)).toNat

end

end A345375.P15468813334513072538

namespace A345375

/-- `A345374(A003961(n+1))` -/
def P15468813334513072538.Spec : Prop :=
  ∀ n, P15468813334513072538.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P5531900794399073835

`A345374(A118306(n+1))`
-/

namespace A345375.P5531900794399073835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345374 (A118306 (n + 1)).toNat

end

end A345375.P5531900794399073835

namespace A345375

/-- `A345374(A118306(n+1))` -/
def P5531900794399073835.Spec : Prop :=
  ∀ n, P5531900794399073835.a n = A345375 (n + 1)

end A345375

/-! ## A345375.P12523968698108400203

`A345374(A249734(n+1))`
-/

namespace A345375.P12523968698108400203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345374 (A249734 (n + 1)).toNat

end

end A345375.P12523968698108400203

namespace A345375

/-- `A345374(A249734(n+1))` -/
def P12523968698108400203.Spec : Prop :=
  ∀ n, P12523968698108400203.a n = A345375 (n + 1)

end A345375

/-!
# A345376: Number of Companion Pell numbers m <= n.

The programs for A345376, the canonical program `A345376.P12458556879961159611` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345376 has offset 0).

The definition of A345376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345376.P12458556879961159611

`comp[A002203(n)+n]-n`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345376

/-- `comp[A002203(n)+n]-n` -/
def P12458556879961159611.Spec : Prop :=
  ∀ n, P12458556879961159611.a n = A345376 n

theorem P12458556879961159611.correct : P12458556879961159611.Spec := by
  intro n
  simp only [A345376]

end A345376

/-! ## A345376.P769090686123581303

`∑[char[A099425(n)]]-A063524(n)`
-/

namespace A345376.P769090686123581303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A063524 n

end

end A345376.P769090686123581303

namespace A345376

/-- `∑[char[A099425(n)]]-A063524(n)` -/
def P769090686123581303.Spec : Prop :=
  ∀ n, P769090686123581303.a n = A345376 n

end A345376

/-! ## A345376.P737981098810670563

`∑[char[A099425(n)]]%A099392(n+1)`
-/

namespace A345376.P737981098810670563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A099392 (n + 1))

end

end A345376.P737981098810670563

namespace A345376

/-- `∑[char[A099425(n)]]%A099392(n+1)` -/
def P737981098810670563.Spec : Prop :=
  ∀ n, P737981098810670563.a n = A345376 n

end A345376

/-! ## A345376.P9186563167860523473

`∑[char[A099425(n)]]%A266505(n)`
-/

namespace A345376.P9186563167860523473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A266505 n)

end

end A345376.P9186563167860523473

namespace A345376

/-- `∑[char[A099425(n)]]%A266505(n)` -/
def P9186563167860523473.Spec : Prop :=
  ∀ n, P9186563167860523473.a n = A345376 n

end A345376

/-! ## A345376.P3456505839624300082

`A038605(A043165(n+1))-3`
-/

namespace A345376.P3456505839624300082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A043165 (n + 1)).toNat - 3

end

end A345376.P3456505839624300082

namespace A345376

/-- `A038605(A043165(n+1))-3` -/
def P3456505839624300082.Spec : Prop :=
  ∀ n, P3456505839624300082.a n = A345376 n

end A345376

/-! ## A345376.P14380359201504636967

`A079416(A043233(n+1))-4`
-/

namespace A345376.P14380359201504636967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079416 (A043233 (n + 1)).toNat - 4

end

end A345376.P14380359201504636967

namespace A345376

/-- `A079416(A043233(n+1))-4` -/
def P14380359201504636967.Spec : Prop :=
  ∀ n, P14380359201504636967.a n = A345376 n

end A345376

/-! ## A345376.P16290798521810618037

`A084558(A230980(∑[A320999(n+6)]))`
-/

namespace A345376.P16290798521810618037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320999 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A230980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A345376.P16290798521810618037

namespace A345376

/-- `A084558(A230980(∑[A320999(n+6)]))` -/
def P16290798521810618037.Spec : Prop :=
  ∀ n, P16290798521810618037.a n = A345376 n

end A345376

/-!
# A345377: Number of terms m <= n, where m is a term in A006190.

The programs for A345377, the canonical program `A345377.P13975908547226955602` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345377 has offset 0).

The definition of A345377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345377.P18420725083017725740

`∑[char[ogf(x/(1-3x-x^2))]]`
-/

namespace A345377.P18420725083017725740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -1] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345377.P18420725083017725740

namespace A345377

/-- `∑[char[ogf(x/(1-3x-x^2))]]` -/
def P18420725083017725740.Spec : Prop :=
  ∀ n, (P18420725083017725740.a n : ℤ) = A345377 n

end A345377

/-! ## A345377.P13975908547226955602

`∑[char[a(n-2)+3*a(n-1)]]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345377

/-- `∑[char[a(n-2)+3*a(n-1)]]` -/
def P13975908547226955602.Spec : Prop :=
  ∀ n, (P13975908547226955602.a n : ℤ) = A345377 n

theorem P13975908547226955602.correct : P13975908547226955602.Spec := by
  intro n
  simp only [A345377]

end A345377

/-! ## A345377.P2192306072611099218

`∑[char[A006190(n)]]`
-/

namespace A345377.P2192306072611099218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345377.P2192306072611099218

namespace A345377

/-- `∑[char[A006190(n)]]` -/
def P2192306072611099218.Spec : Prop :=
  ∀ n, (P2192306072611099218.a n : ℤ) = A345377 n

end A345377

/-! ## A345377.P16733755045563245046

`∑[char[A305889(2*n)]]`
-/

namespace A345377.P16733755045563245046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345377.P16733755045563245046

namespace A345377

/-- `∑[char[A305889(2*n)]]` -/
def P16733755045563245046.Spec : Prop :=
  ∀ n, (P16733755045563245046.a n : ℤ) = A345377 n

end A345377

/-! ## A345377.P8120854557430940502

`∑[char[A249579(4*n)]]`
-/

namespace A345377.P8120854557430940502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (4 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345377.P8120854557430940502

namespace A345377

/-- `∑[char[A249579(4*n)]]` -/
def P8120854557430940502.Spec : Prop :=
  ∀ n, (P8120854557430940502.a n : ℤ) = A345377 n

end A345377

/-! ## A345377.P4825977323121291359

`∑[char[floor(A052906(n)/3)]]`
-/

namespace A345377.P4825977323121291359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052906 n : ℚ) / 3⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345377.P4825977323121291359

namespace A345377

/-- `∑[char[floor(A052906(n)/3)]]` -/
def P4825977323121291359.Spec : Prop :=
  ∀ n, (P4825977323121291359.a n : ℤ) = A345377 n

end A345377

/-! ## A345377.P1922935313343411391

`a(A184482(n)-n)+1` with `a(0)=1`
-/

namespace A345377.P1922935313343411391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A184482 n - (n : ℤ)).toNat + 1

end

end A345377.P1922935313343411391

namespace A345377

/-- `a(A184482(n)-n)+1` -/
def P1922935313343411391.Spec : Prop :=
  ∀ n, (P1922935313343411391.a n : ℤ) = A345377 n

end A345377

/-! ## A345377.P2016759330378812724

`A000005(∏[char[A006190(n+1)]+1])`
-/

namespace A345377.P2016759330378812724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A345377.P2016759330378812724

namespace A345377

/-- `A000005(∏[char[A006190(n+1)]+1])` -/
def P2016759330378812724.Spec : Prop :=
  ∀ n, P2016759330378812724.a n = A345377 n

end A345377

/-! ## A345377.P7661599461338676488

`A111972(A002441(n+2))`
-/

namespace A345377.P7661599461338676488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (A002441 (n + 2)).toNat

end

end A345377.P7661599461338676488

namespace A345377

/-- `A111972(A002441(n+2))` -/
def P7661599461338676488.Spec : Prop :=
  ∀ n, P7661599461338676488.a n = A345377 n

end A345377

/-! ## A345377.P11287710813215221882

`A004218(A257644(n))+1`
-/

namespace A345377.P11287710813215221882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A257644 n).toNat + 1

end

end A345377.P11287710813215221882

namespace A345377

/-- `A004218(A257644(n))+1` -/
def P11287710813215221882.Spec : Prop :=
  ∀ n, P11287710813215221882.a n = A345377 n

end A345377

/-! ## A345377.P2122436702506939297

`dr(A302563((n+1)²))`
-/

namespace A345377.P2122436702506939297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A302563 ((n + 1) ^ 2))

end

end A345377.P2122436702506939297

namespace A345377

/-- `dr(A302563((n+1)²))` -/
def P2122436702506939297.Spec : Prop :=
  ∀ n, (P2122436702506939297.a n : ℤ) = A345377 n

end A345377

/-! ## A345377.P3445123597573644309

`A023416(A298847(A031444(A031448(n+2))))`
-/

namespace A345377.P3445123597573644309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A298847 (A031444 (A031448 (n + 2)).toNat).toNat).toNat

end

end A345377.P3445123597573644309

namespace A345377

/-- `A023416(A298847(A031444(A031448(n+2))))` -/
def P3445123597573644309.Spec : Prop :=
  ∀ n, P3445123597573644309.a n = A345377 n

end A345377

/-!
# A345378: Number of terms m <= n, where m is a term in A006497.

The programs for A345378, the canonical program `A345378.P2704367419167402083` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345378 has offset 0).

The definition of A345378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345378.P15013034508983152100

`∑[char[ogf((-2+3x)/(-1+3x+x^2))]]`
-/

namespace A345378.P15013034508983152100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -3, -1] n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345378.P15013034508983152100

namespace A345378

/-- `∑[char[ogf((-2+3x)/(-1+3x+x^2))]]` -/
def P15013034508983152100.Spec : Prop :=
  ∀ n, (P15013034508983152100.a n : ℤ) = A345378 n

end A345378

/-! ## A345378.P2704367419167402083

`∑[char[a(n-2)+3*a(n-1)]]` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345378

/-- `∑[char[a(n-2)+3*a(n-1)]]` -/
def P2704367419167402083.Spec : Prop :=
  ∀ n, (P2704367419167402083.a n : ℤ) = A345378 n

theorem P2704367419167402083.correct : P2704367419167402083.Spec := by
  intro n
  simp only [A345378]

end A345378

/-! ## A345378.P16000153099767072685

`∑[char[A006497(n)]]`
-/

namespace A345378.P16000153099767072685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345378.P16000153099767072685

namespace A345378

/-- `∑[char[A006497(n)]]` -/
def P16000153099767072685.Spec : Prop :=
  ∀ n, (P16000153099767072685.a n : ℤ) = A345378 n

end A345378

/-! ## A345378.P12498030024617952601

`∑[char[A100230(n)+1]]`
-/

namespace A345378.P12498030024617952601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100230 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345378.P12498030024617952601

namespace A345378

/-- `∑[char[A100230(n)+1]]` -/
def P12498030024617952601.Spec : Prop :=
  ∀ n, (P12498030024617952601.a n : ℤ) = A345378 n

end A345378

/-! ## A345378.P2813090280464560237

`∑[char[A052924(n)+A052924(n)-A006190(n)]]`
-/

namespace A345378.P2813090280464560237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052924 n + (A052924 n - A006190 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345378.P2813090280464560237

namespace A345378

/-- `∑[char[A052924(n)+A052924(n)-A006190(n)]]` -/
def P2813090280464560237.Spec : Prop :=
  ∀ n, (P2813090280464560237.a n : ℤ) = A345378 n

end A345378

/-! ## A345378.P3043363609334370734

`∑[char[A309852(A167614(n+2))]]`
-/

namespace A345378.P3043363609334370734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309852 (A167614 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345378.P3043363609334370734

namespace A345378

/-- `∑[char[A309852(A167614(n+2))]]` -/
def P3043363609334370734.Spec : Prop :=
  ∀ n, (P3043363609334370734.a n : ℤ) = A345378 n

end A345378

/-! ## A345378.P10568399691442767840

`A001221(A070939(A153218(n+1))!)`
-/

namespace A345378.P10568399691442767840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A070939 (A153218 (n + 1)).toNat).toNat)

end

end A345378.P10568399691442767840

namespace A345378

/-- `A001221(A070939(A153218(n+1))!)` -/
def P10568399691442767840.Spec : Prop :=
  ∀ n, P10568399691442767840.a n = A345378 n

end A345378

/-! ## A345378.P7565591895917708498

`A004218(or(A008619(n), A170896(n)))`
-/

namespace A345378.P7565591895917708498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (Int.lor (A008619 n) (A170896 n)).toNat

end

end A345378.P7565591895917708498

namespace A345378

/-- `A004218(or(A008619(n), A170896(n)))` -/
def P7565591895917708498.Spec : Prop :=
  ∀ n, P7565591895917708498.a n = A345378 n

end A345378

/-! ## A345378.P452374223659832001

`A004218(or(A032742(n+1), A170896(n)))`
-/

namespace A345378.P452374223659832001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (Int.lor (A032742 (n + 1)) (A170896 n)).toNat

end

end A345378.P452374223659832001

namespace A345378

/-- `A004218(or(A032742(n+1), A170896(n)))` -/
def P452374223659832001.Spec : Prop :=
  ∀ n, P452374223659832001.a n = A345378 n

end A345378

/-! ## A345378.P13846768431723267234

`A390256(A194165(n+1))`
-/

namespace A345378.P13846768431723267234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A194165 (n + 1)).toNat

end

end A345378.P13846768431723267234

namespace A345378

/-- `A390256(A194165(n+1))` -/
def P13846768431723267234.Spec : Prop :=
  ∀ n, P13846768431723267234.a n = A345378 n

end A345378

/-!
# A345379: Number of terms m <= n, where m is a term in the bisection of Lucas numbers (A005248).

The programs for A345379, the canonical program `A345379.P17103869282935569277` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345379 has offset 0).

The definition of A345379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345379.P17103869282935569277

`∑[char[floor((ϕ^n)²)+1]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345379

/-- `∑[char[floor((ϕ^n)²)+1]]` -/
def P17103869282935569277.Spec : Prop :=
  ∀ n, (P17103869282935569277.a n : ℤ) = A345379 n

theorem P17103869282935569277.correct : P17103869282935569277.Spec := by
  intro n
  simp only [A345379]

end A345379

/-! ## A345379.P17776872462711520592

`comp[A005248(n)+n]-n`
-/

namespace A345379.P17776872462711520592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A345379.P17776872462711520592

namespace A345379

/-- `comp[A005248(n)+n]-n` -/
def P17776872462711520592.Spec : Prop :=
  ∀ n, P17776872462711520592.a n = A345379 n

end A345379

/-! ## A345379.P4164198932072123748

`A057889(∑[char[A005248(n)]])`
-/

namespace A345379.P4164198932072123748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345379.P4164198932072123748

namespace A345379

/-- `A057889(∑[char[A005248(n)]])` -/
def P4164198932072123748.Spec : Prop :=
  ∀ n, P4164198932072123748.a n = A345379 n

end A345379

/-! ## A345379.P12722646194672166397

`A160700(∑[char[A005248(n)]])`
-/

namespace A345379.P12722646194672166397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345379.P12722646194672166397

namespace A345379

/-- `A160700(∑[char[A005248(n)]])` -/
def P12722646194672166397.Spec : Prop :=
  ∀ n, P12722646194672166397.a n = A345379 n

end A345379

/-! ## A345379.P14370323686210099996

`ceil(A130242(n+1)/2)`
-/

namespace A345379.P14370323686210099996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130242 (n + 1) : ℚ) / 2⌉

end

end A345379.P14370323686210099996

namespace A345379

/-- `ceil(A130242(n+1)/2)` -/
def P14370323686210099996.Spec : Prop :=
  ∀ n, P14370323686210099996.a n = A345379 n

end A345379

/-! ## A345379.P10220240382317994072

`A345378(A357574(n+1))`
-/

namespace A345379.P10220240382317994072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345378 (A357574 (n + 1)).toNat

end

end A345379.P10220240382317994072

namespace A345379

/-- `A345378(A357574(n+1))` -/
def P10220240382317994072.Spec : Prop :=
  ∀ n, P10220240382317994072.a n = A345379 n

end A345379

/-! ## A345379.P10196318154211698239

`A077429(A167921(n+1))`
-/

namespace A345379.P10196318154211698239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077429 (A167921 (n + 1)).toNat

end

end A345379.P10196318154211698239

namespace A345379

/-- `A077429(A167921(n+1))` -/
def P10196318154211698239.Spec : Prop :=
  ∀ n, P10196318154211698239.a n = A345379 n

end A345379

/-! ## A345379.P16533179951152701382

`A258198(A113689(n+1))`
-/

namespace A345379.P16533179951152701382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258198 (A113689 (n + 1)).toNat

end

end A345379.P16533179951152701382

namespace A345379

/-- `A258198(A113689(n+1))` -/
def P16533179951152701382.Spec : Prop :=
  ∀ n, P16533179951152701382.a n = A345379 n

end A345379

/-!
# A345380: Number of Jacobsthal-Lucas numbers m <= n.

The programs for A345380, the canonical program `A345380.P18299148116260524619` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345380 has offset 0).

The definition of A345380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345380.P6886701228314191451

`∑[char[abs((-2)^n+1)]]`
-/

namespace A345380.P6886701228314191451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-2) ^ n + 1|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345380.P6886701228314191451

namespace A345380

/-- `∑[char[abs((-2)^n+1)]]` -/
def P6886701228314191451.Spec : Prop :=
  ∀ n, (P6886701228314191451.a n : ℤ) = A345380 n

end A345380

/-! ## A345380.P18299148116260524619

`floor(log2(lt[xor(n-1, n-2)%3, 1]-n))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345380

/-- `floor(log2(lt[xor(n-1, n-2)%3, 1]-n))` -/
def P18299148116260524619.Spec : Prop :=
  ∀ n, (P18299148116260524619.a n : ℤ) = A345380 n

theorem P18299148116260524619.correct : P18299148116260524619.Spec := by
  intro n
  simp only [A345380]

end A345380

/-! ## A345380.P13890280059290467907

`floor(log2(comp[(n+1)*(n+1-and(n, n+1))]+1-n))`
-/

namespace A345380.P13890280059290467907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)).toNat

end

end A345380.P13890280059290467907

namespace A345380

/-- `floor(log2(comp[(n+1)*(n+1-and(n, n+1))]+1-n))` -/
def P13890280059290467907.Spec : Prop :=
  ∀ n, (P13890280059290467907.a n : ℤ) = A345380 n

end A345380

/-! ## A345380.P288033083393823002

`floor(log2(A162311(n+1)))`
-/

namespace A345380.P288033083393823002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A162311 (n + 1)).toNat

end

end A345380.P288033083393823002

namespace A345380

/-- `floor(log2(A162311(n+1)))` -/
def P288033083393823002.Spec : Prop :=
  ∀ n, (P288033083393823002.a n : ℤ) = A345380 n

end A345380

/-! ## A345380.P16779474630026489834

`floor(log2(A284393(n+1)))`
-/

namespace A345380.P16779474630026489834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A284393 (n + 1)).toNat

end

end A345380.P16779474630026489834

namespace A345380

/-- `floor(log2(A284393(n+1)))` -/
def P16779474630026489834.Spec : Prop :=
  ∀ n, (P16779474630026489834.a n : ℤ) = A345380 n

theorem P16779474630026489834.correct : P16779474630026489834.Spec := by
  intro n
  simp only [A345380, Nat.add_sub_cancel, A345380.P16779474630026489834.a, A345380.P18299148116260524619.f1, A345380.P18299148116260524619.f2, A345380.P18299148116260524619.a, A284393, A284393.P6879948023271449569.f1, A284393.P6879948023271449569.f2, A284393.P6879948023271449569.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345380

/-! ## A345380.P57876863537524472

`∑[char[A014551(n)]]%22`
-/

namespace A345380.P57876863537524472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 22

end

end A345380.P57876863537524472

namespace A345380

/-- `∑[char[A014551(n)]]%22` -/
def P57876863537524472.Spec : Prop :=
  ∀ n, (P57876863537524472.a n : ℤ) = A345380 n

end A345380

/-! ## A345380.P3952618141185034242

`floor(log2(eq[3, A020639(xor(n, n+7))]))`
-/

namespace A345380.P3952618141185034242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345380.P3952618141185034242

namespace A345380

/-- `floor(log2(eq[3, A020639(xor(n, n+7))]))` -/
def P3952618141185034242.Spec : Prop :=
  ∀ n, (P3952618141185034242.a n : ℤ) = A345380 n

end A345380

/-! ## A345380.P10711674174158616270

`A001222(∏[char[A014551(n)]+1])`
-/

namespace A345380.P10711674174158616270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A345380.P10711674174158616270

namespace A345380

/-- `A001222(∏[char[A014551(n)]+1])` -/
def P10711674174158616270.Spec : Prop :=
  ∀ n, P10711674174158616270.a n = A345380 n

end A345380

/-! ## A345380.P1966203965250825419

`A000523(A284393(n+1))`
-/

namespace A345380.P1966203965250825419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A284393 (n + 1)).toNat

end

end A345380.P1966203965250825419

namespace A345380

/-- `A000523(A284393(n+1))` -/
def P1966203965250825419.Spec : Prop :=
  ∀ n, P1966203965250825419.a n = A345380 n

end A345380

/-! ## A345380.P7355086961861202083

`A000523(A162311(n+1))`
-/

namespace A345380.P7355086961861202083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A162311 (n + 1)).toNat

end

end A345380.P7355086961861202083

namespace A345380

/-- `A000523(A162311(n+1))` -/
def P7355086961861202083.Spec : Prop :=
  ∀ n, P7355086961861202083.a n = A345380 n

end A345380

/-!
# A345381: Numbers with exactly 2 semiprime divisors.

The programs for A345381, the canonical program `A345381.P1964717841003723928` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345381 has offset 1).

The definition of A345381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4510 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345381.P3098764754481329035

`filter[A348097(n+1), A359466(#)]`
-/

namespace A345381.P3098764754481329035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A345381.P3098764754481329035

namespace A345381

/-- `filter[A348097(n+1), A359466(#)]` -/
def P3098764754481329035.Spec : Prop :=
  ∀ n, P3098764754481329035.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P9697799087678644557

`filter[A177425(n+1), A359466(#)]`
-/

namespace A345381.P9697799087678644557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A345381.P9697799087678644557

namespace A345381

/-- `filter[A177425(n+1), A359466(#)]` -/
def P9697799087678644557.Spec : Prop :=
  ∀ n, P9697799087678644557.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P1964717841003723928

`filter[A119251(n+1), A359466(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A345381

/-- `filter[A119251(n+1), A359466(#)]` -/
def P1964717841003723928.Spec : Prop :=
  ∀ n, P1964717841003723928.a n = A345381 (n + 1)

theorem P1964717841003723928.correct : P1964717841003723928.Spec := by
  intro n
  simp only [A345381, Nat.add_sub_cancel]

end A345381

/-! ## A345381.P15567977094496763474

`filter[A084227(n+1), A087049(#)]`
-/

namespace A345381.P15567977094496763474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A345381.P15567977094496763474

namespace A345381

/-- `filter[A084227(n+1), A087049(#)]` -/
def P15567977094496763474.Spec : Prop :=
  ∀ n, P15567977094496763474.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P5225172214841627813

`filter[A084227(n+1), A351564(#)]`
-/

namespace A345381.P5225172214841627813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A345381.P5225172214841627813

namespace A345381

/-- `filter[A084227(n+1), A351564(#)]` -/
def P5225172214841627813.Spec : Prop :=
  ∀ n, P5225172214841627813.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P6160115333211120934

`filter[A084227(n+1), A355447(#)]`
-/

namespace A345381.P6160115333211120934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A345381.P6160115333211120934

namespace A345381

/-- `filter[A084227(n+1), A355447(#)]` -/
def P6160115333211120934.Spec : Prop :=
  ∀ n, P6160115333211120934.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P6906728348996733027

`filter[A084227(n+1), A359466(#)]`
-/

namespace A345381.P6906728348996733027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A345381.P6906728348996733027

namespace A345381

/-- `filter[A084227(n+1), A359466(#)]` -/
def P6906728348996733027.Spec : Prop :=
  ∀ n, P6906728348996733027.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P5839437138189363639

`filter[A084227(n+1), A359469(#)]`
-/

namespace A345381.P5839437138189363639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A345381.P5839437138189363639

namespace A345381

/-- `filter[A084227(n+1), A359469(#)]` -/
def P5839437138189363639.Spec : Prop :=
  ∀ n, P5839437138189363639.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P22268001460377583

`filter[A084227(n+1), A389905(#)]`
-/

namespace A345381.P22268001460377583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A345381.P22268001460377583

namespace A345381

/-- `filter[A084227(n+1), A389905(#)]` -/
def P22268001460377583.Spec : Prop :=
  ∀ n, P22268001460377583.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P6562644601131422978

`∩[A013929(n+1), A084227(n+1)]`
-/

namespace A345381.P6562644601131422978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345381.P6562644601131422978

namespace A345381

/-- `∩[A013929(n+1), A084227(n+1)]` -/
def P6562644601131422978.Spec : Prop :=
  ∀ n, (P6562644601131422978.a n : ℤ) = A345381 (n + 1)

end A345381

/-! ## A345381.P14032558753120891941

`∩[A119251(n+1), A084227(n+1)]`
-/

namespace A345381.P14032558753120891941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345381.P14032558753120891941

namespace A345381

/-- `∩[A119251(n+1), A084227(n+1)]` -/
def P14032558753120891941.Spec : Prop :=
  ∀ n, (P14032558753120891941.a n : ℤ) = A345381 (n + 1)

end A345381

/-! ## A345381.P15273035305642592604

`∩[A177425(n+1), A084227(n+1)]`
-/

namespace A345381.P15273035305642592604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345381.P15273035305642592604

namespace A345381

/-- `∩[A177425(n+1), A084227(n+1)]` -/
def P15273035305642592604.Spec : Prop :=
  ∀ n, (P15273035305642592604.a n : ℤ) = A345381 (n + 1)

end A345381

/-! ## A345381.P17056290034147511880

`filter[A007774(n+1), A359466(#)]`
-/

namespace A345381.P17056290034147511880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A345381.P17056290034147511880

namespace A345381

/-- `filter[A007774(n+1), A359466(#)]` -/
def P17056290034147511880.Spec : Prop :=
  ∀ n, P17056290034147511880.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P1215355737266542384

`filter[A007774(n+1), A389905(#)]`
-/

namespace A345381.P1215355737266542384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A345381.P1215355737266542384

namespace A345381

/-- `filter[A007774(n+1), A389905(#)]` -/
def P1215355737266542384.Spec : Prop :=
  ∀ n, P1215355737266542384.a n = A345381 (n + 1)

end A345381

/-! ## A345381.P1456196510713058113

`∩[A007774(n+1), A119251(n+1)]`
-/

namespace A345381.P1456196510713058113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345381.P1456196510713058113

namespace A345381

/-- `∩[A007774(n+1), A119251(n+1)]` -/
def P1456196510713058113.Spec : Prop :=
  ∀ n, (P1456196510713058113.a n : ℤ) = A345381 (n + 1)

end A345381

/-! ## A345381.P12109038673177805973

`∩[A007774(n+1), A190641(n+1)]`
-/

namespace A345381.P12109038673177805973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345381.P12109038673177805973

namespace A345381

/-- `∩[A007774(n+1), A190641(n+1)]` -/
def P12109038673177805973.Spec : Prop :=
  ∀ n, (P12109038673177805973.a n : ℤ) = A345381 (n + 1)

end A345381

/-!
# A345382: Numbers with exactly 3 semiprime divisors.

The programs for A345382, there is no canonical definition to state claims against.
-/

/-! ## A345382.P16911014425891672941

`∪[A007304(n+1), A355462(n+1)]`
-/

namespace A345382.P16911014425891672941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345382.P16911014425891672941

/-! ## A345382.P8294176935377169683

`eq[3, A086971(round(acot(n)+n))]`
-/

namespace A345382.P8294176935377169683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345382.P8294176935377169683

/-! ## A345382.P18308941507056589526

`eq[3*n, n*a(A086971(n))]` with `a(0)=1`
-/

namespace A345382.P18308941507056589526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (A086971 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345382.P18308941507056589526

/-! ## A345382.P17948279921811646980

`eq[3, A086971(A028310(n))]`
-/

namespace A345382.P17948279921811646980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345382.P17948279921811646980

/-! ## A345382.P14023498904404553124

`A011760(eq[3, A086971(n+1)])`
-/

namespace A345382.P14023498904404553124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345382.P14023498904404553124

/-! ## A345382.P15228463162660390573

`A020725(eq[3, A086971(n+1)])`
-/

namespace A345382.P15228463162660390573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345382.P15228463162660390573

/-! ## A345382.P12827584746658502488

`A065475(eq[3, A086971(n+1)])`
-/

namespace A345382.P12827584746658502488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345382.P12827584746658502488

/-! ## A345382.P11114583446544995603

`A153152(eq[3, A086971(n+1)])`
-/

namespace A345382.P11114583446544995603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345382.P11114583446544995603

/-! ## A345382.P9496446164105906908

`A061767(eq[1, A086971(n+1)-2])`
-/

namespace A345382.P9496446164105906908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345382.P9496446164105906908

/-! ## A345382.P16698434482338666551

`eq[4, A004526(A073184(n+1))]+1`
-/

namespace A345382.P16698434482338666551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073184 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345382.P16698434482338666551

/-! ## A345382.P15574040830125800262

`eq[3, A086971(A233583(n+1))]`
-/

namespace A345382.P15574040830125800262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345382.P15574040830125800262

/-!
# A345383: a(n) is the code of the optimum strategy to win the game 'Super Six' for two players if there are n sticks left in the game.

The programs for A345383, there is no canonical definition to state claims against.
-/

/-! ## A345383.P5472918304499610940

`A006125(n)-A258257(2*n!)`
-/

namespace A345383.P5472918304499610940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A258257 (2 * Nat.factorial n)

end

end A345383.P5472918304499610940

/-! ## A345383.P5975781694847446679

`2^C(n, 2)-A274166(A277219(n))`
-/

namespace A345383.P5975781694847446679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A274166 (A277219 n).toNat

end

end A345383.P5975781694847446679

/-! ## A345383.P800391220634310486

`A006125(n)-A000009(A014381(n))`
-/

namespace A345383.P800391220634310486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A000009 (A014381 n).toNat

end

end A345383.P800391220634310486

/-!
# A345386: Non-palindromes whose largest proper divisor is a nontrivial (not a single-digit) palindrome.

The programs for A345386, there is no canonical definition to state claims against.
-/

/-! ## A345386.P3900651467488755914

`A003144(A030630(n+1)^A146292(n+1))`
-/

namespace A345386.P3900651467488755914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (SequenceMachineLib.roundAway ((A030630 (n + 1) : ℚ) ^ (A146292 (n + 1) : ℤ))).toNat

end

end A345386.P3900651467488755914

/-! ## A345386.P14397073235802580790

`11*eq[3, A281273(n)]`
-/

namespace A345386.P14397073235802580790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345386.P14397073235802580790

/-!
# A345388: a(n) = 0, 1, or 2 according to whether A065091(n), the n-th odd prime, is in A001122, A139035, or A268923, respectively.

The programs for A345388, there is no canonical definition to state claims against.
-/

/-! ## A345388.P1309408508284650790

`A287086(A210755(n+1)+A162267(n+1))`
-/

namespace A345388.P1309408508284650790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287086 (A210755 (n + 1) + A162267 (n + 1)).toNat

end

end A345388.P1309408508284650790

/-! ## A345388.P15999968228606800245

`A264398(A063858(n+2))%4`
-/

namespace A345388.P15999968228606800245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264398 (A063858 (n + 2)).toNat) 4

end

end A345388.P15999968228606800245

/-! ## A345388.P6991679942540184755

`A080843(A091263(n+4)%A106312(3*n+2))`
-/

namespace A345388.P6991679942540184755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (Int.tmod (A091263 (n + 4)) (A106312 (3 * n + 2))).toNat

end

end A345388.P6991679942540184755

/-! ## A345388.P6470117422232223836

`and(A001222(A001317(n)), A318400(n+1))`
-/

namespace A345388.P6470117422232223836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A001317 n).toNat) (A318400 (n + 1))

end

end A345388.P6470117422232223836

/-! ## A345388.P5685131723704518920

`A275692(A214899(n))%A329362(n+1)`
-/

namespace A345388.P5685131723704518920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275692 (A214899 n).toNat) (A329362 (n + 1))

end

end A345388.P5685131723704518920

/-!
# A345391: a(n) is the least proper multiple of n with the same set of decimal digits as n.

The programs for A345391, there is no canonical definition to state claims against.
-/

/-! ## A345391.P17786853846933277047

`(n+1)*A345392(n+1)`
-/

namespace A345391.P17786853846933277047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345392 (n + 1)

end

end A345391.P17786853846933277047

/-! ## A345391.P4814304301578264565

`A078273(A077168(n))`
-/

namespace A345391.P4814304301578264565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078273 (A077168 n).toNat

end

end A345391.P4814304301578264565

/-! ## A345391.P17925483418263848343

`A078273(n+1)*A286520(A100484(n+1))`
-/

namespace A345391.P17925483418263848343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078273 (n + 1) * A286520 (A100484 (n + 1)).toNat

end

end A345391.P17925483418263848343

/-! ## A345391.P12364379940868235488

`A078273(n+1)*A238888(A078254(n+4))`
-/

namespace A345391.P12364379940868235488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078273 (n + 1) * A238888 (A078254 (n + 4)).toNat

end

end A345391.P12364379940868235488

/-! ## A345391.P12665824790444700021

`lcm(A078273(n+1), A078315(A319436(n+4)))`
-/

namespace A345391.P12665824790444700021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078273 (n + 1)) (A078315 (A319436 (n + 4)).toNat)

end

end A345391.P12665824790444700021

/-!
# A345393: Array read by ascending antidiagonals: A(n, k) = n!*[x^(n-1)] Li(-k, 1 - exp(-4*x))/(4*x*cosh(x)), where Li(n, z) is the polylogarithm function.

The programs for A345393, there is no canonical definition to state claims against.
-/

/-! ## A345393.P7050725506402424620

`abs(A274923(A075504(n+1)))`
-/

namespace A345393.P7050725506402424620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274923 (A075504 (n + 1)).toNat|

end

end A345393.P7050725506402424620

/-! ## A345393.P11510526004576334549

`A022167(n+1)-A141728(A316554(n+1))`
-/

namespace A345393.P11510526004576334549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 (n + 1) - A141728 (A316554 (n + 1)).toNat

end

end A345393.P11510526004576334549

/-! ## A345393.P7236113106624367536

`gcd(A274923(A075504(n+1)), A335446(n+1))`
-/

namespace A345393.P7236113106624367536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A274923 (A075504 (n + 1)).toNat) (A335446 (n + 1))

end

end A345393.P7236113106624367536

/-!
# A345399: a(n) is the least number k such that {k, k^2, ..., k^n} are all odious numbers (A000069), but k^(n+1) is not.

The programs for A345399, there is no canonical definition to state claims against.
-/

/-! ## A345399.P14820472505117302679

`A175505(A175519(n+1)%A175544(2*n+3))`
-/

namespace A345399.P14820472505117302679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175505 (Int.tmod (A175519 (n + 1)) (A175544 (2 * n + 3))).toNat

end

end A345399.P14820472505117302679

