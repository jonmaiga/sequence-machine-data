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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A262200: Number of compositions of n such that the maximal distance between two identical parts equals five.

The programs for A262200, there is no canonical definition to state claims against.
-/

/-! ## A262200.P4107802263667494681

`A154470(∑[A262197(n+4)])`
-/

namespace A262200.P4107802263667494681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262197 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262200.P4107802263667494681

/-! ## A262200.P3495074649044328342

`∑[A262197(n+4)%A079478(n)]`
-/

namespace A262200.P3495074649044328342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262197 (n + 4)) (A079478 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262200.P3495074649044328342

/-! ## A262200.P8816235476283690337

`∑[A262197(n+4)]%A262173(n)`
-/

namespace A262200.P8816235476283690337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262197 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A262173 n)

end

end A262200.P8816235476283690337

/-! ## A262200.P9903168403759966522

`A185255(3*n+2)+∑[A262197(n+4)]`
-/

namespace A262200.P9903168403759966522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262197 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262200.P9903168403759966522

/-! ## A262200.P17893941785724181024

`A262197(n+4)+A126257(A062431(n+1))`
-/

namespace A262200.P17893941785724181024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262197 (n + 4) + A126257 (A062431 (n + 1)).toNat

end

end A262200.P17893941785724181024

/-!
# A262201: Prime p such that 2^p + 33 is also prime.

The programs for A262201, there is no canonical definition to state claims against.
-/

/-! ## A262201.P12045270405191532543

`p?[A247953(n+1)]`
-/

namespace A262201.P12045270405191532543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262201.P12045270405191532543

/-!
# A262202: Number of divisors d | n such that d^2 < n and d^2 does not divide n.

The programs for A262202, the canonical program `A262202.P13375608111952426789` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262202 has offset 1).

The definition of A262202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262202.P13375608111952426789

`∑{d}[n+1, A353669(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A262202

/-- `∑{d}[n+1, A353669(#)]` -/
def P13375608111952426789.Spec : Prop :=
  ∀ n, P13375608111952426789.a n = A262202 (n + 1)

theorem P13375608111952426789.correct : P13375608111952426789.Spec := by
  intro n
  simp only [A262202, Nat.add_sub_cancel]

end A262202

/-! ## A262202.P2477977235868061180

`A004526(1-A347992(n+1))`
-/

namespace A262202.P2477977235868061180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (1 - A347992 (n + 1)).toNat

end

end A262202.P2477977235868061180

namespace A262202

/-- `A004526(1-A347992(n+1))` -/
def P2477977235868061180.Spec : Prop :=
  ∀ n, P2477977235868061180.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P2019673033801053885

`A072670(n)-A071325(n+1)`
-/

namespace A262202.P2019673033801053885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n - A071325 (n + 1)

end

end A262202.P2019673033801053885

namespace A262202

/-- `A072670(n)-A071325(n+1)` -/
def P2019673033801053885.Spec : Prop :=
  ∀ n, P2019673033801053885.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P12700274519567828693

`A038548(n+1)-A046951(n+1)`
-/

namespace A262202.P12700274519567828693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - A046951 (n + 1)

end

end A262202.P12700274519567828693

namespace A262202

/-- `A038548(n+1)-A046951(n+1)` -/
def P12700274519567828693.Spec : Prop :=
  ∀ n, P12700274519567828693.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P5479386682711467231

`A056595(n+1)-A056924(n+1)`
-/

namespace A262202.P5479386682711467231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (n + 1) - A056924 (n + 1)

end

end A262202.P5479386682711467231

namespace A262202

/-- `A056595(n+1)-A056924(n+1)` -/
def P5479386682711467231.Spec : Prop :=
  ∀ n, P5479386682711467231.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P13443326355464442370

`A088434(n+1)-A122179(n+1)`
-/

namespace A262202.P13443326355464442370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) - A122179 (n + 1)

end

end A262202.P13443326355464442370

namespace A262202

/-- `A088434(n+1)-A122179(n+1)` -/
def P13443326355464442370.Spec : Prop :=
  ∀ n, P13443326355464442370.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P8547496238773320310

`A056924(n+1)-A293234(n+1)`
-/

namespace A262202.P8547496238773320310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - A293234 (n + 1)

end

end A262202.P8547496238773320310

namespace A262202

/-- `A056924(n+1)-A293234(n+1)` -/
def P8547496238773320310.Spec : Prop :=
  ∀ n, P8547496238773320310.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P12325126108039863844

`A338236(n+1)-A236627(n+1)`
-/

namespace A262202.P12325126108039863844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338236 (n + 1) - A236627 (n + 1)

end

end A262202.P12325126108039863844

namespace A262202

/-- `A338236(n+1)-A236627(n+1)` -/
def P12325126108039863844.Spec : Prop :=
  ∀ n, P12325126108039863844.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P9719398156896457277

`∑{d}[n+1, A008836(#)*A089233((n+1)/#)]`
-/

namespace A262202.P9719398156896457277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A089233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262202.P9719398156896457277

namespace A262202

/-- `∑{d}[n+1, A008836(#)*A089233((n+1)/#)]` -/
def P9719398156896457277.Spec : Prop :=
  ∀ n, P9719398156896457277.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P1110077053561988749

`A008619(A000005(n+1)-1)-A046951(n+1)`
-/

namespace A262202.P1110077053561988749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000005 (n + 1) - 1).toNat - A046951 (n + 1)

end

end A262202.P1110077053561988749

namespace A262202

/-- `A008619(A000005(n+1)-1)-A046951(n+1)` -/
def P1110077053561988749.Spec : Prop :=
  ∀ n, P1110077053561988749.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P4843736037425925427

`A038548(n+1)+A088434(n+1)-A034836(n+1)`
-/

namespace A262202.P4843736037425925427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A088434 (n + 1) - A034836 (n + 1))

end

end A262202.P4843736037425925427

namespace A262202

/-- `A038548(n+1)+A088434(n+1)-A034836(n+1)` -/
def P4843736037425925427.Spec : Prop :=
  ∀ n, P4843736037425925427.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P6907931835120581226

`A034836(n+1)-(A122179(n+1)+A046951(n+1))`
-/

namespace A262202.P6907931835120581226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - (A122179 (n + 1) + A046951 (n + 1))

end

end A262202.P6907931835120581226

namespace A262202

/-- `A034836(n+1)-(A122179(n+1)+A046951(n+1))` -/
def P6907931835120581226.Spec : Prop :=
  ∀ n, P6907931835120581226.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P9257285014458323463

`A038548(n+1)-gcd(A007425(n+1), A140773(n+1))`
-/

namespace A262202.P9257285014458323463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) - (Int.gcd (A007425 (n + 1)) (A140773 (n + 1)) : ℤ)

end

end A262202.P9257285014458323463

namespace A262202

/-- `A038548(n+1)-gcd(A007425(n+1), A140773(n+1))` -/
def P9257285014458323463.Spec : Prop :=
  ∀ n, P9257285014458323463.a n = A262202 (n + 1)

end A262202

/-! ## A262202.P13679320536175369989

`A071325(A294873(n+1)/A294874(n+1))`
-/

namespace A262202.P13679320536175369989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (SequenceMachineLib.roundAway ((A294873 (n + 1) : ℚ) / (A294874 (n + 1) : ℚ))).toNat

end

end A262202.P13679320536175369989

namespace A262202

/-- `A071325(A294873(n+1)/A294874(n+1))` -/
def P13679320536175369989.Spec : Prop :=
  ∀ n, P13679320536175369989.a n = A262202 (n + 1)

end A262202

/-!
# A262203: Primes of the form k*(k+2)/3 - 3, k>2.

The programs for A262203, there is no canonical definition to state claims against.
-/

/-! ## A262203.P17318710352719726643

`p?[floor(n²/3)-3]`
-/

namespace A262203.P17318710352719726643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 3⌋ - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262203.P17318710352719726643

/-! ## A262203.P358722052796272261

`∏{p}[p?[floor(n²/3)+n+n], #]`
-/

namespace A262203.P358722052796272261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 3⌋ + (n : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A262203.P358722052796272261

/-! ## A262203.P12562721461374574420

`∏{d}[p?[A000212(n)-3], #]`
-/

namespace A262203.P12562721461374574420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A262203.P12562721461374574420

/-! ## A262203.P2992663779727090622

`record[A020639(∑[A004523(n+4)])]`
-/

namespace A262203.P2992663779727090622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262203.P2992663779727090622

/-! ## A262203.P6836403110644304640

`record[A020639(A007980(n+1)+n)]`
-/

namespace A262203.P6836403110644304640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007980 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262203.P6836403110644304640

/-!
# A262204: a(n) = (2*prime(n))! / prime(n)!.

The programs for A262204, there is no canonical definition to state claims against.
-/

/-! ## A262204.P14979813079448052294

`2*A075069(n+1)`
-/

namespace A262204.P14979813079448052294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075069 (n + 1)

end

end A262204.P14979813079448052294

/-! ## A262204.P1004255475616971155

`record[A075366(n+2)]`
-/

namespace A262204.P1004255475616971155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075366 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262204.P1004255475616971155

/-! ## A262204.P16527312067645768861

`A001813(p?[comp[n²]])`
-/

namespace A262204.P16527312067645768861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A262204.P16527312067645768861

/-! ## A262204.P12558289124509863840

`A001813(A000040(n+1))`
-/

namespace A262204.P12558289124509863840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (A000040 (n + 1)).toNat

end

end A262204.P12558289124509863840

/-! ## A262204.P15809260851024431071

`A001813(record[A006530(n+2)])`
-/

namespace A262204.P15809260851024431071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001813 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262204.P15809260851024431071

/-!
# A262206: Product of prime(n) consecutive numbers starting from n.

The programs for A262206, there is no canonical definition to state claims against.
-/

/-! ## A262206.P10702476999289573435

`(A000040(n+1)+n)!/n!`
-/

namespace A262206.P10702476999289573435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 1) + (n : ℤ)).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A262206.P10702476999289573435

/-! ## A262206.P18420412068827753571

`(A014689(n+1)+2*n+1)!/n!`
-/

namespace A262206.P18420412068827753571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A014689 (n + 1) + (2 * n + 1 : ℤ)).toNat : ℚ) / (Nat.factorial n : ℚ)

end

end A262206.P18420412068827753571

/-! ## A262206.P6787511516674466243

`A000142(A095116(n+1))/A000142(n)`
-/

namespace A262206.P6787511516674466243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A095116 (n + 1)).toNat : ℚ) / (A000142 n : ℚ)

end

end A262206.P6787511516674466243

/-! ## A262206.P9184718416367430072

`A000142(A000040(n+1)+n)/A000142(n)`
-/

namespace A262206.P9184718416367430072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A000040 (n + 1) + (n : ℤ)).toNat : ℚ) / (A000142 n : ℚ)

end

end A262206.P9184718416367430072

/-!
# A262207: a(n) = prime(n)^n mod n^n.

The programs for A262207, there is no canonical definition to state claims against.
-/

/-! ## A262207.P769063984960775998

`A062457(n+1)%((n+1)^(n+1))`
-/

namespace A262207.P769063984960775998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062457 (n + 1)) ((n + 1) ^ (n + 1) : ℤ)

end

end A262207.P769063984960775998

/-! ## A262207.P1774567704256789574

`(A000040(n+1)^(n+1))%((n+1)^(n+1))`
-/

namespace A262207.P1774567704256789574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ (n + 1)) ((n + 1) ^ (n + 1) : ℤ)

end

end A262207.P1774567704256789574

/-! ## A262207.P1431316928432763063

`(A216885(n+1)^(n+1))%((n+1)^(n+1))`
-/

namespace A262207.P1431316928432763063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216885 (n + 1) ^ (n + 1)) ((n + 1) ^ (n + 1) : ℤ)

end

end A262207.P1431316928432763063

/-! ## A262207.P8844559199749924609

`(A182986(n+2)^(n+1))%A000312(n+1)`
-/

namespace A262207.P8844559199749924609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182986 (n + 2) ^ (n + 1)) (A000312 (n + 1))

end

end A262207.P8844559199749924609

/-! ## A262207.P8943234191635969430

`A062457(n+1)-A000312(n+1)*A121623(n+1)`
-/

namespace A262207.P8943234191635969430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) - A000312 (n + 1) * A121623 (n + 1)

end

end A262207.P8943234191635969430

/-!
# A262208: a(n) = prime(n)^prime(n) mod n^n.

The programs for A262208, there is no canonical definition to state claims against.
-/

/-! ## A262208.P8820221707635485783

`A051674(n+1)%record[A091884(n)]`
-/

namespace A262208.P8820221707635485783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051674 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A262208.P8820221707635485783

/-! ## A262208.P3351726651106100611

`A000312(A000040(n+1))%A000312(n+1)`
-/

namespace A262208.P3351726651106100611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 (A000040 (n + 1)).toNat) (A000312 (n + 1))

end

end A262208.P3351726651106100611

/-! ## A262208.P7131188186163482660

`A000312(A008578(n+2))%A000312(n+1)`
-/

namespace A262208.P7131188186163482660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 (A008578 (n + 2)).toNat) (A000312 (n + 1))

end

end A262208.P7131188186163482660

/-! ## A262208.P15070637479518938967

`(A182986(n+2)^A182986(n+2))%A000312(n+1)`
-/

namespace A262208.P15070637479518938967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A182986 (n + 2) : ℚ) ^ (A182986 (n + 2) : ℤ))) (A000312 (n + 1))

end

end A262208.P15070637479518938967

/-! ## A262208.P17748724728067444718

`A000312(p?[A193679(n+1)])%A086783(n+1)`
-/

namespace A262208.P17748724728067444718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000312 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A086783 (n + 1))

end

end A262208.P17748724728067444718

/-!
# A262209: Inverse Möbius transform of A002654.

The programs for A262209, the canonical program `A262209.P6934688457999335665` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262209 has offset 1).

The definition of A262209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262209.P6934688457999335665

`∑{d}[n+1, A002654(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A262209

/-- `∑{d}[n+1, A002654(#)]` -/
def P6934688457999335665.Spec : Prop :=
  ∀ n, P6934688457999335665.a n = A262209 (n + 1)

theorem P6934688457999335665.correct : P6934688457999335665.Spec := by
  intro n
  simp only [A262209, Nat.add_sub_cancel]

end A262209

/-! ## A262209.P17764397263151680270

`∑{d}[n+1, abs(A113652(#))]`
-/

namespace A262209.P17764397263151680270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A113652 d|

end

end A262209.P17764397263151680270

namespace A262209

/-- `∑{d}[n+1, abs(A113652(#))]` -/
def P17764397263151680270.Spec : Prop :=
  ∀ n, P17764397263151680270.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P9183434231553439369

`∑{d}[A000265(n+1), A035184((n+1)/#)]`
-/

namespace A262209.P9183434231553439369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A035184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P9183434231553439369

namespace A262209

/-- `∑{d}[A000265(n+1), A035184((n+1)/#)]` -/
def P9183434231553439369.Spec : Prop :=
  ∀ n, P9183434231553439369.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P17744759778927460057

`∑{d}[n+1, A001511(#)*A008442((n+1)/#)]`
-/

namespace A262209.P17744759778927460057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A008442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P17744759778927460057

namespace A262209

/-- `∑{d}[n+1, A001511(#)*A008442((n+1)/#)]` -/
def P17744759778927460057.Spec : Prop :=
  ∀ n, P17744759778927460057.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P3180073897440992814

`∑{d}[n+1, A001227(#)*A034947((n+1)/#)]`
-/

namespace A262209.P3180073897440992814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A034947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P3180073897440992814

namespace A262209

/-- `∑{d}[n+1, A001227(#)*A034947((n+1)/#)]` -/
def P3180073897440992814.Spec : Prop :=
  ∀ n, P3180073897440992814.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P14194983318446035606

`∑{d}[n+1, A000089(#)*A046951((n+1)/#)]`
-/

namespace A262209.P14194983318446035606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P14194983318446035606

namespace A262209

/-- `∑{d}[n+1, A000089(#)*A046951((n+1)/#)]` -/
def P14194983318446035606.Spec : Prop :=
  ∀ n, P14194983318446035606.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P8017335980012543191

`∑{d}[n+1, A008836(#)*A062327((n+1)/#)]`
-/

namespace A262209.P8017335980012543191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A062327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P8017335980012543191

namespace A262209

/-- `∑{d}[n+1, A008836(#)*A062327((n+1)/#)]` -/
def P8017335980012543191.Spec : Prop :=
  ∀ n, P8017335980012543191.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P4597081812626805191

`∑{d}[n+1, A048272(#)*A055975((n+1)/#)]`
-/

namespace A262209.P4597081812626805191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A055975 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P4597081812626805191

namespace A262209

/-- `∑{d}[n+1, A048272(#)*A055975((n+1)/#)]` -/
def P4597081812626805191.Spec : Prop :=
  ∀ n, P4597081812626805191.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P1157973484776545930

`∑{d}[n+1, A038712(#)*A113652((n+1)/#)]`
-/

namespace A262209.P1157973484776545930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A113652 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P1157973484776545930

namespace A262209

/-- `∑{d}[n+1, A038712(#)*A113652((n+1)/#)]` -/
def P1157973484776545930.Spec : Prop :=
  ∀ n, P1157973484776545930.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P1992675361450934355

`∑{d}[n+1, A051064(#)*A113446((n+1)/#)]`
-/

namespace A262209.P1992675361450934355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051064 d * A113446 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P1992675361450934355

namespace A262209

/-- `∑{d}[n+1, A051064(#)*A113446((n+1)/#)]` -/
def P1992675361450934355.Spec : Prop :=
  ∀ n, P1992675361450934355.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P501757176398774051

`∑{d}[n+1, A050469(#)*A130054((n+1)/#)]`
-/

namespace A262209.P501757176398774051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050469 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P501757176398774051

namespace A262209

/-- `∑{d}[n+1, A050469(#)*A130054((n+1)/#)]` -/
def P501757176398774051.Spec : Prop :=
  ∀ n, P501757176398774051.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P10178509334503429273

`∑{d}[n+1, A072079(#)*A138952((n+1)/#)]`
-/

namespace A262209.P10178509334503429273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072079 d * A138952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P10178509334503429273

namespace A262209

/-- `∑{d}[n+1, A072079(#)*A138952((n+1)/#)]` -/
def P10178509334503429273.Spec : Prop :=
  ∀ n, P10178509334503429273.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P18295702654845082287

`∑{d}[n+1, A080278(#)*A138950((n+1)/#)]`
-/

namespace A262209.P18295702654845082287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080278 d * A138950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P18295702654845082287

namespace A262209

/-- `∑{d}[n+1, A080278(#)*A138950((n+1)/#)]` -/
def P18295702654845082287.Spec : Prop :=
  ∀ n, P18295702654845082287.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P12906395666253881704

`∑{d}[n+1, A112299(#)*A129628((n+1)/#)]`
-/

namespace A262209.P12906395666253881704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112299 d * A129628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P12906395666253881704

namespace A262209

/-- `∑{d}[n+1, A112299(#)*A129628((n+1)/#)]` -/
def P12906395666253881704.Spec : Prop :=
  ∀ n, P12906395666253881704.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P11866732806909976727

`∑{d}[n+1, A069735(#)*A209615((n+1)/#)]`
-/

namespace A262209.P11866732806909976727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A209615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P11866732806909976727

namespace A262209

/-- `∑{d}[n+1, A069735(#)*A209615((n+1)/#)]` -/
def P11866732806909976727.Spec : Prop :=
  ∀ n, P11866732806909976727.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P7177475660382999719

`∑{d}[n+1, A007425(#)*A275966((n+1)/#)]`
-/

namespace A262209.P7177475660382999719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P7177475660382999719

namespace A262209

/-- `∑{d}[n+1, A007425(#)*A275966((n+1)/#)]` -/
def P7177475660382999719.Spec : Prop :=
  ∀ n, P7177475660382999719.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P10089997892387202426

`∑{d}[n+1, A053866(#)*A256452((n+1)/#)]`
-/

namespace A262209.P10089997892387202426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A256452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P10089997892387202426

namespace A262209

/-- `∑{d}[n+1, A053866(#)*A256452((n+1)/#)]` -/
def P10089997892387202426.Spec : Prop :=
  ∀ n, P10089997892387202426.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P3957400299299804292

`∑{d}[n+1, A023900(#)*A327122((n+1)/#)]`
-/

namespace A262209.P3957400299299804292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A327122 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A262209.P3957400299299804292

namespace A262209

/-- `∑{d}[n+1, A023900(#)*A327122((n+1)/#)]` -/
def P3957400299299804292.Spec : Prop :=
  ∀ n, P3957400299299804292.a n = A262209 (n + 1)

end A262209

/-! ## A262209.P2488596527779702486

`∑{d}[n+1, A000005(#)*A056594((n+1)/#-1)]`
-/

namespace A262209.P2488596527779702486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A056594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A262209.P2488596527779702486

namespace A262209

/-- `∑{d}[n+1, A000005(#)*A056594((n+1)/#-1)]` -/
def P2488596527779702486.Spec : Prop :=
  ∀ n, P2488596527779702486.a n = A262209 (n + 1)

end A262209

/-!
# A262212: Minimum number of 2's such that n*[n; 2, ..., 2, n] = [x; ..., x] for some x, where [...] denotes simple continued fractions.

The programs for A262212, there is no canonical definition to state claims against.
-/

/-! ## A262212.P291081729603866818

`A214028(n+2)-1`
-/

namespace A262212.P291081729603866818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (n + 2) - 1

end

end A262212.P291081729603866818

/-! ## A262212.P9716591764215721301

`abs(∑[-Δ[A214028(n+1)]])`
-/

namespace A262212.P9716591764215721301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A262212.P9716591764215721301

/-! ## A262212.P12516534449798127107

`A023443(A214028(n+2))`
-/

namespace A262212.P12516534449798127107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A214028 (n + 2)).toNat

end

end A262212.P12516534449798127107

/-! ## A262212.P13822650776690692914

`A085207(C(A214028(n+2), 2))`
-/

namespace A262212.P13822650776690692914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (Nat.choose (A214028 (n + 2)).toNat 2)

end

end A262212.P13822650776690692914

/-! ## A262212.P8817827465095864199

`∑[Δ[A214028(n+1)]%A017365(n)]`
-/

namespace A262212.P8817827465095864199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017365 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262212.P8817827465095864199

/-! ## A262212.P5970641625535432553

`A175181(n+2)/A214027(n+2)-1`
-/

namespace A262212.P5970641625535432553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175181 (n + 2) : ℚ) / (A214027 (n + 2) : ℚ) - 1

