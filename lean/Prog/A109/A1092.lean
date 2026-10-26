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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A109203: Minimal value of k>0 such that n^8 + k^2 is a semiprime.

The programs for A109203, there is no canonical definition to state claims against.
-/

/-! ## A109203.P8866587248590237123

`A109199(n²%A130600(A278527(n+1)))`
-/

namespace A109203.P8866587248590237123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 (Int.tmod (n ^ 2 : ℤ) (A130600 (A278527 (n + 1)).toNat)).toNat

end

end A109203.P8866587248590237123

/-! ## A109203.P11222372815586563617

`A109199(n²)`
-/

namespace A109203.P11222372815586563617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 (n ^ 2)

end

end A109203.P11222372815586563617

/-! ## A109203.P9728573988387435868

`A109199(n^2)%61`
-/

namespace A109203.P9728573988387435868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109199 (n ^ 2)) 61

end

end A109203.P9728573988387435868

/-! ## A109203.P16526669310201399759

`and(-1, A109199(A000290(n)))`
-/

namespace A109203.P16526669310201399759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A109199 (A000290 n).toNat)

end

end A109203.P16526669310201399759

/-!
# A109208: Palindromic primes p such that digit sum of p is a substring.

The programs for A109208, there is no canonical definition to state claims against.
-/

/-! ## A109208.P925999339713231758

`∩[A002385(n+1), A121939(n+1)]`
-/

namespace A109208.P925999339713231758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109208.P925999339713231758

/-! ## A109208.P1174629898359751105

`∩[A072299(n+1), A121939(n+1)]`
-/

namespace A109208.P1174629898359751105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109208.P1174629898359751105

/-! ## A109208.P10661452421546851313

`∩[A002113(n+1), A052019(n+1)]`
-/

namespace A109208.P10661452421546851313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109208.P10661452421546851313

/-!
# A109210: In the decimal expansion of Pi, positions of first digit of subsequences with total sum = 100.

The programs for A109210, there is no canonical definition to state claims against.
-/

/-! ## A109210.P10785609183280860583

`A109211(n+1)-A109212(n+1)+1`
-/

namespace A109210.P10785609183280860583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109211 (n + 1) - A109212 (n + 1) + 1

end

end A109210.P10785609183280860583

/-! ## A109210.P3735833164390955195

`A109211(n+1)+A024000(A109212(n+1))`
-/

namespace A109210.P3735833164390955195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109211 (n + 1) + A024000 (A109212 (n + 1)).toNat

end

end A109210.P3735833164390955195

/-! ## A109210.P2804409800928082697

`A020725(A109211(n+1)-A109212(n+1))`
-/

namespace A109210.P2804409800928082697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A109211 (n + 1) - A109212 (n + 1)).toNat

end

end A109210.P2804409800928082697

/-!
# A109211: In the decimal expansion of Pi, positions of the final digit of subsequences with total sum = 100.

The programs for A109211, there is no canonical definition to state claims against.
-/

/-! ## A109211.P2805476867238232851

`A109210(n+1)+A109212(n+1)-1`
-/

namespace A109211.P2805476867238232851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109210 (n + 1) + A109212 (n + 1) - 1

end

end A109211.P2805476867238232851

/-! ## A109211.P716398376117368962

`A109210(n+1)+A023443(A109212(n+1))`
-/

namespace A109211.P716398376117368962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109210 (n + 1) + A023443 (A109212 (n + 1)).toNat

end

end A109211.P716398376117368962

/-! ## A109211.P11969552152511978464

`A233583(A109212(n+1)+A109210(n+1))`
-/

namespace A109211.P11969552152511978464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A109212 (n + 1) + A109210 (n + 1)).toNat

end

end A109211.P11969552152511978464

/-! ## A109211.P12432977579292855672

`A109210(n+1)+A088226(A109212(n+1)²)`
-/

namespace A109211.P12432977579292855672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109210 (n + 1) + A088226 (A109212 (n + 1) ^ 2).toNat

end

end A109211.P12432977579292855672

/-!
# A109212: In the decimal expansion of Pi, lengths of subsequences with sum = 100.

The programs for A109212, there is no canonical definition to state claims against.
-/

/-! ## A109212.P9394980046939755115

`A109211(n+1)-A109210(n+1)+1`
-/

namespace A109212.P9394980046939755115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109211 (n + 1) - A109210 (n + 1) + 1

end

end A109212.P9394980046939755115

/-! ## A109212.P9909923380319244376

`A109211(n+1)+A024000(A109210(n+1))`
-/

namespace A109212.P9909923380319244376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109211 (n + 1) + A024000 (A109210 (n + 1)).toNat

end

end A109212.P9909923380319244376

/-! ## A109212.P12814049104797125775

`A020725(A109211(n+1)-A109210(n+1))`
-/

namespace A109212.P12814049104797125775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A109211 (n + 1) - A109210 (n + 1)).toNat

end

end A109212.P12814049104797125775

/-! ## A109212.P11132983973263205965

`A031285(A109211(n+1)-A109210(n+1))`
-/

namespace A109212.P11132983973263205965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A109211 (n + 1) - A109210 (n + 1)).toNat

end

end A109212.P11132983973263205965

/-! ## A109212.P6846717104136991579

`A131209(A109211(n+1)-A109210(n+1))`
-/

namespace A109212.P6846717104136991579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A109211 (n + 1) - A109210 (n + 1)).toNat

end

end A109212.P6846717104136991579

/-! ## A109212.P1635634202757545687

`A326178(A109211(n+1)-A109210(n+1))`
-/

namespace A109212.P1635634202757545687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A109211 (n + 1) - A109210 (n + 1)).toNat

end

end A109212.P1635634202757545687

/-!
# A109213: Product of a(n-2) and digit reversal of a(n-1).

The programs for A109213, there is no canonical definition to state claims against.
-/

/-! ## A109213.P11534913675875884397

`a(n-2)*A004086(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A109213.P11534913675875884397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A004086 (a (n - 1)).toNat

end

end A109213.P11534913675875884397

/-! ## A109213.P12177315867022515657

`a(n-2)*A321474(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A109213.P12177315867022515657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A321474 (a (n - 1)).toNat

end

end A109213.P12177315867022515657

/-! ## A109213.P1419758866145826950

`a(n-2)*A337925(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A109213.P1419758866145826950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A337925 (a (n - 1)).toNat

end

end A109213.P1419758866145826950

/-! ## A109213.P15378763926061693452

`a(n-2)*A352152(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A109213.P15378763926061693452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A352152 (a (n - 1)).toNat

end

end A109213.P15378763926061693452

/-!
# A109214: Product of a(n-1) and digit reversal of a(n-2).

The programs for A109214, there is no canonical definition to state claims against.
-/

/-! ## A109214.P16359761041855709956

`a(n-1)*A004086(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A109214.P16359761041855709956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A004086 (a (n - 2)).toNat

end

end A109214.P16359761041855709956

/-! ## A109214.P15699195935229745776

`a(n-1)*A321474(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A109214.P15699195935229745776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A321474 (a (n - 2)).toNat

end

end A109214.P15699195935229745776

/-! ## A109214.P5853871920851411980

`a(n-1)*A333659(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A109214.P5853871920851411980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A333659 (a (n - 2)).toNat

end

end A109214.P5853871920851411980

/-! ## A109214.P2380510013679205746

`a(n-1)*A352152(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A109214.P2380510013679205746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * A352152 (a (n - 2)).toNat

end

end A109214.P2380510013679205746

/-! ## A109214.P2066920520525867903

`(a(n-2)-A056965(a(n-2)))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A109214.P2066920520525867903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 2) - A056965 (a (n - 2)).toNat) * a (n - 1)

end

end A109214.P2066920520525867903

/-!
# A109216: Smallest factor of 2^(2n+1)+(2n+1)^2.

The programs for A109216, there is no canonical definition to state claims against.
-/

/-! ## A109216.P4321568109537175187

`A020639(2*4^n+(2*n+1)²)`
-/

namespace A109216.P4321568109537175187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * 4 ^ n + (2 * n + 1) ^ 2)

end

end A109216.P4321568109537175187

/-! ## A109216.P5462722980232571767

`or(1, A020639(A001580(2*n+1)))`
-/

namespace A109216.P5462722980232571767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 (A001580 (2 * n + 1)).toNat)

end

end A109216.P5462722980232571767

/-! ## A109216.P13095654841614569607

`A001580(Δ[n²]^A056560(2*n))`
-/

namespace A109216.P13095654841614569607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (A056560 (2 * n) : ℤ))).toNat

end

end A109216.P13095654841614569607

/-! ## A109216.P440653771968730274

`A061119(A240214(n)+A080853(n))`
-/

namespace A109216.P440653771968730274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061119 (A240214 n + A080853 n).toNat

end

end A109216.P440653771968730274

/-!
# A109217: a(n) is the binary string of length n+1 that has 0's at indices that are squares and 1's elsewhere, where the most significant digit has index 0.

The programs for A109217, the canonical program `A109217.P6222269728258825326` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109217 has offset 0).

The definition of A109217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109217.P14634196574041660208

`10*a(n-1)+1-char[n²]` with `a(0)=0`
-/

namespace A109217.P14634196574041660208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A109217.P14634196574041660208

namespace A109217

/-- `10*a(n-1)+1-char[n²]` -/
def P14634196574041660208.Spec : Prop :=
  ∀ n, P14634196574041660208.a n = A109217 n

end A109217

/-! ## A109217.P11717252366973558456

`or(1, 10*a(n-1))-char[n²]` with `a(0)=0`
-/

namespace A109217.P11717252366973558456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 1 (10 * a (n - 1)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A109217.P11717252366973558456

namespace A109217

/-- `or(1, 10*a(n-1))-char[n²]` -/
def P11717252366973558456.Spec : Prop :=
  ∀ n, P11717252366973558456.a n = A109217 n

end A109217

/-! ## A109217.P5380836618211267404

`A267635(n)+10*a(n-1)` with `a(0)=0`
-/

namespace A109217.P5380836618211267404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A267635 n + 10 * a (n - 1)

end

end A109217.P5380836618211267404

namespace A109217

/-- `A267635(n)+10*a(n-1)` -/
def P5380836618211267404.Spec : Prop :=
  ∀ n, P5380836618211267404.a n = A109217 n

end A109217

/-! ## A109217.P6222269728258825326

`10*a(n-1)+1-A010052(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A109217

/-- `10*a(n-1)+1-A010052(n)` -/
def P6222269728258825326.Spec : Prop :=
  ∀ n, P6222269728258825326.a n = A109217 n

theorem P6222269728258825326.correct : P6222269728258825326.Spec := by
  intro n
  simp only [A109217]

end A109217

/-! ## A109217.P15094888998108542538

`or(10*a(n-1), A000007(A037213(n)))` with `a(0)=0`
-/

namespace A109217.P15094888998108542538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (10 * a (n - 1)) (A000007 (A037213 n).toNat)

end

end A109217.P15094888998108542538

namespace A109217

/-- `or(10*a(n-1), A000007(A037213(n)))` -/
def P15094888998108542538.Spec : Prop :=
  ∀ n, P15094888998108542538.a n = A109217 n

end A109217

/-!
# A109220: Expansion of (1+x-x^2)/(1-2x-2x^2+x^4).

The programs for A109220, the canonical program `A109220.P11302138035128336052` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109220 has offset 0).

The definition of A109220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^2)/(1-2x-2x^2+x^4))` (program `A109220.P11302138035128336052`, by `A109220.P11302138035128336052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109220.P11302138035128336052

`ogf((1+x-x^2)/(1-2x-2x^2+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109220

/-- `ogf((1+x-x^2)/(1-2x-2x^2+x^4))` -/
def P11302138035128336052.Spec : Prop :=
  ∀ n, P11302138035128336052.a n = A109220 n

theorem P11302138035128336052.correct : P11302138035128336052.Spec := by
  intro n
  simp only [A109220]

end A109220

/-! ## A109220.P10733253205678981647

`2*a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=20`
-/

namespace A109220.P10733253205678981647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 20] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 4)

end

end A109220.P10733253205678981647

namespace A109220

/-- `2*a(n-1)+2*a(n-2)-a(n-4)` -/
def P10733253205678981647.Spec : Prop :=
  ∀ n, P10733253205678981647.a n = A109220 n

end A109220

/-! ## A109220.P14440356906112777677

`A052982(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A109220.P14440356906112777677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052982 (n + 1) - a (n - 1)

end

end A109220.P14440356906112777677

namespace A109220

/-- `A052982(n+1)-a(n-1)` -/
def P14440356906112777677.Spec : Prop :=
  ∀ n, P14440356906112777677.a n = A109220 n

end A109220

/-!
# A109221: A number triangle related to the Fibonacci polynomials.

The programs for A109221, the canonical program `A109221.P10079425343599604951` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109221 has offset 0).

The definition of A109221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109221.P10079425343599604951

`C(floor((2*row(n)-col(n))/2)+row(n)-col(n), 2*row(n)-2*col(n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109221

/-- `C(floor((2*row(n)-col(n))/2)+row(n)-col(n), 2*row(n)-2*col(n))` -/
def P10079425343599604951.Spec : Prop :=
  ∀ n, (P10079425343599604951.a n : ℤ) = A109221 n

theorem P10079425343599604951.correct : P10079425343599604951.Spec := by
  intro n
  simp only [A109221]

end A109221

/-! ## A109221.P7628314068043043265

`A109223(gcd(A010816(n), A061579(n)))`
-/

namespace A109221.P7628314068043043265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (Int.gcd (A010816 n) (A061579 n))

end

end A109221.P7628314068043043265

namespace A109221

/-- `A109223(gcd(A010816(n), A061579(n)))` -/
def P7628314068043043265.Spec : Prop :=
  ∀ n, P7628314068043043265.a n = A109221 n

end A109221

/-! ## A109221.P16245857673005960797

`A109223(A061579(n))`
-/

namespace A109221.P16245857673005960797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (A061579 n).toNat

end

end A109221.P16245857673005960797

namespace A109221

/-- `A109223(A061579(n))` -/
def P16245857673005960797.Spec : Prop :=
  ∀ n, P16245857673005960797.a n = A109221 n

end A109221

/-! ## A109221.P17476382009863331267

`A109223(A114327(n)+n)`
-/

namespace A109221.P17476382009863331267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (A114327 n + (n : ℤ)).toNat

end

end A109221.P17476382009863331267

namespace A109221

/-- `A109223(A114327(n)+n)` -/
def P17476382009863331267.Spec : Prop :=
  ∀ n, P17476382009863331267.a n = A109221 n

end A109221

/-! ## A109221.P10028653846656669341

`A109223(A038722(n+1)-1)`
-/

namespace A109221.P10028653846656669341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (A038722 (n + 1) - 1).toNat

end

end A109221.P10028653846656669341

namespace A109221

/-- `A109223(A038722(n+1)-1)` -/
def P10028653846656669341.Spec : Prop :=
  ∀ n, P10028653846656669341.a n = A109221 n

end A109221

/-! ## A109221.P513497803619932699

`A109223(A038722(n+2))`
-/

namespace A109221.P513497803619932699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109223 (A038722 (n + 2)).toNat

end

end A109221.P513497803619932699

namespace A109221

/-- `A109223(A038722(n+2))` -/
def P513497803619932699.Spec : Prop :=
  ∀ n, P513497803619932699.a n = A109221 n

end A109221

/-!
# A109222: Row sums of a triangle related to the Fibonacci polynomials.

The programs for A109222, the canonical program `A109222.P6130055469416149786` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109222 has offset 0).

The definition of A109222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109222.P6130055469416149786

`a(n-1)+2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109222

/-- `a(n-1)+2*a(n-2)-a(n-4)` -/
def P6130055469416149786.Spec : Prop :=
  ∀ n, P6130055469416149786.a n = A109222 n

theorem P6130055469416149786.correct : P6130055469416149786.Spec := by
  intro n
  simp only [A109222]

end A109222

/-! ## A109222.P9159787450878807276

`ogf((1+x-x^2-x^3)/(1-x-2x^2+x^4))`
-/

namespace A109222.P9159787450878807276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, -1] [1, -1, -2, 0, 1] n

end

end A109222.P9159787450878807276

namespace A109222

/-- `ogf((1+x-x^2-x^3)/(1-x-2x^2+x^4))` -/
def P9159787450878807276.Spec : Prop :=
  ∀ n, P9159787450878807276.a n = A109222 n

end A109222

/-! ## A109222.P12643030832782125387

`record[a(n-4)-a(n-1)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A109222.P12643030832782125387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  f1 (n - 4) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109222.P12643030832782125387

namespace A109222

/-- `record[a(n-4)-a(n-1)]` -/
def P12643030832782125387.Spec : Prop :=
  ∀ n, P12643030832782125387.a n = A109222 n

end A109222

/-! ## A109222.P10400205554826639218

`A103632(2*(n+1))`
-/

namespace A109222.P10400205554826639218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (2 * (n + 1))

end

end A109222.P10400205554826639218

namespace A109222

/-- `A103632(2*(n+1))` -/
def P10400205554826639218.Spec : Prop :=
  ∀ n, P10400205554826639218.a n = A109222 n

end A109222

/-! ## A109222.P1518690066424049162

`∑[A003269(2*n)]+1`
-/

namespace A109222.P1518690066424049162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A109222.P1518690066424049162

namespace A109222

/-- `∑[A003269(2*n)]+1` -/
def P1518690066424049162.Spec : Prop :=
  ∀ n, P1518690066424049162.a n = A109222 n

end A109222

/-! ## A109222.P5294699314865410513

`A079974(2*n+3)+1`
-/

namespace A109222.P5294699314865410513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079974 (2 * n + 3) + 1

end

end A109222.P5294699314865410513

namespace A109222

/-- `A079974(2*n+3)+1` -/
def P5294699314865410513.Spec : Prop :=
  ∀ n, P5294699314865410513.a n = A109222 n

end A109222

/-! ## A109222.P933054842199198864

`A158943(n)+a(n-1)` with `a(0)=1`
-/

namespace A109222.P933054842199198864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158943 n + a (n - 1)

end

end A109222.P933054842199198864

namespace A109222

/-- `A158943(n)+a(n-1)` -/
def P933054842199198864.Spec : Prop :=
  ∀ n, P933054842199198864.a n = A109222 n

end A109222

/-! ## A109222.P7437476664773201817

`A226517(Δ[2*(n+2)²])`
-/

namespace A109222.P7437476664773201817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A109222.P7437476664773201817

namespace A109222

/-- `A226517(Δ[2*(n+2)²])` -/
def P7437476664773201817.Spec : Prop :=
  ∀ n, P7437476664773201817.a n = A109222 n

end A109222

/-! ## A109222.P1560631056071677292

`∑[∑[A122789(2*n)]]+1`
-/

namespace A109222.P1560631056071677292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A109222.P1560631056071677292

namespace A109222

/-- `∑[∑[A122789(2*n)]]+1` -/
def P1560631056071677292.Spec : Prop :=
  ∀ n, P1560631056071677292.a n = A109222 n

end A109222

/-! ## A109222.P10657253166759022684

`∑[A017898(2*n+3)]+1`
-/

namespace A109222.P10657253166759022684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A109222.P10657253166759022684

namespace A109222

/-- `∑[A017898(2*n+3)]+1` -/
def P10657253166759022684.Spec : Prop :=
  ∀ n, P10657253166759022684.a n = A109222 n

end A109222

/-! ## A109222.P9959417131180793698

`∑[∑[A052969(abs(1-n))]]+1`
-/

namespace A109222.P9959417131180793698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052969 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A109222.P9959417131180793698

namespace A109222

/-- `∑[∑[A052969(abs(1-n))]]+1` -/
def P9959417131180793698.Spec : Prop :=
  ∀ n, P9959417131180793698.a n = A109222 n

end A109222

/-! ## A109222.P15062152456533517158

`A003269(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A109222.P15062152456533517158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003269 (n + n) + a (n - 1)

end

end A109222.P15062152456533517158

namespace A109222

/-- `A003269(n+n)+a(n-1)` -/
def P15062152456533517158.Spec : Prop :=
  ∀ n, P15062152456533517158.a n = A109222 n

end A109222

/-! ## A109222.P15178418379426413153

`A003411(A004275(n))`
-/

namespace A109222.P15178418379426413153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (A004275 n).toNat

end

end A109222.P15178418379426413153

namespace A109222

/-- `A003411(A004275(n))` -/
def P15178418379426413153.Spec : Prop :=
  ∀ n, P15178418379426413153.a n = A109222 n

end A109222

/-! ## A109222.P4941764790185727647

`∑[A003269(A004277(n))]`
-/

namespace A109222.P4941764790185727647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109222.P4941764790185727647

namespace A109222

/-- `∑[A003269(A004277(n))]` -/
def P4941764790185727647.Spec : Prop :=
  ∀ n, P4941764790185727647.a n = A109222 n

end A109222

/-! ## A109222.P10193806748508920701

`∑[A017898(A062545(n))]`
-/

namespace A109222.P10193806748508920701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109222.P10193806748508920701

namespace A109222

/-- `∑[A017898(A062545(n))]` -/
def P10193806748508920701.Spec : Prop :=
  ∀ n, P10193806748508920701.a n = A109222 n

end A109222

/-! ## A109222.P15427179935036126485

`record[A103632(n)/A103626(2*n)]`
-/

namespace A109222.P15427179935036126485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103632 n : ℚ) / (A103626 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109222.P15427179935036126485

namespace A109222

/-- `record[A103632(n)/A103626(2*n)]` -/
def P15427179935036126485.Spec : Prop :=
  ∀ n, P15427179935036126485.a n = (A109222 n : ℚ)

end A109222

/-! ## A109222.P6667417948579402074

`A072176(n+3)-A072176(n+1)`
-/

namespace A109222.P6667417948579402074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072176 (n + 3) - A072176 (n + 1)

end

end A109222.P6667417948579402074

namespace A109222

/-- `A072176(n+3)-A072176(n+1)` -/
def P6667417948579402074.Spec : Prop :=
  ∀ n, P6667417948579402074.a n = A109222 n

end A109222

/-! ## A109222.P2524921525444343817

`record[A017898(2*n)]-A017898(2*n+1)`
-/

namespace A109222.P2524921525444343817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A017898 (2 * n + 1)

end

end A109222.P2524921525444343817

namespace A109222

/-- `record[A017898(2*n)]-A017898(2*n+1)` -/
def P2524921525444343817.Spec : Prop :=
  ∀ n, P2524921525444343817.a n = A109222 n

end A109222

/-! ## A109222.P17221705569499041022

`A017898(2*(n+1))+A003269(2*n+1)`
-/

namespace A109222.P17221705569499041022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * (n + 1)) + A003269 (2 * n + 1)

end

end A109222.P17221705569499041022

namespace A109222

/-- `A017898(2*(n+1))+A003269(2*n+1)` -/
def P17221705569499041022.Spec : Prop :=
  ∀ n, P17221705569499041022.a n = A109222 n

end A109222

/-! ## A109222.P2000766328324668253

`2*A003269(2*n+1)-A122789(2*n+1)`
-/

namespace A109222.P2000766328324668253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003269 (2 * n + 1) - A122789 (2 * n + 1)

end

end A109222.P2000766328324668253

namespace A109222

/-- `2*A003269(2*n+1)-A122789(2*n+1)` -/
def P2000766328324668253.Spec : Prop :=
  ∀ n, P2000766328324668253.a n = A109222 n

end A109222

/-!
# A109223: Number triangle related to the Fibonacci polynomials.

The programs for A109223, the canonical program `A109223.P1714772179023261883` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109223 has offset 0).

The definition of A109223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109223.P1714772179023261883

`C(floor((row(n)+col(n))/2)+col(n), 2*col(n))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109223

/-- `C(floor((row(n)+col(n))/2)+col(n), 2*col(n))` -/
def P1714772179023261883.Spec : Prop :=
  ∀ n, (P1714772179023261883.a n : ℤ) = A109223 n

theorem P1714772179023261883.correct : P1714772179023261883.Spec := by
  intro n
  simp only [A109223]

end A109223

/-! ## A109223.P7542369965881099896

`A109221(gcd(A010816(n), A061579(n)))`
-/

namespace A109223.P7542369965881099896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (Int.gcd (A010816 n) (A061579 n))

end

end A109223.P7542369965881099896

namespace A109223

/-- `A109221(gcd(A010816(n), A061579(n)))` -/
def P7542369965881099896.Spec : Prop :=
  ∀ n, P7542369965881099896.a n = A109223 n

end A109223

/-! ## A109223.P944583491684244308

`A109221(A061579(n))`
-/

namespace A109223.P944583491684244308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (A061579 n).toNat

end

end A109223.P944583491684244308

namespace A109223

/-- `A109221(A061579(n))` -/
def P944583491684244308.Spec : Prop :=
  ∀ n, P944583491684244308.a n = A109223 n

end A109223

/-! ## A109223.P18265900601511338790

`A109221(A114327(n)+n)`
-/

namespace A109223.P18265900601511338790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (A114327 n + (n : ℤ)).toNat

end

end A109223.P18265900601511338790

namespace A109223

/-- `A109221(A114327(n)+n)` -/
def P18265900601511338790.Spec : Prop :=
  ∀ n, P18265900601511338790.a n = A109223 n

end A109223

/-! ## A109223.P9040547328502734880

`A109221(A038722(n+1)-1)`
-/

namespace A109223.P9040547328502734880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (A038722 (n + 1) - 1).toNat

end

end A109223.P9040547328502734880

namespace A109223

/-- `A109221(A038722(n+1)-1)` -/
def P9040547328502734880.Spec : Prop :=
  ∀ n, P9040547328502734880.a n = A109223 n

end A109223

/-! ## A109223.P14050070209081099783

`A109221(A038722(n+2))`
-/

namespace A109223.P14050070209081099783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109221 (A038722 (n + 2)).toNat

end

end A109223.P14050070209081099783

namespace A109223

/-- `A109221(A038722(n+2))` -/
def P14050070209081099783.Spec : Prop :=
  ∀ n, P14050070209081099783.a n = A109223 n

end A109223

/-! ## A109223.P12038056481107146441

`A065941(A245300(n)+A114327(n))`
-/

namespace A109223.P12038056481107146441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A245300 n + A114327 n).toNat

end

end A109223.P12038056481107146441

namespace A109223

/-- `A065941(A245300(n)+A114327(n))` -/
def P12038056481107146441.Spec : Prop :=
  ∀ n, P12038056481107146441.a n = A109223 n

end A109223

/-! ## A109223.P7722859009749851552

`A046854(A245300(n)+A002262(n))`
-/

namespace A109223.P7722859009749851552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A245300 n + A002262 n).toNat

end

end A109223.P7722859009749851552

namespace A109223

/-- `A046854(A245300(n)+A002262(n))` -/
def P7722859009749851552.Spec : Prop :=
  ∀ n, P7722859009749851552.a n = A109223 n

end A109223

/-!
# A109224: Minimum number of moves to solve the second Panex puzzle of order n of exchanging the two side towers.

The programs for A109224, there is no canonical definition to state claims against.
-/

/-! ## A109224.P751204719576341006

`∑[∑[A162538(A307768(n+2))]]`
-/

namespace A109224.P751204719576341006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162538 (A307768 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109224.P751204719576341006

/-!
# A109225: Triangle read by rows: T(n,0) = T(n,n) = 1 and for 0 < k < n: T(n,k) = T(n-1,k-1) + 1 - T(n-1,k-1) mod 2 + T(n-1,k).

The programs for A109225, there is no canonical definition to state claims against.
-/

/-! ## A109225.P14127514021769103707

`floor(A193816(n)/A059268(n))`
-/

namespace A109225.P14127514021769103707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193816 n : ℚ) / (A059268 n : ℚ)⌋

end

end A109225.P14127514021769103707

/-! ## A109225.P2685633656240341520

`floor(A193844(n)/A059268(n))`
-/

namespace A109225.P2685633656240341520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193844 n : ℚ) / (A059268 n : ℚ)⌋

end

end A109225.P2685633656240341520

/-! ## A109225.P11405827953602901599

`floor(A193816(n)/A000079(A002262(n)))`
-/

namespace A109225.P11405827953602901599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193816 n : ℚ) / (A000079 (A002262 n).toNat : ℚ)⌋

end

end A109225.P11405827953602901599

/-! ## A109225.P9845089420772242265

`floor(A193845(A061579(n))/A059268(n))`
-/

namespace A109225.P9845089420772242265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193845 (A061579 n).toNat : ℚ) / (A059268 n : ℚ)⌋

end

end A109225.P9845089420772242265

/-! ## A109225.P6011015248908693364

`floor(A193816(n)/A130321(A061579(n)))`
-/

namespace A109225.P6011015248908693364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193816 n : ℚ) / (A130321 (A061579 n).toNat : ℚ)⌋

end

end A109225.P6011015248908693364

/-! ## A109225.P5110804867293043109

`floor(A193816(n)/A173557(A099884(n)))`
-/

namespace A109225.P5110804867293043109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193816 n : ℚ) / (A173557 (A099884 n).toNat : ℚ)⌋

end

end A109225.P5110804867293043109

/-!
# A109226: If g(x) is the x-th prime gap, then g(a(n)) are prime gaps which are greater than the sum of the preceding two prime gaps.

The programs for A109226, there is no canonical definition to state claims against.
-/

/-! ## A109226.P12676771763800493294

`A000720(A074979(n+1))`
-/

namespace A109226.P12676771763800493294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A074979 (n + 1)).toNat

end

end A109226.P12676771763800493294

/-! ## A109226.P6298545169096666120

`A003963(2*A074979(n+1))`
-/

namespace A109226.P6298545169096666120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A074979 (n + 1)).toNat

end

end A109226.P6298545169096666120

/-!
# A109227: Binary strings that have 1's where primes occur, 0's elsewhere and every term ends with the n-th prime index.

The programs for A109227, there is no canonical definition to state claims against.
-/

/-! ## A109227.P9281768381852520638

`A002275(A000040(n+1))-A139103(n+1)`
-/

namespace A109227.P9281768381852520638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A000040 (n + 1)).toNat - A139103 (n + 1)

end

end A109227.P9281768381852520638

/-! ## A109227.P8884236371848072881

`A007088(A121240(n+1))`
-/

namespace A109227.P8884236371848072881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A121240 (n + 1)).toNat

end

end A109227.P8884236371848072881

/-!
# A109228: Numbers k such that k divides A109227(k); or k such that A109227(k) is a Niven number.

The programs for A109228, there is no canonical definition to state claims against.
-/

/-! ## A109228.P13739797858828008888

`A094045(A047026(n))`
-/

namespace A109228.P13739797858828008888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094045 (A047026 n).toNat

end

end A109228.P13739797858828008888

/-!
# A109231: a(n) = floor(n*cosh(1)).

The programs for A109231, the canonical program `A109231.P6698833827470630518` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109231 has offset 1).

The definition of A109231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*cosh(1))` (program `A109231.P6698833827470630518`, by `A109231.P6698833827470630518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109231.P6698833827470630518

`floor((n+1)*cosh(1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109231

/-- `floor((n+1)*cosh(1))` -/
def P6698833827470630518.Spec : Prop :=
  ∀ n, P6698833827470630518.a n = A109231 (n + 1)

theorem P6698833827470630518.correct : P6698833827470630518.Spec := by
  intro n
  simp only [A109231, Nat.add_sub_cancel]

end A109231

/-! ## A109231.P14030226591623365822

`ceil((n+1)*cosh(1))-1`
-/

namespace A109231.P14030226591623365822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.cosh (1 : ℝ)⌉ - 1

end

end A109231.P14030226591623365822

namespace A109231

/-- `ceil((n+1)*cosh(1))-1` -/
def P14030226591623365822.Spec : Prop :=
  ∀ n, P14030226591623365822.a n = A109231 (n + 1)

end A109231

/-! ## A109231.P4058904875085423752

`floor((n+1)*sqrt(sinh(1)²+1))`
-/

namespace A109231.P4058904875085423752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (Real.sinh (1 : ℝ) ^ 2 + 1)⌋

end

end A109231.P4058904875085423752

namespace A109231

/-- `floor((n+1)*sqrt(sinh(1)²+1))` -/
def P4058904875085423752.Spec : Prop :=
  ∀ n, P4058904875085423752.a n = A109231 (n + 1)

end A109231

/-! ## A109231.P474354304567041827

`ceil((A059563(n+1)-1)/2)`
-/

namespace A109231.P474354304567041827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059563 (n + 1) - 1 : ℚ) / 2⌉

end

end A109231.P474354304567041827

namespace A109231

/-- `ceil((A059563(n+1)-1)/2)` -/
def P474354304567041827.Spec : Prop :=
  ∀ n, P474354304567041827.a n = A109231 (n + 1)

end A109231

/-! ## A109231.P3536520419592997828

`lt[n, A109233(n+1)]+1`
-/

namespace A109231.P3536520419592997828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A109231.P3536520419592997828

namespace A109231

/-- `lt[n, A109233(n+1)]+1` -/
def P3536520419592997828.Spec : Prop :=
  ∀ n, (P3536520419592997828.a n : ℤ) = A109231 (n + 1)

end A109231

/-! ## A109231.P15999700759718658242

`A109233(A109232(n+1))`
-/

namespace A109231.P15999700759718658242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (A109232 (n + 1)).toNat

end

end A109231.P15999700759718658242

namespace A109231

/-- `A109233(A109232(n+1))` -/
def P15999700759718658242.Spec : Prop :=
  ∀ n, P15999700759718658242.a n = A109231 (n + 1)

end A109231

/-! ## A109231.P16404522792182856982

`A109233(record[A109233(n+1)])`
-/

namespace A109231.P16404522792182856982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109231.P16404522792182856982

namespace A109231

/-- `A109233(record[A109233(n+1)])` -/
def P16404522792182856982.Spec : Prop :=
  ∀ n, P16404522792182856982.a n = A109231 (n + 1)

end A109231

/-! ## A109231.P15930101786923978048

`A008619(A059563(n+1)-2)`
-/

namespace A109231.P15930101786923978048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059563 (n + 1) - 2).toNat

end

end A109231.P15930101786923978048

namespace A109231

/-- `A008619(A059563(n+1)-2)` -/
def P15930101786923978048.Spec : Prop :=
  ∀ n, P15930101786923978048.a n = A109231 (n + 1)

end A109231

/-! ## A109231.P635292916845007747

`A004526(A059563(n+1))`
-/

namespace A109231.P635292916845007747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059563 (n + 1)).toNat

end

end A109231.P635292916845007747

namespace A109231

/-- `A004526(A059563(n+1))` -/
def P635292916845007747.Spec : Prop :=
  ∀ n, P635292916845007747.a n = A109231 (n + 1)

end A109231

/-! ## A109231.P10237587933516043833

`ceil(∑[cosh(tanh(n)²)])`
-/

namespace A109231.P10237587933516043833
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (Real.tanh (n : ℝ) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A109231.P10237587933516043833

namespace A109231

/-- `ceil(∑[cosh(tanh(n)²)])` -/
def P10237587933516043833.Spec : Prop :=
  ∀ n, P10237587933516043833.a n = A109231 (n + 1)

end A109231

/-!
# A109232: a(n) = floor(n*(e^2+1)/(e-1)^2).

The programs for A109232, the canonical program `A109232.P3228392624533225586` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109232 has offset 1).

The definition of A109232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(e²+1)/(e-1)²)` (program `A109232.P3228392624533225586`, by `A109232.P3228392624533225586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109232.P3228392624533225586