end

end A262212.P5970641625535432553

/-! ## A262212.P3720958557811440031

`∑[A014963(12*(n+1))*Δ[A214028(n+1)]]`
-/

namespace A262212.P3720958557811440031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262212.P3720958557811440031

/-! ## A262212.P10113519345526511823

`∑[A000010(((-1)^n)²)*Δ[A214028(n+1)]]`
-/

namespace A262212.P10113519345526511823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214028 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262212.P10113519345526511823

/-! ## A262212.P2032085930172965250

`A000720(p?[A008578(A214028(n+1))])`
-/

namespace A262212.P2032085930172965250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A214028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A262212.P2032085930172965250

/-! ## A262212.P5319749677856868967

`A003963(p?[A008578(A214028(n+1))])`
-/

namespace A262212.P5319749677856868967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A214028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A262212.P5319749677856868967

/-!
# A262213: Minimum number of 3's such that n*[n; 3, ..., 3, n] = [x; ..., x] for some x, where [...] denotes simple continued fractions.

The programs for A262213, there is no canonical definition to state claims against.
-/

/-! ## A262213.P15874336809599898271

`A322907(n+2)-1`
-/

namespace A262213.P15874336809599898271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322907 (n + 2) - 1

end

end A262213.P15874336809599898271

/-! ## A262213.P2492716655663302703

`abs(∑[-Δ[A322907(n+1)]])`
-/

namespace A262213.P2492716655663302703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A262213.P2492716655663302703

/-! ## A262213.P16852014743235042493

`A023443(A322907(n+2))`
-/

namespace A262213.P16852014743235042493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A322907 (n + 2)).toNat

end

end A262213.P16852014743235042493

/-! ## A262213.P7366038705673135125

`A059169(4*A322907(n+2))`
-/

namespace A262213.P7366038705673135125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A322907 (n + 2)).toNat

end

end A262213.P7366038705673135125

/-! ## A262213.P6276407433154161856

`A025581(C(A322907(n+2), 2))`
-/

namespace A262213.P6276407433154161856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A322907 (n + 2)).toNat 2)

end

end A262213.P6276407433154161856

/-! ## A262213.P6140650959759616655

`∑[Δ[A322907(n+1)]%A016958(n)]`
-/

namespace A262213.P6140650959759616655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A016958 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262213.P6140650959759616655

/-! ## A262213.P2971313849011479884

`A175182(n+2)/A322906(n+2)-1`
-/

namespace A262213.P2971313849011479884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175182 (n + 2) : ℚ) / (A322906 (n + 2) : ℚ) - 1

end

end A262213.P2971313849011479884

/-! ## A262213.P8672633568956614217

`A000720(p?[A008578(A322907(n+1))])`
-/

namespace A262213.P8672633568956614217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A322907 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A262213.P8672633568956614217

/-! ## A262213.P15928045505405143136

`A087712(p?[A008578(A322907(n+1))])`
-/

namespace A262213.P15928045505405143136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A322907 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A262213.P15928045505405143136

/-! ## A262213.P4171465704172369898

`A025581(2*A322907(n+2)²)`
-/

namespace A262213.P4171465704172369898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A322907 (n + 2) ^ 2).toNat

end

end A262213.P4171465704172369898

/-!
# A262214: Minimum number of 4's such that n*[n; 4, ..., 4, n] = [x; ..., x] for some x, where [...] denotes simple continued fractions.

The programs for A262214, there is no canonical definition to state claims against.
-/

/-! ## A262214.P11739774711715090969

`A001177(2*(n+2))/3-1`
-/

namespace A262214.P11739774711715090969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001177 (2 * (n + 2)) : ℚ) / 3 - 1

end

end A262214.P11739774711715090969

/-! ## A262214.P16028339207523746793

`∑[Δ[A001177(2*(n+1))]/3]`
-/

namespace A262214.P16028339207523746793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (2 * (n + 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262214.P16028339207523746793

/-! ## A262214.P17506220342172295793

`A002264(A001177(2*(n+2))-1)`
-/

namespace A262214.P17506220342172295793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001177 (2 * (n + 2)) - 1).toNat

end

end A262214.P17506220342172295793

/-! ## A262214.P17037920761471513012

`A008611(A001177(2*(n+2))-2)`
-/

namespace A262214.P17037920761471513012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001177 (2 * (n + 2)) - 2).toNat

end

end A262214.P17037920761471513012

/-! ## A262214.P9534652148734667020

`A186731(A001177(2*(n+2))-2)`
-/

namespace A262214.P9534652148734667020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (A001177 (2 * (n + 2)) - 2).toNat

end

end A262214.P9534652148734667020

/-!
# A262221: a(n) = 25*n*(n + 1)/2 + 1.

The programs for A262221, the canonical program `A262221.P9616285065150363173` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262221 has offset 0).

The definition of A262221 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*n*(n+1)/2+1` (program `A262221.P9898472340897822759`, by `A262221.P9898472340897822759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A262221.P9898472340897822759

`25*n*(n+1)/2+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262221.P9898472340897822759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 * n * (n + 1) : ℚ) / 2 + 1

end

end A262221.P9898472340897822759

namespace A262221

/-- `25*n*(n+1)/2+1` -/
def P9898472340897822759.Spec : Prop :=
  ∀ n, P9898472340897822759.a n = (A262221 n : ℚ)

theorem P9898472340897822759.correct : P9898472340897822759.Spec := by
  intro n
  simp only [A262221, Nat.add_sub_cancel, A262221.P9898472340897822759.a, A262221.P9616285065150363173.a, A034856, A034856.P1676305901281367657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A262221

/-! ## A262221.P9616285065150363173

`A034856(5*n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262221

/-- `A034856(5*n+1)` -/
def P9616285065150363173.Spec : Prop :=
  ∀ n, P9616285065150363173.a n = A262221 n

theorem P9616285065150363173.correct : P9616285065150363173.Spec := by
  intro n
  simp only [A262221]

end A262221

/-! ## A262221.P17500807553595026373

`A186349(10*n+1)`
-/

namespace A262221.P17500807553595026373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186349 (10 * n + 1)

end

end A262221.P17500807553595026373

namespace A262221

/-- `A186349(10*n+1)` -/
def P17500807553595026373.Spec : Prop :=
  ∀ n, P17500807553595026373.a n = A262221 n

end A262221

/-! ## A262221.P1525561615529720835

`∑[a(n-1)+25]` with `a(0)=1, a(1)=25`
-/

namespace A262221.P1525561615529720835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 25] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262221.P1525561615529720835

namespace A262221

/-- `∑[a(n-1)+25]` -/
def P1525561615529720835.Spec : Prop :=
  ∀ n, (P1525561615529720835.a n : ℤ) = A262221 n

end A262221

/-! ## A262221.P7684802778952252039

`∑[ogf((1+23x+x^2)/(1-2x+x^2))]`
-/

namespace A262221.P7684802778952252039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 23, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262221.P7684802778952252039

namespace A262221

/-- `∑[ogf((1+23x+x^2)/(1-2x+x^2))]` -/
def P7684802778952252039.Spec : Prop :=
  ∀ n, P7684802778952252039.a n = A262221 n

end A262221

/-! ## A262221.P10259834937767390886

`abs(a(n-1)+25*n)` with `a(0)=1`
-/

namespace A262221.P10259834937767390886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 25 * n

end

end A262221.P10259834937767390886

namespace A262221

/-- `abs(a(n-1)+25*n)` -/
def P10259834937767390886.Spec : Prop :=
  ∀ n, (P10259834937767390886.a n : ℤ) = A262221 n

end A262221

/-! ## A262221.P723222975597153046

`floor(a(n-1)+5*5*n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A262221.P723222975597153046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * (5 * n)

end

end A262221.P723222975597153046

namespace A262221

/-- `floor(a(n-1)+5*5*n)` -/
def P723222975597153046.Spec : Prop :=
  ∀ n, (P723222975597153046.a n : ℤ) = A262221 n

end A262221

/-! ## A262221.P13559024861794359832

`floor((5*n)²-(a(n-1)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A262221.P13559024861794359832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((5 * n) ^ 2 : ℤ) - (a (n - 1) - 2)

end

end A262221.P13559024861794359832

namespace A262221

/-- `floor((5*n)²-(a(n-1)-2))` -/
def P13559024861794359832.Spec : Prop :=
  ∀ n, P13559024861794359832.a n = A262221 n

end A262221

/-! ## A262221.P17476481954258124701

`(A001545(n)-2)/2`
-/

namespace A262221.P17476481954258124701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001545 n - 2 : ℚ) / 2

end

end A262221.P17476481954258124701

namespace A262221

/-- `(A001545(n)-2)/2` -/
def P17476481954258124701.Spec : Prop :=
  ∀ n, P17476481954258124701.a n = (A262221 n : ℚ)

theorem P17476481954258124701.correct : P17476481954258124701.Spec := by
  intro n
  simp only [A262221, Nat.add_sub_cancel, A262221.P17476481954258124701.a, A262221.P9616285065150363173.a, A001545, A001545.P4596200827424455748.a, A034856, A034856.P1676305901281367657.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A262221

/-! ## A262221.P2936083780703489811

`abs(2-C(A016897(n)-1, 2))`
-/

namespace A262221.P2936083780703489811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.choose (A016897 n - 1).toNat 2 : ℤ)|

end

end A262221.P2936083780703489811

namespace A262221

/-- `abs(2-C(A016897(n)-1, 2))` -/
def P2936083780703489811.Spec : Prop :=
  ∀ n, P2936083780703489811.a n = A262221 n

end A262221

/-! ## A262221.P14072617221392219502

`floor((25*A046092(n)+7)/4)`
-/

namespace A262221.P14072617221392219502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(25 * A046092 n + 7 : ℚ) / 4⌋

end

end A262221.P14072617221392219502

namespace A262221

/-- `floor((25*A046092(n)+7)/4)` -/
def P14072617221392219502.Spec : Prop :=
  ∀ n, P14072617221392219502.a n = A262221 n

end A262221

/-! ## A262221.P15054568114475063738

`A001545(n)%A061793(n)`
-/

namespace A262221.P15054568114475063738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001545 n) (A061793 n)

end

end A262221.P15054568114475063738

namespace A262221

/-- `A001545(n)%A061793(n)` -/
def P15054568114475063738.Spec : Prop :=
  ∀ n, P15054568114475063738.a n = A262221 n

end A262221

/-! ## A262221.P8728166021219158677

`A177059(n)%A164015(n)`
-/

namespace A262221.P8728166021219158677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177059 n) (A164015 n)

end

end A262221.P8728166021219158677

namespace A262221

/-- `A177059(n)%A164015(n)` -/
def P8728166021219158677.Spec : Prop :=
  ∀ n, P8728166021219158677.a n = A262221 n

end A262221

/-! ## A262221.P449574776644348066

`(A257352(n+1)+1)/2`
-/

namespace A262221.P449574776644348066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257352 (n + 1) + 1 : ℚ) / 2

end

end A262221.P449574776644348066

namespace A262221

/-- `(A257352(n+1)+1)/2` -/
def P449574776644348066.Spec : Prop :=
  ∀ n, P449574776644348066.a n = (A262221 n : ℚ)

end A262221

/-! ## A262221.P932063036661631990

`abs(2-A000217(A016777(n)+2*n+1))`
-/

namespace A262221.P932063036661631990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000217 (A016777 n + (2 * n + 1 : ℤ)).toNat|

end

end A262221.P932063036661631990

namespace A262221

/-- `abs(2-A000217(A016777(n)+2*n+1))` -/
def P932063036661631990.Spec : Prop :=
  ∀ n, P932063036661631990.a n = A262221 n

end A262221

/-! ## A262221.P259337281276306755

`∑[record[A317325(n+1)]]`
-/

namespace A262221.P259337281276306755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262221.P259337281276306755

namespace A262221

/-- `∑[record[A317325(n+1)]]` -/
def P259337281276306755.Spec : Prop :=
  ∀ n, P259337281276306755.a n = A262221 n

end A262221

/-! ## A262221.P13375921040325987718

`(A270693(2*n)+1)/2`
-/

namespace A262221.P13375921040325987718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270693 (2 * n) + 1 : ℚ) / 2

end

end A262221.P13375921040325987718

namespace A262221

/-- `(A270693(2*n)+1)/2` -/
def P13375921040325987718.Spec : Prop :=
  ∀ n, P13375921040325987718.a n = (A262221 n : ℚ)

end A262221

/-! ## A262221.P14579846980429131114

`∑[record[A317326(n+1)]-n]`
-/

namespace A262221.P14579846980429131114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317326 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262221.P14579846980429131114

namespace A262221

/-- `∑[record[A317326(n+1)]-n]` -/
def P14579846980429131114.Spec : Prop :=
  ∀ n, P14579846980429131114.a n = A262221 n

end A262221

/-! ## A262221.P16679966477034839550

`∑[A008706(5*n)]`
-/

namespace A262221.P16679966477034839550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262221.P16679966477034839550

namespace A262221

/-- `∑[A008706(5*n)]` -/
def P16679966477034839550.Spec : Prop :=
  ∀ n, P16679966477034839550.a n = A262221 n

end A262221

/-! ## A262221.P13666828977252460072

`A101881(10*n)`
-/

namespace A262221.P13666828977252460072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 (10 * n)

end

end A262221.P13666828977252460072

namespace A262221

/-- `A101881(10*n)` -/
def P13666828977252460072.Spec : Prop :=
  ∀ n, P13666828977252460072.a n = A262221 n

end A262221

/-!
# A262223: a(n) = n + largest palindrome contained in decimal representation of n.

The programs for A262223, there is no canonical definition to state claims against.
-/

/-! ## A262223.P3656397625743965059

`n+A047813(n)`
-/

namespace A262223.P3656397625743965059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A047813 n

end

end A262223.P3656397625743965059

/-! ## A262223.P13369693822661279455

`A047813(n)-A001489(n)`
-/

namespace A262223.P13369693822661279455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n - A001489 n

end

end A262223.P13369693822661279455

/-! ## A262223.P764612437465639318

`A005843(n)-(n-A047813(n))`
-/

namespace A262223.P764612437465639318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A047813 n)

end

end A262223.P764612437465639318

/-! ## A262223.P8742490255649864279

`n-A047813(n)*A057428(n)`
-/

namespace A262223.P8742490255649864279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A047813 n * A057428 n

end

end A262223.P8742490255649864279

/-! ## A262223.P8004420725853356166

`A000096(n)-(∑[n]-A047813(n))`
-/

namespace A262223.P8004420725853356166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A047813 n)

end

end A262223.P8004420725853356166

/-! ## A262223.P11788540309237932167

`A004186(n)-(A108782(n)-A047813(n))`
-/

namespace A262223.P11788540309237932167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n - (A108782 n - A047813 n)

end

end A262223.P11788540309237932167

/-! ## A262223.P2115113594352372982

`A023443(A047813(n)-xor(n, -1))`
-/

namespace A262223.P2115113594352372982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A047813 n - Int.xor (n : ℤ) (-1)).toNat

end

end A262223.P2115113594352372982

/-! ## A262223.P8756963610436786688

`A000463(A005408(n))-(1-A047813(n))`
-/

namespace A262223.P8756963610436786688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A005408 n).toNat - (1 - A047813 n)

end

end A262223.P8756963610436786688

/-!
# A262224: a(n+1) = a(n) + (largest palindrome in decimal representation of a(n)), a(0) = 1.

The programs for A262224, there is no canonical definition to state claims against.
-/

/-! ## A262224.P8237087040304089463

`A262243(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A262224.P8237087040304089463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262243 (n - 1) + a (n - 1)

end

end A262224.P8237087040304089463

/-! ## A262224.P7789660506436658667

`∑[A262243(A004273(n)-n)]`
-/

namespace A262224.P7789660506436658667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262243 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262224.P7789660506436658667

/-! ## A262224.P16806417107029545499

`∑[A262243(n-A057427(n))]`
-/

namespace A262224.P16806417107029545499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262243 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262224.P16806417107029545499

/-! ## A262224.P10155433050272954072

`∑[A262243(n)]+1-A262243(n)`
-/

namespace A262224.P10155433050272954072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A262243 n)

end

end A262224.P10155433050272954072

/-! ## A262224.P6126721837081479781

`∑[A262243(A004526(A004273(n)))]`
-/

namespace A262224.P6126721837081479781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262243 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262224.P6126721837081479781

/-! ## A262224.P16453831400003363859

`∑[A262243(A004526(A004275(n)))]`
-/

namespace A262224.P16453831400003363859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262243 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262224.P16453831400003363859

/-! ## A262224.P5178124347174787176

`∑[A262243(A303301(A167614(n+1)))]`
-/

namespace A262224.P5178124347174787176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262243 (A303301 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262224.P5178124347174787176

/-! ## A262224.P10694177014218975317

`∑[A262243(A002262(A055998(n)))]`
-/

namespace A262224.P10694177014218975317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262243 (A002262 (A055998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262224.P10694177014218975317

/-! ## A262224.P8109527210516657635

`A262223(a(n-1))` with `a(0)=1`
-/

namespace A262224.P8109527210516657635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262223 (a (n - 1)).toNat

end

end A262224.P8109527210516657635

/-! ## A262224.P13396130126956863360

`A047813(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A262224.P13396130126956863360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047813 (a (n - 1)).toNat + a (n - 1)

end

end A262224.P13396130126956863360

/-!
# A262226: Eulerian numbers of type D, the primary type.

The programs for A262226, there is no canonical definition to state claims against.
-/

/-! ## A262226.P7059141703345200458

`A147565(n)+abs(A141665(n))-A007318(n)`
-/

namespace A262226.P7059141703345200458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147565 n + (|A141665 n| - A007318 n)

end

end A262226.P7059141703345200458

/-! ## A262226.P2063014411733365983

`A060187(n+1)-(A147565(n)-abs(A141665(n)))`
-/

namespace A262226.P2063014411733365983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) - (A147565 n - |A141665 n|)

end

end A262226.P2063014411733365983

/-! ## A262226.P2699664926172169166

`abs(A141665(n))+A154334(n)-A141689(n+1)`
-/

namespace A262226.P2699664926172169166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141665 n| + (A154334 n - A141689 (n + 1))

end

end A262226.P2699664926172169166

/-! ## A262226.P6653439328748048834

`A147565(n)-A162590(A061579(n))`
-/

namespace A262226.P6653439328748048834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147565 n - A162590 (A061579 n).toNat

end

end A262226.P6653439328748048834

/-! ## A262226.P12233613651354591554

`(A060187(n+1)+A007318(n))/2-A162590(A061579(n))`
-/

namespace A262226.P12233613651354591554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) + A007318 n : ℚ) / 2 - (A162590 (A061579 n).toNat : ℚ)

end

end A262226.P12233613651354591554

/-! ## A262226.P7926836732333815483

`(A168551(n)+A141689(n+1))/2-A162590(A061579(n))`
-/

namespace A262226.P7926836732333815483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168551 n + A141689 (n + 1) : ℚ) / 2 - (A162590 (A061579 n).toNat : ℚ)

end

end A262226.P7926836732333815483

/-! ## A262226.P767316780345501033

`(A060187(n+1)+A028326(n)/2)/2-A162590(A061579(n))`
-/

namespace A262226.P767316780345501033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A060187 (n + 1) : ℚ) + (A028326 n : ℚ) / 2) / 2 - (A162590 (A061579 n).toNat : ℚ)

end

end A262226.P767316780345501033

/-! ## A262226.P7905502050928138227

`A060187(n+1)-A262227(n)`
-/

namespace A262226.P7905502050928138227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) - A262227 n

end

end A262226.P7905502050928138227

/-! ## A262226.P6408671968687290456

`A262227(n)+A130595(A061579(n))`
-/

namespace A262226.P6408671968687290456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262227 n + A130595 (A061579 n).toNat

end

end A262226.P6408671968687290456

/-! ## A262226.P5023493891364540834