`floor((n+1)*(e²+1)/(e-1)²)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109232

/-- `floor((n+1)*(e²+1)/(e-1)²)` -/
def P3228392624533225586.Spec : Prop :=
  ∀ n, P3228392624533225586.a n = A109232 (n + 1)

theorem P3228392624533225586.correct : P3228392624533225586.Spec := by
  intro n
  simp only [A109232, Nat.add_sub_cancel]

end A109232

/-! ## A109232.P1429362706157698249

`comp[floor(n*cosh(1))]`
-/

namespace A109232.P1429362706157698249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cosh (1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109232.P1429362706157698249

namespace A109232

/-- `comp[floor(n*cosh(1))]` -/
def P1429362706157698249.Spec : Prop :=
  ∀ n, (P1429362706157698249.a n : ℤ) = A109232 (n + 1)

end A109232

/-! ## A109232.P1278748948658065495

`record[A109233(n+1)]`
-/

namespace A109232.P1278748948658065495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109232.P1278748948658065495

namespace A109232

/-- `record[A109233(n+1)]` -/
def P1278748948658065495.Spec : Prop :=
  ∀ n, P1278748948658065495.a n = A109232 (n + 1)

end A109232

/-! ## A109232.P3691274510290946511

`A109233(A109231(n+1))`
-/

namespace A109232.P3691274510290946511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (A109231 (n + 1)).toNat

end

end A109232.P3691274510290946511

namespace A109232

/-- `A109233(A109231(n+1))` -/
def P3691274510290946511.Spec : Prop :=
  ∀ n, P3691274510290946511.a n = A109232 (n + 1)

end A109232

/-! ## A109232.P8718830398882961884

`A109233(floor(A059563(n+1)/2))`
-/

namespace A109232.P8718830398882961884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 ⌊(A059563 (n + 1) : ℚ) / 2⌋.toNat

end

end A109232.P8718830398882961884

namespace A109232

/-- `A109233(floor(A059563(n+1)/2))` -/
def P8718830398882961884.Spec : Prop :=
  ∀ n, P8718830398882961884.a n = A109232 (n + 1)

end A109232

/-! ## A109232.P2200779015007338733

`A109233(lt[n, A109233(n+1)]+1)`
-/

namespace A109232.P2200779015007338733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A109232.P2200779015007338733

namespace A109232

/-- `A109233(lt[n, A109233(n+1)]+1)` -/
def P2200779015007338733.Spec : Prop :=
  ∀ n, P2200779015007338733.a n = A109232 (n + 1)

end A109232

/-! ## A109232.P7294110076793228728

`lt[A109233(A028310(n)), n]`
-/

namespace A109232.P7294110076793228728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109232.P7294110076793228728

namespace A109232

/-- `lt[A109233(A028310(n)), n]` -/
def P7294110076793228728.Spec : Prop :=
  ∀ n, (P7294110076793228728.a n : ℤ) = A109232 (n + 1)

end A109232

/-! ## A109232.P6497830858665759036

`A109233(A004526(floor(2*(n+1)*cosh(1))))`
-/

namespace A109232.P6497830858665759036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109233 (A004526 ⌊2 * ((n + 1 : ℝ) * Real.cosh (1 : ℝ))⌋.toNat).toNat

end

end A109232.P6497830858665759036

namespace A109232

/-- `A109233(A004526(floor(2*(n+1)*cosh(1))))` -/
def P6497830858665759036.Spec : Prop :=
  ∀ n, P6497830858665759036.a n = A109232 (n + 1)

end A109232

/-! ## A109232.P14084254586358701480

`A002264(A330067(n+1))+2*(n+1)`
-/

namespace A109232.P14084254586358701480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A330067 (n + 1)).toNat + (2 * (n + 1) : ℤ)

end

end A109232.P14084254586358701480

namespace A109232

/-- `A002264(A330067(n+1))+2*(n+1)` -/
def P14084254586358701480.Spec : Prop :=
  ∀ n, P14084254586358701480.a n = A109232 (n + 1)

end A109232

/-!
# A109233: Self-inverse integer permutation induced by Beatty sequences for (e+1/e)/2 and (e^2+1)/(e-1)^2.

The programs for A109233, there is no canonical definition to state claims against.
-/

/-! ## A109233.P6397236415493808382

`A108590(n+1)+A044941(A094388(n))`
-/

namespace A109233.P6397236415493808382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108590 (n + 1) + A044941 (A094388 n).toNat

end

end A109233.P6397236415493808382

/-! ## A109233.P15654909504290708768

`A108590(n+1)+A055641(A215928(n))`
-/

namespace A109233.P15654909504290708768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108590 (n + 1) + A055641 (A215928 n).toNat

end

end A109233.P15654909504290708768

/-! ## A109233.P15753719656800887329

`A353470(A101367(2*(n+2)))+A108590(n+1)`
-/

namespace A109233.P15753719656800887329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353470 (A101367 (2 * (n + 2))).toNat + A108590 (n + 1)

end

end A109233.P15753719656800887329

/-!
# A109234: a(n) = floor(n*sinh(1)).

The programs for A109234, the canonical program `A109234.P17542945262600061485` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109234 has offset 1).

The definition of A109234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*sinh(1))` (program `A109234.P17542945262600061485`, by `A109234.P17542945262600061485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109234.P17542945262600061485

`floor((n+1)*sinh(1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109234

/-- `floor((n+1)*sinh(1))` -/
def P17542945262600061485.Spec : Prop :=
  ∀ n, P17542945262600061485.a n = A109234 (n + 1)

theorem P17542945262600061485.correct : P17542945262600061485.Spec := by
  intro n
  simp only [A109234, Nat.add_sub_cancel]

end A109234

/-! ## A109234.P7990386359749778606

`∑[Δ[floor(n*sinh(1))]!]`
-/

namespace A109234.P7990386359749778606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sinh (1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109234.P7990386359749778606

namespace A109234

/-- `∑[Δ[floor(n*sinh(1))]!]` -/
def P7990386359749778606.Spec : Prop :=
  ∀ n, (P7990386359749778606.a n : ℤ) = A109234 (n + 1)

end A109234

/-! ## A109234.P6591678201009306419

`ceil((n+1)*sinh(1))-1`
-/

namespace A109234.P6591678201009306419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * Real.sinh (1 : ℝ)⌉ - 1

end

end A109234.P6591678201009306419

namespace A109234

/-- `ceil((n+1)*sinh(1))-1` -/
def P6591678201009306419.Spec : Prop :=
  ∀ n, P6591678201009306419.a n = A109234 (n + 1)

end A109234

/-! ## A109234.P13464591430367343996

`∑[Δ[floor(n*sinh(1))]%3]`
-/

namespace A109234.P13464591430367343996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sinh (1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109234.P13464591430367343996

namespace A109234

/-- `∑[Δ[floor(n*sinh(1))]%3]` -/
def P13464591430367343996.Spec : Prop :=
  ∀ n, P13464591430367343996.a n = A109234 (n + 1)

end A109234

/-! ## A109234.P14752986520197907309

`floor((n+1)*cosh(1)*tanh(1))`
-/

namespace A109234.P14752986520197907309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.cosh (1 : ℝ) * Real.tanh (1 : ℝ))⌋

end

end A109234.P14752986520197907309

namespace A109234

/-- `floor((n+1)*cosh(1)*tanh(1))` -/
def P14752986520197907309.Spec : Prop :=
  ∀ n, P14752986520197907309.a n = A109234 (n + 1)

end A109234

/-! ## A109234.P12403205261374777707

`A023443(ceil((n+1)*sinh(1)))`
-/

namespace A109234.P12403205261374777707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈(n + 1 : ℝ) * Real.sinh (1 : ℝ)⌉.toNat

end

end A109234.P12403205261374777707

namespace A109234

/-- `A023443(ceil((n+1)*sinh(1)))` -/
def P12403205261374777707.Spec : Prop :=
  ∀ n, P12403205261374777707.a n = A109234 (n + 1)

end A109234

/-! ## A109234.P3495351860861381328

`A062157(A054785(n+1))+ceil((n+1)*sinh(1))`
-/

namespace A109234.P3495351860861381328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A054785 (n + 1)).toNat + ⌈(n + 1 : ℝ) * Real.sinh (1 : ℝ)⌉

end

end A109234.P3495351860861381328

namespace A109234

/-- `A062157(A054785(n+1))+ceil((n+1)*sinh(1))` -/
def P3495351860861381328.Spec : Prop :=
  ∀ n, P3495351860861381328.a n = A109234 (n + 1)

end A109234

/-! ## A109234.P16883397591640671934

`A062157(A139544(n+2))+ceil((n+1)*sinh(1))`
-/

namespace A109234.P16883397591640671934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A139544 (n + 2)).toNat + ⌈(n + 1 : ℝ) * Real.sinh (1 : ℝ)⌉

end

end A109234.P16883397591640671934

namespace A109234

/-- `A062157(A139544(n+2))+ceil((n+1)*sinh(1))` -/
def P16883397591640671934.Spec : Prop :=
  ∀ n, P16883397591640671934.a n = A109234 (n + 1)

end A109234

/-! ## A109234.P1191123286251952725

`A109236(A109235(n+1))`
-/

namespace A109234.P1191123286251952725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109236 (A109235 (n + 1)).toNat

end

end A109234.P1191123286251952725

namespace A109234

/-- `A109236(A109235(n+1))` -/
def P1191123286251952725.Spec : Prop :=
  ∀ n, P1191123286251952725.a n = A109234 (n + 1)

end A109234

/-! ## A109234.P11751578159259123787

`A109236(record[A109236(n+1)])`
-/

namespace A109234.P11751578159259123787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109236 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109234.P11751578159259123787

namespace A109234

/-- `A109236(record[A109236(n+1)])` -/
def P11751578159259123787.Spec : Prop :=
  ∀ n, P11751578159259123787.a n = A109234 (n + 1)

end A109234

/-! ## A109234.P484126638955149789

`round(∑[sinh(tanh(A000010(n+2)))])`
-/

namespace A109234.P484126638955149789
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (Real.tanh (A000010 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109234.P484126638955149789

namespace A109234

/-- `round(∑[sinh(tanh(A000010(n+2)))])` -/
def P484126638955149789.Spec : Prop :=
  ∀ n, P484126638955149789.a n = A109234 (n + 1)

end A109234

/-!
# A109235: a(n) = floor(n*(e^2-1)/(e^2-2*e-1)).

The programs for A109235, the canonical program `A109235.P11214782296021596094` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109235 has offset 1).

The definition of A109235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(e²-1)/(e²-2*e-1))` (program `A109235.P11214782296021596094`, by `A109235.P11214782296021596094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109235.P11214782296021596094

`floor((n+1)*(e²-1)/(e²-2*e-1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109235

/-- `floor((n+1)*(e²-1)/(e²-2*e-1))` -/
def P11214782296021596094.Spec : Prop :=
  ∀ n, P11214782296021596094.a n = A109235 (n + 1)

theorem P11214782296021596094.correct : P11214782296021596094.Spec := by
  intro n
  simp only [A109235, Nat.add_sub_cancel]

end A109235

/-! ## A109235.P4111301182792007802

`comp[floor(n*sinh(1))]`
-/

namespace A109235.P4111301182792007802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sinh (1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109235.P4111301182792007802

namespace A109235

/-- `comp[floor(n*sinh(1))]` -/
def P4111301182792007802.Spec : Prop :=
  ∀ n, (P4111301182792007802.a n : ℤ) = A109235 (n + 1)

end A109235

/-! ## A109235.P9310762770120055875

`n-floor((n+1)/(1-sinh(1)))`
-/

namespace A109235.P9310762770120055875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n + 1 : ℝ) / (1 - Real.sinh (1 : ℝ))⌋

end

end A109235.P9310762770120055875

namespace A109235

/-- `n-floor((n+1)/(1-sinh(1)))` -/
def P9310762770120055875.Spec : Prop :=
  ∀ n, P9310762770120055875.a n = A109235 (n + 1)

end A109235

/-! ## A109235.P5989398952756018183

`record[A109236(n+1)]`
-/

namespace A109235.P5989398952756018183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109235.P5989398952756018183

namespace A109235

/-- `record[A109236(n+1)]` -/
def P5989398952756018183.Spec : Prop :=
  ∀ n, P5989398952756018183.a n = A109235 (n + 1)

end A109235

/-! ## A109235.P15413803979244356777

`A109236(ceil((n+1)*sinh(1))-1)`
-/

namespace A109235.P15413803979244356777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109236 (⌈(n + 1 : ℝ) * Real.sinh (1 : ℝ)⌉ - 1).toNat

end

end A109235.P15413803979244356777

namespace A109235

/-- `A109236(ceil((n+1)*sinh(1))-1)` -/
def P15413803979244356777.Spec : Prop :=
  ∀ n, P15413803979244356777.a n = A109235 (n + 1)

end A109235

/-! ## A109235.P4977852167920507628

`A109236(floor((n+1)*cosh(1)*tanh(1)))`
-/

namespace A109235.P4977852167920507628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109236 ⌊(n + 1 : ℝ) * (Real.cosh (1 : ℝ) * Real.tanh (1 : ℝ))⌋.toNat

end

end A109235.P4977852167920507628

namespace A109235

/-- `A109236(floor((n+1)*cosh(1)*tanh(1)))` -/
def P4977852167920507628.Spec : Prop :=
  ∀ n, P4977852167920507628.a n = A109235 (n + 1)

end A109235

/-! ## A109235.P2580475505068718191

`A109236(A109234(n+1))`
-/

namespace A109235.P2580475505068718191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109236 (A109234 (n + 1)).toNat

end

end A109235.P2580475505068718191

namespace A109235

/-- `A109236(A109234(n+1))` -/
def P2580475505068718191.Spec : Prop :=
  ∀ n, P2580475505068718191.a n = A109235 (n + 1)

end A109235

/-! ## A109235.P5661076736761713774

`A109236(A023443(ceil((n+1)*sinh(1))))`
-/

namespace A109235.P5661076736761713774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109236 (A023443 ⌈(n + 1 : ℝ) * Real.sinh (1 : ℝ)⌉.toNat).toNat

end

end A109235.P5661076736761713774

namespace A109235

/-- `A109236(A023443(ceil((n+1)*sinh(1))))` -/
def P5661076736761713774.Spec : Prop :=
  ∀ n, P5661076736761713774.a n = A109235 (n + 1)

end A109235

/-! ## A109235.P14536166753242961818

`A022839((n+1)*A276863(A276871(n+1)))`
-/

namespace A109235.P14536166753242961818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 ((n + 1 : ℤ) * A276863 (A276871 (n + 1)).toNat).toNat

end

end A109235.P14536166753242961818

namespace A109235

/-- `A022839((n+1)*A276863(A276871(n+1)))` -/
def P14536166753242961818.Spec : Prop :=
  ∀ n, P14536166753242961818.a n = A109235 (n + 1)

end A109235

/-!
# A109237: a(n) = floor(n*coth(1)).

The programs for A109237, the canonical program `A109237.P10994013924130051327` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109237 has offset 1).

The definition of A109237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109237.P10994013924130051327

`floor((n+1)/tanh(1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109237

/-- `floor((n+1)/tanh(1))` -/
def P10994013924130051327.Spec : Prop :=
  ∀ n, P10994013924130051327.a n = A109237 (n + 1)

theorem P10994013924130051327.correct : P10994013924130051327.Spec := by
  intro n
  simp only [A109237, Nat.add_sub_cancel]

end A109237

/-! ## A109237.P842515143440739486

`∑[Δ[floor(n/tanh(1))]!]`
-/

namespace A109237.P842515143440739486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tanh (1 : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109237.P842515143440739486

namespace A109237

/-- `∑[Δ[floor(n/tanh(1))]!]` -/
def P842515143440739486.Spec : Prop :=
  ∀ n, (P842515143440739486.a n : ℤ) = A109237 (n + 1)

end A109237

/-! ## A109237.P8201214454578500684

`ceil((n+1)/tanh(1))-1`
-/

namespace A109237.P8201214454578500684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.tanh (1 : ℝ)⌉ - 1

end

end A109237.P8201214454578500684

namespace A109237

/-- `ceil((n+1)/tanh(1))-1` -/
def P8201214454578500684.Spec : Prop :=
  ∀ n, P8201214454578500684.a n = A109237 (n + 1)

end A109237

/-! ## A109237.P4541302005571657904

`lt[n, A109239(n+1)]+1`
-/

namespace A109237.P4541302005571657904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A109237.P4541302005571657904

namespace A109237

/-- `lt[n, A109239(n+1)]+1` -/
def P4541302005571657904.Spec : Prop :=
  ∀ n, (P4541302005571657904.a n : ℤ) = A109237 (n + 1)

end A109237

/-! ## A109237.P4481236518554020204

`A109239(A109238(n+1))`
-/

namespace A109237.P4481236518554020204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (A109238 (n + 1)).toNat

end

end A109237.P4481236518554020204

namespace A109237

/-- `A109239(A109238(n+1))` -/
def P4481236518554020204.Spec : Prop :=
  ∀ n, P4481236518554020204.a n = A109237 (n + 1)

end A109237

/-! ## A109237.P9225216669595126903

`A109239(record[A109239(n+1)])`
-/

namespace A109237.P9225216669595126903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109237.P9225216669595126903

namespace A109237

/-- `A109239(record[A109239(n+1)])` -/
def P9225216669595126903.Spec : Prop :=
  ∀ n, P9225216669595126903.a n = A109237 (n + 1)

end A109237

/-! ## A109237.P4823922054299475104

`A164087(n+1)%A001986(n+1)`
-/

namespace A109237.P4823922054299475104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164087 (n + 1)) (A001986 (n + 1))

end

end A109237.P4823922054299475104

namespace A109237

/-- `A164087(n+1)%A001986(n+1)` -/
def P4823922054299475104.Spec : Prop :=
  ∀ n, P4823922054299475104.a n = A109237 (n + 1)

end A109237

/-! ## A109237.P9963548270890655766

`A067099(A277690(n+1)+2*n+1)`
-/

namespace A109237.P9963548270890655766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067099 (A277690 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A109237.P9963548270890655766

namespace A109237

/-- `A067099(A277690(n+1)+2*n+1)` -/
def P9963548270890655766.Spec : Prop :=
  ∀ n, P9963548270890655766.a n = A109237 (n + 1)

end A109237

/-! ## A109237.P3177300264799753518

`A067100(A277690(n+1)+2*n+1)`
-/

namespace A109237.P3177300264799753518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067100 (A277690 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A109237.P3177300264799753518

namespace A109237

/-- `A067100(A277690(n+1)+2*n+1)` -/
def P3177300264799753518.Spec : Prop :=
  ∀ n, P3177300264799753518.a n = A109237 (n + 1)

end A109237

/-!
# A109238: a(n) = floor(n*(e^2+1)/2).

The programs for A109238, the canonical program `A109238.P12131122419421978950` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109238 has offset 1).

The definition of A109238 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(e²+1)/2)` (program `A109238.P12131122419421978950`, by `A109238.P12131122419421978950.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109238.P12131122419421978950

`floor((n+1)*(e²+1)/2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109238

/-- `floor((n+1)*(e²+1)/2)` -/
def P12131122419421978950.Spec : Prop :=
  ∀ n, P12131122419421978950.a n = A109238 (n + 1)

theorem P12131122419421978950.correct : P12131122419421978950.Spec := by
  intro n
  simp only [A109238, Nat.add_sub_cancel]

end A109238

/-! ## A109238.P350027704932706945

`comp[floor(n/tanh(1))]`
-/

namespace A109238.P350027704932706945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.tanh (1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A109238.P350027704932706945

namespace A109238

/-- `comp[floor(n/tanh(1))]` -/
def P350027704932706945.Spec : Prop :=
  ∀ n, (P350027704932706945.a n : ℤ) = A109238 (n + 1)

end A109238

/-! ## A109238.P7484967649839301161

`abs(ceil((n+1)/(tanh(1)-1)))`
-/

namespace A109238.P7484967649839301161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n + 1 : ℝ) / (Real.tanh (1 : ℝ) - 1)⌉|

end

end A109238.P7484967649839301161

namespace A109238

/-- `abs(ceil((n+1)/(tanh(1)-1)))` -/
def P7484967649839301161.Spec : Prop :=
  ∀ n, P7484967649839301161.a n = A109238 (n + 1)

end A109238

/-! ## A109238.P1450972254751881912

`record[A109239(n+1)]`
-/

namespace A109238.P1450972254751881912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109238.P1450972254751881912

namespace A109238

/-- `record[A109239(n+1)]` -/
def P1450972254751881912.Spec : Prop :=
  ∀ n, P1450972254751881912.a n = A109238 (n + 1)

end A109238

/-! ## A109238.P12281118242517464966

`A109239(A109237(n+1))`
-/

namespace A109238.P12281118242517464966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109239 (A109237 (n + 1)).toNat

end

end A109238.P12281118242517464966

namespace A109238

/-- `A109239(A109237(n+1))` -/
def P12281118242517464966.Spec : Prop :=
  ∀ n, P12281118242517464966.a n = A109238 (n + 1)

end A109238

/-! ## A109238.P16209933660571816599

`A004526(A182767(n+1))`
-/

namespace A109238.P16209933660571816599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A182767 (n + 1)).toNat

end

end A109238.P16209933660571816599

namespace A109238

/-- `A004526(A182767(n+1))` -/
def P16209933660571816599.Spec : Prop :=
  ∀ n, P16209933660571816599.a n = A109238 (n + 1)

end A109238

/-! ## A109238.P7660480296645623634

`A004526(Δ[A022787(n+1)]+n)`
-/

namespace A109238.P7660480296645623634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A109238.P7660480296645623634

namespace A109238

/-- `A004526(Δ[A022787(n+1)]+n)` -/
def P7660480296645623634.Spec : Prop :=
  ∀ n, P7660480296645623634.a n = A109238 (n + 1)

end A109238

/-! ## A109238.P267744443284809861

`A059543(2*n+1)+A118759(2*n+1)+2`
-/

namespace A109238.P267744443284809861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059543 (2 * n + 1) + (A118759 (2 * n + 1) + 2)

end

end A109238.P267744443284809861

namespace A109238

/-- `A059543(2*n+1)+A118759(2*n+1)+2` -/
def P267744443284809861.Spec : Prop :=
  ∀ n, P267744443284809861.a n = A109238 (n + 1)

end A109238

/-!
# A109239: Self-inverse integer permutation induced by Beatty sequences for (e^2+1)/(e^2-1) and (e^2+1)/2.

The programs for A109239, there is no canonical definition to state claims against.
-/

/-! ## A109239.P14731547384818895256

`A164088(n+1)+A258648(A258648(n+1))%2`
-/

namespace A109239.P14731547384818895256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164088 (n + 1) + Int.tmod (A258648 (A258648 (n + 1)).toNat) 2

end

end A109239.P14731547384818895256

/-! ## A109239.P1074875821827920244

`A164088(n+1)+A085974(A052552(n))`
-/

namespace A109239.P1074875821827920244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164088 (n + 1) + A085974 (A052552 n).toNat

end

end A109239.P1074875821827920244

/-! ## A109239.P10750622717618069904

`A164088(n+1)-A178798(A034839(n))`
-/

namespace A109239.P10750622717618069904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164088 (n + 1) - A178798 (A034839 n).toNat

end

end A109239.P10750622717618069904

/-! ## A109239.P4841595367872877460

`A164088(n+1)%A086978(n+1)`
-/

namespace A109239.P4841595367872877460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164088 (n + 1)) (A086978 (n + 1))

end

end A109239.P4841595367872877460

/-! ## A109239.P2088650208505938135

`and(A152388(n+1), A164088(n+1))`
-/

namespace A109239.P2088650208505938135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A164088 (n + 1))

end

end A109239.P2088650208505938135

/-!
# A109241: Expansion of 1/((1-10*x)*(1-100*x)).

The programs for A109241, the canonical program `A109241.P3593912904744071432` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109241 has offset 0).

The definition of A109241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109241.P10897058099272805682

`(10^(2*n+1)-10^n)/9`
-/

namespace A109241.P10897058099272805682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (2 * n + 1) : ℤ) - (10 ^ n : ℤ) : ℚ) / 9

end

end A109241.P10897058099272805682

namespace A109241

/-- `(10^(2*n+1)-10^n)/9` -/
def P10897058099272805682.Spec : Prop :=
  ∀ n, P10897058099272805682.a n = (A109241 n : ℚ)

theorem P10897058099272805682.correct : P10897058099272805682.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A109241, Nat.add_sub_cancel, A109241.P10897058099272805682.a, A109241.P3593912904744071432.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A109241, Nat.add_sub_cancel, A109241.P10897058099272805682.a, A109241.P3593912904744071432.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A109241

/-! ## A109241.P3593912904744071432

`110*a(n-1)-1000*a(n-2)` with `a(0)=1, a(1)=110`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109241

/-- `110*a(n-1)-1000*a(n-2)` -/
def P3593912904744071432.Spec : Prop :=
  ∀ n, P3593912904744071432.a n = A109241 n

theorem P3593912904744071432.correct : P3593912904744071432.Spec := by
  intro n
  simp only [A109241]

end A109241

/-! ## A109241.P9313486503906242142

`A002275(n+1)*10^n`
-/

namespace A109241.P9313486503906242142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * (10 ^ n : ℤ)

end

end A109241.P9313486503906242142

namespace A109241

/-- `A002275(n+1)*10^n` -/
def P9313486503906242142.Spec : Prop :=
  ∀ n, P9313486503906242142.a n = A109241 n

end A109241

/-! ## A109241.P18407123076484923117

`lcm(10^n, ∑[10^n])`
-/

namespace A109241.P18407123076484923117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (10 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109241.P18407123076484923117

namespace A109241

/-- `lcm(10^n, ∑[10^n])` -/
def P18407123076484923117.Spec : Prop :=
  ∀ n, (P18407123076484923117.a n : ℤ) = A109241 n

end A109241

/-! ## A109241.P15820751674018150241

`(10^n)²+10*a(n-1)` with `a(0)=1`
-/

namespace A109241.P15820751674018150241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (10 ^ n) ^ 2 + 10 * a (n - 1)

end

end A109241.P15820751674018150241

namespace A109241

/-- `(10^n)²+10*a(n-1)` -/
def P15820751674018150241.Spec : Prop :=
  ∀ n, (P15820751674018150241.a n : ℤ) = A109241 n

end A109241

/-! ## A109241.P2311109933178912742

`record[A278754(n)]`
-/

namespace A109241.P2311109933178912742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109241.P2311109933178912742

namespace A109241

/-- `record[A278754(n)]` -/
def P2311109933178912742.Spec : Prop :=
  ∀ n, P2311109933178912742.a n = A109241 n

end A109241

/-! ## A109241.P2216190288483372412

`record[A282416(n)]`
-/

namespace A109241.P2216190288483372412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109241.P2216190288483372412

namespace A109241

/-- `record[A282416(n)]` -/
def P2216190288483372412.Spec : Prop :=
  ∀ n, P2216190288483372412.a n = A109241 n

end A109241

/-! ## A109241.P1096998692983896589

`record[A287469(n)]`
-/

namespace A109241.P1096998692983896589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109241.P1096998692983896589

namespace A109241

/-- `record[A287469(n)]` -/
def P1096998692983896589.Spec : Prop :=
  ∀ n, P1096998692983896589.a n = A109241 n

end A109241

/-! ## A109241.P8888538795224022950

`A278754(2*n)`
-/

namespace A109241.P8888538795224022950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278754 (2 * n)

end

end A109241.P8888538795224022950

namespace A109241

/-- `A278754(2*n)` -/
def P8888538795224022950.Spec : Prop :=
  ∀ n, P8888538795224022950.a n = A109241 n

end A109241

/-! ## A109241.P4310243733173164131

`A282416(2*n)`
-/

namespace A109241.P4310243733173164131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 (2 * n)

end

end A109241.P4310243733173164131

namespace A109241

/-- `A282416(2*n)` -/
def P4310243733173164131.Spec : Prop :=
  ∀ n, P4310243733173164131.a n = A109241 n

end A109241

/-!
# A109242: Expansion of 1/((1-x)*(1-10*x)*(1-100*x)).

The programs for A109242, the canonical program `A109242.P8445243023848623384` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109242 has offset 0).

The definition of A109242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109242.P8445243023848623384

`110*a(n-1)-1000*a(n-2)+1` with `a(0)=1, a(1)=111`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109242

/-- `110*a(n-1)-1000*a(n-2)+1` -/
def P8445243023848623384.Spec : Prop :=
  ∀ n, P8445243023848623384.a n = A109242 n

theorem P8445243023848623384.correct : P8445243023848623384.Spec := by
  intro n
  simp only [A109242]

end A109242

/-! ## A109242.P9121150081354827232

`10^(2*n+3)/891-10^(n+1)/81+1/891`
-/

namespace A109242.P9121150081354827232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ (2 * n + 3) : ℚ) / 891 - (10 ^ (n + 1) : ℚ) / 81 + (1 : ℚ) / 891

end

end A109242.P9121150081354827232

namespace A109242

/-- `10^(2*n+3)/891-10^(n+1)/81+1/891` -/
def P9121150081354827232.Spec : Prop :=
  ∀ n, P9121150081354827232.a n = (A109242 n : ℚ)

theorem P9121150081354827232.correct : P9121150081354827232.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A109242, Nat.add_sub_cancel, A109242.P9121150081354827232.a, A109242.P8445243023848623384.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A109242, Nat.add_sub_cancel, A109242.P9121150081354827232.a, A109242.P8445243023848623384.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A109242

/-! ## A109242.P610001700387738719

`∑[A109241(n)]`
-/

namespace A109242.P610001700387738719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109242.P610001700387738719

namespace A109242

/-- `∑[A109241(n)]` -/
def P610001700387738719.Spec : Prop :=
  ∀ n, P610001700387738719.a n = A109242 n

end A109242

/-! ## A109242.P982853636416850624

`∑[record[A278754(n)]]`
-/

namespace A109242.P982853636416850624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278754 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109242.P982853636416850624

namespace A109242

/-- `∑[record[A278754(n)]]` -/
def P982853636416850624.Spec : Prop :=
  ∀ n, P982853636416850624.a n = A109242 n

end A109242

/-! ## A109242.P2900841852493964332

`∑[record[A282416(n)]]`
-/

namespace A109242.P2900841852493964332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109242.P2900841852493964332

namespace A109242

/-- `∑[record[A282416(n)]]` -/
def P2900841852493964332.Spec : Prop :=
  ∀ n, P2900841852493964332.a n = A109242 n

end A109242

/-! ## A109242.P12638169136914468039

`∑[record[A287469(n)]]`
-/

namespace A109242.P12638169136914468039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109242.P12638169136914468039

namespace A109242

/-- `∑[record[A287469(n)]]` -/
def P12638169136914468039.Spec : Prop :=
  ∀ n, P12638169136914468039.a n = A109242 n

end A109242

/-! ## A109242.P15976576800276867830

`∑[A278754(2*n)]`
-/

namespace A109242.P15976576800276867830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278754 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109242.P15976576800276867830

namespace A109242

/-- `∑[A278754(2*n)]` -/
def P15976576800276867830.Spec : Prop :=
  ∀ n, P15976576800276867830.a n = A109242 n

end A109242

/-! ## A109242.P17406569123910030172

`∑[A282416(2*n)]`
-/

namespace A109242.P17406569123910030172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109242.P17406569123910030172

namespace A109242

/-- `∑[A282416(2*n)]` -/
def P17406569123910030172.Spec : Prop :=
  ∀ n, P17406569123910030172.a n = A109242 n

end A109242

/-! ## A109242.P11281410938188179928

`∑[A285541(2*n)]`
-/

namespace A109242.P11281410938188179928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285541 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109242.P11281410938188179928

namespace A109242

/-- `∑[A285541(2*n)]` -/
def P11281410938188179928.Spec : Prop :=
  ∀ n, P11281410938188179928.a n = A109242 n

end A109242

/-! ## A109242.P5235960421292399258

`∑[A287469(2*n)]`
-/

namespace A109242.P5235960421292399258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287469 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109242.P5235960421292399258

namespace A109242

/-- `∑[A287469(2*n)]` -/
def P5235960421292399258.Spec : Prop :=
  ∀ n, P5235960421292399258.a n = A109242 n

end A109242

/-!
# A109243: 2^(n-1)J(n,1/2) where J(n,x)=n-th Jacobsthal polynomial.

The programs for A109243, the canonical program `A109243.P16249930223832176522` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109243 has offset 0).

The definition of A109243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109243.P16249930223832176522

`12*a(n-2)-52*a(n-4)+96*a(n-6)-64*a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=6, a(4)=32, a(5)=28, a(6)=248, a(7)=120`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109243

/-- `12*a(n-2)-52*a(n-4)+96*a(n-6)-64*a(n-8)` -/
def P16249930223832176522.Spec : Prop :=
  ∀ n, P16249930223832176522.a n = A109243 n

theorem P16249930223832176522.correct : P16249930223832176522.Spec := by
  intro n
  simp only [A109243]

end A109243

/-! ## A109243.P6875833530866500145

`A053824(n)*A340854(A000105(n))`
-/

namespace A109243.P6875833530866500145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 n * A340854 (A000105 n).toNat

end

end A109243.P6875833530866500145

namespace A109243

/-- `A053824(n)*A340854(A000105(n))` -/
def P6875833530866500145.Spec : Prop :=
  ∀ n, P6875833530866500145.a n = A109243 n

end A109243

/-!
# A109244: A tree-node counting triangle.

The programs for A109244, the canonical program `A109244.P16797321423296611330` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109244 has offset 0).

The definition of A109244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109244.P16797321423296611330

`A201635(A099375(n)+n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A109244

/-- `A201635(A099375(n)+n)` -/
def P16797321423296611330.Spec : Prop :=
  ∀ n, P16797321423296611330.a n = A109244 n

theorem P16797321423296611330.correct : P16797321423296611330.Spec := by
  intro n
  simp only [A109244]

end A109244

/-! ## A109244.P16428941457263891401

`A201635(A061579(∑[A035214(n)]))`
-/

namespace A109244.P16428941457263891401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A061579 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A109244.P16428941457263891401

namespace A109244

/-- `A201635(A061579(∑[A035214(n)]))` -/
def P16428941457263891401.Spec : Prop :=
  ∀ n, P16428941457263891401.a n = A109244 n

end A109244

/-! ## A109244.P13879719910128369440

`A201635(A038722(n+1)+A003056(n))`
-/

namespace A109244.P13879719910128369440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A038722 (n + 1) + A003056 n).toNat

end

end A109244.P13879719910128369440

namespace A109244

/-- `A201635(A038722(n+1)+A003056(n))` -/
def P13879719910128369440.Spec : Prop :=
  ∀ n, P13879719910128369440.a n = A109244 n

end A109244

/-! ## A109244.P8267750466469793218

`A201635(A061579(n)+A002024(n+1))`
-/

namespace A109244.P8267750466469793218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A061579 n + A002024 (n + 1)).toNat

end

end A109244.P8267750466469793218

namespace A109244

/-- `A201635(A061579(n)+A002024(n+1))` -/
def P8267750466469793218.Spec : Prop :=
  ∀ n, P8267750466469793218.a n = A109244 n

end A109244

/-! ## A109244.P1928569148119709015

`A201635(A127739(n+1)+A025581(n))`
-/

namespace A109244.P1928569148119709015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A127739 (n + 1) + A025581 n).toNat

end

end A109244.P1928569148119709015

namespace A109244

/-- `A201635(A127739(n+1)+A025581(n))` -/
def P1928569148119709015.Spec : Prop :=
  ∀ n, P1928569148119709015.a n = A109244 n

end A109244

/-! ## A109244.P11100864015487033143

`A201635(A380649(n+1))`
-/

namespace A109244.P11100864015487033143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A380649 (n + 1)).toNat

end

end A109244.P11100864015487033143

namespace A109244

/-- `A201635(A380649(n+1))` -/
def P11100864015487033143.Spec : Prop :=
  ∀ n, P11100864015487033143.a n = A109244 n

end A109244

/-!
# A109245: Diagonal sums of number triangle A109244.

The programs for A109245, there is no canonical definition to state claims against.
-/

/-! ## A109245.P16394996668169686534

`A110655(A077824(n))+A004526(n)`
-/

namespace A109245.P16394996668169686534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A077824 n).toNat + A004526 n

end

end A109245.P16394996668169686534

/-! ## A109245.P6398136858267412499

`A008624(A217779(n)+A078404(n))`
-/

namespace A109245.P6398136858267412499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A217779 n + A078404 n).toNat

end

end A109245.P6398136858267412499

/-! ## A109245.P5022129063518016485

`A110655(A217779(n))+A046800(n)`
-/

namespace A109245.P5022129063518016485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A217779 n).toNat + A046800 n

end

end A109245.P5022129063518016485

/-!
# A109247: Expansion of (1 - 3*x^2 - 3*x^3 + x^4)/(1 + x^4).

The programs for A109247, the canonical program `A109247.P9412040107854911511` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109247 has offset 0).

The definition of A109247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x^2-3x^3+x^4)/(1+x^4))` (program `A109247.P9412040107854911511`, by `A109247.P9412040107854911511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109247.P13812329429716384578

`-a(n-4)` with `a(0)=1, a(1)=0, a(2)=-3, a(3)=-3, a(4)=0`
-/

namespace A109247.P13812329429716384578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -3, -3, 0] fun n a =>
  -a (n - 4)

end

end A109247.P13812329429716384578

namespace A109247

/-- `-a(n-4)` -/
def P13812329429716384578.Spec : Prop :=
  ∀ n, P13812329429716384578.a n = A109247 n

end A109247

/-! ## A109247.P9412040107854911511