`A262227(n)+A130595(A038722(n+2))`
-/

namespace A262226.P5023493891364540834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262227 n + A130595 (A038722 (n + 2)).toNat

end

end A262226.P5023493891364540834

/-!
# A262227: Eulerian numbers of type D, the complementary type.

The programs for A262227, there is no canonical definition to state claims against.
-/

/-! ## A262227.P5645167051925117749

`A147565(n)-abs(A141665(n))`
-/

namespace A262227.P5645167051925117749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147565 n - |A141665 n|

end

end A262227.P5645167051925117749

/-! ## A262227.P9501312762416438593

`abs(A138076(n))-A262226(n)`
-/

namespace A262227.P9501312762416438593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138076 n| - A262226 n

end

end A262227.P9501312762416438593

/-! ## A262227.P5224452683174779882

`A060187(n+1)-A262226(n)`
-/

namespace A262227.P5224452683174779882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) - A262226 n

end

end A262227.P5224452683174779882

/-! ## A262227.P16439922699989602597

`ceil(A176198(n)/2)-A262226(n)`
-/

namespace A262227.P16439922699989602597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176198 n : ℚ) / 2⌉ - A262226 n

end

end A262227.P16439922699989602597

/-! ## A262227.P16715758017785001964

`A262226(n)-A130595(A061579(n))`
-/

namespace A262227.P16715758017785001964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262226 n - A130595 (A061579 n).toNat

end

end A262227.P16715758017785001964

/-! ## A262227.P16167075008833628872

`A168517(n)-(A290448(n)+A262226(n))`
-/

namespace A262227.P16167075008833628872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168517 n - (A290448 n + A262226 n)

end

end A262227.P16167075008833628872

/-! ## A262227.P2422551814829816568

`A168551(n)+A290448(n)-A262226(n)`
-/

namespace A262227.P2422551814829816568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168551 n + (A290448 n - A262226 n)

end

end A262227.P2422551814829816568

/-! ## A262227.P8033822612840749279

`A257625(n)/A098355(n)-A262226(n)`
-/

namespace A262227.P8033822612840749279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257625 n : ℚ) / (A098355 n : ℚ) - (A262226 n : ℚ)

end

end A262227.P8033822612840749279

/-! ## A262227.P8154226231891174765

`A257612(n)/A137688(n)-A262226(n)`
-/

namespace A262227.P8154226231891174765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257612 n : ℚ) / (A137688 n : ℚ) - (A262226 n : ℚ)

end

end A262227.P8154226231891174765

/-! ## A262227.P18078981041972440996

`(A060187(n+1)+A007318(n))/2-abs(A141665(n))`
-/

namespace A262227.P18078981041972440996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060187 (n + 1) + A007318 n : ℚ) / 2 - (|A141665 n| : ℚ)

end

end A262227.P18078981041972440996

/-!
# A262228: Deficiency sequence: a(0) = 1, a(n) is the smallest prime p > a(n-1) such that the product of a(i), 1 <= i < n, is deficient (belongs to A005100).

The programs for A262228, there is no canonical definition to state claims against.
-/

/-! ## A262228.P7751293602590850808

`A007918(a(n-1)*a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A262228.P7751293602590850808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A007918 (a (n - 1) * a (n - 2)).toNat

end

end A262228.P7751293602590850808

/-! ## A262228.P6248351830892884388

`record[A006530(∑[((8^n+1)/3)^(n%2)])]`
-/

namespace A262228.P6248351830892884388
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n + 1 : ℚ) / 3) ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262228.P6248351830892884388

/-!
# A262231: First term is 2; each subsequent term is the least number greater than the previous term but not a multiple of the successor of any previous term.

The programs for A262231, there is no canonical definition to state claims against.
-/

/-! ## A262231.P17892841033162796064

`A100464(n+1)-1`
-/

namespace A262231.P17892841033162796064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100464 (n + 1) - 1

end

end A262231.P17892841033162796064

/-! ## A262231.P10959944038839884201

`abs(1-A100464(-xor(n, -1)))`
-/

namespace A262231.P10959944038839884201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A100464 (-Int.xor (n : ℤ) (-1)).toNat|

end

end A262231.P10959944038839884201

/-! ## A262231.P10634271167558425067

`abs(1-A100464(Δ[n²]-n))`
-/

namespace A262231.P10634271167558425067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A100464 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A262231.P10634271167558425067

/-! ## A262231.P9067885109622964581

`A023443(A100464(n+1))`
-/

namespace A262231.P9067885109622964581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A100464 (n + 1)).toNat

end

end A262231.P9067885109622964581

/-! ## A262231.P7873501475974427354

`A023444(A100464(n+1)+1)`
-/

namespace A262231.P7873501475974427354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A100464 (n + 1) + 1).toNat

end

end A262231.P7873501475974427354

/-! ## A262231.P5440351751200441678

`A023446(A100464(n+1)+3)`
-/

namespace A262231.P5440351751200441678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A100464 (n + 1) + 3).toNat

end

end A262231.P5440351751200441678

/-! ## A262231.P10767161823733376495

`A065423(2*A100464(n+1))`
-/

namespace A262231.P10767161823733376495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A100464 (n + 1)).toNat

end

end A262231.P10767161823733376495

/-! ## A262231.P13908905828609856009

`A059169(4*A100464(n+1))`
-/

namespace A262231.P13908905828609856009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A100464 (n + 1)).toNat

end

end A262231.P13908905828609856009

/-! ## A262231.P15502122786541380897

`A233583(A100464(n+1)%(30*n+19))`
-/

namespace A262231.P15502122786541380897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.tmod (A100464 (n + 1)) (30 * n + 19 : ℤ)).toNat

end

end A262231.P15502122786541380897

/-! ## A262231.P8078366253238829476

`A107393(A006450(n+1))+A100464(n+1)`
-/

namespace A262231.P8078366253238829476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A006450 (n + 1)).toNat + A100464 (n + 1)

end

end A262231.P8078366253238829476

/-!
# A262232: Number of black and white n-bead necklaces with at least 3 white beads (turning over is not allowed); also number of clockwise arrangements of reflex and non-reflex angles that can form an n-gon.

The programs for A262232, the canonical program `A262232.P26849987353357547` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262232 has offset 0).

The definition of A262232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262232.P26849987353357547

`A052823(n)-A004526(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A262232

/-- `A052823(n)-A004526(n)` -/
def P26849987353357547.Spec : Prop :=
  ∀ n, P26849987353357547.a n = A262232 n

theorem P26849987353357547.correct : P26849987353357547.Spec := by
  intro n
  simp only [A262232]

end A262232

/-! ## A262232.P4824992400611747416

`A000031(n)-A266977(n)`
-/

namespace A262232.P4824992400611747416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A266977 n

end

end A262232.P4824992400611747416

namespace A262232

/-- `A000031(n)-A266977(n)` -/
def P4824992400611747416.Spec : Prop :=
  ∀ n, P4824992400611747416.a n = A262232 n

end A262232

/-! ## A262232.P1014796683572182538

`A052823(n)+1-A008619(n)`
-/

namespace A262232.P1014796683572182538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + (1 - A008619 n)

end

end A262232.P1014796683572182538

namespace A262232

/-- `A052823(n)+1-A008619(n)` -/
def P1014796683572182538.Spec : Prop :=
  ∀ n, P1014796683572182538.a n = A262232 n

theorem P1014796683572182538.correct : P1014796683572182538.Spec := by
  intro n
  simp only [A262232, Nat.add_sub_cancel, A262232.P1014796683572182538.a, A262232.P26849987353357547.a, A004526, A004526.P10084182425416171735.a, A008619, A008619.P16053834178911111118.a, A052823, A052823.P12858488528447412848.a, A008965, A008965.P16924218572130557635.a, A028310, A028310.P18130301328277559831.a, A000031, A000031.P16543801865445953573.f1, A000031.P16543801865445953573.a, A059966, A059966.P5188141675617584754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A262232

/-! ## A262232.P14706430590075657931

`∑[A000035(n)]+A052823(n)-n`
-/

namespace A262232.P14706430590075657931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A052823 n - (n : ℤ))

end

end A262232.P14706430590075657931

namespace A262232

/-- `∑[A000035(n)]+A052823(n)-n` -/
def P14706430590075657931.Spec : Prop :=
  ∀ n, P14706430590075657931.a n = A262232 n

end A262232

/-! ## A262232.P16552779042744416476

`Δ[A033638(n)]+A052823(n)-n`
-/

namespace A262232.P16552779042744416476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A052823 n - (n : ℤ))

end

end A262232.P16552779042744416476

namespace A262232

/-- `Δ[A033638(n)]+A052823(n)-n` -/
def P16552779042744416476.Spec : Prop :=
  ∀ n, P16552779042744416476.a n = A262232 n

end A262232

/-! ## A262232.P16354094355020783162

`A052823(n)-A002264(A007494(n))`
-/

namespace A262232.P16354094355020783162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n - A002264 (A007494 n).toNat

end

end A262232.P16354094355020783162

namespace A262232

/-- `A052823(n)-A002264(A007494(n))` -/
def P16354094355020783162.Spec : Prop :=
  ∀ n, P16354094355020783162.a n = A262232 n

end A262232

/-! ## A262232.P14797864793804299991

`A008965(A065033(2*n))-A065033(n+1)`
-/

namespace A262232.P14797864793804299991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (A065033 (2 * n)).toNat - A065033 (n + 1)

end

end A262232.P14797864793804299991

namespace A262232

/-- `A008965(A065033(2*n))-A065033(n+1)` -/
def P14797864793804299991.Spec : Prop :=
  ∀ n, P14797864793804299991.a n = A262232 n

end A262232

/-!
# A262233: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=1 if n>0.

The programs for A262233, there is no canonical definition to state claims against.
-/

/-! ## A262233.P188079771415055829

`A055034(A133686(n)-A240573(n))`
-/

namespace A262233.P188079771415055829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A133686 n - A240573 n).toNat

end

end A262233.P188079771415055829

/-! ## A262233.P7875805811889731849

`A108467(A006684(n))`
-/

namespace A262233.P7875805811889731849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108467 (A006684 n).toNat

end

end A262233.P7875805811889731849

/-!
# A262234: Number of ordered pairs (p,q) of permutations of [n] with equal up-down signatures and p(1)=q(1) if n>0.

The programs for A262234, there is no canonical definition to state claims against.
-/

/-! ## A262234.P14361834552823147447

`A194514(abs(∏[a(n-1)-3]))` with `a(0)=3, a(1)=1`
-/

namespace A262234.P14361834552823147447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194514 |∏ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A262234.P14361834552823147447

/-! ## A262234.P3186455055565874794

`A276056(∑[2^n]-∏{e}[n+1, #])`
-/

namespace A262234.P3186455055565874794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276056 (∑ j ∈ Finset.range (n + 1), f1 j - ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A262234.P3186455055565874794

/-!
# A262235: Denominators of a series leading to Euler's constant gamma.

The programs for A262235, there is no canonical definition to state claims against.
-/

/-! ## A262235.P9952397395331133791

`A075267(n+1)*(n+2)`
-/

namespace A262235.P9952397395331133791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075267 (n + 1) * (n + 2 : ℤ)

end

end A262235.P9952397395331133791

/-! ## A262235.P14324691176532906788

`A028310(A077611(n+1))*A079612(n+1)*(n+2)`
-/

namespace A262235.P14324691176532906788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077611 (n + 1)).toNat * A079612 (n + 1) * (n + 2 : ℤ)

end

end A262235.P14324691176532906788

/-!
# A262236: Number of (n+3) X (1+3) 0..1 arrays with each row and column divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A262236, the canonical program `A262236.P6119743136567806783` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262236 has offset 1).

The definition of A262236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262236.P6119743136567806783

`3*a(n-1)-2*a(n-2)-a(n-5)+3*a(n-6)-2*a(n-7)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=12, a(4)=24, a(5)=47, a(6)=94`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262236

/-- `3*a(n-1)-2*a(n-2)-a(n-5)+3*a(n-6)-2*a(n-7)` -/
def P6119743136567806783.Spec : Prop :=
  ∀ n, P6119743136567806783.a n = A262236 (n + 1)

theorem P6119743136567806783.correct : P6119743136567806783.Spec := by
  intro n
  simp only [A262236, Nat.add_sub_cancel]

end A262236

/-! ## A262236.P492962427511743747

`ceil(2^(n+4)/11)`
-/

namespace A262236.P492962427511743747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ (n + 4) : ℚ) / 11⌉

end

end A262236.P492962427511743747

namespace A262236

/-- `ceil(2^(n+4)/11)` -/
def P492962427511743747.Spec : Prop :=
  ∀ n, P492962427511743747.a n = A262236 (n + 1)

end A262236

/-! ## A262236.P1113855962462214369

`floor(A246139(n+4)/11)`
-/

namespace A262236.P1113855962462214369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A246139 (n + 4) : ℚ) / 11⌋

end

end A262236.P1113855962462214369

namespace A262236

/-- `floor(A246139(n+4)/11)` -/
def P1113855962462214369.Spec : Prop :=
  ∀ n, P1113855962462214369.a n = A262236 (n + 1)

end A262236

/-! ## A262236.P7769144233557502653

`floor(2^(n+4)/11)+A002144(n+1)%2`
-/

namespace A262236.P7769144233557502653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 4) : ℚ) / 11⌋ + Int.tmod (A002144 (n + 1)) 2

end

end A262236.P7769144233557502653

namespace A262236

/-- `floor(2^(n+4)/11)+A002144(n+1)%2` -/
def P7769144233557502653.Spec : Prop :=
  ∀ n, P7769144233557502653.a n = A262236 (n + 1)

end A262236

/-! ## A262236.P1659679688490858157

`round((Δ[A000225(n+4)]+5)/11)`
-/

namespace A262236.P1659679688490858157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n + 5 : ℚ) / 11)

end

end A262236.P1659679688490858157

namespace A262236

/-- `round((Δ[A000225(n+4)]+5)/11)` -/
def P1659679688490858157.Spec : Prop :=
  ∀ n, P1659679688490858157.a n = A262236 (n + 1)

end A262236

/-! ## A262236.P6615545956230525003

`floor(2^(n+4)/11)+A007318(∑[n])`
-/

namespace A262236.P6615545956230525003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 4) : ℚ) / 11⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262236.P6615545956230525003

namespace A262236

/-- `floor(2^(n+4)/11)+A007318(∑[n])` -/
def P6615545956230525003.Spec : Prop :=
  ∀ n, P6615545956230525003.a n = A262236 (n + 1)

end A262236

/-! ## A262236.P13550997027712482538

`floor(2^(n+4)/11-A057428(A332035(n+1)))`
-/

namespace A262236.P13550997027712482538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 4) : ℚ) / 11 - (A057428 (A332035 (n + 1)).toNat : ℚ)⌋

end

end A262236.P13550997027712482538

namespace A262236

/-- `floor(2^(n+4)/11-A057428(A332035(n+1)))` -/
def P13550997027712482538.Spec : Prop :=
  ∀ n, P13550997027712482538.a n = A262236 (n + 1)

end A262236

/-!
# A262237: Number of (n+3)X(2+3) 0..1 arrays with each row and column divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A262237, there is no canonical definition to state claims against.
-/

/-! ## A262237.P12985065985650958245

`A262240(∑[n+1]+2)`
-/

namespace A262237.P12985065985650958245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A262237.P12985065985650958245

/-! ## A262237.P5681845247355363582

`or(1, A262240(A238531(n+2)))`
-/

namespace A262237.P5681845247355363582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262240 (A238531 (n + 2)).toNat)

end

end A262237.P5681845247355363582

/-! ## A262237.P4748020484310879833

`record[A262240(n+2)/A145901(n)]`
-/