`ogf((1-3x^2-3x^3+x^4)/(1+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109247

/-- `ogf((1-3x^2-3x^3+x^4)/(1+x^4))` -/
def P9412040107854911511.Spec : Prop :=
  ∀ n, P9412040107854911511.a n = A109247 n

theorem P9412040107854911511.correct : P9412040107854911511.Spec := by
  intro n
  simp only [A109247]

end A109247

/-!
# A109248: Expansion of (1-x-2*x^2)/(1-x^2+x^3).

The programs for A109248, the canonical program `A109248.P1408967954779156726` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109248 has offset 0).

The definition of A109248 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-2x^2)/(1-x^2+x^3))` (program `A109248.P1408967954779156726`, by `A109248.P1408967954779156726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109248.P1408967954779156726

`ogf((1-x-2x^2)/(1-x^2+x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109248

/-- `ogf((1-x-2x^2)/(1-x^2+x^3))` -/
def P1408967954779156726.Spec : Prop :=
  ∀ n, P1408967954779156726.a n = A109248 n

theorem P1408967954779156726.correct : P1408967954779156726.Spec := by
  intro n
  simp only [A109248]

end A109248

/-! ## A109248.P7688870258544296939

`a(n-2)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A109248.P7688870258544296939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  a (n - 2) - a (n - 3)

end

end A109248.P7688870258544296939

namespace A109248

/-- `a(n-2)-a(n-3)` -/
def P7688870258544296939.Spec : Prop :=
  ∀ n, P7688870258544296939.a n = A109248 n

end A109248

/-! ## A109248.P12354979082851676247

`Δ[A007307(n)]*A033999(n)`
-/

namespace A109248.P12354979082851676247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A109248.P12354979082851676247

namespace A109248

/-- `Δ[A007307(n)]*A033999(n)` -/
def P12354979082851676247.Spec : Prop :=
  ∀ n, P12354979082851676247.a n = A109248 n

end A109248

/-! ## A109248.P3725128423372756412

`Δ[A007307(n)]*A056594(2*n)`
-/

namespace A109248.P3725128423372756412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056594 (2 * n)

end

end A109248.P3725128423372756412

namespace A109248

/-- `Δ[A007307(n)]*A056594(2*n)` -/
def P3725128423372756412.Spec : Prop :=
  ∀ n, P3725128423372756412.a n = A109248 n

end A109248

/-! ## A109248.P7308145728636935998

`Δ[A007307(n)]*A157128(3*n)`
-/

namespace A109248.P7308145728636935998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A157128 (3 * n)

end

end A109248.P7308145728636935998

namespace A109248

/-- `Δ[A007307(n)]*A157128(3*n)` -/
def P7308145728636935998.Spec : Prop :=
  ∀ n, P7308145728636935998.a n = A109248 n

end A109248

/-!
# A109249: Expansion of x*(-1+2*x-x^2+7*x^3+8*x^4-7*x^5+8*x^6) / ((4*x^3-x^2+3*x-1)*(2*x^4-2*x^3+3*x^2+1)*(x-1)^2).

The programs for A109249, the canonical program `A109249.P6422230439908009733` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109249 has offset 0).

The definition of A109249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2+x^3-7x^4-8x^5+7x^6-8x^7)/(1-5x+11x^2-26x^3+45x^4-57x^5+61x^6-48x^7+26x^8-8x^9))` (program `A109249.P6422230439908009733`, by `A109249.P6422230439908009733.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109249.P6422230439908009733

`ogf((x-2x^2+x^3-7x^4-8x^5+7x^6-8x^7)/(1-5x+11x^2-26x^3+45x^4-57x^5+61x^6-48x^7+26x^8-8x^9))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109249

/-- `ogf((x-2x^2+x^3-7x^4-8x^5+7x^6-8x^7)/(1-5x+11x^2-26x^3+45x^4-57x^5+61x^6-48x^7+26x^8-8x^9))` -/
def P6422230439908009733.Spec : Prop :=
  ∀ n, P6422230439908009733.a n = A109249 n

theorem P6422230439908009733.correct : P6422230439908009733.Spec := by
  intro n
  simp only [A109249]

end A109249

/-! ## A109249.P886157570782397873

`xor(A000225(n), A002265(A328054(n)))`
-/

namespace A109249.P886157570782397873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A002265 (A328054 n).toNat)

end

end A109249.P886157570782397873

namespace A109249

/-- `xor(A000225(n), A002265(A328054(n)))` -/
def P886157570782397873.Spec : Prop :=
  ∀ n, P886157570782397873.a n = A109249 n

end A109249

/-! ## A109249.P6543306130817028459

`A131507(A076322(n+1))%A000984(n)`
-/

namespace A109249.P6543306130817028459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131507 (A076322 (n + 1)).toNat) (A000984 n)

end

end A109249.P6543306130817028459

namespace A109249

/-- `A131507(A076322(n+1))%A000984(n)` -/
def P6543306130817028459.Spec : Prop :=
  ∀ n, P6543306130817028459.a n = A109249 n

end A109249

/-!
# A109250: Self-inverse integer permutation induced by Beatty sequences for 1+sqrt(2) and 1+1/sqrt(2).

The programs for A109250, the canonical program `A109250.P6190560470805892054` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109250 has offset 1).

The definition of A109250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109250.P6190560470805892054

`floor(A001953(n+1)/A006337(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A109250

/-- `floor(A001953(n+1)/A006337(n+1))` -/
def P6190560470805892054.Spec : Prop :=
  ∀ n, P6190560470805892054.a n = A109250 (n + 1)

theorem P6190560470805892054.correct : P6190560470805892054.Spec := by
  intro n
  simp only [A109250, Nat.add_sub_cancel]

end A109250

/-! ## A109250.P1051710013337578011

`floor(∑[A001030(n+1)]/A006337(n+1))`
-/

namespace A109250.P1051710013337578011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A006337 (n + 1) : ℚ)⌋

end

end A109250.P1051710013337578011

namespace A109250

/-- `floor(∑[A001030(n+1)]/A006337(n+1))` -/
def P1051710013337578011.Spec : Prop :=
  ∀ n, P1051710013337578011.a n = A109250 (n + 1)

end A109250

/-! ## A109250.P14771538876942120020

`floor(A049472(2*n+3)/A006337(n+1))`
-/

namespace A109250.P14771538876942120020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049472 (2 * n + 3) : ℚ) / (A006337 (n + 1) : ℚ)⌋

end

end A109250.P14771538876942120020

namespace A109250

/-- `floor(A049472(2*n+3)/A006337(n+1))` -/
def P14771538876942120020.Spec : Prop :=
  ∀ n, P14771538876942120020.a n = A109250 (n + 1)

theorem P14771538876942120020.correct : P14771538876942120020.Spec := by
  intro n
  simp only [A109250, Nat.add_sub_cancel, A109250.P14771538876942120020.a, A109250.P6190560470805892054.a, A001953, A001953.P2047094880503061030.a, A006337, A006337.P7691167176776546628.a, A049472, A049472.P13396613520496134978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A109250

/-! ## A109250.P4936650499291911285

`A004526(A001953(n+1)*A080763(n+1))`
-/

namespace A109250.P4936650499291911285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001953 (n + 1) * A080763 (n + 1)).toNat

end

end A109250.P4936650499291911285

namespace A109250

/-- `A004526(A001953(n+1)*A080763(n+1))` -/
def P4936650499291911285.Spec : Prop :=
  ∀ n, P4936650499291911285.a n = A109250 (n + 1)

end A109250

/-! ## A109250.P2257661816859306934

`A172474(A005408(n+1)*A080763(n+1))`
-/

namespace A109250.P2257661816859306934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A005408 (n + 1) * A080763 (n + 1)).toNat

end

end A109250.P2257661816859306934

namespace A109250

/-- `A172474(A005408(n+1)*A080763(n+1))` -/
def P2257661816859306934.Spec : Prop :=
  ∀ n, P2257661816859306934.a n = A109250 (n + 1)

end A109250

/-! ## A109250.P5675096913209266792

`A172474(A080763(n+1)*A144396(n+1))`
-/

namespace A109250.P5675096913209266792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A080763 (n + 1) * A144396 (n + 1)).toNat

end

end A109250.P5675096913209266792

namespace A109250

/-- `A172474(A080763(n+1)*A144396(n+1))` -/
def P5675096913209266792.Spec : Prop :=
  ∀ n, P5675096913209266792.a n = A109250 (n + 1)

end A109250

/-! ## A109250.P9586594722603699216

`A172474(lcm(A080763(n+1), A144396(n+1)))`
-/

namespace A109250.P9586594722603699216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (Int.lcm (A080763 (n + 1)) (A144396 (n + 1)))

end

end A109250.P9586594722603699216

namespace A109250

/-- `A172474(lcm(A080763(n+1), A144396(n+1)))` -/
def P9586594722603699216.Spec : Prop :=
  ∀ n, P9586594722603699216.a n = A109250 (n + 1)

end A109250

/-!
# A109251: Number of numbers up to 10^n which are products of three primes.

The programs for A109251, the canonical program `A109251.P8283490023005339823` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109251 has offset 0).

The definition of A109251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072114, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109251.P8283490023005339823

`A072114(10^n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A109251

/-- `A072114(10^n)` -/
def P8283490023005339823.Spec : Prop :=
  ∀ n, P8283490023005339823.a n = A109251 n

theorem P8283490023005339823.correct : P8283490023005339823.Spec := by
  intro n
  simp only [A109251]

end A109251

/-!
# A109252: Number of fair sudoku problems with n given values on a 4 x 4 grid.

The programs for A109252, there is no canonical definition to state claims against.
-/

/-! ## A109252.P17471825746932116593

`and(A164175(A037020(n+1)), A174564(n+3))`
-/

namespace A109252.P17471825746932116593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164175 (A037020 (n + 1)).toNat) (A174564 (n + 3))

end

end A109252.P17471825746932116593

/-!
# A109253: Number of elements of the Weyl group of type B where a reduced word contains all of the simple reflections.

The programs for A109253, there is no canonical definition to state claims against.
-/

/-! ## A109253.P8744870914889974621

`A109281(∑[n])`
-/

namespace A109253.P8744870914889974621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109253.P8744870914889974621

/-! ## A109253.P13209645377744772202

`or(1, A109281(A000217(n)))`
-/

namespace A109253.P13209645377744772202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109281 (A000217 n).toNat)

end

end A109253.P13209645377744772202

/-! ## A109253.P16198164877229136720

`or(1, A109281(A179865(n+1)))`
-/

namespace A109253.P16198164877229136720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A109281 (A179865 (n + 1)).toNat)

end

end A109253.P16198164877229136720

/-! ## A109253.P18153108730914437033

`A109281(A000217(n))+A025434(n)`
-/

namespace A109253.P18153108730914437033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109281 (A000217 n).toNat + A025434 n

end

end A109253.P18153108730914437033

/-! ## A109253.P2083725008533982627

`A165656(n)+A109281(A000217(n))`
-/

namespace A109253.P2083725008533982627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 n + A109281 (A000217 n).toNat

end

end A109253.P2083725008533982627

/-!
# A109255: a(n) = (p^2 - 1) / 12, where p is the n-th prime of the form 4*k+1.

The programs for A109255, the canonical program `A109255.P9671639298697881659` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109255 has offset 1).

The definition of A109255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109255.P9671639298697881659

`(A002144(n+1)²-1)/12`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A109255

/-- `(A002144(n+1)²-1)/12` -/
def P9671639298697881659.Spec : Prop :=
  ∀ n, P9671639298697881659.a n = (A109255 (n + 1) : ℚ)

end A109255

/-! ## A109255.P14502787560170769212

`floor(A080109(n+1)/12)`
-/

namespace A109255.P14502787560170769212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080109 (n + 1) : ℚ) / 12⌋

end

end A109255.P14502787560170769212

namespace A109255

/-- `floor(A080109(n+1)/12)` -/
def P14502787560170769212.Spec : Prop :=
  ∀ n, P14502787560170769212.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P8668198685143061753

`floor((A002313(n+2)/2)²)/3`
-/

namespace A109255.P8668198685143061753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((A002313 (n + 2) : ℚ) / 2) ^ 2⌋ : ℚ) / 3

end

end A109255.P8668198685143061753

namespace A109255

/-- `floor((A002313(n+2)/2)²)/3` -/
def P8668198685143061753.Spec : Prop :=
  ∀ n, P8668198685143061753.a n = (A109255 (n + 1) : ℚ)

end A109255

/-! ## A109255.P134982449087410987

`A081115(A080147(n+1))`
-/

namespace A109255.P134982449087410987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081115 (A080147 (n + 1)).toNat

end

end A109255.P134982449087410987

namespace A109255

/-- `A081115(A080147(n+1))` -/
def P134982449087410987.Spec : Prop :=
  ∀ n, P134982449087410987.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P16046510510003274986

`A378788(A104636(n+1))`
-/

namespace A109255.P16046510510003274986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378788 (A104636 (n + 1)).toNat

end

end A109255.P16046510510003274986

namespace A109255

/-- `A378788(A104636(n+1))` -/
def P16046510510003274986.Spec : Prop :=
  ∀ n, P16046510510003274986.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P4288046633688303981

`A001399(A002144(n+1)-3)`
-/

namespace A109255.P4288046633688303981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A002144 (n + 1) - 3).toNat

end

end A109255.P4288046633688303981

namespace A109255

/-- `A001399(A002144(n+1)-3)` -/
def P4288046633688303981.Spec : Prop :=
  ∀ n, P4288046633688303981.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P9243675591864255430

`A001399(A002313(n+2)-3)`
-/

namespace A109255.P9243675591864255430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A002313 (n + 2) - 3).toNat

end

end A109255.P9243675591864255430

namespace A109255

/-- `A001399(A002313(n+2)-3)` -/
def P9243675591864255430.Spec : Prop :=
  ∀ n, P9243675591864255430.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P14370434092146621677

`A069905(p?[4*n+1])`
-/

namespace A109255.P14370434092146621677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A109255.P14370434092146621677

namespace A109255

/-- `A069905(p?[4*n+1])` -/
def P14370434092146621677.Spec : Prop :=
  ∀ n, P14370434092146621677.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P7054918746020804230

`A211540(p?[4*n+1]+2)`
-/

namespace A109255.P7054918746020804230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 2)

end

end A109255.P7054918746020804230

namespace A109255

/-- `A211540(p?[4*n+1]+2)` -/
def P7054918746020804230.Spec : Prop :=
  ∀ n, P7054918746020804230.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P11065647590855059334

`A008724(A002144(n+1))`
-/

namespace A109255.P11065647590855059334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A002144 (n + 1)).toNat

end

end A109255.P11065647590855059334

namespace A109255

/-- `A008724(A002144(n+1))` -/
def P11065647590855059334.Spec : Prop :=
  ∀ n, P11065647590855059334.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P10650204807349906795

`A008724(A002313(n+2))`
-/

namespace A109255.P10650204807349906795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A002313 (n + 2)).toNat

end

end A109255.P10650204807349906795

namespace A109255

/-- `A008724(A002313(n+2))` -/
def P10650204807349906795.Spec : Prop :=
  ∀ n, P10650204807349906795.a n = A109255 (n + 1)

end A109255

/-! ## A109255.P14353899527133506749

`A008724(A280084(n+2))`
-/

namespace A109255.P14353899527133506749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A280084 (n + 2)).toNat

end

end A109255.P14353899527133506749

namespace A109255

/-- `A008724(A280084(n+2))` -/
def P14353899527133506749.Spec : Prop :=
  ∀ n, P14353899527133506749.a n = A109255 (n + 1)

end A109255

/-!
# A109256: a(n) = n^6 - 11n^4 + 36n^2 - 36.

The programs for A109256, the canonical program `A109256.P17469345591964069665` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109256 has offset 0).

The definition of A109256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6-11*n^4+36*n²-36` (program `A109256.P17469345591964069665`, by `A109256.P17469345591964069665.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109256.P17158789067701611993

`(n²-2)*(n²-3)*(n²-6)`
-/

namespace A109256.P17158789067701611993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - 2) * ((n ^ 2 : ℤ) - 3) * ((n ^ 2 : ℤ) - 6)

end

end A109256.P17158789067701611993

namespace A109256

/-- `(n²-2)*(n²-3)*(n²-6)` -/
def P17158789067701611993.Spec : Prop :=
  ∀ n, P17158789067701611993.a n = A109256 n

theorem P17158789067701611993.correct : P17158789067701611993.Spec := by
  intro n
  simp only [A109256, Nat.add_sub_cancel, A109256.P17158789067701611993.a, A109256.P17469345591964069665.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A109256

/-! ## A109256.P17469345591964069665

`n^6-11*n^4+36*n²-36`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109256

/-- `n^6-11*n^4+36*n²-36` -/
def P17469345591964069665.Spec : Prop :=
  ∀ n, P17469345591964069665.a n = A109256 n

theorem P17469345591964069665.correct : P17469345591964069665.Spec := by
  intro n
  simp only [A109256]

end A109256

/-!
# A109257: Let S(k) be the set of signed differences of pairs of primes <= k. a(n) is the least k such that S(k) contains all residues mod prime(n).

The programs for A109257, there is no canonical definition to state claims against.
-/

/-! ## A109257.P6813000331998357593

`A006530(A000045(A008621(n))*A088047(n+1))`
-/

namespace A109257.P6813000331998357593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000045 (A008621 n).toNat * A088047 (n + 1)).toNat

end

end A109257.P6813000331998357593

/-!
# A109258: Let S(k) be the set of signed differences of pairs of primes <= k. a(n) is the least k such that S(k) contains all residues mod n, or 0 if no such k exists.

The programs for A109258, there is no canonical definition to state claims against.
-/

/-! ## A109258.P8857593801312570687

`or(A204894(n+1), A337101(A293817(n)))`
-/

namespace A109258.P8857593801312570687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204894 (n + 1)) (A337101 (A293817 n).toNat)

end

end A109258.P8857593801312570687

/-! ## A109258.P15031756273085881810

`or(A088980(A294046(n)), A204894(n+1))`
-/

namespace A109258.P15031756273085881810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088980 (A294046 n).toNat) (A204894 (n + 1))

end

end A109258.P15031756273085881810

/-! ## A109258.P5870645585513310680

`or(A066620(A326023(n)), A204894(n+1))`
-/

namespace A109258.P5870645585513310680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066620 (A326023 n).toNat) (A204894 (n + 1))

end

end A109258.P5870645585513310680

/-! ## A109258.P1535354849414687390

`or(A204894(n+1), A323166(A058959(n+1)))`
-/

namespace A109258.P1535354849414687390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204894 (n + 1)) (A323166 (A058959 (n + 1)).toNat)

end

end A109258.P1535354849414687390

/-!
# A109259: a(n) = floor(n*sqrt(2)^sqrt(2)).

The programs for A109259, the canonical program `A109259.P14005766357436871520` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109259 has offset 1).

The definition of A109259 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*sqrt(2)^sqrt(2))` (program `A109259.P14005766357436871520`, by `A109259.P14005766357436871520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109259.P14005766357436871520

`floor((n+1)*sqrt(2)^sqrt(2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109259

/-- `floor((n+1)*sqrt(2)^sqrt(2))` -/
def P14005766357436871520.Spec : Prop :=
  ∀ n, P14005766357436871520.a n = A109259 (n + 1)

theorem P14005766357436871520.correct : P14005766357436871520.Spec := by
  intro n
  simp only [A109259, Nat.add_sub_cancel]

end A109259

/-! ## A109259.P13860326628756590754

`lt[n, A109261(n+1)]+1`
-/

namespace A109259.P13860326628756590754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A109259.P13860326628756590754

namespace A109259

/-- `lt[n, A109261(n+1)]+1` -/
def P13860326628756590754.Spec : Prop :=
  ∀ n, (P13860326628756590754.a n : ℤ) = A109259 (n + 1)

end A109259

/-! ## A109259.P18109180979301097233

`A109261(A109260(n+1))`
-/

namespace A109259.P18109180979301097233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (A109260 (n + 1)).toNat

end

end A109259.P18109180979301097233

namespace A109259

/-- `A109261(A109260(n+1))` -/
def P18109180979301097233.Spec : Prop :=
  ∀ n, P18109180979301097233.a n = A109259 (n + 1)

end A109259

/-! ## A109259.P17581922066133721151

`A109261(record[A109261(n+1)])`
-/

namespace A109259.P17581922066133721151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109259.P17581922066133721151

namespace A109259

/-- `A109261(record[A109261(n+1)])` -/
def P17581922066133721151.Spec : Prop :=
  ∀ n, P17581922066133721151.a n = A109259 (n + 1)

end A109259

/-! ## A109259.P15430144858418791069

`A004396(lcm(A122188(n+1), A292660(n+1)))`
-/

namespace A109259.P15430144858418791069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (Int.lcm (A122188 (n + 1)) (A292660 (n + 1)))

end

end A109259.P15430144858418791069

namespace A109259

/-- `A004396(lcm(A122188(n+1), A292660(n+1)))` -/
def P15430144858418791069.Spec : Prop :=
  ∀ n, P15430144858418791069.a n = A109259 (n + 1)

end A109259

/-! ## A109259.P2432745250862309496

`A004396(A122188(n+1)²*A292660(n+1))`
-/

namespace A109259.P2432745250862309496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A122188 (n + 1) ^ 2 * A292660 (n + 1)).toNat

end

end A109259.P2432745250862309496

namespace A109259

/-- `A004396(A122188(n+1)²*A292660(n+1))` -/
def P2432745250862309496.Spec : Prop :=
  ∀ n, P2432745250862309496.a n = A109259 (n + 1)

end A109259

/-! ## A109259.P6095475236484925733

`A004396(A292660(n+1)/A122188(n+1)²)`
-/

namespace A109259.P6095475236484925733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A292660 (n + 1) : ℚ) / (A122188 (n + 1) ^ 2 : ℚ))).toNat

end

end A109259.P6095475236484925733

namespace A109259

/-- `A004396(A292660(n+1)/A122188(n+1)²)` -/
def P6095475236484925733.Spec : Prop :=
  ∀ n, P6095475236484925733.a n = A109259 (n + 1)

end A109259

/-!
# A109260: a(n) = floor(n*sqrt(2)^sqrt(2)/(sqrt(2)^sqrt(2)-1)).

The programs for A109260, the canonical program `A109260.P5324320186677838956` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109260 has offset 1).

The definition of A109260 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*sqrt(2)^sqrt(2)/(sqrt(2)^sqrt(2)-1))` (program `A109260.P5324320186677838956`, by `A109260.P5324320186677838956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109260.P5324320186677838956

`floor((n+1)*sqrt(2)^sqrt(2)/(sqrt(2)^sqrt(2)-1))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109260

/-- `floor((n+1)*sqrt(2)^sqrt(2)/(sqrt(2)^sqrt(2)-1))` -/
def P5324320186677838956.Spec : Prop :=
  ∀ n, P5324320186677838956.a n = A109260 (n + 1)

theorem P5324320186677838956.correct : P5324320186677838956.Spec := by
  intro n
  simp only [A109260, Nat.add_sub_cancel]

end A109260

/-! ## A109260.P654614105895543165

`record[(A109259(n+1)+1)%A109259(n+2)]`
-/

namespace A109260.P654614105895543165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109259 (n + 1) + 1) (A109259 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109260.P654614105895543165

namespace A109260

/-- `record[(A109259(n+1)+1)%A109259(n+2)]` -/
def P654614105895543165.Spec : Prop :=
  ∀ n, P654614105895543165.a n = A109260 (n + 1)

end A109260

/-! ## A109260.P15249905968596415498

`record[A109261(n+1)]`
-/

namespace A109260.P15249905968596415498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109260.P15249905968596415498

namespace A109260

/-- `record[A109261(n+1)]` -/
def P15249905968596415498.Spec : Prop :=
  ∀ n, P15249905968596415498.a n = A109260 (n + 1)

end A109260

/-! ## A109260.P824625988003924165

`A109261(A109259(n+1))`
-/

namespace A109260.P824625988003924165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (A109259 (n + 1)).toNat

end

end A109260.P824625988003924165

namespace A109260

/-- `A109261(A109259(n+1))` -/
def P824625988003924165.Spec : Prop :=
  ∀ n, P824625988003924165.a n = A109260 (n + 1)

end A109260

/-! ## A109260.P11641500306856331147

`A109261(lt[n, A109261(n+1)]+1)`
-/

namespace A109260.P11641500306856331147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A109260.P11641500306856331147

namespace A109260

/-- `A109261(lt[n, A109261(n+1)]+1)` -/
def P11641500306856331147.Spec : Prop :=
  ∀ n, P11641500306856331147.a n = A109260 (n + 1)

end A109260

/-! ## A109260.P1518965666404474081

`lt[A109261(A028310(n)), n]`
-/

namespace A109260.P1518965666404474081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109261 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109260.P1518965666404474081

namespace A109260

/-- `lt[A109261(A028310(n)), n]` -/
def P1518965666404474081.Spec : Prop :=
  ∀ n, (P1518965666404474081.a n : ℤ) = A109260 (n + 1)

end A109260

/-! ## A109260.P16417130095978042367

`A003056(∑[A047251(n+1)+n+1])+n+1`
-/

namespace A109260.P16417130095978042367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047251 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n + 1 : ℤ)

end

end A109260.P16417130095978042367

namespace A109260

/-- `A003056(∑[A047251(n+1)+n+1])+n+1` -/
def P16417130095978042367.Spec : Prop :=
  ∀ n, P16417130095978042367.a n = A109260 (n + 1)

end A109260

/-! ## A109260.P9486233348478253912

`round(log(A193696(2*n+1)+A193696(2*(n+1))))`
-/

namespace A109260.P9486233348478253912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A193696 (2 * n + 1) + A193696 (2 * (n + 1)) : ℝ))

end

end A109260.P9486233348478253912

namespace A109260

/-- `round(log(A193696(2*n+1)+A193696(2*(n+1))))` -/
def P9486233348478253912.Spec : Prop :=
  ∀ n, P9486233348478253912.a n = A109260 (n + 1)

end A109260

/-! ## A109260.P13933553788243464779

`A003059(∑[A090772(n+1)])+n`
-/

namespace A109260.P13933553788243464779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A109260.P13933553788243464779

namespace A109260

/-- `A003059(∑[A090772(n+1)])+n` -/
def P13933553788243464779.Spec : Prop :=
  ∀ n, P13933553788243464779.a n = A109260 (n + 1)

end A109260

/-! ## A109260.P4212072876579691609

`A000196(A195142(n+1))+1+n`
-/

namespace A109260.P4212072876579691609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A195142 (n + 1)).toNat + 1 + (n : ℤ)

end

end A109260.P4212072876579691609

namespace A109260

/-- `A000196(A195142(n+1))+1+n` -/
def P4212072876579691609.Spec : Prop :=
  ∀ n, P4212072876579691609.a n = A109260 (n + 1)

end A109260

/-!
# A109261: Self-inverse integer permutation induced by Beatty sequences for sqrt(2)^sqrt(2) and sqrt(2)^sqrt(2)/(sqrt(2)^sqrt(2)-1).

The programs for A109261, there is no canonical definition to state claims against.
-/

/-! ## A109261.P4021078210079629095

`A085240(n+1)-A055641(A057004(n+1))`
-/

namespace A109261.P4021078210079629095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085240 (n + 1) - A055641 (A057004 (n + 1)).toNat

end

end A109261.P4021078210079629095

/-! ## A109261.P14874049506224037162

`A085240(n+1)-A343219(A063755(n+1))`
-/

namespace A109261.P14874049506224037162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085240 (n + 1) - A343219 (A063755 (n + 1)).toNat

end

end A109261.P14874049506224037162

/-! ## A109261.P5737648247118712196

`A085240(n+1)-A010054(A022341(A167614(n+1)))`
-/

namespace A109261.P5737648247118712196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085240 (n + 1) - A010054 (A022341 (A167614 (n + 1)).toNat).toNat

end

end A109261.P5737648247118712196

/-! ## A109261.P5861814584282433066

`A085240(n+1)-A185284(A238901(n+4))`
-/

namespace A109261.P5861814584282433066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085240 (n + 1) - A185284 (A238901 (n + 4)).toNat

end

end A109261.P5861814584282433066

/-! ## A109261.P1882330147487368603

`A085240(n+1)%A353427(3*n+2)`
-/

namespace A109261.P1882330147487368603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085240 (n + 1)) (A353427 (3 * n + 2))

end

end A109261.P1882330147487368603

/-!
# A109262: A Catalan transform of the Fibonacci numbers.

The programs for A109262, the canonical program `A109262.P3635105755243385556` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109262 has offset 0).

The definition of A109262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109262.P3635105755243385556

`A268407(n)-A081696(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109262

/-- `A268407(n)-A081696(n)` -/
def P3635105755243385556.Spec : Prop :=
  ∀ n, P3635105755243385556.a n = A109262 n

theorem P3635105755243385556.correct : P3635105755243385556.Spec := by
  intro n
  simp only [A109262]

end A109262

/-! ## A109262.P10988346523197150952

`A109263(n+1)+A000108(n)-A081696(n)`
-/

namespace A109262.P10988346523197150952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109263 (n + 1) + (A000108 n - A081696 n)

end

end A109262.P10988346523197150952

namespace A109262

/-- `A109263(n+1)+A000108(n)-A081696(n)` -/
def P10988346523197150952.Spec : Prop :=
  ∀ n, P10988346523197150952.a n = A109262 n

theorem P10988346523197150952.correct : P10988346523197150952.Spec := by
  intro n
  simp only [A109262, Nat.add_sub_cancel, A109262.P10988346523197150952.a, A109262.P3635105755243385556.a, A000108, A000108.P17551949696095299361.a, A081696, A081696.P144682512311677634.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A268407, A268407.P14441244389955032681.a, A000984, A000984.P7946844122574426130.a, A176085, A176085.P18095810620596158957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A109262

/-! ## A109262.P10188586324068784483

`A000984(n)-A371870(n)`
-/

namespace A109262.P10188586324068784483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A371870 n

end

end A109262.P10188586324068784483

namespace A109262

/-- `A000984(n)-A371870(n)` -/
def P10188586324068784483.Spec : Prop :=
  ∀ n, P10188586324068784483.a n = A109262 n

theorem P10188586324068784483.correct : P10188586324068784483.Spec := by
  intro n
  simp only [A109262, Nat.add_sub_cancel, A109262.P10188586324068784483.a, A109262.P3635105755243385556.a, A000984, A000984.P7946844122574426130.a, A081696, A081696.P144682512311677634.a, A268407, A268407.P14441244389955032681.a, A371870, A371870.P16935794293074856516.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A176085, A176085.P18095810620596158957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A109262

/-! ## A109262.P4725054373850233253

`record[A010756(n)-A010756(n+1)]`
-/

namespace A109262.P4725054373850233253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010756 n - A010756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109262.P4725054373850233253

namespace A109262

/-- `record[A010756(n)-A010756(n+1)]` -/
def P4725054373850233253.Spec : Prop :=
  ∀ n, P4725054373850233253.a n = A109262 n

end A109262

/-! ## A109262.P10978299185742055153

`A176085(n)+A268407(n)-A000984(n)`
-/

namespace A109262.P10978299185742055153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n + (A268407 n - A000984 n)

end

end A109262.P10978299185742055153

namespace A109262

/-- `A176085(n)+A268407(n)-A000984(n)` -/
def P10978299185742055153.Spec : Prop :=
  ∀ n, P10978299185742055153.a n = A109262 n

theorem P10978299185742055153.correct : P10978299185742055153.Spec := by
  intro n
  simp only [A109262, Nat.add_sub_cancel, A109262.P10978299185742055153.a, A109262.P3635105755243385556.a, A000984, A000984.P7946844122574426130.a, A081696, A081696.P144682512311677634.a, A176085, A176085.P18095810620596158957.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A109262

/-! ## A109262.P15777012017310314136

`A277287(n)-Δ[A176085(n)]`
-/

namespace A109262.P15777012017310314136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - (f1 (n + 1) - f1 n)

end

end A109262.P15777012017310314136

namespace A109262

/-- `A277287(n)-Δ[A176085(n)]` -/
def P15777012017310314136.Spec : Prop :=
  ∀ n, P15777012017310314136.a n = A109262 n

end A109262

/-! ## A109262.P17534862013912471362

`A277287(n)-A382432(n+1)`
-/

namespace A109262.P17534862013912471362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277287 n - A382432 (n + 1)

end

end A109262.P17534862013912471362

namespace A109262

/-- `A277287(n)-A382432(n+1)` -/
def P17534862013912471362.Spec : Prop :=
  ∀ n, P17534862013912471362.a n = A109262 n

end A109262

/-! ## A109262.P10610063851754748812

`2*A176085(n)-A257838(n)`
-/

namespace A109262.P10610063851754748812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176085 n - A257838 n

end

end A109262.P10610063851754748812

namespace A109262

/-- `2*A176085(n)-A257838(n)` -/
def P10610063851754748812.Spec : Prop :=
  ∀ n, P10610063851754748812.a n = A109262 n

theorem P10610063851754748812.correct : P10610063851754748812.Spec := by
  intro n
  simp only [A109262, Nat.add_sub_cancel, A109262.P10610063851754748812.a, A109262.P3635105755243385556.a, A081696, A081696.P144682512311677634.a, A176085, A176085.P18095810620596158957.a, A257838, A257838.P9432177341719237820.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A000984, A000984.P7946844122574426130.a, A108081, A108081.P10199581490510874834.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A028329, A028329.P2723209719397665586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A109262

/-! ## A109262.P6796457758642636610

`A000984(n)+A176085(n)-A108081(n)`
-/

namespace A109262.P6796457758642636610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + (A176085 n - A108081 n)

end

end A109262.P6796457758642636610

namespace A109262

/-- `A000984(n)+A176085(n)-A108081(n)` -/
def P6796457758642636610.Spec : Prop :=
  ∀ n, P6796457758642636610.a n = A109262 n

theorem P6796457758642636610.correct : P6796457758642636610.Spec := by
  intro n
  simp only [A109262, Nat.add_sub_cancel, A109262.P6796457758642636610.a, A109262.P3635105755243385556.a, A000984, A000984.P7946844122574426130.a, A081696, A081696.P144682512311677634.a, A108081, A108081.P10199581490510874834.a, A176085, A176085.P18095810620596158957.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A028329, A028329.P2723209719397665586.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A109262

/-! ## A109262.P8284820835916498666

`A257838(n)+A268407(n)-A108081(n)`
-/

namespace A109262.P8284820835916498666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + (A268407 n - A108081 n)

end

end A109262.P8284820835916498666

namespace A109262

/-- `A257838(n)+A268407(n)-A108081(n)` -/
def P8284820835916498666.Spec : Prop :=
  ∀ n, P8284820835916498666.a n = A109262 n

theorem P8284820835916498666.correct : P8284820835916498666.Spec := by
  intro n
  simp only [A109262, Nat.add_sub_cancel, A109262.P8284820835916498666.a, A109262.P3635105755243385556.a, A081696, A081696.P144682512311677634.a, A108081, A108081.P10199581490510874834.a, A257838, A257838.P9432177341719237820.a, A268407, A268407.P14441244389955032681.a, A000108, A000108.P17551949696095299361.a, A000984, A000984.P7946844122574426130.a, A028329, A028329.P2723209719397665586.a, A109263, A109263.P13637171917933416295.f1, A109263.P13637171917933416295.a, A176085, A176085.P18095810620596158957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A109262

/-! ## A109262.P1993528979230908941

`A026726(n)-A015448(n)`
-/

namespace A109262.P1993528979230908941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n - A015448 n

end

end A109262.P1993528979230908941

namespace A109262

/-- `A026726(n)-A015448(n)` -/
def P1993528979230908941.Spec : Prop :=
  ∀ n, P1993528979230908941.a n = A109262 n

end A109262

/-! ## A109262.P8054491459005899982

`A014445(n)+A268407(n)-A026671(n)`
-/

namespace A109262.P8054491459005899982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n + (A268407 n - A026671 n)

end

end A109262.P8054491459005899982

namespace A109262

/-- `A014445(n)+A268407(n)-A026671(n)` -/
def P8054491459005899982.Spec : Prop :=
  ∀ n, P8054491459005899982.a n = A109262 n

end A109262

/-! ## A109262.P4435145010493474548

`A109267(A000124(n))-A000007(n)`
-/

namespace A109262.P4435145010493474548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109267 (A000124 n).toNat - A000007 n

end

end A109262.P4435145010493474548

namespace A109262

/-- `A109267(A000124(n))-A000007(n)` -/
def P4435145010493474548.Spec : Prop :=
  ∀ n, P4435145010493474548.a n = A109262 n

end A109262

/-! ## A109262.P17821540474698835047

`A109267(A000124(n))%A016269(n)`
-/

namespace A109262.P17821540474698835047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109267 (A000124 n).toNat) (A016269 n)

end

end A109262.P17821540474698835047

namespace A109262

/-- `A109267(A000124(n))%A016269(n)` -/
def P17821540474698835047.Spec : Prop :=
  ∀ n, P17821540474698835047.a n = A109262 n

end A109262

/-!
# A109263: A Catalan transform of F(n-1)-0^n.

The programs for A109263, the canonical program `A109263.P13637171917933416295` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109263 has offset 0).

The definition of A109263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109263.P13637171917933416295

`Δ[(A081696(abs(1-n))-1)/2]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109263

/-- `Δ[(A081696(abs(1-n))-1)/2]` -/
def P13637171917933416295.Spec : Prop :=
  ∀ n, P13637171917933416295.a n = (A109263 n : ℚ)

end A109263

/-! ## A109263.P3696051849331254279

`A277287(n)%or(1, A176085(n))`
-/

namespace A109263.P3696051849331254279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277287 n) (Int.lor 1 (A176085 n))

end

end A109263.P3696051849331254279

namespace A109263

/-- `A277287(n)%or(1, A176085(n))` -/
def P3696051849331254279.Spec : Prop :=
  ∀ n, P3696051849331254279.a n = A109263 n

end A109263

/-! ## A109263.P79572126201129862

`A165201(n)-A014437(A004275(n))`
-/

namespace A109263.P79572126201129862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165201 n - A014437 (A004275 n).toNat

end

end A109263.P79572126201129862

namespace A109263

/-- `A165201(n)-A014437(A004275(n))` -/
def P79572126201129862.Spec : Prop :=
  ∀ n, P79572126201129862.a n = A109263 n

end A109263

/-! ## A109263.P9320896594828288433

`A109267(A133263(n))%C(2^n+1, 2)`
-/

namespace A109263.P9320896594828288433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109267 (A133263 n).toNat) (Nat.choose (2 ^ n + 1) 2 : ℤ)

end

end A109263.P9320896594828288433

namespace A109263

/-- `A109267(A133263(n))%C(2^n+1, 2)` -/
def P9320896594828288433.Spec : Prop :=
  ∀ n, P9320896594828288433.a n = A109263 n

end A109263

/-!
# A109264: Riordan array (1-x-x^2,x(1-x)).

The programs for A109264, the canonical program `A109264.P8993228771912653` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109264 has offset 0).

The definition of A109264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109264.P8993228771912653

`A117362(n)+A109466(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109264

/-- `A117362(n)+A109466(n+1)` -/
def P8993228771912653.Spec : Prop :=
  ∀ n, P8993228771912653.a n = A109264 n

theorem P8993228771912653.correct : P8993228771912653.Spec := by
  intro n
  simp only [A109264]

end A109264

/-! ## A109264.P16741345087301355644

`A117362(n)-A057094(A183572(n+2))`
-/

namespace A109264.P16741345087301355644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117362 n - A057094 (A183572 (n + 2)).toNat

end

end A109264.P16741345087301355644

namespace A109264

/-- `A117362(n)-A057094(A183572(n+2))` -/
def P16741345087301355644.Spec : Prop :=
  ∀ n, P16741345087301355644.a n = A109264 n

end A109264

/-! ## A109264.P15590081882550235013

`A145273(6*n+11)+A100218(n)`
-/

namespace A109264.P15590081882550235013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145273 (6 * n + 11) + A100218 n

end

end A109264.P15590081882550235013

namespace A109264

/-- `A145273(6*n+11)+A100218(n)` -/
def P15590081882550235013.Spec : Prop :=
  ∀ n, P15590081882550235013.a n = A109264 n

end A109264

/-! ## A109264.P15755824073660608087

`A115861(A175840(n))+A100218(n)`
-/

namespace A109264.P15755824073660608087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115861 (A175840 n).toNat + A100218 n

end

end A109264.P15755824073660608087

namespace A109264

/-- `A115861(A175840(n))+A100218(n)` -/
def P15755824073660608087.Spec : Prop :=
  ∀ n, P15755824073660608087.a n = A109264 n

end A109264

/-!
# A109265: Row sums of Riordan array (1-x-x^2,x(1-x)).

The programs for A109265, the canonical program `A109265.P12546484514002885765` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109265 has offset 0).

The definition of A109265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109265.P12546484514002885765

`A257076(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A109265

/-- `A257076(n+1)` -/
def P12546484514002885765.Spec : Prop :=
  ∀ n, P12546484514002885765.a n = A109265 n

theorem P12546484514002885765.correct : P12546484514002885765.Spec := by
  intro n
  simp only [A109265]

end A109265

/-!
# A109266: Diagonal sums of Riordan array (1-x-x^2,x(1-x)).

The programs for A109266, the canonical program `A109266.P2947508325346066693` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109266 has offset 0).

The definition of A109266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109266.P2947508325346066693