namespace A262237.P4748020484310879833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262240 (n + 2) : ℚ) / (A145901 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262237.P4748020484310879833

/-! ## A262237.P6990161793132475108

`record[root(A262240(n+2), A074909(n))]`
-/

namespace A262237.P6990161793132475108
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262240 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262237.P6990161793132475108

/-! ## A262237.P17804912364340571227

`A262240(A238531(n+2))+A061858(n)`
-/

namespace A262237.P17804912364340571227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (A238531 (n + 2)).toNat + A061858 n

end

end A262237.P17804912364340571227

/-!
# A262238: Number of (n+3)X(3+3) 0..1 arrays with each row and column divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A262238, there is no canonical definition to state claims against.
-/

/-! ## A262238.P8866830980198277423

`A262240(∑[n+2]+4)`
-/

namespace A262238.P8866830980198277423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262238.P8866830980198277423

/-! ## A262238.P1561606454402640883

`A262240(A167614(n+1))+char[17]`
-/

namespace A262238.P1561606454402640883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A262238.P1561606454402640883

/-! ## A262238.P3470695628798246957

`A262240(A167614(n+1))*A349167(2*n+1)`
-/

namespace A262238.P3470695628798246957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (A167614 (n + 1)).toNat * A349167 (2 * n + 1)

end

end A262238.P3470695628798246957

/-! ## A262238.P14776433828565330488

`A262240(A034856(n+2))*A349167(2*n+3)`
-/

namespace A262238.P14776433828565330488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (A034856 (n + 2)).toNat * A349167 (2 * n + 3)

end

end A262238.P14776433828565330488

/-!
# A262239: Number of (n+3)X(4+3) 0..1 arrays with each row and column divisible by 11, read as a binary number with top and left being the most significant bits.

The programs for A262239, there is no canonical definition to state claims against.
-/

/-! ## A262239.P2037233111448053519

`A262240(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A262239.P2037233111448053519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A262239.P2037233111448053519

/-! ## A262239.P3018167729953845633

`A262240(A141214(n)+7)`
-/

namespace A262239.P3018167729953845633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (A141214 n + 7).toNat

end

end A262239.P3018167729953845633

/-! ## A262239.P1207929126942488884

`A262240(A052905(n)+9)`
-/

namespace A262239.P1207929126942488884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (A052905 n + 9).toNat

end

end A262239.P1207929126942488884

/-! ## A262239.P10502881958543735921

`A262240(A055999(n)+10)`
-/

namespace A262239.P10502881958543735921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (A055999 n + 10).toNat

end

end A262239.P10502881958543735921

/-! ## A262239.P11729344276383343759

`A262240(eq[5, A066657(n)])`
-/

namespace A262239.P11729344276383343759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262239.P11729344276383343759

/-!
# A262241: Number of ordered pairs (p,q) of permutations of [n] with complementary up-down signatures and p(1)=q(1) if n>0.

The programs for A262241, there is no canonical definition to state claims against.
-/

/-! ## A262241.P818431885259831805

`A057099(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A262241.P818431885259831805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n a =>
  A057099 (a (n - 1) ^ 2).toNat

end

end A262241.P818431885259831805

/-! ## A262241.P4791499032272760395

`A184992(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A262241.P4791499032272760395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n a =>
  A184992 (a (n - 1) ^ 2).toNat

end

end A262241.P4791499032272760395

/-!
# A262242: Triangular numbers representable as 2^x + 2^y.

The programs for A262242, the canonical program `A262242.P3453831275792058442` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262242 has offset 1).

The definition of A262242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262242.P3453831275792058442

`6*a(n-1)-8*a(n-2)` with `a(0)=3, a(1)=6, a(2)=10, a(3)=36, a(4)=66, a(5)=136, a(6)=528`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262242

/-- `6*a(n-1)-8*a(n-2)` -/
def P3453831275792058442.Spec : Prop :=
  ∀ n, P3453831275792058442.a n = A262242 (n + 1)

theorem P3453831275792058442.correct : P3453831275792058442.Spec := by
  intro n
  simp only [A262242, Nat.add_sub_cancel]

end A262242

/-! ## A262242.P12604460360645670957

`∩[C(A173786(n), 2), A173786(n)]`
-/

namespace A262242.P12604460360645670957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173786 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262242.P12604460360645670957

namespace A262242

/-- `∩[C(A173786(n), 2), A173786(n)]` -/
def P12604460360645670957.Spec : Prop :=
  ∀ n, (P12604460360645670957.a n : ℤ) = A262242 (n + 1)

end A262242

/-! ## A262242.P8103687869832868145

`∩[A000217(n), A173786(n)]`
-/

namespace A262242.P8103687869832868145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262242.P8103687869832868145

namespace A262242

/-- `∩[A000217(n), A173786(n)]` -/
def P8103687869832868145.Spec : Prop :=
  ∀ n, (P8103687869832868145.a n : ℤ) = A262242 (n + 1)

end A262242

/-! ## A262242.P13571441374717341648

`∩[A000217(n), A018900(n+1)]`
-/

namespace A262242.P13571441374717341648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262242.P13571441374717341648

namespace A262242

/-- `∩[A000217(n), A018900(n+1)]` -/
def P13571441374717341648.Spec : Prop :=
  ∀ n, (P13571441374717341648.a n : ℤ) = A262242 (n + 1)

end A262242

/-! ## A262242.P11509169238021163674

`∩[A130200(n+1), A173786(n)]`
-/

namespace A262242.P11509169238021163674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262242.P11509169238021163674

namespace A262242

/-- `∩[A130200(n+1), A173786(n)]` -/
def P11509169238021163674.Spec : Prop :=
  ∀ n, (P11509169238021163674.a n : ℤ) = A262242 (n + 1)

end A262242

/-!
# A262243: First differences of A262224.

The programs for A262243, there is no canonical definition to state claims against.
-/

/-! ## A262243.P5225458569174789962

`A262224(n+1)-A262224(n)`
-/

namespace A262243.P5225458569174789962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262224 (n + 1) - A262224 n

end

end A262243.P5225458569174789962

/-! ## A262243.P8329393275810314399

`A047813(A262224(n))`
-/

namespace A262243.P8329393275810314399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A262224 n).toNat

end

end A262243.P8329393275810314399

/-! ## A262243.P17230700205536243630

`Δ[A262224(n)]%A009440(n+1)`
-/

namespace A262243.P17230700205536243630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A009440 (n + 1))

end

end A262243.P17230700205536243630

/-! ## A262243.P5912311282389622592

`Δ[A262224(n)%A072961(n+1)]`
-/

namespace A262243.P5912311282389622592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262224 n) (A072961 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262243.P5912311282389622592

/-! ## A262243.P8657173698784612415

`Δ[A262224(n)]^A027642(2*n+1)`
-/

namespace A262243.P8657173698784612415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262224 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A027642 (2 * n + 1) : ℤ)

end

end A262243.P8657173698784612415

/-! ## A262243.P10570444353796014480

`Δ[A262224(n)+A057427(2*n+3)]`
-/

namespace A262243.P10570444353796014480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262224 n + A057427 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262243.P10570444353796014480

/-! ## A262243.P10508392264643296054

`Δ[A262223(a(n-1))]` with `a(0)=1`
-/

namespace A262243.P10508392264643296054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A262223 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262243.P10508392264643296054

/-! ## A262243.P18207363789972406781

`Δ[A047813(a(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A262243.P18207363789972406781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A047813 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A262243.P18207363789972406781

/-!
# A262244: Number of concave equilateral n-gons with corner angles of m*Pi/n (0 < m < 2n), where m and n are integers.

The programs for A262244, there is no canonical definition to state claims against.
-/

/-! ## A262244.P1105409743524649264

`A060884(A003501(n))%A083355(n)`
-/

namespace A262244.P1105409743524649264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060884 (A003501 n).toNat) (A083355 n)

end

end A262244.P1105409743524649264

/-! ## A262244.P1378377256625860265

`A379350(A273398(n)*A319436(n+1))`
-/

namespace A262244.P1378377256625860265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379350 (A273398 n * A319436 (n + 1)).toNat

end

end A262244.P1378377256625860265

/-!
# A262247: Number of squares formed from a square composed of p^2 unit squares where p is n-th prime.

The programs for A262247, the canonical program `A262247.P16416893810568802159` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262247 has offset 1).

The definition of A262247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262247.P16416893810568802159

`A000330(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262247

/-- `A000330(A000040(n+1))` -/
def P16416893810568802159.Spec : Prop :=
  ∀ n, P16416893810568802159.a n = A262247 (n + 1)

theorem P16416893810568802159.correct : P16416893810568802159.Spec := by
  intro n
  simp only [A262247, Nat.add_sub_cancel]

end A262247

/-! ## A262247.P11945525296160047047

`A098996(n+1)/6`
-/

namespace A262247.P11945525296160047047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098996 (n + 1) : ℚ) / 6

end

end A262247.P11945525296160047047

namespace A262247

/-- `A098996(n+1)/6` -/
def P11945525296160047047.Spec : Prop :=
  ∀ n, P11945525296160047047.a n = (A262247 (n + 1) : ℚ)

end A262247

/-! ## A262247.P12842262835323575164

`A127919(n+1)+A034953(n+1)`
-/

namespace A262247.P12842262835323575164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127919 (n + 1) + A034953 (n + 1)

end

end A262247.P12842262835323575164

namespace A262247

/-- `A127919(n+1)+A034953(n+1)` -/
def P12842262835323575164.Spec : Prop :=
  ∀ n, P12842262835323575164.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P7570454070025988747

`A034953(n+1)+2*A127920(n+1)`
-/

namespace A262247.P7570454070025988747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) + 2 * A127920 (n + 1)

end

end A262247.P7570454070025988747

namespace A262247

/-- `A034953(n+1)+2*A127920(n+1)` -/
def P7570454070025988747.Spec : Prop :=
  ∀ n, P7570454070025988747.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P17677634320140417794

`A127919(n+1)+A138420(n+1)/A008837(n+1)`
-/

namespace A262247.P17677634320140417794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127919 (n + 1) : ℚ) + (A138420 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ)

end

end A262247.P17677634320140417794

namespace A262247

/-- `A127919(n+1)+A138420(n+1)/A008837(n+1)` -/
def P17677634320140417794.Spec : Prop :=
  ∀ n, P17677634320140417794.a n = (A262247 (n + 1) : ℚ)

end A262247

/-! ## A262247.P15102099525268957863

`A011756(n+1)+A127919(n+1)+A123907(n+1)`
-/

namespace A262247.P15102099525268957863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011756 (n + 1) + (A127919 (n + 1) + A123907 (n + 1))

end

end A262247.P15102099525268957863

namespace A262247

/-- `A011756(n+1)+A127919(n+1)+A123907(n+1)` -/
def P15102099525268957863.Spec : Prop :=
  ∀ n, P15102099525268957863.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P16361106793760093775

`A000330(p?[comp[n²]])`
-/

namespace A262247.P16361106793760093775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A262247.P16361106793760093775

namespace A262247

/-- `A000330(p?[comp[n²]])` -/
def P16361106793760093775.Spec : Prop :=
  ∀ n, P16361106793760093775.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P4532275109125374814

`A000330(eq[1, ∏{e}[n, #+1]-1])`
-/

namespace A262247.P4532275109125374814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262247.P4532275109125374814

namespace A262247

/-- `A000330(eq[1, ∏{e}[n, #+1]-1])` -/
def P4532275109125374814.Spec : Prop :=
  ∀ n, P4532275109125374814.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P5602920198864390549

`A000330(eq[2, ∑{d}[n, 2%(#+1)]])`
-/

namespace A262247.P5602920198864390549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 2 % (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A262247.P5602920198864390549

namespace A262247

/-- `A000330(eq[2, ∑{d}[n, 2%(#+1)]])` -/
def P5602920198864390549.Spec : Prop :=
  ∀ n, P5602920198864390549.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P4353749395754292614

`A000330(Δ[A007504(n)])`
-/

namespace A262247.P4353749395754292614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (n + 1) - f1 n).toNat

end

end A262247.P4353749395754292614

namespace A262247

/-- `A000330(Δ[A007504(n)])` -/
def P4353749395754292614.Spec : Prop :=
  ∀ n, P4353749395754292614.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P12147056488302984108

`A000330(A008578(n+2))`
-/

namespace A262247.P12147056488302984108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A008578 (n + 2)).toNat

end

end A262247.P12147056488302984108

namespace A262247

/-- `A000330(A008578(n+2))` -/
def P12147056488302984108.Spec : Prop :=
  ∀ n, P12147056488302984108.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P3694671644542345261

`A000330(A182986(n+2))`
-/

namespace A262247.P3694671644542345261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A182986 (n + 2)).toNat

end

end A262247.P3694671644542345261

namespace A262247

/-- `A000330(A182986(n+2))` -/
def P3694671644542345261.Spec : Prop :=
  ∀ n, P3694671644542345261.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P5641899557949313923

`A000330(record[A006530(n+2)])`
-/

namespace A262247.P5641899557949313923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262247.P5641899557949313923

namespace A262247

/-- `A000330(record[A006530(n+2)])` -/
def P5641899557949313923.Spec : Prop :=
  ∀ n, P5641899557949313923.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P4776203739284929298

`A000330(record[A020639(n+2)])`
-/

namespace A262247.P4776203739284929298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262247.P4776203739284929298

namespace A262247

/-- `A000330(record[A020639(n+2)])` -/
def P4776203739284929298.Spec : Prop :=
  ∀ n, P4776203739284929298.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P15104807930768572238

`A179904(record[A006530(n+2)])-2`
-/

namespace A262247.P15104807930768572238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A262247.P15104807930768572238

namespace A262247

/-- `A179904(record[A006530(n+2)])-2` -/
def P15104807930768572238.Spec : Prop :=
  ∀ n, P15104807930768572238.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P13232975331166618814

`A179904(record[A020639(n+2)])-2`
-/

namespace A262247.P13232975331166618814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 2

end

end A262247.P13232975331166618814

namespace A262247

/-- `A179904(record[A020639(n+2)])-2` -/
def P13232975331166618814.Spec : Prop :=
  ∀ n, P13232975331166618814.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P2546048805344754059

`A000330(eq[1, A001222(n+1)]+1)`
-/

namespace A262247.P2546048805344754059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A262247.P2546048805344754059

namespace A262247

/-- `A000330(eq[1, A001222(n+1)]+1)` -/
def P2546048805344754059.Spec : Prop :=
  ∀ n, P2546048805344754059.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P16881192895541170072

`A179904(eq[1, A001222(n+1)]+1)-2`
-/

namespace A262247.P16881192895541170072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 2

end

end A262247.P16881192895541170072

namespace A262247

/-- `A179904(eq[1, A001222(n+1)]+1)-2` -/
def P16881192895541170072.Spec : Prop :=
  ∀ n, P16881192895541170072.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P1563030014682461434

`A179904(lt[A001222(n+2), 2]+2)-2`
-/

namespace A262247.P1563030014682461434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2) - 2

end

end A262247.P1563030014682461434

namespace A262247

/-- `A179904(lt[A001222(n+2), 2]+2)-2` -/
def P1563030014682461434.Spec : Prop :=
  ∀ n, P1563030014682461434.a n = A262247 (n + 1)

end A262247

/-! ## A262247.P2330965700982352191

`A000330(A007504(n+1)-A007504(n))`
-/

namespace A262247.P2330965700982352191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A007504 (n + 1) - A007504 n).toNat

end

end A262247.P2330965700982352191

namespace A262247

/-- `A000330(A007504(n+1)-A007504(n))` -/
def P2330965700982352191.Spec : Prop :=
  ∀ n, P2330965700982352191.a n = A262247 (n + 1)

end A262247

/-!
# A262248: Number of intersections of diagonals in the interior of a regular p-gon where p is the n-th prime.

The programs for A262248, the canonical program `A262248.P6925392583546764891` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262248 has offset 1).

The definition of A262248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262248.P11432253969000788586

`A006561(A000040(n+1))`
-/

namespace A262248.P11432253969000788586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (A000040 (n + 1)).toNat

end

end A262248.P11432253969000788586

namespace A262248

/-- `A006561(A000040(n+1))` -/
def P11432253969000788586.Spec : Prop :=
  ∀ n, P11432253969000788586.a n = A262248 (n + 1)

end A262248

/-! ## A262248.P6925392583546764891

`C(A006005(n+1), 4)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A262248

/-- `C(A006005(n+1), 4)` -/
def P6925392583546764891.Spec : Prop :=
  ∀ n, (P6925392583546764891.a n : ℤ) = A262248 (n + 1)

theorem P6925392583546764891.correct : P6925392583546764891.Spec := by
  intro n
  simp only [A262248, Nat.add_sub_cancel]

end A262248

/-! ## A262248.P13594214584194731804

`C(A171577(n+1), 4)`
-/

namespace A262248.P13594214584194731804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A171577 (n + 1)).toNat 4

end

end A262248.P13594214584194731804

namespace A262248

/-- `C(A171577(n+1), 4)` -/
def P13594214584194731804.Spec : Prop :=
  ∀ n, (P13594214584194731804.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P16804420110585946444

`C(A008578(n+2), 4)`
-/

namespace A262248.P16804420110585946444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008578 (n + 2)).toNat 4

end

end A262248.P16804420110585946444

namespace A262248

/-- `C(A008578(n+2), 4)` -/
def P16804420110585946444.Spec : Prop :=
  ∀ n, (P16804420110585946444.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P14455720975439958392

`C(A171525(n+2), 4)`
-/

namespace A262248.P14455720975439958392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A171525 (n + 2)).toNat 4

end

end A262248.P14455720975439958392

namespace A262248

/-- `C(A171525(n+2), 4)` -/
def P14455720975439958392.Spec : Prop :=
  ∀ n, (P14455720975439958392.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P15829156253391452368

`C(A182986(n+2), 4)`
-/

namespace A262248.P15829156253391452368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A182986 (n + 2)).toNat 4

end

end A262248.P15829156253391452368

namespace A262248

/-- `C(A182986(n+2), 4)` -/
def P15829156253391452368.Spec : Prop :=
  ∀ n, (P15829156253391452368.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P7039805723316818295

`C(A158611(n+3), 4)`
-/

namespace A262248.P7039805723316818295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A158611 (n + 3)).toNat 4

end

end A262248.P7039805723316818295

namespace A262248

/-- `C(A158611(n+3), 4)` -/
def P7039805723316818295.Spec : Prop :=
  ∀ n, (P7039805723316818295.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P7218891313159817934

`C(p?[A000430(n+1)], 4)`
-/

namespace A262248.P7218891313159817934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 4

end

end A262248.P7218891313159817934

namespace A262248

/-- `C(p?[A000430(n+1)], 4)` -/
def P7218891313159817934.Spec : Prop :=
  ∀ n, (P7218891313159817934.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P16001210467062422413

`C(p?[xor(1, n)], 4)`
-/

namespace A262248.P16001210467062422413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) 4

end

end A262248.P16001210467062422413

namespace A262248

/-- `C(p?[xor(1, n)], 4)` -/
def P16001210467062422413.Spec : Prop :=
  ∀ n, (P16001210467062422413.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P14547371071641070240

`C(record[A006530(n+2)], 4)`
-/

namespace A262248.P14547371071641070240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 4

end

end A262248.P14547371071641070240

namespace A262248

/-- `C(record[A006530(n+2)], 4)` -/
def P14547371071641070240.Spec : Prop :=
  ∀ n, (P14547371071641070240.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P9523652719111643819

`C(record[A020639(n+2)], 4)`
-/

namespace A262248.P9523652719111643819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 4

end

end A262248.P9523652719111643819

namespace A262248

/-- `C(record[A020639(n+2)], 4)` -/
def P9523652719111643819.Spec : Prop :=
  ∀ n, (P9523652719111643819.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P2525155074643577384

`C(record[xor(1, A000010(n+1))], 4)`
-/

namespace A262248.P2525155074643577384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 4

end

end A262248.P2525155074643577384

namespace A262248

/-- `C(record[xor(1, A000010(n+1))], 4)` -/
def P2525155074643577384.Spec : Prop :=
  ∀ n, (P2525155074643577384.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P12998412817091239923

`C(A067747(2*n+1), 4)`
-/

namespace A262248.P12998412817091239923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067747 (2 * n + 1)).toNat 4

end

end A262248.P12998412817091239923

namespace A262248

/-- `C(A067747(2*n+1), 4)` -/
def P12998412817091239923.Spec : Prop :=
  ∀ n, (P12998412817091239923.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P5862569472852400639

`C(A134735(2*n+1), 4)`
-/

namespace A262248.P5862569472852400639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A134735 (2 * n + 1)).toNat 4

end

end A262248.P5862569472852400639

namespace A262248

/-- `C(A134735(2*n+1), 4)` -/
def P5862569472852400639.Spec : Prop :=
  ∀ n, (P5862569472852400639.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P5025039663185749212

`C(A209259(2*n+1), 4)`
-/

namespace A262248.P5025039663185749212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A209259 (2 * n + 1)).toNat 4

end

end A262248.P5025039663185749212

namespace A262248

/-- `C(A209259(2*n+1), 4)` -/
def P5025039663185749212.Spec : Prop :=
  ∀ n, (P5025039663185749212.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P3466290874454091675

`C(A075643(n+2), 4)`
-/

namespace A262248.P3466290874454091675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075643 (n + 2)).toNat 4

end

end A262248.P3466290874454091675

namespace A262248

/-- `C(A075643(n+2), 4)` -/
def P3466290874454091675.Spec : Prop :=
  ∀ n, (P3466290874454091675.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P8821604184551526736

`C(record[∑{p}[2*n+1, #]], 4)`
-/

namespace A262248.P8821604184551526736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 4

end

end A262248.P8821604184551526736

namespace A262248

/-- `C(record[∑{p}[2*n+1, #]], 4)` -/
def P8821604184551526736.Spec : Prop :=
  ∀ n, (P8821604184551526736.a n : ℤ) = A262248 (n + 1)

end A262248

/-! ## A262248.P905622535037853456

`A006561(record[A006530(n+2)])`
-/

namespace A262248.P905622535037853456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262248.P905622535037853456

namespace A262248

/-- `A006561(record[A006530(n+2)])` -/
def P905622535037853456.Spec : Prop :=
  ∀ n, P905622535037853456.a n = A262248 (n + 1)

end A262248

/-! ## A262248.P17157498410373386885

`A006561(record[A020639(n+2)])`
-/

namespace A262248.P17157498410373386885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006561 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262248.P17157498410373386885

namespace A262248

/-- `A006561(record[A020639(n+2)])` -/
def P17157498410373386885.Spec : Prop :=
  ∀ n, P17157498410373386885.a n = A262248 (n + 1)

end A262248

/-! ## A262248.P5068704013905393648

`C(p?[comp[n²]], 4)`
-/

namespace A262248.P5068704013905393648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) 4

end

end A262248.P5068704013905393648

namespace A262248

/-- `C(p?[comp[n²]], 4)` -/
def P5068704013905393648.Spec : Prop :=
  ∀ n, (P5068704013905393648.a n : ℤ) = A262248 (n + 1)

end A262248

/-!
# A262250: Primes having exactly one digit in {1, 3, 7, 9}.

The programs for A262250, there is no canonical definition to state claims against.
-/

/-! ## A262250.P13045261678760392621

`A360040(n+4)%A360925(A069706(2*n+1))`
-/

namespace A262250.P13045261678760392621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360040 (n + 4)) (A360925 (A069706 (2 * n + 1)).toNat)

end

end A262250.P13045261678760392621

/-! ## A262250.P10440099855407456028

`∩[A165240(n+1), A244529(n+1)]`
-/

namespace A262250.P10440099855407456028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262250.P10440099855407456028

/-! ## A262250.P4495078461223788273

`∩[A165240(n+1), A360040(n+1)]`
-/

namespace A262250.P4495078461223788273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262250.P4495078461223788273

/-! ## A262250.P15994381215859746516

`∩[A165240(n+1), A360041(n+1)]`
-/

namespace A262250.P15994381215859746516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262250.P15994381215859746516

/-! ## A262250.P8987832245270065509

`∩[A165240(n+1), A397784(n+1)]`
-/

namespace A262250.P8987832245270065509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262250.P8987832245270065509

/-!
# A262252: Even Quasi-Carmichael numbers.

The programs for A262252, there is no canonical definition to state claims against.
-/

/-! ## A262252.P1973306131677241564

`A257751(lt[A257751(n+1)%2, 1]+1)`
-/

namespace A262252.P1973306131677241564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257751 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257751 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A262252.P1973306131677241564

/-!
# A262253: A weighted sum over the rooted trees of n nodes (A214568).

The programs for A262253, there is no canonical definition to state claims against.
-/

/-! ## A262253.P15825254094646824942

`A248607(A014137(n))-A110789(n+1)`
-/

namespace A262253.P15825254094646824942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (A014137 n).toNat - A110789 (n + 1)

end

end A262253.P15825254094646824942

/-! ## A262253.P17934899456515581528

`A248607(A014137(n))-A322832(∑[A008619(n!)])`
-/

namespace A262253.P17934899456515581528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (A014137 n).toNat - A322832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262253.P17934899456515581528

/-! ## A262253.P985798601344721489

`A248607(A014137(n))-A322832(∑[A328399(n!)])`
-/

namespace A262253.P985798601344721489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (A014137 n).toNat - A322832 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A262253.P985798601344721489

/-! ## A262253.P14668525094473144308

`A248607(A014137(n))-(A196390(A196419(n+1))-A196389(A196393(n+1)))`
-/

namespace A262253.P14668525094473144308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (A014137 n).toNat - (A196390 (A196419 (n + 1)).toNat - A196389 (A196393 (n + 1)).toNat)

end

end A262253.P14668525094473144308

/-!
# A262254: a(1) = 11; for n>1, a(n) is the smallest prime that starts with the least significant digit of the previous term and has not occurred earlier.

The programs for A262254, there is no canonical definition to state claims against.
-/

/-! ## A262254.P14098785433312225260

`A262283(n+5)-A034432(A213998(n))`
-/

namespace A262254.P14098785433312225260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262283 (n + 5) - A034432 (A213998 n).toNat

end

end A262254.P14098785433312225260

/-! ## A262254.P16355127458436115317

`p?[A015828(n)*A262283(n+5)]`
-/

namespace A262254.P16355127458436115317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015828 n * A262283 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262254.P16355127458436115317

/-! ## A262254.P7691468694011243136

`A262283(n+5)%A252524(n+1)`
-/

namespace A262254.P7691468694011243136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262283 (n + 5)) (A252524 (n + 1))

end

end A262254.P7691468694011243136

/-! ## A262254.P8423684802801658946

`A262283(n+5)+A000038(A000213(n))`
-/

namespace A262254.P8423684802801658946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262283 (n + 5) + A000038 (A000213 n).toNat

end

end A262254.P8423684802801658946

/-! ## A262254.P9293702041707786820

`A262283(n+5)+A067898(A118190(n))`
-/

namespace A262254.P9293702041707786820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262283 (n + 5) + A067898 (A118190 n).toNat

end

end A262254.P9293702041707786820

/-!
# A262255: Inverse permutation to A262323.

The programs for A262255, there is no canonical definition to state claims against.
-/

/-! ## A262255.P2208450273764852659

`lt[A262323(n+1), 10]+1`
-/

namespace A262255.P2208450273764852659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262323 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A262255.P2208450273764852659

/-! ## A262255.P3280418604833039166

`lt[A262460(n+1), 10]+1`
-/

namespace A262255.P3280418604833039166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262460 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A262255.P3280418604833039166

/-! ## A262255.P3946582316999374886

`∑[record[A248978(3*n)]%7]`
-/

namespace A262255.P3946582316999374886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248978 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262255.P3946582316999374886

/-! ## A262255.P7468965370417096664

`3%A014623(n)+4*n+1`
-/

namespace A262255.P7468965370417096664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A014623 n) + (4 * n : ℤ) + 1

end

end A262255.P7468965370417096664

/-! ## A262255.P4323372432497014623

`A262461(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A262255.P4323372432497014623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262461 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A262255.P4323372432497014623

/-!
# A262257: Minimal number of editing steps (delete, insert or substitute) to transform n in decimal representation into the largest palindrome <= n.

The programs for A262257, there is no canonical definition to state claims against.
-/

/-! ## A262257.P15981549168081094807

`floor(gcd(A123895(n), A219196(n))/4)`
-/

namespace A262257.P15981549168081094807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd (A123895 n) (A219196 n) : ℚ) / 4⌋

end

end A262257.P15981549168081094807

/-!
# A262258: a(n) = the number of hills (arch length of 1 with no covering arches) for semi-meander solutions with n arches and floor((n+2)/2) arch group returns to the x axis.

The programs for A262258, the canonical program `A262258.P5457999542061098780` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262258 has offset 1).

The definition of A262258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A262258.P5457999542061098780

`ceil(2^floor(n/2)*(floor((n+1)/2)-floor((n-2)/2)/2))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262258

/-- `ceil(2^floor(n/2)*(floor((n+1)/2)-floor((n-2)/2)/2))` -/
def P5457999542061098780.Spec : Prop :=
  ∀ n, P5457999542061098780.a n = A262258 (n + 1)

theorem P5457999542061098780.correct : P5457999542061098780.Spec := by
  intro n
  simp only [A262258, Nat.add_sub_cancel]

end A262258

/-! ## A262258.P6626658825244958419

`A057711(floor(n/2)+1)+Δ[A016116(n)]`
-/

namespace A262258.P6626658825244958419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (⌊(n : ℚ) / 2⌋ + 1).toNat + (f1 (n + 1) - f1 n)

end

end A262258.P6626658825244958419

namespace A262258

/-- `A057711(floor(n/2)+1)+Δ[A016116(n)]` -/
def P6626658825244958419.Spec : Prop :=
  ∀ n, P6626658825244958419.a n = A262258 (n + 1)

end A262258

/-! ## A262258.P16348570332171296484

`A129954(A008619(n))-A135530(n)`
-/

namespace A262258.P16348570332171296484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129954 (A008619 n).toNat - A135530 n

end

end A262258.P16348570332171296484

namespace A262258

/-- `A129954(A008619(n))-A135530(n)` -/
def P16348570332171296484.Spec : Prop :=
  ∀ n, P16348570332171296484.a n = A262258 (n + 1)

end A262258

/-! ## A262258.P4335972003845844830

`A011782(A004526(n))*A052938(A254667(n))`
-/

namespace A262258.P4335972003845844830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A004526 n).toNat * A052938 (A254667 n).toNat

end

end A262258.P4335972003845844830

namespace A262258

/-- `A011782(A004526(n))*A052938(A254667(n))` -/
def P4335972003845844830.Spec : Prop :=
  ∀ n, P4335972003845844830.a n = A262258 (n + 1)

end A262258

/-! ## A262258.P8231863704646181151

`4*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4, a(4)=6, a(5)=10`
-/

namespace A262258.P8231863704646181151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4, 6, 10] fun n a =>
  4 * a (n - 2) - 4 * a (n - 4)

end

end A262258.P8231863704646181151

namespace A262258

/-- `4*a(n-2)-4*a(n-4)` -/
def P8231863704646181151.Spec : Prop :=
  ∀ n, P8231863704646181151.a n = A262258 (n + 1)

end A262258

/-! ## A262258.P9192854272799488698

`∑[A080928(∑[A057979(n)])]`
-/

namespace A262258.P9192854272799488698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080928 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262258.P9192854272799488698

namespace A262258

/-- `∑[A080928(∑[A057979(n)])]` -/
def P9192854272799488698.Spec : Prop :=
  ∀ n, P9192854272799488698.a n = A262258 (n + 1)

end A262258

/-! ## A262258.P17969011845812962471

`A157901(A008805(n)+n+1)`
-/

namespace A262258.P17969011845812962471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157901 (A008805 n + (n + 1 : ℤ)).toNat

end

end A262258.P17969011845812962471

namespace A262258

/-- `A157901(A008805(n)+n+1)` -/
def P17969011845812962471.Spec : Prop :=
  ∀ n, P17969011845812962471.a n = A262258 (n + 1)

end A262258

/-! ## A262258.P5147370470357354526

`∑[A080928(eq[1, A144324(n+1)])]`
-/

namespace A262258.P5147370470357354526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144324 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080928 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262258.P5147370470357354526

namespace A262258

/-- `∑[A080928(eq[1, A144324(n+1)])]` -/
def P5147370470357354526.Spec : Prop :=
  ∀ n, P5147370470357354526.a n = A262258 (n + 1)

end A262258

/-!
# A262259: Numbers k such that the symmetric representation of sigma(k) has only two parts and they meet at the center of the Dyck path.

The programs for A262259, there is no canonical definition to state claims against.
-/

/-! ## A262259.P8659743423249647031

`C(p?[A047836(n+1)+1], 2)`
-/

namespace A262259.P8659743423249647031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047836 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A262259.P8659743423249647031

/-! ## A262259.P10923564936377426363

`C(p?[A244971(n+1)+2*(n+1)], 2)`
-/

namespace A262259.P10923564936377426363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244971 (n + 1) + (2 * (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A262259.P10923564936377426363

/-! ## A262259.P1392843721938587042

`A023896(p?[A047836(n+1)+1])`
-/

namespace A262259.P1392843721938587042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047836 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A262259.P1392843721938587042

/-! ## A262259.P13444126920155425320

`A000217(p?[A047836(n+1)+1]-1)`
-/

namespace A262259.P13444126920155425320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047836 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A262259.P13444126920155425320

/-! ## A262259.P12524664199863447243

`C(record[A006530(A047836(n+1)+1)], 2)`
-/

namespace A262259.P12524664199863447243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A047836 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A262259.P12524664199863447243

/-!
# A262260: Number of triangles formed by the positions of odd numbers in the first n rows of Pascal's triangle, also known as Tartaglia's triangle.

The programs for A262260, there is no canonical definition to state claims against.
-/

/-! ## A262260.P9099487160638305137

`∑[2^(n-∑[val(n+1, 2)])*and(n, -(n+2))]`
-/

namespace A262260.P9099487160638305137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) * (Int.land (n : ℤ) (-(n + 2 : ℤ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P9099487160638305137

/-! ## A262260.P2069318475925340035

`∑[lcm(2^(n-∑[val(n+1, 2)]), and(n, -(n+2)))]`
-/

namespace A262260.P2069318475925340035
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ))) (Int.land (n : ℤ) (-(n + 2 : ℤ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P2069318475925340035

/-! ## A262260.P2465634873964428780

`∑[and(n, -(n+2))*A048896(n)]`
-/

namespace A262260.P2465634873964428780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) * A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P2465634873964428780

/-! ## A262260.P3304776836585359697

`∑[A001316(n)-2^(n-∑[val(n+1, 2)])]`
-/

namespace A262260.P3304776836585359697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) - (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P3304776836585359697

/-! ## A262260.P10237951736098295331

`∑[2^(n-∑[val(n+1, 2)])-A151930(n)]`
-/

namespace A262260.P10237951736098295331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) - (A151930 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P10237951736098295331

/-! ## A262260.P1039477637887547112

`∑[2^(n-∑[val(n+1, 2)])*A135481(n)]`
-/

namespace A262260.P1039477637887547112
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) * (A135481 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P1039477637887547112

/-! ## A262260.P8293167527302316509

`∑[2^(n-A011371(n))-2^(n-∑[val(n+1, 2)])]`
-/

namespace A262260.P8293167527302316509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A011371 n : ℤ) - (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P8293167527302316509

/-! ## A262260.P3032663815368264229

`∑[A001316(n)-A048896(n)]`
-/

namespace A262260.P3032663815368264229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n - A048896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P3032663815368264229

/-! ## A262260.P16691058045810888582

`∑[A048896(n)-A151930(n)]`
-/

namespace A262260.P16691058045810888582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n - A151930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P16691058045810888582

/-! ## A262260.P16818281689731412676

`∑[A048896(n)*A135481(n)]`
-/

namespace A262260.P16818281689731412676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A135481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262260.P16818281689731412676

/-!
# A262261: a(n) = Product_{k=0..n} binomial(4*k,k).

The programs for A262261, there is no canonical definition to state claims against.
-/

/-! ## A262261.P14422975171599594146

`∏[C(4*n, n)]`
-/

namespace A262261.P14422975171599594146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262261.P14422975171599594146

/-! ## A262261.P1547751285818604482

`C(4*n, n)*a(n-1)` with `a(0)=1`
-/

namespace A262261.P1547751285818604482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (4 * n) n * a (n - 1)

end

end A262261.P1547751285818604482

/-! ## A262261.P8815037082423594464

`∏[A005810(n)]`
-/

namespace A262261.P8815037082423594464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262261.P8815037082423594464

/-! ## A262261.P8650340755087820461

`∏[A071919(∑[16*n+1])]`
-/

namespace A262261.P8650340755087820461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262261.P8650340755087820461

/-! ## A262261.P6091847566367674131

`∏[A007318(A139276(n))]`
-/

namespace A262261.P6091847566367674131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A139276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A262261.P6091847566367674131

/-!
# A262262: Number of prime divisors p | n such that p^2 < n and p^2 does not divide n.

The programs for A262262, the canonical program `A262262.P1658621310215384767` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262262 has offset 1).

The definition of A262262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262262.P8076976513212345948

`A063962(n+1)-A056170(n+1)`
-/

namespace A262262.P8076976513212345948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) - A056170 (n + 1)

end

end A262262.P8076976513212345948

namespace A262262

/-- `A063962(n+1)-A056170(n+1)` -/
def P8076976513212345948.Spec : Prop :=
  ∀ n, P8076976513212345948.a n = A262262 (n + 1)

end A262262

/-! ## A262262.P13499184101047912130

`A056169(n+1)-A341642(n+1)`
-/

namespace A262262.P13499184101047912130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1) - A341642 (n + 1)

end

end A262262.P13499184101047912130

namespace A262262

/-- `A056169(n+1)-A341642(n+1)` -/
def P13499184101047912130.Spec : Prop :=
  ∀ n, P13499184101047912130.a n = A262262 (n + 1)

end A262262

/-! ## A262262.P4403546792301409730

`A063962(n+1)-A001221(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A262262.P4403546792301409730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) - A001221 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A262262.P4403546792301409730

namespace A262262

/-- `A063962(n+1)-A001221(∏{p}[n+1, #^val(n+1, #²)])` -/
def P4403546792301409730.Spec : Prop :=
  ∀ n, P4403546792301409730.a n = A262262 (n + 1)

end A262262

/-! ## A262262.P1658621310215384767

`A063962(n+1)-A063962(∏{p}[n+1, #^val(n+1, #²)]²)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A262262

/-- `A063962(n+1)-A063962(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P1658621310215384767.Spec : Prop :=
  ∀ n, P1658621310215384767.a n = A262262 (n + 1)

theorem P1658621310215384767.correct : P1658621310215384767.Spec := by
  intro n
  simp only [A262262, Nat.add_sub_cancel]

end A262262

/-! ## A262262.P12935063938747422752

`A063962(n+1)-A001221(A000189(n+1))`
-/

namespace A262262.P12935063938747422752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) - A001221 (A000189 (n + 1)).toNat

end

end A262262.P12935063938747422752

namespace A262262

/-- `A063962(n+1)-A001221(A000189(n+1))` -/
def P12935063938747422752.Spec : Prop :=
  ∀ n, P12935063938747422752.a n = A262262 (n + 1)

end A262262

/-! ## A262262.P15221887210825461568

`A063962(n+1)-A001221(A057521(n+1))`
-/

namespace A262262.P15221887210825461568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) - A001221 (A057521 (n + 1)).toNat

end

end A262262.P15221887210825461568

namespace A262262

/-- `A063962(n+1)-A001221(A057521(n+1))` -/
def P15221887210825461568.Spec : Prop :=
  ∀ n, P15221887210825461568.a n = A262262 (n + 1)

end A262262

/-! ## A262262.P8739916039072089697

`A063962(n+1)-A063962(A000189(n+1)²)`
-/

namespace A262262.P8739916039072089697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (n + 1) - A063962 (A000189 (n + 1) ^ 2).toNat

end

end A262262.P8739916039072089697

namespace A262262

/-- `A063962(n+1)-A063962(A000189(n+1)²)` -/
def P8739916039072089697.Spec : Prop :=
  ∀ n, P8739916039072089697.a n = A262262 (n + 1)

end A262262

/-! ## A262262.P10009419439768092144

`A056169((n+1)*A072505(n+1))`
-/

namespace A262262.P10009419439768092144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 ((n + 1 : ℤ) * A072505 (n + 1)).toNat

end

end A262262.P10009419439768092144

namespace A262262

/-- `A056169((n+1)*A072505(n+1))` -/
def P10009419439768092144.Spec : Prop :=
  ∀ n, P10009419439768092144.a n = A262262 (n + 1)

end A262262

/-!
# A262264: Primes that are less than the square of their least positive primitive root.

The programs for A262264, there is no canonical definition to state claims against.
-/

/-! ## A262264.P14016867287907362428

`p?[or(n, A325764(n+1))]`
-/

namespace A262264.P14016867287907362428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A325764 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262264.P14016867287907362428

/-!
# A262265: Maximum possible number of inequivalent abelian squares occurring in a binary word of length n.

The programs for A262265, there is no canonical definition to state claims against.
-/

/-! ## A262265.P11576588190138197282

`A105564(A004442(2*n)+eq[1, A054390(n)])`
-/

namespace A262265.P11576588190138197282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A004442 (2 * n) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A262265.P11576588190138197282

/-! ## A262265.P17462578820023539439

`ceil(record[A055941(A028387(n))/2])`
-/

namespace A262265.P17462578820023539439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055941 (A028387 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A262265.P17462578820023539439

/-! ## A262265.P16066952440656886871

`A110654(record[A055941(A028387(n))])`
-/

namespace A262265.P16066952440656886871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A028387 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A262265.P16066952440656886871

/-! ## A262265.P5506887711839653297

`A108611(A101114(n+1)+A007964(n+1))`
-/

namespace A262265.P5506887711839653297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A101114 (n + 1) + A007964 (n + 1)).toNat

end

end A262265.P5506887711839653297

/-! ## A262265.P14640795565217451985

`n-A001221(A316501(n+1))`
-/

namespace A262265.P14640795565217451985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001221 (A316501 (n + 1)).toNat

end

end A262265.P14640795565217451985

/-!
# A262266: Number of (n+2) X (n+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262266, there is no canonical definition to state claims against.
-/

/-! ## A262266.P822190402264046920

`A262274(∑[4*n]+1)`
-/

namespace A262266.P822190402264046920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262266.P822190402264046920

/-! ## A262266.P13478115563098935246

`record[A003982(n)*A262274(n+1)]`
-/

namespace A262266.P13478115563098935246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A262274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262266.P13478115563098935246

/-! ## A262266.P16699623302545907868

`record[root(A262274(n+1), A143182(n))]`
-/

namespace A262266.P16699623302545907868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262274 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262266.P16699623302545907868

/-!
# A262267: Number of (n+2) X (1+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262267, the canonical program `A262267.P4902447373222034777` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262267 has offset 1).

The definition of A262267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262267.P6510236577793638279

`∑[ogf(1/(1-2x+x^2-2x^3))]+1`
-/

namespace A262267.P6510236577793638279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262267.P6510236577793638279

namespace A262267

/-- `∑[ogf(1/(1-2x+x^2-2x^3))]+1` -/
def P6510236577793638279.Spec : Prop :=
  ∀ n, P6510236577793638279.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P8424209527023542511

`ogf((2-2x+x^2-2x^3)/(1-3x+3x^2-3x^3+2x^4))`
-/

namespace A262267.P8424209527023542511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 1, -2] [1, -3, 3, -3, 2] n

end

end A262267.P8424209527023542511

namespace A262267

/-- `ogf((2-2x+x^2-2x^3)/(1-3x+3x^2-3x^3+2x^4))` -/
def P8424209527023542511.Spec : Prop :=
  ∀ n, P8424209527023542511.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P4902447373222034777

`∑[2^n-a(n-2)]` with `a(0)=2, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262267

/-- `∑[2^n-a(n-2)]` -/
def P4902447373222034777.Spec : Prop :=
  ∀ n, P4902447373222034777.a n = A262267 (n + 1)

theorem P4902447373222034777.correct : P4902447373222034777.Spec := by
  intro n
  simp only [A262267, Nat.add_sub_cancel]

end A262267

/-! ## A262267.P10349682948626888963

`2*a(n-1)-and(2, n)/2` with `a(0)=2`
-/

namespace A262267.P10349682948626888963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - (Nat.land 2 n : ℚ) / 2

end

end A262267.P10349682948626888963

namespace A262267

/-- `2*a(n-1)-and(2, n)/2` -/
def P10349682948626888963.Spec : Prop :=
  ∀ n, P10349682948626888963.a n = (A262267 (n + 1) : ℚ)

end A262267

/-! ## A262267.P12047021654998264222

`2*a(n-1)-and(1, C(n, 2))` with `a(0)=2`
-/

namespace A262267.P12047021654998264222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - (Nat.land 1 (Nat.choose n 2) : ℤ)

end

end A262267.P12047021654998264222

namespace A262267

/-- `2*a(n-1)-and(1, C(n, 2))` -/
def P12047021654998264222.Spec : Prop :=
  ∀ n, P12047021654998264222.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P17245418609797182965

`2^(n+1)+1-a(n-2)` with `a(0)=2, a(1)=4`
-/

namespace A262267.P17245418609797182965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  (2 ^ (n + 1) : ℤ) + (1 - a (n - 2))

end

end A262267.P17245418609797182965

namespace A262267

/-- `2^(n+1)+1-a(n-2)` -/
def P17245418609797182965.Spec : Prop :=
  ∀ n, P17245418609797182965.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P13689739062104102985

`2*a(n-1)-floor(n/2)%2` with `a(0)=2`
-/

namespace A262267.P13689739062104102985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * a (n - 1) - Int.tmod ⌊(n : ℚ) / 2⌋ 2

end

end A262267.P13689739062104102985

namespace A262267

/-- `2*a(n-1)-floor(n/2)%2` -/
def P13689739062104102985.Spec : Prop :=
  ∀ n, P13689739062104102985.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P2452292364722870426

`(1-a(n-2))%2+2*a(n-1)` with `a(0)=2, a(1)=4`
-/

namespace A262267.P2452292364722870426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  Int.tmod (1 - a (n - 2)) 2 + 2 * a (n - 1)

end

end A262267.P2452292364722870426

namespace A262267

/-- `(1-a(n-2))%2+2*a(n-1)` -/
def P2452292364722870426.Spec : Prop :=
  ∀ n, P2452292364722870426.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P3624886350376013217

`2*a(n-1)+1-gcd(2, a(n-2))` with `a(0)=2, a(1)=4`
-/

namespace A262267.P3624886350376013217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * a (n - 1) + (1 - (Int.gcd 2 (a (n - 2)) : ℤ))

end

end A262267.P3624886350376013217

namespace A262267

/-- `2*a(n-1)+1-gcd(2, a(n-2))` -/
def P3624886350376013217.Spec : Prop :=
  ∀ n, P3624886350376013217.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P5819508864207474304

`2*a(n-1)-(1-a(n-2)%2)` with `a(0)=2, a(1)=4`
-/

namespace A262267.P5819508864207474304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * a (n - 1) - (1 - Int.tmod (a (n - 2)) 2)

end

end A262267.P5819508864207474304

namespace A262267

/-- `2*a(n-1)-(1-a(n-2)%2)` -/
def P5819508864207474304.Spec : Prop :=
  ∀ n, P5819508864207474304.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P9305964808129178172

`A077854(n)+1`
-/

namespace A262267.P9305964808129178172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 n + 1

end

end A262267.P9305964808129178172

namespace A262267

/-- `A077854(n)+1` -/
def P9305964808129178172.Spec : Prop :=
  ∀ n, P9305964808129178172.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P9850690800124490185

`∑[A007910(n)]+1`
-/

namespace A262267.P9850690800124490185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262267.P9850690800124490185

namespace A262267

/-- `∑[A007910(n)]+1` -/
def P9850690800124490185.Spec : Prop :=
  ∀ n, P9850690800124490185.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P10536542053988597330

`∑[∑[A007909(n)]]+1`
-/

namespace A262267.P10536542053988597330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262267.P10536542053988597330

namespace A262267

/-- `∑[∑[A007909(n)]]+1` -/
def P10536542053988597330.Spec : Prop :=
  ∀ n, P10536542053988597330.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P9449063252237757974

`∑[∑[A274845(2*n)]]+1`
-/

namespace A262267.P9449063252237757974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262267.P9449063252237757974

namespace A262267

/-- `∑[∑[A274845(2*n)]]+1` -/
def P9449063252237757974.Spec : Prop :=
  ∀ n, P9449063252237757974.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P121622906435326586

`∑[round(4/5*A000079(n))]+1`
-/

namespace A262267.P121622906435326586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 5 * (A000079 n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A262267.P121622906435326586

namespace A262267

/-- `∑[round(4/5*A000079(n))]+1` -/
def P121622906435326586.Spec : Prop :=
  ∀ n, P121622906435326586.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P8019138405397045454

`A133872(n)+A007909(n+2)`
-/

namespace A262267.P8019138405397045454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n + A007909 (n + 2)

end

end A262267.P8019138405397045454

namespace A262267

/-- `A133872(n)+A007909(n+2)` -/
def P8019138405397045454.Spec : Prop :=
  ∀ n, P8019138405397045454.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P9268911521401067823

`xor(A000975(n), A262864(n))+1`
-/

namespace A262267.P9268911521401067823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 n) (A262864 n) + 1

end

end A262267.P9268911521401067823

namespace A262267

/-- `xor(A000975(n), A262864(n))+1` -/
def P9268911521401067823.Spec : Prop :=
  ∀ n, P9268911521401067823.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P14849817427769142757

`A007910(n+1)+A133872(n+3)`
-/

namespace A262267.P14849817427769142757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (n + 1) + A133872 (n + 3)

end

end A262267.P14849817427769142757

namespace A262267

/-- `A007910(n+1)+A133872(n+3)` -/
def P14849817427769142757.Spec : Prop :=
  ∀ n, P14849817427769142757.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P2429385797312132260

`3*a(n-1)-3*a(n-2)+3*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=13`
-/

namespace A262267.P2429385797312132260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 7, 13] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - 2 * a (n - 4)

end

end A262267.P2429385797312132260

namespace A262267

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-2*a(n-4)` -/
def P2429385797312132260.Spec : Prop :=
  ∀ n, P2429385797312132260.a n = A262267 (n + 1)