`a(n-2)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A109266

/-- `a(n-2)-a(n-3)` -/
def P2947508325346066693.Spec : Prop :=
  ∀ n, P2947508325346066693.a n = A109266 n

theorem P2947508325346066693.correct : P2947508325346066693.Spec := by
  intro n
  simp only [A109266]

end A109266

/-! ## A109266.P8287747338698476229

`Δ[ogf((1+2x)/(1-x^2+x^3))]`
-/

namespace A109266.P8287747338698476229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109266.P8287747338698476229

namespace A109266

/-- `Δ[ogf((1+2x)/(1-x^2+x^3))]` -/
def P8287747338698476229.Spec : Prop :=
  ∀ n, P8287747338698476229.a n = A109266 n

end A109266

/-! ## A109266.P5526915446159305781

`ogf((1-x-x^2)/(1-x^2+x^3))`
-/

namespace A109266.P5526915446159305781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, 0, -1, 1] n

end

end A109266.P5526915446159305781

namespace A109266

/-- `ogf((1-x-x^2)/(1-x^2+x^3))` -/
def P5526915446159305781.Spec : Prop :=
  ∀ n, P5526915446159305781.a n = A109266 n

end A109266

/-! ## A109266.P8507589477845963172

`Δ[A124745(n+1)+∑[A124745(n+1)]]`
-/

namespace A109266.P8507589477845963172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109266.P8507589477845963172

namespace A109266

/-- `Δ[A124745(n+1)+∑[A124745(n+1)]]` -/
def P8507589477845963172.Spec : Prop :=
  ∀ n, P8507589477845963172.a n = A109266 n

end A109266

/-! ## A109266.P205096079531477418

`(A141038(n)-A182097(n))*A033999(n)`
-/

namespace A109266.P205096079531477418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141038 n - A182097 n) * A033999 n

end

end A109266.P205096079531477418

namespace A109266

/-- `(A141038(n)-A182097(n))*A033999(n)` -/
def P205096079531477418.Spec : Prop :=
  ∀ n, P205096079531477418.a n = A109266 n

end A109266

/-! ## A109266.P16733651077707710745

`(-1)^n*Δ[A084338(n+1)]`
-/

namespace A109266.P16733651077707710745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A109266.P16733651077707710745

namespace A109266

/-- `(-1)^n*Δ[A084338(n+1)]` -/
def P16733651077707710745.Spec : Prop :=
  ∀ n, P16733651077707710745.a n = A109266 n

end A109266

/-! ## A109266.P16411955921727326064

`Δ[A084338(n+1)]*A033999(n)`
-/

namespace A109266.P16411955921727326064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A109266.P16411955921727326064

namespace A109266

/-- `Δ[A084338(n+1)]*A033999(n)` -/
def P16411955921727326064.Spec : Prop :=
  ∀ n, P16411955921727326064.a n = A109266 n

end A109266

/-! ## A109266.P1850310958396687762

`Δ[A084338(n+1)]*A056594(2*n)`
-/

namespace A109266.P1850310958396687762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A056594 (2 * n)

end

end A109266.P1850310958396687762

namespace A109266

/-- `Δ[A084338(n+1)]*A056594(2*n)` -/
def P1850310958396687762.Spec : Prop :=
  ∀ n, P1850310958396687762.a n = A109266 n

end A109266

/-! ## A109266.P8231675329605276402

`Δ[A084338(n+1)]*A010892(3*n)`
-/

namespace A109266.P8231675329605276402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A010892 (3 * n)

end

end A109266.P8231675329605276402

namespace A109266

/-- `Δ[A084338(n+1)]*A010892(3*n)` -/
def P8231675329605276402.Spec : Prop :=
  ∀ n, P8231675329605276402.a n = A109266 n

end A109266

/-! ## A109266.P8175519882619023760

`Δ[A084338(n+1)]*A112299(2*n+1)`
-/

namespace A109266.P8175519882619023760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A112299 (2 * n + 1)

end

end A109266.P8175519882619023760

namespace A109266

/-- `Δ[A084338(n+1)]*A112299(2*n+1)` -/
def P8175519882619023760.Spec : Prop :=
  ∀ n, P8175519882619023760.a n = A109266 n

end A109266

/-! ## A109266.P17560774481477578125

`Δ[A077883(n+1)]+1-A077883(n)`
-/

namespace A109266.P17560774481477578125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A077883 n)

end

end A109266.P17560774481477578125

namespace A109266

/-- `Δ[A077883(n+1)]+1-A077883(n)` -/
def P17560774481477578125.Spec : Prop :=
  ∀ n, P17560774481477578125.a n = A109266 n

end A109266

/-! ## A109266.P7606190035239617303

`A077883(n+4)-A077883(n)`
-/

namespace A109266.P7606190035239617303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 (n + 4) - A077883 n

end

end A109266.P7606190035239617303

namespace A109266

/-- `A077883(n+4)-A077883(n)` -/
def P7606190035239617303.Spec : Prop :=
  ∀ n, P7606190035239617303.a n = A109266 n

end A109266

/-!
# A109267: Riordan array (1/(1 - x*c(x) - x^2*c(x)^2), x*c(x)) where c(x) is the g.f. of A000108.

The programs for A109267, there is no canonical definition to state claims against.
-/

/-! ## A109267.P209065009952881090

`lcm(2, A204842(n))/2`
-/

namespace A109267.P209065009952881090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A204842 n) : ℚ) / 2

end

end A109267.P209065009952881090

/-! ## A109267.P13980566155955960730

`A014682(lcm(2, A204842(n)))`
-/

namespace A109267.P13980566155955960730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A204842 n))

end

end A109267.P13980566155955960730

/-! ## A109267.P11754559908251571683

`A204842(n)/A238303(n)`
-/

namespace A109267.P11754559908251571683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204842 n : ℚ) / (A238303 n : ℚ)

end

end A109267.P11754559908251571683

/-! ## A109267.P389392125807179305

`A204842(n)/gcd(2, A137593(n+1))`
-/

namespace A109267.P389392125807179305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204842 n : ℚ) / (Int.gcd 2 (A137593 (n + 1)) : ℚ)

end

end A109267.P389392125807179305

/-! ## A109267.P17871138027227457324

`A204842(n)/A020639(A013609(n))`
-/

namespace A109267.P17871138027227457324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204842 n : ℚ) / (A020639 (A013609 n).toNat : ℚ)

end

end A109267.P17871138027227457324

/-! ## A109267.P6640077268824485232

`A204842(n)/A020639(A059268(n))`
-/

namespace A109267.P6640077268824485232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204842 n : ℚ) / (A020639 (A059268 n).toNat : ℚ)

end

end A109267.P6640077268824485232

/-! ## A109267.P11531263762005992274

`A204842(n)/A020639(A124927(n))`
-/

namespace A109267.P11531263762005992274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204842 n : ℚ) / (A020639 (A124927 n).toNat : ℚ)

end

end A109267.P11531263762005992274

/-! ## A109267.P18328709576968872446

`A204842(n)/A020639(A098473(n))`
-/

namespace A109267.P18328709576968872446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204842 n : ℚ) / (A020639 (A098473 n).toNat : ℚ)

end

end A109267.P18328709576968872446

/-!
# A109268: Expansion of 1/((1-xc(x)-x^2c(x)^2)(1-x^2c(x))) with c(x) the g.f. of A000108.

The programs for A109268, there is no canonical definition to state claims against.
-/

/-! ## A109268.P14600450548560106986

`A289495(or(3, A006951(2*n)))`
-/

namespace A109268.P14600450548560106986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289495 (Int.lor 3 (A006951 (2 * n))).toNat

end

end A109268.P14600450548560106986

/-! ## A109268.P529383695345189994

`A034973(A238531(∑[floor(3*2^(n-2))]))+1`
-/

namespace A109268.P529383695345189994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A238531 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat + 1

end

end A109268.P529383695345189994

/-! ## A109268.P3966434695134517378

`A126257(A148395(n)+A104629(n))`
-/

namespace A109268.P3966434695134517378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A148395 n + A104629 n).toNat

end

end A109268.P3966434695134517378

/-!
# A109269: Numbers n such that n^2 < (1/2)*(prevprime(n^2)+nextprime(n^2)).

The programs for A109269, there is no canonical definition to state claims against.
-/

/-! ## A109269.P15833823429361753378

`lt[A056929(n+2), 0]+2`
-/

namespace A109269.P15833823429361753378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A109269.P15833823429361753378

/-! ## A109269.P2486322737508054214

`lt[A056929(A233583(n+1)), 0]`
-/

namespace A109269.P2486322737508054214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A109269.P2486322737508054214

/-! ## A109269.P10019133387734814336

`lt[A056927(A233583(n+1))+1, A053000(n)]`
-/

namespace A109269.P10019133387734814336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109269.P10019133387734814336

/-!
# A109270: Numbers k such that k^2 > (1/2)*(prevprime(k^2) + nextprime(k^2)).

The programs for A109270, there is no canonical definition to state claims against.
-/

/-! ## A109270.P9822939195908837437

`lt[0, A056929(n+2)]+2`
-/

namespace A109270.P9822939195908837437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A109270.P9822939195908837437

/-! ## A109270.P945836936544601744

`eq[1, ceil(acot(A056929(n+3)))]+3`
-/

namespace A109270.P945836936544601744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A056929 (n + 3) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A109270.P945836936544601744

/-! ## A109270.P13576629066404033692

`lt[0, A056929(A233583(n+1))]`
-/

namespace A109270.P13576629066404033692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056929 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A109270.P13576629066404033692

/-! ## A109270.P4309308106189174222

`lt[A053000(n), A056927(round(acot(n)+n))]`
-/

namespace A109270.P4309308106189174222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109270.P4309308106189174222

/-! ## A109270.P12502831913388022918

`lt[A053000(n), A056927(A233583(n+1))]`
-/

namespace A109270.P12502831913388022918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A109270.P12502831913388022918

/-!
# A109273: Numbers k such that k+1 is the smallest prime factor of k^3 + 3^k.

The programs for A109273, there is no canonical definition to state claims against.
-/

/-! ## A109273.P13775267503355566254

`A230775(∑[∑[(2*(n+1))²+n]])-1`
-/

namespace A109273.P13775267503355566254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A109273.P13775267503355566254

/-! ## A109273.P12762418913373464656

`eq[A007920(n), A289356(A123317(n+1))]`
-/

namespace A109273.P12762418913373464656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289356 (A123317 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109273.P12762418913373464656

/-! ## A109273.P2786977222157403227

`eq[A110655(A057958(n+1)), A118006(n+1)]`
-/

namespace A109273.P2786977222157403227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A057958 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109273.P2786977222157403227

/-! ## A109273.P17472355888647179898

`eq[A326400(n+1), A354599(n+9)]`
-/

namespace A109273.P17472355888647179898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354599 (n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109273.P17472355888647179898

/-! ## A109273.P13746007532159327812

`eq[A354599(n+9), A364235(n+1)]`
-/

namespace A109273.P13746007532159327812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354599 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109273.P13746007532159327812

/-!
# A109274: Numbers k such that k+1 is prime, 2k+1 composite.

The programs for A109274, the canonical program `A109274.P11602195938365358574` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109274 has offset 1).

The definition of A109274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307390, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109274.P11602195938365358574

`A307390(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A109274

/-- `A307390(n+1)-1` -/
def P11602195938365358574.Spec : Prop :=
  ∀ n, P11602195938365358574.a n = A109274 (n + 1)

theorem P11602195938365358574.correct : P11602195938365358574.Spec := by
  intro n
  simp only [A109274, Nat.add_sub_cancel]

end A109274

/-! ## A109274.P17834602529363619713

`eq[1, A285700(n+1)]`
-/

namespace A109274.P17834602529363619713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109274.P17834602529363619713

namespace A109274

/-- `eq[1, A285700(n+1)]` -/
def P17834602529363619713.Spec : Prop :=
  ∀ n, (P17834602529363619713.a n : ℤ) = A109274 (n + 1)

end A109274

/-! ## A109274.P2564269889197190480

`p?[A053726(n+1)]-1`
-/

namespace A109274.P2564269889197190480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A109274.P2564269889197190480

namespace A109274

/-- `p?[A053726(n+1)]-1` -/
def P2564269889197190480.Spec : Prop :=
  ∀ n, P2564269889197190480.a n = A109274 (n + 1)

end A109274

/-! ## A109274.P14025907931101357281

`p?[A104275(n+1)]-1`
-/

namespace A109274.P14025907931101357281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A109274.P14025907931101357281

namespace A109274

/-- `p?[A104275(n+1)]-1` -/
def P14025907931101357281.Spec : Prop :=
  ∀ n, P14025907931101357281.a n = A109274 (n + 1)

end A109274

/-! ## A109274.P15627305925987248828

`eq[2, A039637(2*n+1)]`
-/

namespace A109274.P15627305925987248828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039637 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109274.P15627305925987248828

namespace A109274

/-- `eq[2, A039637(2*n+1)]` -/
def P15627305925987248828.Spec : Prop :=
  ∀ n, (P15627305925987248828.a n : ℤ) = A109274 (n + 1)

end A109274

/-! ## A109274.P9260034578149076019

`eq[2, A234541(2*n+1)]`
-/

namespace A109274.P9260034578149076019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234541 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109274.P9260034578149076019

namespace A109274

/-- `eq[2, A234541(2*n+1)]` -/
def P9260034578149076019.Spec : Prop :=
  ∀ n, (P9260034578149076019.a n : ℤ) = A109274 (n + 1)

end A109274

/-! ## A109274.P7438175449299967841

`p?[record[A249920(n+1)]]-1`
-/

namespace A109274.P7438175449299967841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A109274.P7438175449299967841

namespace A109274

/-- `p?[record[A249920(n+1)]]-1` -/
def P7438175449299967841.Spec : Prop :=
  ∀ n, P7438175449299967841.a n = A109274 (n + 1)

end A109274

/-! ## A109274.P7210015466544308383

`eq[n+1, A074399(2*n+1)]`
-/

namespace A109274.P7210015466544308383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109274.P7210015466544308383

namespace A109274

/-- `eq[n+1, A074399(2*n+1)]` -/
def P7210015466544308383.Spec : Prop :=
  ∀ n, (P7210015466544308383.a n : ℤ) = A109274 (n + 1)

end A109274

/-! ## A109274.P8986878830091842672

`eq[n+1, A093074(2*n+1)]`
-/

namespace A109274.P8986878830091842672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109274.P8986878830091842672

namespace A109274

/-- `eq[n+1, A093074(2*n+1)]` -/
def P8986878830091842672.Spec : Prop :=
  ∀ n, (P8986878830091842672.a n : ℤ) = A109274 (n + 1)

end A109274

/-!
# A109277: Slowest increasing sequence in which a(n) is a prime closest to the sum of all previous terms.

The programs for A109277, there is no canonical definition to state claims against.
-/

/-! ## A109277.P14758633886128502556

`A063905(A148236(n+1))`
-/

namespace A109277.P14758633886128502556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (A148236 (n + 1)).toNat

end

end A109277.P14758633886128502556

/-! ## A109277.P7133265605749268226

`A318589(A239552(n+1))`
-/

namespace A109277.P7133265605749268226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318589 (A239552 (n + 1)).toNat

end

end A109277.P7133265605749268226

/-! ## A109277.P9826044993404145573

`A151800(A027934(n)%A128352(n+1))`
-/

namespace A109277.P9826044993404145573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A027934 n) (A128352 (n + 1))).toNat

end

end A109277.P9826044993404145573

/-! ## A109277.P7964673999242735595

`A000040(A076269(3*n+1)-A046777(n))`
-/

namespace A109277.P7964673999242735595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076269 (3 * n + 1) - A046777 n).toNat

end

end A109277.P7964673999242735595

/-! ## A109277.P14732963036399958567

`A151800(A027934(n))%A001259(2*n+5)`
-/

namespace A109277.P14732963036399958567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A027934 n).toNat) (A001259 (2 * n + 5))

end

end A109277.P14732963036399958567

/-!
# A109278: Fastest increasing sequence in which a(n) is a prime closest to the sum of all previous terms.

The programs for A109278, there is no canonical definition to state claims against.
-/

/-! ## A109278.P10957573606341375770

`A151800(A262482(n+1)-A171465(n+1))`
-/

namespace A109278.P10957573606341375770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A262482 (n + 1) - A171465 (n + 1)).toNat

end

end A109278.P10957573606341375770

/-! ## A109278.P9452210825115529974

`A051697(A262482(n+1)-A086009(n))`
-/

namespace A109278.P9452210825115529974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A262482 (n + 1) - A086009 n).toNat

end

end A109278.P9452210825115529974

/-! ## A109278.P13375176995561754527

`A051697(A262482(n+1)%A027251(n))`
-/

namespace A109278.P13375176995561754527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (Int.tmod (A262482 (n + 1)) (A027251 n)).toNat

end

end A109278.P13375176995561754527

/-! ## A109278.P17566421250535330212

`A051697(xor(A086009(n), A262482(n+1)))`
-/

namespace A109278.P17566421250535330212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (Int.xor (A086009 n) (A262482 (n + 1))).toNat

end

end A109278.P17566421250535330212

/-! ## A109278.P11254343670153564179

`A051697(A262482(n+1)+n-A051697(n))`
-/

namespace A109278.P11254343670153564179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A262482 (n + 1) + ((n : ℤ) - A051697 n)).toNat

end

end A109278.P11254343670153564179

/-!
# A109282: Triangle T, read by rows, that satisfies: T(n,k) = [T^3](n-1,k) for n>k+1>=1, with T(n,n) = 1 and T(n+1,n) = n+1 for n>=0, where T^3 is the matrix cube of T.

The programs for A109282, there is no canonical definition to state claims against.
-/

/-! ## A109282.P14417956217223662283

`A136217(n)-2*A186733(A166900(n))`
-/

namespace A109282.P14417956217223662283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136217 n - 2 * A186733 (A166900 n).toNat

end

end A109282.P14417956217223662283

/-!
# A109283: Column 0 of triangle A109282.

The programs for A109283, there is no canonical definition to state claims against.
-/

/-! ## A109283.P371801386659251002

`A109282(∑[n])`
-/

namespace A109283.P371801386659251002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109282 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109283.P371801386659251002

/-! ## A109283.P6501846716667096539

`and(-1, A109282(or(1, n)*ceil(n/2)))`
-/

namespace A109283.P6501846716667096539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A109282 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat)

end

end A109283.P6501846716667096539

/-! ## A109283.P4303500484467500706

`and(-1, A109282(round((2*n+1)²/8)))`
-/

namespace A109283.P4303500484467500706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A109282 (SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / 8)).toNat)

end

end A109283.P4303500484467500706

/-! ## A109283.P11188496646049057908

`A057427(n+1)*A109282(n²-C(n, 2))`
-/

namespace A109283.P11188496646049057908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A109282 (n ^ 2 - Nat.choose n 2)

end

end A109283.P11188496646049057908

/-! ## A109283.P5048276398858821119

`A059841(2*(n+2))*A109282(C(n+1, 2))`
-/

namespace A109283.P5048276398858821119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * (n + 2)) * A109282 (Nat.choose (n + 1) 2)

end

end A109283.P5048276398858821119

/-!
# A109284: Column 1 of triangle A109282.

The programs for A109284, there is no canonical definition to state claims against.
-/

/-! ## A109284.P1206182382390075252

`record[A109282(comp[∑[n]])]`
-/

namespace A109284.P1206182382390075252
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109282 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109284.P1206182382390075252

/-! ## A109284.P12754595608389405249

`A109282(∑[n+1]+1)`
-/

namespace A109284.P12754595608389405249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109282 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A109284.P12754595608389405249

/-! ## A109284.P10275212029668379327

`record[A051168(n)*A109282(n)]`
-/

namespace A109284.P10275212029668379327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A109282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109284.P10275212029668379327

/-! ## A109284.P17057089856173257854

`record[A103631(n)*A109282(n)]`
-/

namespace A109284.P17057089856173257854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A109282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109284.P17057089856173257854

/-! ## A109284.P17943660104238797713

`record[A109282(n)*A242887(n)]`
-/

namespace A109284.P17943660104238797713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109282 n * A242887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109284.P17943660104238797713

/-!
# A109285: Column 2 of triangle A109282.

The programs for A109285, there is no canonical definition to state claims against.
-/

/-! ## A109285.P4054459768479122338

`record[A109282(∑[n]+2)]`
-/

namespace A109285.P4054459768479122338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109282 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109285.P4054459768479122338

/-! ## A109285.P7870397870640937132

`A109282(∑[n+2]+3)`
-/

namespace A109285.P7870397870640937132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109282 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A109285.P7870397870640937132

/-! ## A109285.P5764784900882231456

`record[A051168(n)*A109282(n+1)]`
-/

namespace A109285.P5764784900882231456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n * A109282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109285.P5764784900882231456

/-! ## A109285.P16062508309229110193

`record[gcd(A098599(n), A109282(n+1))]`
-/

namespace A109285.P16062508309229110193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098599 n) (A109282 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109285.P16062508309229110193

/-!
# A109286: Row sums of triangle A109282.

The programs for A109286, there is no canonical definition to state claims against.
-/

/-! ## A109286.P8712614664119548384

`A011754(∏[A153775(n+1)]-1)`
-/

namespace A109286.P8712614664119548384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011754 (∏ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A109286.P8712614664119548384

/-! ## A109286.P4963300052867038964

`A057561(A000108(n))+A052852(n)`
-/

namespace A109286.P4963300052867038964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A000108 n).toNat + A052852 n

end

end A109286.P4963300052867038964

/-!
# A109287: 4-almost primes equal to p*q + 1, where p and q are (not necessarily distinct) primes.

The programs for A109287, the canonical program `A109287.P3536442179030824246` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109287 has offset 1).