end A262267

/-! ## A262267.P17366414082425649134

`Δ[A178452(n+2)]+1`
-/

namespace A262267.P17366414082425649134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178452 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A262267.P17366414082425649134

namespace A262267

/-- `Δ[A178452(n+2)]+1` -/
def P17366414082425649134.Spec : Prop :=
  ∀ n, P17366414082425649134.a n = A262267 (n + 1)

end A262267

/-!
# A262268: Number of (n+2) X (2+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262268, the canonical program `A262268.P11537371957594473200` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262268 has offset 1).

The definition of A262268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262268.P11537371957594473200

`ceil(2^(n+3)/5)²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262268

/-- `ceil(2^(n+3)/5)²` -/
def P11537371957594473200.Spec : Prop :=
  ∀ n, P11537371957594473200.a n = A262268 (n + 1)

theorem P11537371957594473200.correct : P11537371957594473200.Spec := by
  intro n
  simp only [A262268, Nat.add_sub_cancel]

end A262268

/-! ## A262268.P7287855466075205335

`floor(∑[2^n-a(n-2)]²)` with `a(0)=2, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A262268.P7287855466075205335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A262268.P7287855466075205335

namespace A262268

/-- `floor(∑[2^n-a(n-2)]²)` -/
def P7287855466075205335.Spec : Prop :=
  ∀ n, P7287855466075205335.a n = A262268 (n + 1)

end A262268

/-! ## A262268.P7225245523090286722

`ceil(∑[2^n-a(n-2)]²)` with `a(0)=2, a(1)=2, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A262268.P7225245523090286722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A262268.P7225245523090286722

namespace A262268

/-- `ceil(∑[2^n-a(n-2)]²)` -/
def P7225245523090286722.Spec : Prop :=
  ∀ n, P7225245523090286722.a n = A262268 (n + 1)

end A262268

/-! ## A262268.P15435382192705831679

`round(∑[2^n-a(n-2)]²)` with `a(0)=2, a(1)=2, a(2)=3`

`round` is left out, it is the identity on integers.
-/

namespace A262268.P15435382192705831679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n f1 =>
  (2 ^ n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A262268.P15435382192705831679

namespace A262268

/-- `round(∑[2^n-a(n-2)]²)` -/
def P15435382192705831679.Spec : Prop :=
  ∀ n, P15435382192705831679.a n = A262268 (n + 1)

end A262268

/-! ## A262268.P3917632086198863165

`A262267(n+1)^2`
-/

namespace A262268.P3917632086198863165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262267 (n + 1) ^ 2

end

end A262268.P3917632086198863165

namespace A262268

/-- `A262267(n+1)^2` -/
def P3917632086198863165.Spec : Prop :=
  ∀ n, P3917632086198863165.a n = A262268 (n + 1)

end A262268

/-!
# A262269: Number of (n+2)X(3+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262269, there is no canonical definition to state claims against.
-/

/-! ## A262269.P16196944804622447306

`A262274(∑[n+2]+4)`
-/

namespace A262269.P16196944804622447306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A262269.P16196944804622447306

/-! ## A262269.P4672369036416844455

`or(1, A262274(A167614(n+1)))`
-/

namespace A262269.P4672369036416844455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262274 (A167614 (n + 1)).toNat)

end

end A262269.P4672369036416844455

/-! ## A262269.P8507632166052582607

`record[A262274(n+4)/A285061(n+1)]`
-/

namespace A262269.P8507632166052582607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262274 (n + 4) : ℚ) / (A285061 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262269.P8507632166052582607

/-! ## A262269.P14325593360308225487

`A262274(A167614(n+1))+A011731(n)`
-/

namespace A262269.P14325593360308225487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A167614 (n + 1)).toNat + A011731 n

end

end A262269.P14325593360308225487

/-! ## A262269.P6192466795844043456

`A262274(A167614(n+1))+A025439(n)`
-/

namespace A262269.P6192466795844043456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A167614 (n + 1)).toNat + A025439 n

end

end A262269.P6192466795844043456

/-!
# A262270: Number of (n+2)X(4+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262270, there is no canonical definition to state claims against.
-/

/-! ## A262270.P8816713500766025415

`A262274(∑[n+3]+7)`
-/

namespace A262270.P8816713500766025415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A262270.P8816713500766025415

/-! ## A262270.P12659758152431937488

`or(1, A262274(A141214(n)+7))`
-/

namespace A262270.P12659758152431937488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262274 (A141214 n + 7).toNat)

end

end A262270.P12659758152431937488

/-! ## A262270.P1528944869607034355

`A262274(A141214(n)+7)%A028015(n+1)`
-/

namespace A262270.P1528944869607034355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262274 (A141214 n + 7).toNat) (A028015 (n + 1))

end

end A262270.P1528944869607034355

/-! ## A262270.P14043268894050288279

`and(-3, A262274(A141214(n+1)))`
-/

namespace A262270.P14043268894050288279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A262274 (A141214 (n + 1)).toNat)

end

end A262270.P14043268894050288279

/-! ## A262270.P11038655400669205517

`A262274(A141214(n+1))+A025439(n)`
-/

namespace A262270.P11038655400669205517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A141214 (n + 1)).toNat + A025439 n

end

end A262270.P11038655400669205517

/-!
# A262271: Number of (n+2)X(5+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262271, there is no canonical definition to state claims against.
-/

/-! ## A262271.P6164490884531599899

`A262274(A374005(n+1))`
-/

namespace A262271.P6164490884531599899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A374005 (n + 1)).toNat

end

end A262271.P6164490884531599899

/-! ## A262271.P15711661781509089834

`A262274(A167499(n+3))`
-/

namespace A262271.P15711661781509089834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A167499 (n + 3)).toNat

end

end A262271.P15711661781509089834

/-! ## A262271.P13520693257876350518

`A262274(A155212(n)+13)`
-/

namespace A262271.P13520693257876350518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A155212 n + 13).toNat

end

end A262271.P13520693257876350518

/-! ## A262271.P18110732554835037649

`A262274(A056000(n)+15)`
-/

namespace A262271.P18110732554835037649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A056000 n + 15).toNat

end

end A262271.P18110732554835037649

/-! ## A262271.P665127150652397041

`A262274(eq[7, A066657(n)])`
-/

namespace A262271.P665127150652397041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262271.P665127150652397041

/-!
# A262272: Number of (n+2)X(6+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262272, there is no canonical definition to state claims against.
-/

/-! ## A262272.P16590992385638267060

`A262274(A374007(n+1))`
-/

namespace A262272.P16590992385638267060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A374007 (n + 1)).toNat

end

end A262272.P16590992385638267060

/-! ## A262272.P9208772783009314653

`A262274(A166136(n+4))`
-/

namespace A262272.P9208772783009314653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A166136 (n + 4)).toNat

end

end A262272.P9208772783009314653

/-! ## A262272.P4226754514950861726

`A262274(A167499(n+4)+1)`
-/

namespace A262272.P4226754514950861726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A167499 (n + 4) + 1).toNat

end

end A262272.P4226754514950861726

/-! ## A262272.P18151213973208987813

`A262274(A340266(n+4)+4)`
-/

namespace A262272.P18151213973208987813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A340266 (n + 4) + 4).toNat

end

end A262272.P18151213973208987813

/-! ## A262272.P2979316254767964818

`A262274(A000096(n+4)+7)`
-/

namespace A262272.P2979316254767964818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A000096 (n + 4) + 7).toNat

end

end A262272.P2979316254767964818

/-!
# A262273: Number of (n+2)X(7+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262273, there is no canonical definition to state claims against.
-/

/-! ## A262273.P8891119393667388379

`A262274(A374008(n+1))`
-/

namespace A262273.P8891119393667388379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A374008 (n + 1)).toNat

end

end A262273.P8891119393667388379

/-! ## A262273.P871170101464580357

`A262274(A056119(n)+28)`
-/

namespace A262273.P871170101464580357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A056119 n + 28).toNat

end

end A262273.P871170101464580357

/-! ## A262273.P285557680154197291

`A262274(A168106(n)-n)`
-/

namespace A262273.P285557680154197291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A168106 n - (n : ℤ)).toNat

end

end A262273.P285557680154197291

/-! ## A262273.P12512477102397649761

`A262274(A166136(n+5)+1)`
-/

namespace A262273.P12512477102397649761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (A166136 (n + 5) + 1).toNat

end

end A262273.P12512477102397649761

/-! ## A262273.P11322973243476151708

`A262274(eq[8, A131818(n+1)])`
-/

namespace A262273.P11322973243476151708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262274 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A262273.P11322973243476151708

/-!
# A262274: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with each row and column divisible by 5, read as a binary number with top and left being the most significant bits.

The programs for A262274, there is no canonical definition to state claims against.
-/

/-! ## A262274.P10392499768884246169

`A188567(n+1)+A000122(A232076(n+5))`
-/

namespace A262274.P10392499768884246169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188567 (n + 1) + A000122 (A232076 (n + 5)).toNat

end

end A262274.P10392499768884246169

/-! ## A262274.P8585076377990955955

`or(A007814(A221852(n+1)), A181224(n+1))`
-/

namespace A262274.P8585076377990955955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A221852 (n + 1)).toNat) (A181224 (n + 1))

end

end A262274.P8585076377990955955

/-! ## A262274.P11991932121354281218

`or(A007814(A221852(n+1)), A188567(n+1))`
-/

namespace A262274.P11991932121354281218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A221852 (n + 1)).toNat) (A188567 (n + 1))

end

end A262274.P11991932121354281218

/-! ## A262274.P1987370399959937676

`or(A007814(A221852(n+1)), A206994(n+1))`
-/

namespace A262274.P1987370399959937676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A221852 (n + 1)).toNat) (A206994 (n + 1))

end

end A262274.P1987370399959937676

/-! ## A262274.P7143990359481915245

`A349797(A257502(3*n+1))+A206994(n+1)`
-/

namespace A262274.P7143990359481915245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A257502 (3 * n + 1)).toNat + A206994 (n + 1)

end

end A262274.P7143990359481915245

/-!
# A262275: Prime numbers with an even number of steps in their prime index chain.

The programs for A262275, the canonical program `A262275.P4673791647840445127` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262275 has offset 1).

The definition of A262275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262275.P4673791647840445127

`A006450(A121543(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A262275

/-- `A006450(A121543(n+1))` -/
def P4673791647840445127.Spec : Prop :=
  ∀ n, P4673791647840445127.a n = A262275 (n + 1)

theorem P4673791647840445127.correct : P4673791647840445127.Spec := by
  intro n
  simp only [A262275, Nat.add_sub_cancel]

end A262275

/-! ## A262275.P3335680514352964421

`∪[A049078(n+1), A333244(n+1)]`
-/

namespace A262275.P3335680514352964421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P3335680514352964421

namespace A262275

/-- `∪[A049078(n+1), A333244(n+1)]` -/
def P3335680514352964421.Spec : Prop :=
  ∀ n, (P3335680514352964421.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P13994819238982393269

`A006450(eq[1, A049076(n+1)%2]+1)`
-/

namespace A262275.P13994819238982393269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049076 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A262275.P13994819238982393269

namespace A262275

/-- `A006450(eq[1, A049076(n+1)%2]+1)` -/
def P13994819238982393269.Spec : Prop :=
  ∀ n, P13994819238982393269.a n = A262275 (n + 1)

end A262275

/-! ## A262275.P7352922449567175176

`A006450(eq[1, gcd(2, A049076(n+1))]+1)`
-/

namespace A262275.P7352922449567175176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A049076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A262275.P7352922449567175176

namespace A262275

/-- `A006450(eq[1, gcd(2, A049076(n+1))]+1)` -/
def P7352922449567175176.Spec : Prop :=
  ∀ n, P7352922449567175176.a n = A262275 (n + 1)

end A262275

/-! ## A262275.P11110569999056168482

`A175247(A121543(n+1)+1)`
-/

namespace A262275.P11110569999056168482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (A121543 (n + 1) + 1).toNat

end

end A262275.P11110569999056168482

namespace A262275

/-- `A175247(A121543(n+1)+1)` -/
def P11110569999056168482.Spec : Prop :=
  ∀ n, P11110569999056168482.a n = A262275 (n + 1)

end A262275

/-! ## A262275.P11188632493286230611

`A120426(A333242(n+1))`
-/

namespace A262275.P11188632493286230611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120426 (A333242 (n + 1)).toNat

end

end A262275.P11188632493286230611

namespace A262275

/-- `A120426(A333242(n+1))` -/
def P11188632493286230611.Spec : Prop :=
  ∀ n, P11188632493286230611.a n = A262275 (n + 1)

end A262275

/-! ## A262275.P15329266351514886118

`A008578(A333242(n+1)+1)`
-/

namespace A262275.P15329266351514886118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A333242 (n + 1) + 1).toNat

end

end A262275.P15329266351514886118

namespace A262275

/-- `A008578(A333242(n+1)+1)` -/
def P15329266351514886118.Spec : Prop :=
  ∀ n, P15329266351514886118.a n = A262275 (n + 1)

end A262275

/-! ## A262275.P11848307018821410684

`A158611(A333242(n+1)+2)`
-/

namespace A262275.P11848307018821410684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A333242 (n + 1) + 2).toNat

end

end A262275.P11848307018821410684

namespace A262275

/-- `A158611(A333242(n+1)+2)` -/
def P11848307018821410684.Spec : Prop :=
  ∀ n, P11848307018821410684.a n = A262275 (n + 1)

end A262275

/-! ## A262275.P16249162746144489596

`A151800(A333242(A333242(n+1)-(n+1)))`
-/

namespace A262275.P16249162746144489596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A333242 (A333242 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A262275.P16249162746144489596

namespace A262275

/-- `A151800(A333242(A333242(n+1)-(n+1)))` -/
def P16249162746144489596.Spec : Prop :=
  ∀ n, P16249162746144489596.a n = A262275 (n + 1)

end A262275

/-! ## A262275.P633752280231797300

`record[A020639(A121543(n+2))]`
-/

namespace A262275.P633752280231797300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A121543 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262275.P633752280231797300

namespace A262275

/-- `record[A020639(A121543(n+2))]` -/
def P633752280231797300.Spec : Prop :=
  ∀ n, P633752280231797300.a n = A262275 (n + 1)

end A262275

/-! ## A262275.P1745878042698739971

`∩[A000040(n+1), A121543(n+1)]`
-/

namespace A262275.P1745878042698739971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P1745878042698739971

namespace A262275

/-- `∩[A000040(n+1), A121543(n+1)]` -/
def P1745878042698739971.Spec : Prop :=
  ∀ n, (P1745878042698739971.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P16237638287468000197

`∩[A004139(n+1), A121543(n+1)]`
-/

namespace A262275.P16237638287468000197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P16237638287468000197

namespace A262275

/-- `∩[A004139(n+1), A121543(n+1)]` -/
def P16237638287468000197.Spec : Prop :=
  ∀ n, (P16237638287468000197.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P451290912219232274

`∩[A045319(n+1), A121543(n+1)]`
-/

namespace A262275.P451290912219232274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P451290912219232274

namespace A262275

/-- `∩[A045319(n+1), A121543(n+1)]` -/
def P451290912219232274.Spec : Prop :=
  ∀ n, (P451290912219232274.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P8540924541709159553

`∩[A058853(n+1), A121543(n+1)]`
-/

namespace A262275.P8540924541709159553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P8540924541709159553

namespace A262275

/-- `∩[A058853(n+1), A121543(n+1)]` -/
def P8540924541709159553.Spec : Prop :=
  ∀ n, (P8540924541709159553.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P15883909044971952450

`∩[A065091(n+1), A121543(n+1)]`
-/

namespace A262275.P15883909044971952450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P15883909044971952450

namespace A262275

/-- `∩[A065091(n+1), A121543(n+1)]` -/
def P15883909044971952450.Spec : Prop :=
  ∀ n, (P15883909044971952450.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P3638054869974575091

`∩[A121543(n+1), A182986(n+1)]`
-/

namespace A262275.P3638054869974575091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P3638054869974575091

namespace A262275

/-- `∩[A121543(n+1), A182986(n+1)]` -/
def P3638054869974575091.Spec : Prop :=
  ∀ n, (P3638054869974575091.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P17001523816877202233

`∩[A121543(n+1), A216887(n+1)]`
-/

namespace A262275.P17001523816877202233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P17001523816877202233

namespace A262275

/-- `∩[A121543(n+1), A216887(n+1)]` -/
def P17001523816877202233.Spec : Prop :=
  ∀ n, (P17001523816877202233.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P10323899332462985649

`∩[A121543(n+1), A302491(n+1)]`
-/

namespace A262275.P10323899332462985649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262275.P10323899332462985649

namespace A262275

/-- `∩[A121543(n+1), A302491(n+1)]` -/
def P10323899332462985649.Spec : Prop :=
  ∀ n, (P10323899332462985649.a n : ℤ) = A262275 (n + 1)

end A262275

/-! ## A262275.P9201909777644433123

`A000720(A333243(n+1))`
-/

namespace A262275.P9201909777644433123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A333243 (n + 1)).toNat

end

end A262275.P9201909777644433123

namespace A262275

/-- `A000720(A333243(n+1))` -/
def P9201909777644433123.Spec : Prop :=
  ∀ n, P9201909777644433123.a n = A262275 (n + 1)

end A262275

/-!
# A262277: Numbers having in decimal representation the same distinct decimal digits as their 9's complement.

The programs for A262277, there is no canonical definition to state claims against.
-/

/-! ## A262277.P8444876643203352204

`eq[A227362(n), A267193(A227362(n))]`
-/

namespace A262277.P8444876643203352204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267193 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A262277.P8444876643203352204

/-! ## A262277.P6085845676686884141

`eq[9, A154781(A137564(n))]`
-/

namespace A262277.P6085845676686884141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154781 (A137564 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262277.P6085845676686884141

/-! ## A262277.P4725075962773059946

`eq[9, A154781(A227362(n))]`
-/

namespace A262277.P4725075962773059946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154781 (A227362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A262277.P4725075962773059946

/-! ## A262277.P11697643183704083495

`A130734(A052224(n+1))`
-/

namespace A262277.P11697643183704083495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A052224 (n + 1)).toNat

end

end A262277.P11697643183704083495

/-! ## A262277.P16075430562321224907

`A130734(A094677(n+1))`
-/

namespace A262277.P16075430562321224907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A094677 (n + 1)).toNat

end

end A262277.P16075430562321224907

/-!
# A262280: Number of ways to select a nonempty subset s from an n-set and then partition s into blocks of equal size.

The programs for A262280, there is no canonical definition to state claims against.
-/

/-! ## A262280.P7539074825098810172

`A262320(n)-1`
-/

namespace A262280.P7539074825098810172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262320 n - 1

end

end A262280.P7539074825098810172

/-! ## A262280.P13732773655309258350

`∑[A262321(n)]-1`
-/

namespace A262280.P13732773655309258350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A262280.P13732773655309258350

/-! ## A262280.P16679686358337981266

`∑[A262321(n)%A262320(n)]`
-/

namespace A262280.P16679686358337981266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262321 n) (A262320 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262280.P16679686358337981266

/-! ## A262280.P11113624733584398225

`∑[xor(A000007(n), A262321(n))]`
-/

namespace A262280.P11113624733584398225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 n) (A262321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262280.P11113624733584398225

/-! ## A262280.P13393236286603359693

`A262875(A028310(n))+2^n-1`
-/

namespace A262280.P13393236286603359693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262875 (A028310 n).toNat + ((2 ^ n : ℤ) - 1)

end

end A262280.P13393236286603359693

/-! ## A262280.P17849673839801991373

`A316441(A054824(n+1))+A262320(n)`
-/

namespace A262280.P17849673839801991373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A054824 (n + 1)).toNat + A262320 n

end

end A262280.P17849673839801991373

/-! ## A262280.P7256091099961626778

`A008683(A007353(n+1))+∑[A262321(n)]`
-/

namespace A262280.P7256091099961626778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007353 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262280.P7256091099961626778

/-!
# A262281: a(n) = smallest nonnegative number, not a power of 2, that is not a substring of n in its binary representation.

The programs for A262281, there is no canonical definition to state claims against.
-/

/-! ## A262281.P12744848238868685785

`A262289(n)*A267442(n)`
-/

namespace A262281.P12744848238868685785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262289 n * A267442 n

end

end A262281.P12744848238868685785

/-! ## A262281.P13010282997207346984

`A262289(n)%(5^A261922(n))`
-/

namespace A262281.P13010282997207346984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262289 n) (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A261922 n : ℤ)))

end

end A262281.P13010282997207346984

/-! ## A262281.P9756160208572869935

`and(1, A006530(n+1))*A262289(n)`
-/

namespace A262281.P9756160208572869935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006530 (n + 1)) * A262289 n

end

end A262281.P9756160208572869935

/-! ## A262281.P10666624377696153947

`A000035(A006530(n+1))*A262289(n)`
-/

namespace A262281.P10666624377696153947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006530 (n + 1)).toNat * A262289 n

end

end A262281.P10666624377696153947

/-! ## A262281.P836109830204550365

`A000035(A014963(n+1))*A262289(n)`
-/

namespace A262281.P836109830204550365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A014963 (n + 1)).toNat * A262289 n

end

end A262281.P836109830204550365

/-! ## A262281.P11723167051788773925

`A261922(n)/A261461(n)*A262289(n)`
-/

namespace A262281.P11723167051788773925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261922 n : ℚ) / (A261461 n : ℚ) * (A262289 n : ℚ)

end

end A262281.P11723167051788773925

/-! ## A262281.P7043234598350821438

`A000035(A304180(n+1))*A262289(n)`
-/

namespace A262281.P7043234598350821438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A304180 (n + 1)).toNat * A262289 n

end

end A262281.P7043234598350821438

/-!
# A262283: a(1)=2. For n>1, let s denote the digit-string of a(n-1) with the first digit omitted. Then a(n) is the smallest prime not yet present which starts with s.

The programs for A262283, there is no canonical definition to state claims against.
-/

/-! ## A262283.P1380173173387345608

`A133956(A334389(n+1))`
-/

namespace A262283.P1380173173387345608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133956 (A334389 (n + 1)).toNat

end

end A262283.P1380173173387345608

/-! ## A262283.P8208577406837883704

`A003459(A322282(n)+A072797(n))`
-/

namespace A262283.P8208577406837883704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003459 (A322282 n + A072797 n).toNat

end

end A262283.P8208577406837883704

/-! ## A262283.P9697458232151459845

`A090933(A366948(n+1)%A090921(3*n+1))`
-/

namespace A262283.P9697458232151459845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090933 (Int.tmod (A366948 (n + 1)) (A090921 (3 * n + 1))).toNat

end

end A262283.P9697458232151459845

/-! ## A262283.P1137159346805742781

`A090933(A366948(n+1))%A333705(2*n+3)`
-/

namespace A262283.P1137159346805742781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090933 (A366948 (n + 1)).toNat) (A333705 (2 * n + 3))

end

end A262283.P1137159346805742781

/-!
# A262284: Primes whose binary expansion begins 101.

The programs for A262284, there is no canonical definition to state claims against.
-/

/-! ## A262284.P4818822039278569029

`record[A006530(A004757(n+1))]`
-/

namespace A262284.P4818822039278569029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004757 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262284.P4818822039278569029

/-! ## A262284.P8391491827770163930

`filter[A004757(n+1), A010051(#)]`
-/

namespace A262284.P8391491827770163930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A262284.P8391491827770163930

/-! ## A262284.P14943515312085284390

`filter[A004757(n+1), A323153(#)]`
-/

namespace A262284.P14943515312085284390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A262284.P14943515312085284390

/-! ## A262284.P5239399053649132432

`record[A020639(A004757(2*n+1))]`
-/

namespace A262284.P5239399053649132432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004757 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262284.P5239399053649132432

/-! ## A262284.P3935267240060685252

`filter[A004757(2*n+1), A323152(#)]`
-/

namespace A262284.P3935267240060685252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A262284.P3935267240060685252

/-! ## A262284.P15086526698577766638

`filter[A004757(2*n+1), A340371(#)]`
-/

namespace A262284.P15086526698577766638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A262284.P15086526698577766638

/-! ## A262284.P3826533641225240355

`filter[A004757(2*n+1), A353670(#)]`
-/

namespace A262284.P3826533641225240355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A262284.P3826533641225240355

/-! ## A262284.P11631029456783968092

`filter[A004757(2*n+1), A365716(#)]`
-/

namespace A262284.P11631029456783968092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A262284.P11631029456783968092

/-! ## A262284.P1256007385438245921

`filter[A004757(2*n+1), A379969(#)]`
-/

namespace A262284.P1256007385438245921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A262284.P1256007385438245921

/-! ## A262284.P16570181047732041831

`filter[A004757(2*n+1), A380467(#)]`
-/

namespace A262284.P16570181047732041831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A262284.P16570181047732041831

/-! ## A262284.P11893791432972002159

`∩[A000040(n+1), A004757(n+1)]`
-/

namespace A262284.P11893791432972002159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P11893791432972002159

/-! ## A262284.P16000933160819942586

`∩[A004757(n+1), A006005(n+1)]`
-/

namespace A262284.P16000933160819942586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P16000933160819942586

/-! ## A262284.P11535627618422993177

`∩[A004757(n+1), A008578(n+1)]`
-/

namespace A262284.P11535627618422993177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P11535627618422993177

/-! ## A262284.P17761759225555182514

`∩[A004757(n+1), A033946(n+1)]`
-/

namespace A262284.P17761759225555182514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P17761759225555182514

/-! ## A262284.P17052305987141636172

`∩[A004757(n+1), A045344(n+1)]`
-/

namespace A262284.P17052305987141636172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P17052305987141636172

/-! ## A262284.P4284120435810485038

`∩[A004757(n+1), A046022(n+1)]`
-/

namespace A262284.P4284120435810485038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P4284120435810485038

/-! ## A262284.P8909603227652714488

`∩[A004757(n+1), A053577(n+1)]`
-/

namespace A262284.P8909603227652714488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P8909603227652714488

/-! ## A262284.P1655358112743402132

`∩[A004757(n+1), A053813(n+1)]`
-/

namespace A262284.P1655358112743402132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P1655358112743402132

/-! ## A262284.P5255197085936953304

`∩[A004757(n+1), A062972(n+1)]`
-/

namespace A262284.P5255197085936953304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262284.P5255197085936953304

/-!
# A262285: Primes whose binary expansion begins 111.

The programs for A262285, the canonical program `A262285.P681803494404622073` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262285 has offset 1).

The definition of A262285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262285.P681803494404622073