The definition of A109287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109287.P877407494477920508

`filter[A076153(n+1), A065043(#)]`
-/

namespace A109287.P877407494477920508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A109287.P877407494477920508

namespace A109287

/-- `filter[A076153(n+1), A065043(#)]` -/
def P877407494477920508.Spec : Prop :=
  ∀ n, P877407494477920508.a n = A109287 (n + 1)

end A109287

/-! ## A109287.P11495611570375540867

`filter[A076153(n+1), A101637(#)]`
-/

namespace A109287.P11495611570375540867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A109287.P11495611570375540867

namespace A109287

/-- `filter[A076153(n+1), A101637(#)]` -/
def P11495611570375540867.Spec : Prop :=
  ∀ n, P11495611570375540867.a n = A109287 (n + 1)

end A109287

/-! ## A109287.P3536442179030824246

`filter[A088707(n+1), A101637(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A109287

/-- `filter[A088707(n+1), A101637(#)]` -/
def P3536442179030824246.Spec : Prop :=
  ∀ n, P3536442179030824246.a n = A109287 (n + 1)

theorem P3536442179030824246.correct : P3536442179030824246.Spec := by
  intro n
  simp only [A109287, Nat.add_sub_cancel]

end A109287

/-! ## A109287.P2492866780648403060

`∩[A014613(n+1), A076153(n+1)]`
-/

namespace A109287.P2492866780648403060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109287.P2492866780648403060

namespace A109287

/-- `∩[A014613(n+1), A076153(n+1)]` -/
def P2492866780648403060.Spec : Prop :=
  ∀ n, (P2492866780648403060.a n : ℤ) = A109287 (n + 1)

end A109287

/-! ## A109287.P1434524733270072893

`∩[A014613(n+1), A088707(n+1)]`
-/

namespace A109287.P1434524733270072893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109287.P1434524733270072893

namespace A109287

/-- `∩[A014613(n+1), A088707(n+1)]` -/
def P1434524733270072893.Spec : Prop :=
  ∀ n, (P1434524733270072893.a n : ℤ) = A109287 (n + 1)

end A109287

/-! ## A109287.P13058472247752897947

`∩[A028260(n+1), A076153(n+1)]`
-/

namespace A109287.P13058472247752897947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109287.P13058472247752897947

namespace A109287

/-- `∩[A028260(n+1), A076153(n+1)]` -/
def P13058472247752897947.Spec : Prop :=
  ∀ n, (P13058472247752897947.a n : ℤ) = A109287 (n + 1)

end A109287

/-! ## A109287.P4917745860761978344

`∩[A076153(n+1), A088707(n+1)]`
-/

namespace A109287.P4917745860761978344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109287.P4917745860761978344

namespace A109287

/-- `∩[A076153(n+1), A088707(n+1)]` -/
def P4917745860761978344.Spec : Prop :=
  ∀ n, (P4917745860761978344.a n : ℤ) = A109287 (n + 1)

end A109287

/-! ## A109287.P7319549935648728234

`∩[A076153(n+1), A347450(n+1)]`
-/

namespace A109287.P7319549935648728234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109287.P7319549935648728234

namespace A109287

/-- `∩[A076153(n+1), A347450(n+1)]` -/
def P7319549935648728234.Spec : Prop :=
  ∀ n, (P7319549935648728234.a n : ℤ) = A109287 (n + 1)

end A109287

/-! ## A109287.P10432291246070753749

`∩[A001358(n+1)+1, A014613(n+1)]`
-/

namespace A109287.P10432291246070753749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109287.P10432291246070753749

namespace A109287

/-- `∩[A001358(n+1)+1, A014613(n+1)]` -/
def P10432291246070753749.Spec : Prop :=
  ∀ n, (P10432291246070753749.a n : ℤ) = A109287 (n + 1)

end A109287

/-! ## A109287.P12328619994545962553

`A076153(A000188((n+2)²))`
-/

namespace A109287.P12328619994545962553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076153 (A000188 ((n + 2) ^ 2)).toNat

end

end A109287.P12328619994545962553

namespace A109287

/-- `A076153(A000188((n+2)²))` -/
def P12328619994545962553.Spec : Prop :=
  ∀ n, P12328619994545962553.a n = A109287 (n + 1)

end A109287

/-!
# A109288: Semiprimes equal to p*q + 1, where p and q are distinct primes.

The programs for A109288, the canonical program `A109288.P6952857508104961843` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109288 has offset 1).

The definition of A109288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109288.P4683559846638443974

`A263990(n+1)+1`
-/

namespace A109288.P4683559846638443974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1) + 1

end

end A109288.P4683559846638443974

namespace A109288

/-- `A263990(n+1)+1` -/
def P4683559846638443974.Spec : Prop :=
  ∀ n, P4683559846638443974.a n = A109288 (n + 1)

theorem P4683559846638443974.correct : P4683559846638443974.Spec := by
  intro n
  simp only [A109288, Nat.add_sub_cancel, A109288.P4683559846638443974.a, A109288.P6952857508104961843.a, A039832, A039832.P5669691020800147113.f1, A039832.P5669691020800147113.a, A263990, A263990.P15229984249607134462.a, A326178, A326178.P10986141983629121521.f1, A326178.P10986141983629121521.a, A005237, A005237.P9029700576997496255.f1, A005237.P9029700576997496255.a, A354927, A354927.P9536107206795731212.a, A140128, A140128.P9211484001941945419.f1, A140128.P9211484001941945419.f3, A140128.P9211484001941945419.f2, A140128.P9211484001941945419.a, A140482, A140482.P11303161972345714232.a, A361022, A361022.P13909982394743935794.f1, A361022.P13909982394743935794.f2, A361022.P13909982394743935794.a, A000005, A000005.P16091521709108585461.a, A000007, A000007.P6599383543502402472.a, A000038, A000038.P13734959004655594922.a, A010553, A010553.P11932377395426747626.a, A054519, A054519.P3292618312068876157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A109288

/-! ## A109288.P5866491734608637247

`A039832(round(atan(n)/2)+n+1)+1`
-/

namespace A109288.P5866491734608637247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (SequenceMachineLib.roundAway (Real.arctan (n : ℝ) / 2) + (n : ℤ) + 1).toNat + 1

end

end A109288.P5866491734608637247

namespace A109288

/-- `A039832(round(atan(n)/2)+n+1)+1` -/
def P5866491734608637247.Spec : Prop :=
  ∀ n, P5866491734608637247.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P6952857508104961843

`A039832(A326178(n+1))+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A109288

/-- `A039832(A326178(n+1))+1` -/
def P6952857508104961843.Spec : Prop :=
  ∀ n, P6952857508104961843.a n = A109288 (n + 1)

theorem P6952857508104961843.correct : P6952857508104961843.Spec := by
  intro n
  simp only [A109288, Nat.add_sub_cancel]

end A109288

/-! ## A109288.P6408386081031728920

`∩[A038456(n+1), A083793(n+1)]`
-/

namespace A109288.P6408386081031728920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109288.P6408386081031728920

namespace A109288

/-- `∩[A038456(n+1), A083793(n+1)]` -/
def P6408386081031728920.Spec : Prop :=
  ∀ n, (P6408386081031728920.a n : ℤ) = A109288 (n + 1)

end A109288

/-! ## A109288.P17986935741873748565

`filter[A083793(n+1), A354927(#)]`
-/

namespace A109288.P17986935741873748565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A109288.P17986935741873748565

namespace A109288

/-- `filter[A083793(n+1), A354927(#)]` -/
def P17986935741873748565.Spec : Prop :=
  ∀ n, P17986935741873748565.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P15964185389909978135

`filter[A083793(n+2), A374128(#)]`
-/

namespace A109288.P15964185389909978135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A109288.P15964185389909978135

namespace A109288

/-- `filter[A083793(n+2), A374128(#)]` -/
def P15964185389909978135.Spec : Prop :=
  ∀ n, P15964185389909978135.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P2034630378459837974

`filter[A083795(n+2), A374128(#)]`
-/

namespace A109288.P2034630378459837974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A109288.P2034630378459837974

namespace A109288

/-- `filter[A083795(n+2), A374128(#)]` -/
def P2034630378459837974.Spec : Prop :=
  ∀ n, P2034630378459837974.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P9681855592278520444

`∩[A001358(n+1), A083793(n+1)]`
-/

namespace A109288.P9681855592278520444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109288.P9681855592278520444

namespace A109288

/-- `∩[A001358(n+1), A083793(n+1)]` -/
def P9681855592278520444.Spec : Prop :=
  ∀ n, (P9681855592278520444.a n : ℤ) = A109288 (n + 1)

end A109288

/-! ## A109288.P5572953414802196919

`∩[A001358(n+1), A083795(n+1)]`
-/

namespace A109288.P5572953414802196919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109288.P5572953414802196919

namespace A109288

/-- `∩[A001358(n+1), A083795(n+1)]` -/
def P5572953414802196919.Spec : Prop :=
  ∀ n, (P5572953414802196919.a n : ℤ) = A109288 (n + 1)

end A109288

/-! ## A109288.P4773093270193174171

`filter[A083793(n+1), A064911(#)]`
-/

namespace A109288.P4773093270193174171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A109288.P4773093270193174171

namespace A109288

/-- `filter[A083793(n+1), A064911(#)]` -/
def P4773093270193174171.Spec : Prop :=
  ∀ n, P4773093270193174171.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P9065493009128975645

`filter[A083795(n+1), A064911(#)]`
-/

namespace A109288.P9065493009128975645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A109288.P9065493009128975645

namespace A109288

/-- `filter[A083795(n+1), A064911(#)]` -/
def P9065493009128975645.Spec : Prop :=
  ∀ n, P9065493009128975645.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P11485068052569291536

`filter[A083793(n+1), A280710(#)]`
-/

namespace A109288.P11485068052569291536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A109288.P11485068052569291536

namespace A109288

/-- `filter[A083793(n+1), A280710(#)]` -/
def P11485068052569291536.Spec : Prop :=
  ∀ n, P11485068052569291536.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P14260206919585098340

`filter[A083795(n+1), A280710(#)]`
-/

namespace A109288.P14260206919585098340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A109288.P14260206919585098340

namespace A109288

/-- `filter[A083795(n+1), A280710(#)]` -/
def P14260206919585098340.Spec : Prop :=
  ∀ n, P14260206919585098340.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P15854535746017590509

`filter[A083793(n+2), A101040(#)]`
-/

namespace A109288.P15854535746017590509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A109288.P15854535746017590509

namespace A109288

/-- `filter[A083793(n+2), A101040(#)]` -/
def P15854535746017590509.Spec : Prop :=
  ∀ n, P15854535746017590509.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P12558262623437684435

`filter[A083795(n+2), A101040(#)]`
-/

namespace A109288.P12558262623437684435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A109288.P12558262623437684435

namespace A109288

/-- `filter[A083795(n+2), A101040(#)]` -/
def P12558262623437684435.Spec : Prop :=
  ∀ n, P12558262623437684435.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P11696496322085349001

`filter[A083793(n+2), A353471(#)]`
-/

namespace A109288.P11696496322085349001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A109288.P11696496322085349001

namespace A109288

/-- `filter[A083793(n+2), A353471(#)]` -/
def P11696496322085349001.Spec : Prop :=
  ∀ n, P11696496322085349001.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P12413489051103421517

`filter[A083795(n+2), A353471(#)]`
-/

namespace A109288.P12413489051103421517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A109288.P12413489051103421517

namespace A109288

/-- `filter[A083795(n+2), A353471(#)]` -/
def P12413489051103421517.Spec : Prop :=
  ∀ n, P12413489051103421517.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P17304055647486431591

`filter[A083793(n+2), A353788(#)]`
-/

namespace A109288.P17304055647486431591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A109288.P17304055647486431591

namespace A109288

/-- `filter[A083793(n+2), A353788(#)]` -/
def P17304055647486431591.Spec : Prop :=
  ∀ n, P17304055647486431591.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P539667788982820498

`filter[A083793(n+2), A353799(#)]`
-/

namespace A109288.P539667788982820498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A109288.P539667788982820498

namespace A109288

/-- `filter[A083793(n+2), A353799(#)]` -/
def P539667788982820498.Spec : Prop :=
  ∀ n, P539667788982820498.a n = A109288 (n + 1)

end A109288

/-! ## A109288.P3789529315915603829

`∩[A006881(n+1), A083793(n+1)]`
-/

namespace A109288.P3789529315915603829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109288.P3789529315915603829

namespace A109288

/-- `∩[A006881(n+1), A083793(n+1)]` -/
def P3789529315915603829.Spec : Prop :=
  ∀ n, (P3789529315915603829.a n : ℤ) = A109288 (n + 1)

end A109288

/-!
# A109289: Composite numbers which are not of the form p*q + 1, where p and q are distinct primes.

The programs for A109289, there is no canonical definition to state claims against.
-/

/-! ## A109289.P14467713684504105293

`eq[A080304(n+1), A208645(n)]+2`
-/

namespace A109289.P14467713684504105293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A109289.P14467713684504105293

/-! ## A109289.P9557635880504567935

`∩[A002808(n+1), A246716(n+1)+1]`
-/

namespace A109289.P9557635880504567935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109289.P9557635880504567935

/-! ## A109289.P9332469089956291940

`∩[A018252(n+1), A246716(n+1)+1]`
-/

namespace A109289.P9332469089956291940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109289.P9332469089956291940

/-! ## A109289.P8237418016396719986

`∩[A141468(n+1), A246716(n+1)+1]`
-/

namespace A109289.P8237418016396719986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109289.P8237418016396719986

/-! ## A109289.P4725986148343349702

`∩[A002808(n+1), A065475(A246716(n+1))]`
-/

namespace A109289.P4725986148343349702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A246716 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109289.P4725986148343349702

/-!
# A109291: New factors appearing in the factorization of 5^k - 2^k as k increases.

The programs for A109291, there is no canonical definition to state claims against.
-/

/-! ## A109291.P14974664844287369341

`A006530(3*2^n*∑[(5/2)^n])`
-/

namespace A109291.P14974664844287369341
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) / 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (3 * ((2 ^ n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)))).toNat

end

end A109291.P14974664844287369341

/-! ## A109291.P18182088567213815304

`or(1, A006530(A005057(n+1)))`
-/

namespace A109291.P18182088567213815304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A005057 (n + 1)).toNat)

end

end A109291.P18182088567213815304

/-! ## A109291.P1343979295431265784

`A025433(n)+A006530(A005057(n+1))`
-/

namespace A109291.P1343979295431265784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025433 n + A006530 (A005057 (n + 1)).toNat

end

end A109291.P1343979295431265784

/-!
# A109294: Base-3 analog of A018737. Start with S = {}. For m = 0, 1, 2, 3, ... let u be the ternary expansion of m. If u is not a substring of S, append the minimal number of ternary digits to S to remedy this. Sequence gives S.

The programs for A109294, there is no canonical definition to state claims against.
-/

/-! ## A109294.P4378308353787797894

`A054635(lt[A317368(n), A005942(n+3)])`
-/

namespace A109294.P4378308353787797894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005942 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109294.P4378308353787797894

/-! ## A109294.P16845810943732722684

`A054635(lt[A317368(n), A050704(n+3)])`
-/

namespace A109294.P16845810943732722684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317368 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050704 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109294.P16845810943732722684

/-! ## A109294.P2555486708968714379

`A119241(∑[A172115(n+1)])`
-/

namespace A109294.P2555486708968714379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109294.P2555486708968714379

/-! ## A109294.P4220384295688565996

`A119241(∑[∑[A001605(n+1)]])`
-/

namespace A109294.P4220384295688565996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119241 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109294.P4220384295688565996

/-! ## A109294.P6608209495986753370

`A325817(A167499(n)+A018179(n))`
-/

namespace A109294.P6608209495986753370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325817 (A167499 n + A018179 n).toNat

end

end A109294.P6608209495986753370

/-!
# A109296: Location of first occurrence of n consecutive 0's in A108737.

The programs for A109296, there is no canonical definition to state claims against.
-/

/-! ## A109296.P2325456033910864416

`A018388(2*n+1)+comp[2*n+3]`
-/

namespace A109296.P2325456033910864416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018388 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A109296.P2325456033910864416

/-!
# A109297: Primal codes of finite permutations on positive integers.

The programs for A109297, there is no canonical definition to state claims against.
-/

/-! ## A109297.P2702252291304406065

`filter[A325755(n+1), A351564(#)]`
-/

namespace A109297.P2702252291304406065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A109297.P2702252291304406065

/-! ## A109297.P10146182734327878638

`filter[A367683(n+1), A351564(#)]`
-/

namespace A109297.P10146182734327878638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A109297.P10146182734327878638

/-! ## A109297.P10721367502998922867

`∩[A130091(n+1), A325755(n+1)]`
-/

namespace A109297.P10721367502998922867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109297.P10721367502998922867

/-! ## A109297.P3696021635988068818

`∩[A130091(n+1), A367683(n+1)]`
-/

namespace A109297.P3696021635988068818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109297.P3696021635988068818

/-! ## A109297.P2109117075235017020

`eq[A007947(n+1), A329601(n+1)]+1`
-/

namespace A109297.P2109117075235017020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A109297.P2109117075235017020

/-!
# A109298: Primal codes of finite idempotent functions on positive integers.

The programs for A109298, there is no canonical definition to state claims against.
-/

/-! ## A109298.P15294763875285404116

`∩[A109297(n+1), A324524(n+1)]`
-/

namespace A109298.P15294763875285404116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109298.P15294763875285404116

/-! ## A109298.P8731162955551283930

`∩[A109297(n+1), A324525(n+1)]`
-/

namespace A109298.P8731162955551283930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109298.P8731162955551283930

/-! ## A109298.P10699721255813583626

`∩[A048768(n+1), A324524(n+1)]`
-/

namespace A109298.P10699721255813583626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109298.P10699721255813583626

/-! ## A109298.P2443462082984830830

`∩[A048768(n+1), A324525(n+1)]`
-/

namespace A109298.P2443462082984830830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109298.P2443462082984830830

/-! ## A109298.P2725935520937426183

`record[A346233(record[A305458(n)])]`
-/

namespace A109298.P2725935520937426183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346233 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109298.P2725935520937426183

/-!
# A109299: Primal codes of canonical finite permutations on positive integers.

The programs for A109299, there is no canonical definition to state claims against.
-/

/-! ## A109299.P1679869083157315292

`∩[A055932(n+1), A109297(n+1)]`
-/

namespace A109299.P1679869083157315292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109299.P1679869083157315292

/-! ## A109299.P2925628318633579232

`∩[A109297(n+1), A323762(n+1)]`
-/

namespace A109299.P2925628318633579232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109299.P2925628318633579232

/-! ## A109299.P3755353663586749101

`filter[A109297(n+1), A341629(#)]`
-/

namespace A109299.P3755353663586749101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A109299.P3755353663586749101

/-! ## A109299.P6739212765657121522

`filter[A178480(n+1), A351564(#)]`
-/

namespace A109299.P6739212765657121522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A109299.P6739212765657121522

/-! ## A109299.P11255503287375973244

`filter[A325708(n+1), A351564(#)]`
-/

namespace A109299.P11255503287375973244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A109299.P11255503287375973244