`p?[A004759(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262285

/-- `p?[A004759(n+1)]` -/
def P681803494404622073.Spec : Prop :=
  ∀ n, P681803494404622073.a n = A262285 (n + 1)

theorem P681803494404622073.correct : P681803494404622073.Spec := by
  intro n
  simp only [A262285, Nat.add_sub_cancel]

end A262285

/-! ## A262285.P12342868193678234938

`record[A006530(A004759(n+2))]`
-/

namespace A262285.P12342868193678234938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004759 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262285.P12342868193678234938

namespace A262285

/-- `record[A006530(A004759(n+2))]` -/
def P12342868193678234938.Spec : Prop :=
  ∀ n, P12342868193678234938.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P6801744463376772295

`filter[A004759(n+1), A010051(#)]`
-/

namespace A262285.P6801744463376772295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A262285.P6801744463376772295

namespace A262285

/-- `filter[A004759(n+1), A010051(#)]` -/
def P6801744463376772295.Spec : Prop :=
  ∀ n, P6801744463376772295.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P14658725612496351027

`record[A020639(A004759(2*n+1))]`
-/

namespace A262285.P14658725612496351027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004759 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262285.P14658725612496351027

namespace A262285

/-- `record[A020639(A004759(2*n+1))]` -/
def P14658725612496351027.Spec : Prop :=
  ∀ n, P14658725612496351027.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P3584861115503424064

`filter[A004759(2*n+1), A323152(#)]`
-/

namespace A262285.P3584861115503424064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A262285.P3584861115503424064

namespace A262285

/-- `filter[A004759(2*n+1), A323152(#)]` -/
def P3584861115503424064.Spec : Prop :=
  ∀ n, P3584861115503424064.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P5298827293761187042

`filter[A004759(2*n+1), A323153(#)]`
-/

namespace A262285.P5298827293761187042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A262285.P5298827293761187042

namespace A262285

/-- `filter[A004759(2*n+1), A323153(#)]` -/
def P5298827293761187042.Spec : Prop :=
  ∀ n, P5298827293761187042.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P9268144364696242470

`filter[A004759(2*n+1), A340371(#)]`
-/

namespace A262285.P9268144364696242470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A262285.P9268144364696242470

namespace A262285

/-- `filter[A004759(2*n+1), A340371(#)]` -/
def P9268144364696242470.Spec : Prop :=
  ∀ n, P9268144364696242470.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P667356760678447681

`filter[A004759(2*n+1), A353670(#)]`
-/

namespace A262285.P667356760678447681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A262285.P667356760678447681

namespace A262285

/-- `filter[A004759(2*n+1), A353670(#)]` -/
def P667356760678447681.Spec : Prop :=
  ∀ n, P667356760678447681.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P15689560639695426287

`filter[A004759(2*n+1), A365716(#)]`
-/

namespace A262285.P15689560639695426287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A262285.P15689560639695426287

namespace A262285

/-- `filter[A004759(2*n+1), A365716(#)]` -/
def P15689560639695426287.Spec : Prop :=
  ∀ n, P15689560639695426287.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P6002966348136889571

`filter[A004759(2*n+1), A379969(#)]`
-/

namespace A262285.P6002966348136889571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A262285.P6002966348136889571

namespace A262285

/-- `filter[A004759(2*n+1), A379969(#)]` -/
def P6002966348136889571.Spec : Prop :=
  ∀ n, P6002966348136889571.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P6341799163068305289

`filter[A004759(2*n+1), A380467(#)]`
-/

namespace A262285.P6341799163068305289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A262285.P6341799163068305289

namespace A262285

/-- `filter[A004759(2*n+1), A380467(#)]` -/
def P6341799163068305289.Spec : Prop :=
  ∀ n, P6341799163068305289.a n = A262285 (n + 1)

end A262285

/-! ## A262285.P7860061260082569265

`∩[A000040(n+1), A004759(n+1)]`
-/

namespace A262285.P7860061260082569265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P7860061260082569265

namespace A262285

/-- `∩[A000040(n+1), A004759(n+1)]` -/
def P7860061260082569265.Spec : Prop :=
  ∀ n, (P7860061260082569265.a n : ℤ) = A262285 (n + 1)

end A262285

/-! ## A262285.P11751739473965097059

`∩[A004139(n+1), A004759(n+1)]`
-/

namespace A262285.P11751739473965097059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P11751739473965097059

namespace A262285

/-- `∩[A004139(n+1), A004759(n+1)]` -/
def P11751739473965097059.Spec : Prop :=
  ∀ n, (P11751739473965097059.a n : ℤ) = A262285 (n + 1)

end A262285

/-! ## A262285.P10045471497934987311

`∩[A004759(n+1), A006005(n+1)]`
-/

namespace A262285.P10045471497934987311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P10045471497934987311

namespace A262285

/-- `∩[A004759(n+1), A006005(n+1)]` -/
def P10045471497934987311.Spec : Prop :=
  ∀ n, (P10045471497934987311.a n : ℤ) = A262285 (n + 1)

end A262285

/-! ## A262285.P8383912208535459953

`∩[A004759(n+1), A008578(n+1)]`
-/

namespace A262285.P8383912208535459953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P8383912208535459953

namespace A262285

/-- `∩[A004759(n+1), A008578(n+1)]` -/
def P8383912208535459953.Spec : Prop :=
  ∀ n, (P8383912208535459953.a n : ℤ) = A262285 (n + 1)

end A262285

/-! ## A262285.P9001116985230943403

`∩[A004759(n+1), A045319(n+1)]`
-/

namespace A262285.P9001116985230943403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P9001116985230943403

namespace A262285

/-- `∩[A004759(n+1), A045319(n+1)]` -/
def P9001116985230943403.Spec : Prop :=
  ∀ n, (P9001116985230943403.a n : ℤ) = A262285 (n + 1)

end A262285

/-! ## A262285.P15590848113835138792

`∩[A004759(n+1), A045344(n+1)]`
-/

namespace A262285.P15590848113835138792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P15590848113835138792

namespace A262285

/-- `∩[A004759(n+1), A045344(n+1)]` -/
def P15590848113835138792.Spec : Prop :=
  ∀ n, (P15590848113835138792.a n : ℤ) = A262285 (n + 1)

end A262285

/-! ## A262285.P1538339702508060255

`∩[A004759(n+1), A046022(n+1)]`
-/

namespace A262285.P1538339702508060255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P1538339702508060255

namespace A262285

/-- `∩[A004759(n+1), A046022(n+1)]` -/
def P1538339702508060255.Spec : Prop :=
  ∀ n, (P1538339702508060255.a n : ℤ) = A262285 (n + 1)

end A262285

/-! ## A262285.P6625791342130719662

`∩[A004759(n+1), A051948(n+1)]`
-/

namespace A262285.P6625791342130719662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P6625791342130719662

namespace A262285

/-- `∩[A004759(n+1), A051948(n+1)]` -/
def P6625791342130719662.Spec : Prop :=
  ∀ n, (P6625791342130719662.a n : ℤ) = A262285 (n + 1)

end A262285

/-! ## A262285.P4321855811622639214

`∩[A004759(n+1), A065091(n+1)]`
-/

namespace A262285.P4321855811622639214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262285.P4321855811622639214

namespace A262285

/-- `∩[A004759(n+1), A065091(n+1)]` -/
def P4321855811622639214.Spec : Prop :=
  ∀ n, (P4321855811622639214.a n : ℤ) = A262285 (n + 1)

end A262285

/-!
# A262286: Primes whose binary expansion begins 100.

The programs for A262286, the canonical program `A262286.P3199108104298252313` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262286 has offset 1).

The definition of A262286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262286.P3199108104298252313

`p?[2*a(floor(n/2))-(-1)^n]` with `a(0)=0, a(1)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A262286

/-- `p?[2*a(floor(n/2))-(-1)^n]` -/
def P3199108104298252313.Spec : Prop :=
  ∀ n, P3199108104298252313.a n = A262286 (n + 1)

theorem P3199108104298252313.correct : P3199108104298252313.Spec := by
  intro n
  simp only [A262286, Nat.add_sub_cancel]

end A262286

/-! ## A262286.P13273390489900004585

`p?[A004759(n+1)+2+n]`
-/

namespace A262286.P13273390489900004585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262286.P13273390489900004585

namespace A262286

/-- `p?[A004759(n+1)+2+n]` -/
def P13273390489900004585.Spec : Prop :=
  ∀ n, P13273390489900004585.a n = A262286 (n + 1)

end A262286

/-! ## A262286.P15950772278038500968

`p?[A004756(n+1)]`
-/

namespace A262286.P15950772278038500968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262286.P15950772278038500968

namespace A262286

/-- `p?[A004756(n+1)]` -/
def P15950772278038500968.Spec : Prop :=
  ∀ n, P15950772278038500968.a n = A262286 (n + 1)

end A262286

/-! ## A262286.P8521232803542990667

`filter[A004756(n+1), A010051(#)]`
-/

namespace A262286.P8521232803542990667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A262286.P8521232803542990667

namespace A262286

/-- `filter[A004756(n+1), A010051(#)]` -/
def P8521232803542990667.Spec : Prop :=
  ∀ n, P8521232803542990667.a n = A262286 (n + 1)

end A262286

/-! ## A262286.P11974387015866584240

`filter[A004756(n+1), A323152(#)]`
-/

namespace A262286.P11974387015866584240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A262286.P11974387015866584240

namespace A262286

/-- `filter[A004756(n+1), A323152(#)]` -/
def P11974387015866584240.Spec : Prop :=
  ∀ n, P11974387015866584240.a n = A262286 (n + 1)

end A262286

/-! ## A262286.P4675232145915459022

`filter[A004756(n+1), A323153(#)]`
-/

namespace A262286.P4675232145915459022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A262286.P4675232145915459022

namespace A262286

/-- `filter[A004756(n+1), A323153(#)]` -/
def P4675232145915459022.Spec : Prop :=
  ∀ n, P4675232145915459022.a n = A262286 (n + 1)

end A262286

/-! ## A262286.P15676291124048403096

`filter[A004756(2*n+1), A353670(#)]`
-/

namespace A262286.P15676291124048403096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A262286.P15676291124048403096

namespace A262286

/-- `filter[A004756(2*n+1), A353670(#)]` -/
def P15676291124048403096.Spec : Prop :=
  ∀ n, P15676291124048403096.a n = A262286 (n + 1)

end A262286

/-! ## A262286.P15188471819051253933

`filter[A004756(2*n+1), A379969(#)]`
-/

namespace A262286.P15188471819051253933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A262286.P15188471819051253933

namespace A262286

/-- `filter[A004756(2*n+1), A379969(#)]` -/
def P15188471819051253933.Spec : Prop :=
  ∀ n, P15188471819051253933.a n = A262286 (n + 1)

end A262286

/-! ## A262286.P11264993636692566894

`filter[A004756(2*n+1), A380467(#)]`
-/

namespace A262286.P11264993636692566894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A262286.P11264993636692566894

namespace A262286

/-- `filter[A004756(2*n+1), A380467(#)]` -/
def P11264993636692566894.Spec : Prop :=
  ∀ n, P11264993636692566894.a n = A262286 (n + 1)

end A262286

/-! ## A262286.P4524305394384657821

`∩[A000040(n+1), A004756(n+1)]`
-/

namespace A262286.P4524305394384657821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P4524305394384657821

namespace A262286

/-- `∩[A000040(n+1), A004756(n+1)]` -/
def P4524305394384657821.Spec : Prop :=
  ∀ n, (P4524305394384657821.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P18065723815196925863

`∩[A004139(n+1), A004756(n+1)]`
-/

namespace A262286.P18065723815196925863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P18065723815196925863

namespace A262286

/-- `∩[A004139(n+1), A004756(n+1)]` -/
def P18065723815196925863.Spec : Prop :=
  ∀ n, (P18065723815196925863.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P5985958784456721695

`∩[A004756(n+1), A006005(n+1)]`
-/

namespace A262286.P5985958784456721695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P5985958784456721695

namespace A262286

/-- `∩[A004756(n+1), A006005(n+1)]` -/
def P5985958784456721695.Spec : Prop :=
  ∀ n, (P5985958784456721695.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P1273285695664142918

`∩[A004756(n+1), A008578(n+1)]`
-/

namespace A262286.P1273285695664142918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P1273285695664142918

namespace A262286

/-- `∩[A004756(n+1), A008578(n+1)]` -/
def P1273285695664142918.Spec : Prop :=
  ∀ n, (P1273285695664142918.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P16441375444652476180

`∩[A004756(n+1), A045319(n+1)]`
-/

namespace A262286.P16441375444652476180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P16441375444652476180

namespace A262286

/-- `∩[A004756(n+1), A045319(n+1)]` -/
def P16441375444652476180.Spec : Prop :=
  ∀ n, (P16441375444652476180.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P10975473937270399219

`∩[A004756(n+1), A045344(n+1)]`
-/

namespace A262286.P10975473937270399219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P10975473937270399219

namespace A262286

/-- `∩[A004756(n+1), A045344(n+1)]` -/
def P10975473937270399219.Spec : Prop :=
  ∀ n, (P10975473937270399219.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P15620220199158150960

`∩[A004756(n+1), A053813(n+1)]`
-/

namespace A262286.P15620220199158150960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P15620220199158150960

namespace A262286

/-- `∩[A004756(n+1), A053813(n+1)]` -/
def P15620220199158150960.Spec : Prop :=
  ∀ n, (P15620220199158150960.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P9899694217371263723

`∩[A004756(n+1), A065091(n+1)]`
-/

namespace A262286.P9899694217371263723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P9899694217371263723

namespace A262286

/-- `∩[A004756(n+1), A065091(n+1)]` -/
def P9899694217371263723.Spec : Prop :=
  ∀ n, (P9899694217371263723.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P15194462638265243281

`∩[A004756(n+1), A065396(n+1)]`
-/

namespace A262286.P15194462638265243281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P15194462638265243281

namespace A262286

/-- `∩[A004756(n+1), A065396(n+1)]` -/
def P15194462638265243281.Spec : Prop :=
  ∀ n, (P15194462638265243281.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P4125323418040489906

`∩[A004756(n+1), A080165(n+1)]`
-/

namespace A262286.P4125323418040489906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P4125323418040489906

namespace A262286

/-- `∩[A004756(n+1), A080165(n+1)]` -/
def P4125323418040489906.Spec : Prop :=
  ∀ n, (P4125323418040489906.a n : ℤ) = A262286 (n + 1)

end A262286

/-! ## A262286.P15935863565659837878

`∩[A004756(n+1), A140475(n+1)]`
-/

namespace A262286.P15935863565659837878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A262286.P15935863565659837878

namespace A262286

/-- `∩[A004756(n+1), A140475(n+1)]` -/
def P15935863565659837878.Spec : Prop :=
  ∀ n, (P15935863565659837878.a n : ℤ) = A262286 (n + 1)

end A262286

/-!
# A262287: Primes whose binary expansion begins 110.

The programs for A262287, the canonical program `A262287.P12190766233230351271` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A262287 has offset 1).

The definition of A262287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A262287.P12190766233230351271

`p?[A004758(n+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A262287

/-- `p?[A004758(n+1)]` -/
def P12190766233230351271.Spec : Prop :=
  ∀ n, P12190766233230351271.a n = A262287 (n + 1)

theorem P12190766233230351271.correct : P12190766233230351271.Spec := by
  intro n
  simp only [A262287, Nat.add_sub_cancel]

end A262287

/-! ## A262287.P13407781929088777823

`p?[A022803(n+1)]`
-/

namespace A262287.P13407781929088777823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262287.P13407781929088777823

namespace A262287

/-- `p?[A022803(n+1)]` -/
def P13407781929088777823.Spec : Prop :=
  ∀ n, P13407781929088777823.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P1368090902429354224

`p?[A318934(n+2)]`
-/

namespace A262287.P1368090902429354224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262287.P1368090902429354224

namespace A262287

/-- `p?[A318934(n+2)]` -/
def P1368090902429354224.Spec : Prop :=
  ∀ n, P1368090902429354224.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P10219516136810870449

`p?[5*A053644(n)+n]`
-/

namespace A262287.P10219516136810870449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A053644 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262287.P10219516136810870449

namespace A262287

/-- `p?[5*A053644(n)+n]` -/
def P10219516136810870449.Spec : Prop :=
  ∀ n, P10219516136810870449.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P14451264517857566416

`record[A020639(A004758(n+3))]`
-/

namespace A262287.P14451264517857566416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004758 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262287.P14451264517857566416

namespace A262287

/-- `record[A020639(A004758(n+3))]` -/
def P14451264517857566416.Spec : Prop :=
  ∀ n, P14451264517857566416.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P8567854296737455556

`filter[A004758(n+1), A010051(#)]`
-/

namespace A262287.P8567854296737455556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A262287.P8567854296737455556

namespace A262287

/-- `filter[A004758(n+1), A010051(#)]` -/
def P8567854296737455556.Spec : Prop :=
  ∀ n, P8567854296737455556.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P16517306801539735175

`filter[A022803(n+1), A010051(#)]`
-/

namespace A262287.P16517306801539735175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A262287.P16517306801539735175

namespace A262287

/-- `filter[A022803(n+1), A010051(#)]` -/
def P16517306801539735175.Spec : Prop :=
  ∀ n, P16517306801539735175.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P11442050000238352012

`filter[A004758(n+2), A323152(#)]`
-/

namespace A262287.P11442050000238352012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A262287.P11442050000238352012

namespace A262287

/-- `filter[A004758(n+2), A323152(#)]` -/
def P11442050000238352012.Spec : Prop :=
  ∀ n, P11442050000238352012.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P13291514847421803584

`filter[A004758(n+2), A323153(#)]`
-/

namespace A262287.P13291514847421803584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A262287.P13291514847421803584

namespace A262287

/-- `filter[A004758(n+2), A323153(#)]` -/
def P13291514847421803584.Spec : Prop :=
  ∀ n, P13291514847421803584.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P5747402194446922129

`filter[A318934(n+2), A010051(#)]`
-/

namespace A262287.P5747402194446922129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A262287.P5747402194446922129

namespace A262287

/-- `filter[A318934(n+2), A010051(#)]` -/
def P5747402194446922129.Spec : Prop :=
  ∀ n, P5747402194446922129.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P6208813199149830343

`filter[A318934(n+3), A323152(#)]`
-/

namespace A262287.P6208813199149830343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A262287.P6208813199149830343

namespace A262287

/-- `filter[A318934(n+3), A323152(#)]` -/
def P6208813199149830343.Spec : Prop :=
  ∀ n, P6208813199149830343.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P1653347793955420308

`filter[A318934(n+3), A323153(#)]`
-/

namespace A262287.P1653347793955420308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A262287.P1653347793955420308

namespace A262287

/-- `filter[A318934(n+3), A323153(#)]` -/
def P1653347793955420308.Spec : Prop :=
  ∀ n, P1653347793955420308.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P4976995464737188816

`record[A020639(A022803(2*n+1))]`
-/

namespace A262287.P4976995464737188816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022803 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262287.P4976995464737188816

namespace A262287

/-- `record[A020639(A022803(2*n+1))]` -/
def P4976995464737188816.Spec : Prop :=
  ∀ n, P4976995464737188816.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P15047706256801048064

`filter[A022803(2*n+1), A323152(#)]`
-/

namespace A262287.P15047706256801048064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A262287.P15047706256801048064

namespace A262287

/-- `filter[A022803(2*n+1), A323152(#)]` -/
def P15047706256801048064.Spec : Prop :=
  ∀ n, P15047706256801048064.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P4856135623088741660

`filter[A022803(2*n+1), A323153(#)]`
-/

namespace A262287.P4856135623088741660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A262287.P4856135623088741660

namespace A262287

/-- `filter[A022803(2*n+1), A323153(#)]` -/
def P4856135623088741660.Spec : Prop :=
  ∀ n, P4856135623088741660.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P6820307138709738455

`filter[A022803(2*n+1), A340371(#)]`
-/

namespace A262287.P6820307138709738455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A262287.P6820307138709738455

namespace A262287

/-- `filter[A022803(2*n+1), A340371(#)]` -/
def P6820307138709738455.Spec : Prop :=
  ∀ n, P6820307138709738455.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P17167048075117826218

`filter[A022803(2*n+1), A353670(#)]`
-/

namespace A262287.P17167048075117826218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A262287.P17167048075117826218

namespace A262287

/-- `filter[A022803(2*n+1), A353670(#)]` -/
def P17167048075117826218.Spec : Prop :=
  ∀ n, P17167048075117826218.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P9691108277251567830

`filter[A004758(2*n+1), A379969(#)]`
-/

namespace A262287.P9691108277251567830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A262287.P9691108277251567830

namespace A262287

/-- `filter[A004758(2*n+1), A379969(#)]` -/
def P9691108277251567830.Spec : Prop :=
  ∀ n, P9691108277251567830.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P10657205112351209342

`filter[A022803(2*n+1), A365716(#)]`
-/

namespace A262287.P10657205112351209342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A262287.P10657205112351209342

namespace A262287

/-- `filter[A022803(2*n+1), A365716(#)]` -/
def P10657205112351209342.Spec : Prop :=
  ∀ n, P10657205112351209342.a n = A262287 (n + 1)

end A262287

/-! ## A262287.P13597609232511964085

`filter[A022803(2*n+1), A379969(#)]`
-/

namespace A262287.P13597609232511964085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A262287.P13597609232511964085

namespace A262287

/-- `filter[A022803(2*n+1), A379969(#)]` -/
def P13597609232511964085.Spec : Prop :=
  ∀ n, P13597609232511964085.a n = A262287 (n + 1)

end A262287

/-!
# A262288: a(0)=0; thereafter add the smallest positive number that is not a substring.

The programs for A262288, there is no canonical definition to state claims against.
-/

/-! ## A262288.P6344625237405577102

`∪[A261793(n+1), ∑[n]]`
-/

namespace A262288.P6344625237405577102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261793 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A262288.P6344625237405577102

/-! ## A262288.P4765272942945747561

`∪[n*n², A261793(n+2)]`
-/

namespace A262288.P4765272942945747561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261793 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A262288.P4765272942945747561

/-! ## A262288.P682467823108369106

`∑[A261795(abs(2-n)+1)]-1`
-/

namespace A262288.P682467823108369106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261795 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A262288.P682467823108369106

/-! ## A262288.P17879678648370120211

`A261793(a(val(n, n+1))+n)` with `a(0)=0`
-/

namespace A262288.P17879678648370120211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A261793 (a (SequenceMachineLib.valuation n (n + 1)) + (n : ℤ)).toNat

end

end A262288.P17879678648370120211

/-! ## A262288.P9331628763402256429

`A261795(n-1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A262288.P9331628763402256429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A261795 (n - 1) + a (n - 1)

end

end A262288.P9331628763402256429

/-! ## A262288.P11451157644989701061

`A261794(a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A262288.P11451157644989701061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A261794 (a (n - 1)).toNat + a (n - 1)

end

end A262288.P11451157644989701061

/-! ## A262288.P17376849734104292514

`A261793(abs(1-n)+1)%Δ[n²]`
-/

namespace A262288.P17376849734104292514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261793 (|1 - (n : ℤ)| + 1).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A262288.P17376849734104292514

/-! ## A262288.P9935851178788613445

`A261793(A000007(n)+n)-A000007(n)`
-/

namespace A262288.P9935851178788613445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261793 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A262288.P9935851178788613445

/-! ## A262288.P4994040250518467178

`A261793(or(n, A000007(n)))-A000007(n)`
-/

namespace A262288.P4994040250518467178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261793 (Int.lor (n : ℤ) (A000007 n)).toNat - A000007 n

end

end A262288.P4994040250518467178

/-!
# A262289: a(n) = smallest positive number, not a power of 2, that is not a substring of n in its binary representation.

The programs for A262289, there is no canonical definition to state claims against.
-/

/-! ## A262289.P12518204583101480691

`A262281(n*(3-A043529(n)))`
-/

namespace A262289.P12518204583101480691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262281 ((n : ℤ) * (3 - A043529 n)).toNat

end

end A262289.P12518204583101480691

/-! ## A262289.P13146911041632409140

`A262281(2*n/A043529(n))`
-/

namespace A262289.P13146911041632409140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262281 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A043529 n : ℚ)))).toNat

end

end A262289.P13146911041632409140

/-! ## A262289.P12743715518075582777

`A262281(n*A014963(2*(n+1)))`
-/

namespace A262289.P12743715518075582777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262281 ((n : ℤ) * A014963 (2 * (n + 1))).toNat

end

end A262289.P12743715518075582777

/-! ## A262289.P5754123170083328269

`A261461(A062383(A062383(4*n))+n)`
-/

namespace A262289.P5754123170083328269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A062383 (A062383 (4 * n)).toNat + (n : ℤ)).toNat

end

end A262289.P5754123170083328269

/-! ## A262289.P17480968452932985358

`A262281(n*A062383(A261015(n+1)))`
-/

namespace A262289.P17480968452932985358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262281 ((n : ℤ) * A062383 (A261015 (n + 1)).toNat).toNat

end

end A262289.P17480968452932985358

/-! ## A262289.P8220720067115116281

`A262281(lcm(n, A062383(A261015(n+1))))`
-/

namespace A262289.P8220720067115116281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262281 (Int.lcm (n : ℤ) (A062383 (A261015 (n + 1)).toNat))

end

end A262289.P8220720067115116281

/-! ## A262289.P8593924606843568570

`A261461(2*A053644(n+1)²+n)`
-/

namespace A262289.P8593924606843568570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (2 * A053644 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A262289.P8593924606843568570

/-! ## A262289.P17712318281654627825

`A261461(A053644(n+2)²+n)`
-/

namespace A262289.P17712318281654627825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A053644 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A262289.P17712318281654627825

/-! ## A262289.P8483613537831599543

`A261461(2^(A261461(n)+6)+n)`
-/

namespace A262289.P8483613537831599543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A261461 n + 6 : ℤ) + (n : ℚ))).toNat

end

end A262289.P8483613537831599543

/-! ## A262289.P5244156719458036629

`A261461(A062383(A261416(n))+n)`
-/

namespace A262289.P5244156719458036629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (A062383 (A261416 n).toNat + (n : ℤ)).toNat

end

end A262289.P5244156719458036629

/-!
# A262290: a(0)=0; thereafter, add the smallest nonzero binary number, not a power of 2, that is not a substring of the binary expansion of a(n).

The programs for A262290, there is no canonical definition to state claims against.
-/

/-! ## A262290.P5697915137172106412

`A261926(n)+a(n-1)` with `a(0)=0, a(1)=3, a(2)=8`
-/

namespace A262290.P5697915137172106412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 8] fun n a =>
  A261926 n + a (n - 1)

end

end A262290.P5697915137172106412

/-! ## A262290.P11072485911070853323

`A262289(a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A262290.P11072485911070853323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A262289 (a (n - 1)).toNat + a (n - 1)

end

end A262290.P11072485911070853323

/-! ## A262290.P18418378222194453039

`A262281(a(n-1))+a(n-1)` with `a(0)=0, a(1)=3, a(2)=8`
-/

namespace A262290.P18418378222194453039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 8] fun n a =>
  A262281 (a (n - 1)).toNat + a (n - 1)

end

end A262290.P18418378222194453039

/-! ## A262290.P14947495968903973173

`A261416(n)-floor((C(n, n²)+1)^3/3)`
-/

namespace A262290.P14947495968903973173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261416 n - ⌊((Nat.choose n (n ^ 2) + 1) ^ 3 : ℚ) / 3⌋

end

end A262290.P14947495968903973173

/-! ## A262290.P3042323630074425507

`A261416(char[1]+n)%record[xor(n, 2*n)+1+n]`
-/

namespace A262290.P3042323630074425507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261416 ((if ∃ j, f1 j = n then 1 else 0) + n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ)

end

end A262290.P3042323630074425507

/-! ## A262290.P3418257188166467862

`A261416(n)-A000038(n²-n)`
-/

namespace A262290.P3418257188166467862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261416 n - A000038 (n ^ 2 - n)

end

end A262290.P3418257188166467862

/-! ## A262290.P2472482736574103387

`A261416(n)-A169805(C(n, n²))`
-/

namespace A262290.P2472482736574103387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261416 n - A169805 (Nat.choose n (n ^ 2))

end

end A262290.P2472482736574103387

/-! ## A262290.P15702198132749784950

`A261416(A233583(n+1))%∑[n+2]`
-/

namespace A262290.P15702198132749784950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261416 (A233583 (n + 1)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A262290.P15702198132749784950

/-! ## A262290.P5483017127082762502

`A261416(n)-C(A235482(C(n, n²)+1), 2)+1`
-/

namespace A262290.P5483017127082762502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261416 n - (Nat.choose (A235482 (Nat.choose n (n ^ 2) + 1)).toNat 2 : ℤ) + 1

end

end A262290.P5483017127082762502

/-! ## A262290.P18216225310571693912

`A261416(n)+A117188(A151800(n))`
-/

namespace A262290.P18216225310571693912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261416 n + A117188 (A151800 n).toNat

end

end A262290.P18216225310571693912

/-!
# A262291: a(n) = Sum_k k!*A262292(n,k).

The programs for A262291, there is no canonical definition to state claims against.
-/

/-! ## A262291.P15874917318192651195

`A007093(A321276(n+1))-A279571(n)`
-/

namespace A262291.P15874917318192651195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A321276 (n + 1)).toNat - A279571 n

end

end A262291.P15874917318192651195

/-!
# A262292: Triangle read by rows: T(n, k) = largest possible content of a league (P, S), where P is a set of k-partitions and S is a set of k-subsets of {1, . . . , n}, for n >= 2, 1 <= k <= n-1.

The programs for A262292, there is no canonical definition to state claims against.
-/

/-! ## A262292.P6135241675756493876

`A227568(A271439(n)^A194959(n+1))`
-/

namespace A262292.P6135241675756493876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (SequenceMachineLib.roundAway ((A271439 n : ℚ) ^ (A194959 (n + 1) : ℤ))).toNat

end

end A262292.P6135241675756493876

/-!
# A262293: Row sums of triangle A262294.

The programs for A262293, there is no canonical definition to state claims against.
-/

/-! ## A262293.P8498369656509387020

`ogf(x/(1-5x+3x^2+7x^3-6x^4))`
-/

namespace A262293.P8498369656509387020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 3, 7, -6] n

end

end A262293.P8498369656509387020

/-!
# A262294: Triangle read by rows: T(n, k) = largest possible content of a league (P, S), where P consists of k-partitions corresponding to kernels of order-preserving transformations and S is a set of k-subsets of {1, . . . , n}, for n >= 2, 1 <= k <= n-1.

The programs for A262294, there is no canonical definition to state claims against.
-/

/-! ## A262294.P16311355379549187561

`A001221(A042575(n))*A122016(n)`
-/

namespace A262294.P16311355379549187561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A042575 n).toNat * A122016 n

end

end A262294.P16311355379549187561

/-! ## A262294.P14084273442064745489

`and(A001630(n), A018626(A050165(n)))`
-/

namespace A262294.P14084273442064745489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001630 n) (A018626 (A050165 n).toNat)

end

end A262294.P14084273442064745489

/-! ## A262294.P1629829921027141938

`A001222(A208757(n+1)^A256193(n))`
-/

namespace A262294.P1629829921027141938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A208757 (n + 1) : ℚ) ^ (A256193 n : ℤ))).toNat

end

end A262294.P1629829921027141938

/-! ## A262294.P9789172954573661068

`A196050(A240394(n+1)^A036497(n))`
-/

namespace A262294.P9789172954573661068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (SequenceMachineLib.roundAway ((A240394 (n + 1) : ℚ) ^ (A036497 n : ℤ))).toNat

end

end A262294.P9789172954573661068

/-! ## A262294.P11046350772033042549

`A001222(A249027(n+1)^A256193(n))`
-/

namespace A262294.P11046350772033042549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A249027 (n + 1) : ℚ) ^ (A256193 n : ℤ))).toNat

end

end A262294.P11046350772033042549

/-!
# A262295: Length of longest chain of nonempty proper inverse subsemigroups of the symmetric inverse monoid.

The programs for A262295, there is no canonical definition to state claims against.
-/

/-! ## A262295.P14092515911331068806

`A193832((∑[n^3-∑[∑[n]]]+5^n)*(n+1))`
-/

namespace A262295.P14092515911331068806
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 ((∑ j ∈ Finset.range (n + 1), f1 j + (5 ^ n : ℤ)) * (n + 1 : ℤ)).toNat

end

end A262295.P14092515911331068806

/-! ## A262295.P6379460304201917829

`A253092(A162583(n+1))`
-/

namespace A262295.P6379460304201917829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A162583 (n + 1)).toNat

end

end A262295.P6379460304201917829

/-!
# A262296: Length of longest chain of nonempty proper inverse subsemigroups of the dual symmetric inverse monoid.

The programs for A262296, there is no canonical definition to state claims against.
-/

/-! ## A262296.P4903680820644935542

`A097065(xor(2, A087439(n)))`
-/

namespace A262296.P4903680820644935542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (Int.xor 2 (A087439 n)).toNat

end

end A262296.P4903680820644935542

/-! ## A262296.P731172110825656015

`A002264(A024050(n))+n²`
-/

namespace A262296.P731172110825656015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A024050 n).toNat + (n ^ 2 : ℤ)

end

end A262296.P731172110825656015

/-!
# A262297: Length of longest chain of nonempty proper inverse subsemigroups of the monoid of partial injective orientation-preserving functions of a chain with n elements.

The programs for A262297, there is no canonical definition to state claims against.
-/

/-! ## A262297.P16325325469092262081

`∑[A325417(A104309(2^n))]`
-/

namespace A262297.P16325325469092262081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325417 (A104309 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A262297.P16325325469092262081

/-! ## A262297.P10756407934475093670

`A168617(n+1)+A010054(A168598(n))`
-/

namespace A262297.P10756407934475093670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168617 (n + 1) + A010054 (A168598 n).toNat

end

end A262297.P10756407934475093670

/-! ## A262297.P18193777597576482389

`A168617(n+1)+A140081(A150156(n+1))`
-/

namespace A262297.P18193777597576482389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168617 (n + 1) + A140081 (A150156 (n + 1)).toNat

end

end A262297.P18193777597576482389

