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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
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

/-!
# A270402: Denominators of r-Egyptian fraction expansion for e - 2, where r(k) = 1/Fibonacci(k+1).

The programs for A270402, there is no canonical definition to state claims against.
-/

/-! ## A270402.P7522574143935028988

`A327261(∏[A072532(n)])`
-/

namespace A270402.P7522574143935028988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327261 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270402.P7522574143935028988

/-!
# A270405: Denominators of r-Egyptian fraction expansion for (1/2)^(1/3), where r(k) = 1/Fibonacci(k+1).

The programs for A270405, there is no canonical definition to state claims against.
-/

/-! ## A270405.P8632777339880732367

`A240731(A005380(n))+A210942(n+1)`
-/

namespace A270405.P8632777339880732367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240731 (A005380 n).toNat + A210942 (n + 1)

end

end A270405.P8632777339880732367

/-!
# A270413: Numbers m such that sigma(m-1) is a prime.

The programs for A270413, there is no canonical definition to state claims against.
-/

/-! ## A270413.P1753654724505419418

`A023194(n+1)+1`
-/

namespace A270413.P1753654724505419418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) + 1

end

end A270413.P1753654724505419418

/-! ## A270413.P2938669679233178397

`(A292446(n+1)+3)/2`
-/

namespace A270413.P2938669679233178397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292446 (n + 1) + 3 : ℚ) / 2

end

end A270413.P2938669679233178397

/-! ## A270413.P15155429735837305669

`A062700(n+1)+A071167(n+1)+1`
-/

namespace A270413.P15155429735837305669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062700 (n + 1) + (A071167 (n + 1) + 1)

end

end A270413.P15155429735837305669

/-! ## A270413.P13528922832171781911

`∪[A249902(n+1), A278911(n+1)]+1`
-/

namespace A270413.P13528922832171781911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A270413.P13528922832171781911

/-! ## A270413.P7599027567282911640

`record[A055638(A065033(n))^A000034(n)]+1`
-/

namespace A270413.P7599027567282911640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055638 (A065033 n).toNat : ℚ) ^ (A000034 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A270413.P7599027567282911640

/-! ## A270413.P3017076653042189468

`∩[A071114(n+1), A379112(n+1)]+1`
-/

namespace A270413.P3017076653042189468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A270413.P3017076653042189468

/-! ## A270413.P9789897564048505730

`∩[A015730(n+1), A070763(n+1)]+1`
-/

namespace A270413.P9789897564048505730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A270413.P9789897564048505730

/-! ## A270413.P4035210966590935268

`∩[A015730(n+1), A071114(n+1)]+1`
-/

namespace A270413.P4035210966590935268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A270413.P4035210966590935268

/-! ## A270413.P13670107361219240931

`∩[A015730(n+1), A281882(n+1)]+1`
-/

namespace A270413.P13670107361219240931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A270413.P13670107361219240931

/-!
# A270414: Numbers m such that sigma(m-1) and sigma(phi(m)) are both primes.

The programs for A270414, there is no canonical definition to state claims against.
-/

/-! ## A270414.P16448682474980781794

`A289625(a(n-1))+1` with `a(0)=3, a(1)=5, a(2)=10`
-/

namespace A270414.P16448682474980781794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 10] fun n a =>
  A289625 (a (n - 1)).toNat + 1

end

end A270414.P16448682474980781794

/-!
# A270415: Numbers n such that sigma(n-1) and sigma(n) - 1 are both primes.

The programs for A270415, there is no canonical definition to state claims against.
-/

/-! ## A270415.P7275991457681766236

`A114080(A259623(n+1))+1`
-/

namespace A270415.P7275991457681766236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114080 (A259623 (n + 1)).toNat + 1

end

end A270415.P7275991457681766236

/-! ## A270415.P18411150342185915542

`filter[A270413(n+1), A296211(#)]`
-/

namespace A270415.P18411150342185915542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A270415.P18411150342185915542

/-! ## A270415.P12965837338201270252

`A114080(∑[A114087(n+1)])+1`
-/

namespace A270415.P12965837338201270252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114080 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A270415.P12965837338201270252

/-!
# A270416: Numbers n such that sigma(n) - 1 and sigma(phi(n)) are both primes.

The programs for A270416, there is no canonical definition to state claims against.
-/

/-! ## A270416.P3278370973968268919

`filter[A062514(n+1), A296211(#)]`
-/

namespace A270416.P3278370973968268919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A270416.P3278370973968268919

/-! ## A270416.P16053694398834473267

`∩[A048839(n+1), A062514(n+1)]`
-/

namespace A270416.P16053694398834473267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270416.P16053694398834473267

/-! ## A270416.P9075135403853496039

`∩[A062514(n+1), A248792(n+1)]`
-/

namespace A270416.P9075135403853496039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270416.P9075135403853496039

/-! ## A270416.P16485296501102648956

`∩[A248792(n+1), A300217(n+1)]`
-/

namespace A270416.P16485296501102648956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270416.P16485296501102648956

/-! ## A270416.P8658513071693553535

`∩[A062514(n+1), A073803(n+1)]`
-/

namespace A270416.P8658513071693553535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270416.P8658513071693553535

/-!
# A270417: Number of integer-sided right triangles with semiperimeter n.

The programs for A270417, there is no canonical definition to state claims against.
-/

/-! ## A270417.P16897012439186407313

`∑{d}[n+1, A078926(#)]`
-/

namespace A270417.P16897012439186407313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078926 d

end

end A270417.P16897012439186407313

/-! ## A270417.P12025179476338027978

`∑{d}[A005843(n+1), A070109(#)]`
-/

namespace A270417.P12025179476338027978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A070109 d

end

end A270417.P12025179476338027978

/-! ## A270417.P5971651684532329205

`A055081(n+1)-A078644(n+1)`
-/

namespace A270417.P5971651684532329205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055081 (n + 1) - A078644 (n + 1)

end

end A270417.P5971651684532329205

/-! ## A270417.P9070273831119187982

`A055081(n+1)-A361689(n+1)/2`
-/

namespace A270417.P9070273831119187982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055081 (n + 1) : ℚ) - (A361689 (n + 1) : ℚ) / 2

end

end A270417.P9070273831119187982

/-! ## A270417.P5551182723010284488

`∑{d}[n+1, A301989(#)*A359548((n+1)/#)]`
-/

namespace A270417.P5551182723010284488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A301989 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A270417.P5551182723010284488

/-! ## A270417.P16185702717212514044

`A024155(2*(n+1))`
-/

namespace A270417.P16185702717212514044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (2 * (n + 1))

end

end A270417.P16185702717212514044

/-! ## A270417.P18027807377390135820

`A078644(n+1)-(A108920(n+1)+1)`
-/

namespace A270417.P18027807377390135820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) - (A108920 (n + 1) + 1)

end

end A270417.P18027807377390135820

/-! ## A270417.P8541453725287964693

`A078644(n+1)-A361687(n+1)`
-/

namespace A270417.P8541453725287964693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078644 (n + 1) - A361687 (n + 1)

end

end A270417.P8541453725287964693

/-! ## A270417.P11391960943332334571

`A361689(n+1)/2-A361687(n+1)`
-/

namespace A270417.P11391960943332334571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361689 (n + 1) : ℚ) / 2 - (A361687 (n + 1) : ℚ)

end

end A270417.P11391960943332334571

/-!
# A270419: Denominator of the rational number obtained when the exponents in prime factorization of n are reinterpreted as alternating binary sums (A065620).

The programs for A270419, there is no canonical definition to state claims against.
-/

/-! ## A270419.P5297146132383766831

`A365297(A367513(n+1))`
-/

namespace A270419.P5297146132383766831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (A367513 (n + 1)).toNat

end

end A270419.P5297146132383766831

/-! ## A270419.P8626476946531829706

`A365297((n+1)/A270418(n+1))`
-/

namespace A270419.P8626476946531829706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A270418 (n + 1) : ℚ))).toNat

end

end A270419.P8626476946531829706

/-! ## A270419.P734048330338899860

`A365297(n+1)+A010815(A095284(n+1))`
-/

namespace A270419.P734048330338899860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (n + 1) + A010815 (A095284 (n + 1)).toNat

end

end A270419.P734048330338899860

/-! ## A270419.P16111141974812998911

`A365297(A360540(n+1)*A367514(n+1))`
-/

namespace A270419.P16111141974812998911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (A360540 (n + 1) * A367514 (n + 1)).toNat

end

end A270419.P16111141974812998911

/-! ## A270419.P17967184148184217487

`A120249(A273672((n+1)/A270418(n+1)))`
-/

namespace A270419.P17967184148184217487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120249 (A273672 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A270418 (n + 1) : ℚ))).toNat).toNat

end

end A270419.P17967184148184217487

/-! ## A270419.P5967334075718074515

`A365297(n+1)+A000007(A008287(n))`
-/

namespace A270419.P5967334075718074515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (n + 1) + A000007 (A008287 n).toNat

end

end A270419.P5967334075718074515

/-! ## A270419.P2866951026094625496

`A114536(A000040(n+3))*A365297(n+1)`
-/

namespace A270419.P2866951026094625496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114536 (A000040 (n + 3)).toNat * A365297 (n + 1)

end

end A270419.P2866951026094625496

/-! ## A270419.P2135332670238583512

`and(A072828(n+1), A365297(n+1))`
-/

namespace A270419.P2135332670238583512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A072828 (n + 1)) (A365297 (n + 1))

end

end A270419.P2135332670238583512

/-! ## A270419.P6872664604362321757

`gcd(A000458(n), A365297(n+1))`
-/

namespace A270419.P6872664604362321757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000458 n) (A365297 (n + 1))

end

end A270419.P6872664604362321757

/-! ## A270419.P18123220856894807138

`A365297(n+1)+A165560(n²)`
-/

namespace A270419.P18123220856894807138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (n + 1) + A165560 (n ^ 2)

end

end A270419.P18123220856894807138

/-! ## A270419.P16279153256255163970

`A062379(A011262(n+1))`
-/

namespace A270419.P16279153256255163970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (A011262 (n + 1)).toNat

end

end A270419.P16279153256255163970

/-! ## A270419.P10666381939271347422

`A365297(A197863(n+1))`
-/

namespace A270419.P10666381939271347422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (A197863 (n + 1)).toNat

end

end A270419.P10666381939271347422

/-! ## A270419.P4768069161653785256

`A365297((n+1)*A270418(n+1))`
-/

namespace A270419.P4768069161653785256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 ((n + 1 : ℤ) * A270418 (n + 1)).toNat

end

end A270419.P4768069161653785256

/-! ## A270419.P10106812019094119749

`A365297((n+1)*A367168(n+1))`
-/

namespace A270419.P10106812019094119749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 ((n + 1 : ℤ) * A367168 (n + 1)).toNat

end

end A270419.P10106812019094119749

/-! ## A270419.P4169478934923328446

`and(A203253(n+1), A365297(n+1))`
-/

namespace A270419.P4169478934923328446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A203253 (n + 1)) (A365297 (n + 1))

end

end A270419.P4169478934923328446

/-! ## A270419.P15791465924427832925

`A062378(A055491(n+1)*A062378(n+1))`
-/

namespace A270419.P15791465924427832925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A055491 (n + 1) * A062378 (n + 1)).toNat

end

end A270419.P15791465924427832925

/-! ## A270419.P5603174300110095035

`A062378(A011262(n+1)/A014673(n+1))`
-/

namespace A270419.P5603174300110095035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (SequenceMachineLib.roundAway ((A011262 (n + 1) : ℚ) / (A014673 (n + 1) : ℚ))).toNat

end

end A270419.P5603174300110095035

/-! ## A270419.P7085618771632196042

`A062378(A011262(n+1)/A071773(n+1))`
-/

namespace A270419.P7085618771632196042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (SequenceMachineLib.roundAway ((A011262 (n + 1) : ℚ) / (A071773 (n + 1) : ℚ))).toNat

end

end A270419.P7085618771632196042

/-! ## A270419.P10468510180284711338

`A011262(n+1)/A058035(A159253(n+1))`
-/

namespace A270419.P10468510180284711338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (n + 1) : ℚ) / (A058035 (A159253 (n + 1)).toNat : ℚ)

end

end A270419.P10468510180284711338

/-!
# A270420: Numbers n for which A270418(n) > A270419(n).

The programs for A270420, there is no canonical definition to state claims against.
-/

/-! ## A270420.P2288543510521875917

`comp[A270421(n+1)-2]+2`
-/

namespace A270420.P2288543510521875917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270421 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A270420.P2288543510521875917

/-! ## A270420.P11751925375451651297

`comp[∪[A270421(n+1), A000584(n)]]`
-/

namespace A270420.P11751925375451651297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270421 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A270420.P11751925375451651297

/-! ## A270420.P4526506439466940456

`comp[∪[A270421(n+1), A001014(n)]]`
-/

namespace A270420.P4526506439466940456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270421 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A270420.P4526506439466940456

/-! ## A270420.P13046062907488502990

`comp[∪[A270421(n+1), A001017(n)]]`
-/

namespace A270420.P13046062907488502990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270421 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A270420.P13046062907488502990

/-! ## A270420.P14869981564454754644

`comp[∪[A270421(n+1), A010806(n)]]`
-/

namespace A270420.P14869981564454754644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270421 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010806 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A270420.P14869981564454754644

/-! ## A270420.P16165652997396826889

`comp[∪[A270421(n+1), A010811(n)]]`
-/

namespace A270420.P16165652997396826889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270421 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010811 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A270420.P16165652997396826889

/-! ## A270420.P9278467790988678491

`lt[A270419(n+1), A270418(n+1)]+1`
-/

namespace A270420.P9278467790988678491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A270420.P9278467790988678491

/-! ## A270420.P5992607922322528769

`lt[A151873(A323436(n)), A226602(n)]`
-/

namespace A270420.P5992607922322528769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151873 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270420.P5992607922322528769

/-! ## A270420.P7806406284230699427

`lt[A198329(n+1), A270418(n+1)]+1`
-/

namespace A270420.P7806406284230699427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A270420.P7806406284230699427

/-!
# A270421: Numbers n for which A270418(n) < A270419(n).

The programs for A270421, there is no canonical definition to state claims against.
-/

/-! ## A270421.P4272946352190389841

`lt[A270418(n+1), A270419(n+1)]+1`
-/

namespace A270421.P4272946352190389841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A270421.P4272946352190389841

/-! ## A270421.P7563734583412927933

`A114637(lt[A270418(n+1), A270419(n+1)])`
-/

namespace A270421.P7563734583412927933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270421.P7563734583412927933

/-!
# A270422: Numbers n such that n = a*b and 2*n + 1 = c*d such that a + b = c + d.

The programs for A270422, there is no canonical definition to state claims against.
-/

/-! ## A270422.P14247673514432444210

`∑[A101296(8*A074622(n))]`
-/

namespace A270422.P14247673514432444210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (8 * A074622 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270422.P14247673514432444210

/-!
# A270423: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 379", based on the 5-celled von Neumann neighborhood.

The programs for A270423, there is no canonical definition to state claims against.
-/

/-! ## A270423.P3716685035904443635

`A265916(2^n-1)`
-/

namespace A270423.P3716685035904443635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 (2 ^ n - 1)

end

end A270423.P3716685035904443635

/-! ## A270423.P1920237425793023836

`record[A265916(A303763(n))]`
-/

namespace A270423.P1920237425793023836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270423.P1920237425793023836

/-! ## A270423.P11441064305078272673

`record[A265916(Δ[A228693(n)])]`
-/

namespace A270423.P11441064305078272673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270423.P11441064305078272673

/-! ## A270423.P7224313224901980467

`record[A265916(A243071(n+1))]`
-/

namespace A270423.P7224313224901980467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270423.P7224313224901980467

/-! ## A270423.P14529951525935456514

`record[A265916(A324865(n+1))]`
-/

namespace A270423.P14529951525935456514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265916 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270423.P14529951525935456514

/-!
# A270426: Permutation of natural numbers: a(1) = 1, a(2n) = 2*a(n), a(2n+1) = A265341(a(n)).

The programs for A270426, there is no canonical definition to state claims against.
-/

/-! ## A270426.P12891423423062407899

`A332213(A332808(n+1)^A254609(n))`
-/

namespace A270426.P12891423423062407899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (SequenceMachineLib.roundAway ((A332808 (n + 1) : ℚ) ^ (A254609 n : ℤ))).toNat

end

end A270426.P12891423423062407899

/-! ## A270426.P17177820845898764313

`A246200(or(A018895(n), A332213(n+1)))`
-/

namespace A270426.P17177820845898764313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (Int.lor (A018895 n) (A332213 (n + 1))).toNat

end

end A270426.P17177820845898764313

/-! ## A270426.P15933619145395682044

`A332213(or(A018895(n), A332808(n+1)))`
-/

namespace A270426.P15933619145395682044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (Int.lor (A018895 n) (A332808 (n + 1))).toNat

end

end A270426.P15933619145395682044

/-! ## A270426.P6757204207868180548

`A246200(A332213(n+1)+n*A018895(n))`
-/

namespace A270426.P6757204207868180548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246200 (A332213 (n + 1) + (n : ℤ) * A018895 n).toNat

end

end A270426.P6757204207868180548

/-! ## A270426.P17017022372058557497

`A332213(A000720(A332213(A332211(A108548(n+1)))))`
-/

namespace A270426.P17017022372058557497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A000720 (A332213 (A332211 (A108548 (n + 1)).toNat).toNat).toNat).toNat

end

end A270426.P17017022372058557497

/-!
# A270427: Numbers k such that k*floor(2^k/k) + 1 is prime.

The programs for A270427, there is no canonical definition to state claims against.
-/

/-! ## A270427.P8557114633395452079

`eq[A307590(n+1), A307590(A034973(n+2))]+1`
-/

namespace A270427.P8557114633395452079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307590 (A034973 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270427.P8557114633395452079

/-! ## A270427.P13035122980740903382

`lt[A191917(A307590(n+1)), 2]+1`
-/

namespace A270427.P13035122980740903382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191917 (A307590 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A270427.P13035122980740903382

/-! ## A270427.P8556556286941206062

`lt[∑[A086074(n+3)], A046053(2*n+1)]`
-/

namespace A270427.P8556556286941206062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086074 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A270427.P8556556286941206062

/-! ## A270427.P1325305573527276323

`lt[A158279(A103469(n+3)), A158315(n)]`
-/

namespace A270427.P1325305573527276323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158279 (A103469 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158315 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270427.P1325305573527276323

/-! ## A270427.P1345418576839859510

`lt[A072479(A072451(n+1)), A072482(n+1)]`
-/

namespace A270427.P1345418576839859510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072479 (A072451 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072482 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270427.P1345418576839859510

/-!
# A270428: Exponentially odious numbers: 1 together with positive integers n such that all exponents in prime factorization of n are odious numbers (A000069).

The programs for A270428, the canonical program `A270428.P3446457217873923368` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270428 has offset 1).

The definition of A270428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270428.P5663700429918245404

`eq[1, A270419(n+1)]+1`
-/

namespace A270428.P5663700429918245404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270428.P5663700429918245404

namespace A270428

/-- `eq[1, A270419(n+1)]+1` -/
def P5663700429918245404.Spec : Prop :=
  ∀ n, (P5663700429918245404.a n : ℤ) = A270428 (n + 1)

end A270428

/-! ## A270428.P3446457217873923368

`eq[1, A355825(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A270428

/-- `eq[1, A355825(n+1)]+1` -/
def P3446457217873923368.Spec : Prop :=
  ∀ n, (P3446457217873923368.a n : ℤ) = A270428 (n + 1)

theorem P3446457217873923368.correct : P3446457217873923368.Spec := by
  intro n
  simp only [A270428, Nat.add_sub_cancel]

end A270428

/-! ## A270428.P14768724022149019636

`filter[A390437(n+1), A355825(#)]`
-/

namespace A270428.P14768724022149019636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A270428.P14768724022149019636

namespace A270428

/-- `filter[A390437(n+1), A355825(#)]` -/
def P14768724022149019636.Spec : Prop :=
  ∀ n, P14768724022149019636.a n = A270428 (n + 1)

end A270428

/-! ## A270428.P14337967443548837528

`filter[A386799(n+1), A355825(#)]`
-/

namespace A270428.P14337967443548837528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A270428.P14337967443548837528

namespace A270428

/-- `filter[A386799(n+1), A355825(#)]` -/
def P14337967443548837528.Spec : Prop :=
  ∀ n, P14337967443548837528.a n = A270428 (n + 1)

end A270428

/-! ## A270428.P18032955876576399234

`filter[A386807(n+1), A355825(#)]`
-/

namespace A270428.P18032955876576399234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A270428.P18032955876576399234

namespace A270428

/-- `filter[A386807(n+1), A355825(#)]` -/
def P18032955876576399234.Spec : Prop :=
  ∀ n, P18032955876576399234.a n = A270428 (n + 1)

end A270428

/-! ## A270428.P14878548613020130350

`record[A366905(n+1)]`
-/

namespace A270428.P14878548613020130350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270428.P14878548613020130350

namespace A270428

/-- `record[A366905(n+1)]` -/
def P14878548613020130350.Spec : Prop :=
  ∀ n, P14878548613020130350.a n = A270428 (n + 1)

end A270428

/-! ## A270428.P15120438467177728755

`record[A367514(n+1)]`
-/

namespace A270428.P15120438467177728755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270428.P15120438467177728755

namespace A270428

/-- `record[A367514(n+1)]` -/
def P15120438467177728755.Spec : Prop :=
  ∀ n, P15120438467177728755.a n = A270428 (n + 1)

end A270428

/-! ## A270428.P4239183064326328279

`filter[n+1, A355825(#)]`
-/

namespace A270428.P4239183064326328279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j) = 1) n)

end

end A270428.P4239183064326328279

namespace A270428

/-- `filter[n+1, A355825(#)]` -/
def P4239183064326328279.Spec : Prop :=
  ∀ n, (P4239183064326328279.a n : ℤ) = A270428 (n + 1)

end A270428

/-! ## A270428.P16652081754891425427

`eq[1, A367513(n+1)]+1`
-/

namespace A270428.P16652081754891425427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A270428.P16652081754891425427

namespace A270428

/-- `eq[1, A367513(n+1)]+1` -/
def P16652081754891425427.Spec : Prop :=
  ∀ n, (P16652081754891425427.a n : ℤ) = A270428 (n + 1)

end A270428

/-! ## A270428.P10189573231804578675

`record[A006370(2*(n+1))*A355825(n+1)]`
-/

namespace A270428.P10189573231804578675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * (n + 1)) * A355825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270428.P10189573231804578675

namespace A270428

/-- `record[A006370(2*(n+1))*A355825(n+1)]` -/
def P10189573231804578675.Spec : Prop :=
  ∀ n, P10189573231804578675.a n = A270428 (n + 1)

end A270428

/-! ## A270428.P290724690462814403

`record[A110654(2*n+1)/A270419(n+1)]`
-/

namespace A270428.P290724690462814403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (2 * n + 1) : ℚ) / (A270419 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270428.P290724690462814403

namespace A270428

/-- `record[A110654(2*n+1)/A270419(n+1)]` -/
def P290724690462814403.Spec : Prop :=
  ∀ n, P290724690462814403.a n = (A270428 (n + 1) : ℚ)

end A270428

/-! ## A270428.P7208606084064339192

`lt[A270419(n+1), A260449(A072272(n)+1)]+1`
-/

namespace A270428.P7208606084064339192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A072272 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A270428.P7208606084064339192

namespace A270428

/-- `lt[A270419(n+1), A260449(A072272(n)+1)]+1` -/
def P7208606084064339192.Spec : Prop :=
  ∀ n, (P7208606084064339192.a n : ℤ) = A270428 (n + 1)

end A270428

/-!
# A270429: Minimal total number of unit fractions required to sum up all fractions 1/n, 2/n, ..., n/n.

The programs for A270429, there is no canonical definition to state claims against.
-/

/-! ## A270429.P16707189301585686284

`A008574(A187829(n+1))-A308221(n+1)`
-/

namespace A270429.P16707189301585686284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A187829 (n + 1)).toNat - A308221 (n + 1)

end

end A270429.P16707189301585686284

/-! ## A270429.P13206724653147515105

`A008574(A187829(n+1))-∑{d}[n+1, A308415(#)]`
-/

namespace A270429.P13206724653147515105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A187829 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), A308415 d

end

end A270429.P13206724653147515105

/-!
# A270430: Numbers n such that A048673(n) and A064216(n) are of the same parity.

The programs for A270430, the canonical program `A270430.P7402745598073727974` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270430 has offset 1).

The definition of A270430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270430.P11091090999085053183

`eq[char[A270431(n+1)], A000007(n)]`
-/

namespace A270430.P11091090999085053183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270431 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270430.P11091090999085053183

namespace A270430

/-- `eq[char[A270431(n+1)], A000007(n)]` -/
def P11091090999085053183.Spec : Prop :=
  ∀ n, (P11091090999085053183.a n : ℤ) = A270430 (n + 1)

end A270430

/-! ## A270430.P5085783247143378330

`eq[char[A270431(n+1)], A000038(n)]`
-/

namespace A270430.P5085783247143378330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270431 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270430.P5085783247143378330

namespace A270430

/-- `eq[char[A270431(n+1)], A000038(n)]` -/
def P5085783247143378330.Spec : Prop :=
  ∀ n, (P5085783247143378330.a n : ℤ) = A270430 (n + 1)

end A270430

/-! ## A270430.P7402745598073727974

`eq[A011655(n+2), A246260(n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A270430

/-- `eq[A011655(n+2), A246260(n+1)]+1` -/
def P7402745598073727974.Spec : Prop :=
  ∀ n, (P7402745598073727974.a n : ℤ) = A270430 (n + 1)

theorem P7402745598073727974.correct : P7402745598073727974.Spec := by
  intro n
  simp only [A270430, Nat.add_sub_cancel]

end A270430

/-! ## A270430.P5042721717770202343

`eq[A163810(n+1)², char[A246261(n+1)]]`
-/

namespace A270430.P5042721717770202343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A270430.P5042721717770202343

namespace A270430

/-- `eq[A163810(n+1)², char[A246261(n+1)]]` -/
def P5042721717770202343.Spec : Prop :=
  ∀ n, (P5042721717770202343.a n : ℤ) = A270430 (n + 1)

end A270430

/-! ## A270430.P1672702053296809646

`eq[char[A270431(n+1)], A157187(2*n)]`
-/

namespace A270430.P1672702053296809646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270431 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270430.P1672702053296809646

namespace A270430

/-- `eq[char[A270431(n+1)], A157187(2*n)]` -/
def P1672702053296809646.Spec : Prop :=
  ∀ n, (P1672702053296809646.a n : ℤ) = A270430 (n + 1)

end A270430

/-! ## A270430.P11267101363385016140

`eq[A000035(A271211(n+1)+1), A246260(n+1)]+1`
-/

namespace A270430.P11267101363385016140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A271211 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270430.P11267101363385016140

namespace A270430

/-- `eq[A000035(A271211(n+1)+1), A246260(n+1)]+1` -/
def P11267101363385016140.Spec : Prop :=
  ∀ n, (P11267101363385016140.a n : ℤ) = A270430 (n + 1)

end A270430

/-! ## A270430.P1186403967186752302

`eq[A010892(n)², A249820(A008574(2*n))%2]`
-/

namespace A270430.P1186403967186752302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249820 (A008574 (2 * n)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270430.P1186403967186752302

namespace A270430

/-- `eq[A010892(n)², A249820(A008574(2*n))%2]` -/
def P1186403967186752302.Spec : Prop :=
  ∀ n, (P1186403967186752302.a n : ℤ) = A270430 (n + 1)

end A270430

/-! ## A270430.P16103324419248120627

`eq[char[A270431(n+1)], A097331(2*n)]`
-/

namespace A270430.P16103324419248120627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270431 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270430.P16103324419248120627

namespace A270430

/-- `eq[char[A270431(n+1)], A097331(2*n)]` -/
def P16103324419248120627.Spec : Prop :=
  ∀ n, (P16103324419248120627.a n : ℤ) = A270430 (n + 1)

end A270430

/-! ## A270430.P4792323564715166337

`eq[char[A270431(n+1)], A105523(2*n)]`
-/

namespace A270430.P4792323564715166337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270431 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270430.P4792323564715166337

namespace A270430

/-- `eq[char[A270431(n+1)], A105523(2*n)]` -/
def P4792323564715166337.Spec : Prop :=
  ∀ n, (P4792323564715166337.a n : ℤ) = A270430 (n + 1)

end A270430

/-!
# A270431: Numbers n such that A048673(n) and A064216(n) are of opposite parity.

The programs for A270431, the canonical program `A270431.P6980226587388956771` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270431 has offset 1).

The definition of A270431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4928 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270431.P6980226587388956771

`eq[char[A270430(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A270431

/-- `eq[char[A270430(n+1)], A000007(n)]` -/
def P6980226587388956771.Spec : Prop :=
  ∀ n, (P6980226587388956771.a n : ℤ) = A270431 (n + 1)

theorem P6980226587388956771.correct : P6980226587388956771.Spec := by
  intro n
  simp only [A270431, Nat.add_sub_cancel]

end A270431

/-! ## A270431.P12517920553720513555

`eq[char[A270430(n+1)], A000038(n)]`
-/

namespace A270431.P12517920553720513555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270431.P12517920553720513555

namespace A270431

/-- `eq[char[A270430(n+1)], A000038(n)]` -/
def P12517920553720513555.Spec : Prop :=
  ∀ n, (P12517920553720513555.a n : ℤ) = A270431 (n + 1)

end A270431

/-! ## A270431.P6857366158026652257

`eq[char[A270430(n+1)], A000122(n)]`
-/

namespace A270431.P6857366158026652257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270431.P6857366158026652257

namespace A270431

/-- `eq[char[A270430(n+1)], A000122(n)]` -/
def P6857366158026652257.Spec : Prop :=
  ∀ n, (P6857366158026652257.a n : ℤ) = A270431 (n + 1)

end A270431

/-! ## A270431.P2827752635938249428

`eq[char[A270430(n+1)], A166926(n)]`
-/

namespace A270431.P2827752635938249428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270430 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A270431.P2827752635938249428

namespace A270431

/-- `eq[char[A270430(n+1)], A166926(n)]` -/
def P2827752635938249428.Spec : Prop :=
  ∀ n, (P2827752635938249428.a n : ℤ) = A270431 (n + 1)

end A270431

/-! ## A270431.P5866918556940325805

`eq[A000035(A271211(n+1)), A246260(n+1)]+1`
-/

namespace A270431.P5866918556940325805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A271211 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246260 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A270431.P5866918556940325805

namespace A270431

/-- `eq[A000035(A271211(n+1)), A246260(n+1)]+1` -/
def P5866918556940325805.Spec : Prop :=
  ∀ n, (P5866918556940325805.a n : ℤ) = A270431 (n + 1)

end A270431

/-! ## A270431.P11903168337168688375

`eq[A249820(A008574(2*n))%2, A173857(n+1)]`
-/

namespace A270431.P11903168337168688375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249820 (A008574 (2 * n)).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173857 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270431.P11903168337168688375

namespace A270431

/-- `eq[A249820(A008574(2*n))%2, A173857(n+1)]` -/
def P11903168337168688375.Spec : Prop :=
  ∀ n, (P11903168337168688375.a n : ℤ) = A270431 (n + 1)

end A270431

/-!
# A270432: a(n) = number of terms A270430 <= n; least monotonic left inverse of A270430.

The programs for A270432, the canonical program `A270432.P16128433384081149087` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270432 has offset 1).

The definition of A270432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270432.P12240328144192462686

`1-A270433(n+1)+n`
-/

namespace A270432.P12240328144192462686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A270433 (n + 1) + (n : ℤ)

end

end A270432.P12240328144192462686

namespace A270432

/-- `1-A270433(n+1)+n` -/
def P12240328144192462686.Spec : Prop :=
  ∀ n, P12240328144192462686.a n = A270432 (n + 1)

end A270432

/-! ## A270432.P16128433384081149087

`∑[char[A270430(n+1)-1]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A270432

/-- `∑[char[A270430(n+1)-1]]` -/
def P16128433384081149087.Spec : Prop :=
  ∀ n, (P16128433384081149087.a n : ℤ) = A270432 (n + 1)

theorem P16128433384081149087.correct : P16128433384081149087.Spec := by
  intro n
  simp only [A270432, Nat.add_sub_cancel]

end A270432

/-! ## A270432.P5541196367969075660

`(A270434(n+1)+n+1)/2`
-/

namespace A270432.P5541196367969075660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270434 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A270432.P5541196367969075660

namespace A270432

/-- `(A270434(n+1)+n+1)/2` -/
def P5541196367969075660.Spec : Prop :=
  ∀ n, P5541196367969075660.a n = (A270432 (n + 1) : ℚ)

end A270432

/-! ## A270432.P9313451802729170390

`∑[1-char[A270431(n+1)-1]]`
-/

namespace A270432.P9313451802729170390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270431 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270432.P9313451802729170390

namespace A270432

/-- `∑[1-char[A270431(n+1)-1]]` -/
def P9313451802729170390.Spec : Prop :=
  ∀ n, P9313451802729170390.a n = A270432 (n + 1)

end A270432

/-! ## A270432.P13607875076925483720

`A270434(n+1)+A270433(n+1)`
-/

namespace A270432.P13607875076925483720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270434 (n + 1) + A270433 (n + 1)

end

end A270432.P13607875076925483720

namespace A270432

/-- `A270434(n+1)+A270433(n+1)` -/
def P13607875076925483720.Spec : Prop :=
  ∀ n, P13607875076925483720.a n = A270432 (n + 1)

end A270432

/-! ## A270432.P11137402370285355066

`A048673(A064989(A270434(n+1)+n))`
-/

namespace A270432.P11137402370285355066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A064989 (A270434 (n + 1) + (n : ℤ)).toNat).toNat

end

end A270432.P11137402370285355066

namespace A270432

/-- `A048673(A064989(A270434(n+1)+n))` -/
def P11137402370285355066.Spec : Prop :=
  ∀ n, P11137402370285355066.a n = A270432 (n + 1)

end A270432

/-!
# A270433: a(n) = number of terms A270431 <= n; least monotonic left inverse of A270431.

The programs for A270433, the canonical program `A270433.P6851884317373318924` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270433 has offset 1).

The definition of A270433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270433.P6851884317373318924

`1-A270432(n+1)+n`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A270433

/-- `1-A270432(n+1)+n` -/
def P6851884317373318924.Spec : Prop :=
  ∀ n, P6851884317373318924.a n = A270433 (n + 1)

theorem P6851884317373318924.correct : P6851884317373318924.Spec := by
  intro n
  simp only [A270433, Nat.add_sub_cancel]

end A270433

/-! ## A270433.P18135649314517240095

`∑[char[A270431(n+1)-1]]`
-/

namespace A270433.P18135649314517240095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270431 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270433.P18135649314517240095

namespace A270433

/-- `∑[char[A270431(n+1)-1]]` -/
def P18135649314517240095.Spec : Prop :=
  ∀ n, (P18135649314517240095.a n : ℤ) = A270433 (n + 1)

end A270433

/-! ## A270433.P8096286106597250337

`(n+1-A270434(n+1))/2`
-/

namespace A270433.P8096286106597250337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A270434 (n + 1) : ℚ) / 2

end

end A270433.P8096286106597250337

namespace A270433

/-- `(n+1-A270434(n+1))/2` -/
def P8096286106597250337.Spec : Prop :=
  ∀ n, P8096286106597250337.a n = (A270433 (n + 1) : ℚ)

end A270433

/-! ## A270433.P3250562846175806259

`∑[and(1, A064216(n+1)+A048673(n+1))]`
-/

namespace A270433.P3250562846175806259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A064216 (n + 1) + A048673 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270433.P3250562846175806259

namespace A270433

/-- `∑[and(1, A064216(n+1)+A048673(n+1))]` -/
def P3250562846175806259.Spec : Prop :=
  ∀ n, P3250562846175806259.a n = A270433 (n + 1)

end A270433

/-! ## A270433.P14773007717031561273

`∑[(ceil(A249734(n+1)/6)+A243502(n+1)/2)%2]`
-/

namespace A270433.P14773007717031561273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((⌈(A249734 (n + 1) : ℚ) / 6⌉ : ℚ) + (A243502 (n + 1) : ℚ) / 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270433.P14773007717031561273

namespace A270433

/-- `∑[(ceil(A249734(n+1)/6)+A243502(n+1)/2)%2]` -/
def P14773007717031561273.Spec : Prop :=
  ∀ n, P14773007717031561273.a n = A270433 (n + 1)

end A270433

/-! ## A270433.P3986961020504071934

`∑[and(1, A064989(n+2)+A048673(n+1))]`
-/

namespace A270433.P3986961020504071934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A064989 (n + 2) + A048673 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270433.P3986961020504071934

namespace A270433

/-- `∑[and(1, A064989(n+2)+A048673(n+1))]` -/
def P3986961020504071934.Spec : Prop :=
  ∀ n, P3986961020504071934.a n = A270433 (n + 1)

end A270433

/-! ## A270433.P2171271137762452260

`∑[A000035(A064216(n+1)+A048673(n+1))]`
-/

namespace A270433.P2171271137762452260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A064216 (n + 1) + A048673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270433.P2171271137762452260

namespace A270433

/-- `∑[A000035(A064216(n+1)+A048673(n+1))]` -/
def P2171271137762452260.Spec : Prop :=
  ∀ n, P2171271137762452260.a n = A270433 (n + 1)

end A270433

/-!
# A270434: a(n) = A270432(n) - A270433(n).

The programs for A270434, the canonical program `A270434.P10423559976014811217` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270434 has offset 1).

The definition of A270434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A270432, A270433, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270434.P10423559976014811217

`A270432(n+1)-A270433(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A270434

/-- `A270432(n+1)-A270433(n+1)` -/
def P10423559976014811217.Spec : Prop :=
  ∀ n, P10423559976014811217.a n = A270434 (n + 1)

theorem P10423559976014811217.correct : P10423559976014811217.Spec := by
  intro n
  simp only [A270434, Nat.add_sub_cancel]

end A270434

/-! ## A270434.P8481291127170528741

`A003961(A064216(A270432(n+1)))-n`
-/

namespace A270434.P8481291127170528741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A064216 (A270432 (n + 1)).toNat).toNat - (n : ℤ)

end

end A270434.P8481291127170528741

namespace A270434

/-- `A003961(A064216(A270432(n+1)))-n` -/
def P8481291127170528741.Spec : Prop :=
  ∀ n, P8481291127170528741.a n = A270434 (n + 1)

end A270434

/-! ## A270434.P290206774950147356

`A270432(n+1)+A270432(n+1)-A048673(A064216(n+1))`
-/

namespace A270434.P290206774950147356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270432 (n + 1) + (A270432 (n + 1) - A048673 (A064216 (n + 1)).toNat)

end

end A270434.P290206774950147356

namespace A270434

/-- `A270432(n+1)+A270432(n+1)-A048673(A064216(n+1))` -/
def P290206774950147356.Spec : Prop :=
  ∀ n, P290206774950147356.a n = A270434 (n + 1)

end A270434

/-! ## A270434.P18331167207533103860

`A048673(A064216(n+1))-A270433(n+1)-A270433(n+1)`
-/

namespace A270434.P18331167207533103860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A064216 (n + 1)).toNat - A270433 (n + 1) - A270433 (n + 1)

end

end A270434.P18331167207533103860

namespace A270434

/-- `A048673(A064216(n+1))-A270433(n+1)-A270433(n+1)` -/
def P18331167207533103860.Spec : Prop :=
  ∀ n, P18331167207533103860.a n = A270434 (n + 1)

end A270434

/-! ## A270434.P1850391229491657199

`A270432(n+1)+A270432(n+1)-A245447(A245448(n+1))`
-/

namespace A270434.P1850391229491657199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270432 (n + 1) + (A270432 (n + 1) - A245447 (A245448 (n + 1)).toNat)

end

end A270434.P1850391229491657199

namespace A270434

/-- `A270432(n+1)+A270432(n+1)-A245447(A245448(n+1))` -/
def P1850391229491657199.Spec : Prop :=
  ∀ n, P1850391229491657199.a n = A270434 (n + 1)

end A270434

/-!
# A270435: Positions of zeros in A270434; numbers n for which A270432(n) = A270433(n).

The programs for A270435, there is no canonical definition to state claims against.
-/

/-! ## A270435.P8329009954538002972

`eq[0, A270434(A028310(n))]`
-/

namespace A270435.P8329009954538002972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270434 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A270435.P8329009954538002972

/-!
# A270436: a(1) = 1, for n > 1, a(n) = A020639(n)^A065621(A067029(n)) * a(A028234(n)).

The programs for A270436, there is no canonical definition to state claims against.
-/

/-! ## A270436.P14523556242599824039

`A367514(A356194(n+1)*A367513(n+1))`
-/

namespace A270436.P14523556242599824039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367514 (A356194 (n + 1) * A367513 (n + 1)).toNat

end

end A270436.P14523556242599824039

/-! ## A270436.P8444974199715803230

`A372328((n+1)*A102631(n+1))`
-/

namespace A270436.P8444974199715803230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372328 ((n + 1 : ℤ) * A102631 (n + 1)).toNat

end

end A270436.P8444974199715803230

/-! ## A270436.P16313662471691764724

`A003557(A331737(n+1)²*A003557(n+1))`
-/

namespace A270436.P16313662471691764724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A331737 (n + 1) ^ 2 * A003557 (n + 1)).toNat

end

end A270436.P16313662471691764724

/-! ## A270436.P11095278073122279959

`A011262(A350389(n+1)²*A003557(n+1))`
-/

namespace A270436.P11095278073122279959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A350389 (n + 1) ^ 2 * A003557 (n + 1)).toNat

end

end A270436.P11095278073122279959

/-! ## A270436.P16590746186884655200

`A372328(A356194((n+1)²)*A372328(n+1))`
-/

namespace A270436.P16590746186884655200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372328 (A356194 ((n + 1) ^ 2) * A372328 (n + 1)).toNat

end

end A270436.P16590746186884655200

/-!
# A270437: Multiplicative with a(p^e) = p^(e XOR 2e), where XOR is bitwise-xor.

The programs for A270437, there is no canonical definition to state claims against.
-/

/-! ## A270437.P11044475611952009663

`A268385(A268385(n+1)²)`
-/

namespace A270437.P11044475611952009663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268385 (n + 1) ^ 2).toNat

end

end A270437.P11044475611952009663

/-! ## A270437.P8354646364203735638

`A268385(A268385(n+1)^2)`
-/

namespace A270437.P8354646364203735638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268385 (n + 1) ^ 2).toNat

end

end A270437.P8354646364203735638

/-! ## A270437.P3345731204106636441

`A268385(A268385(n+1)*A268385(n+1))`
-/

namespace A270437.P3345731204106636441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268385 (n + 1) * A268385 (n + 1)).toNat

end

end A270437.P3345731204106636441

/-! ## A270437.P13677121305317234523

`(n+1)^3/A010149(A248057(n+1)²)`
-/

namespace A270437.P13677121305317234523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A010149 (A248057 (n + 1) ^ 2).toNat : ℚ)

end

end A270437.P13677121305317234523

/-! ## A270437.P2000794398498886551

`A356194(A355038(n+1))/(n+1)`
-/

namespace A270437.P2000794398498886551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356194 (A355038 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A270437.P2000794398498886551

/-!
# A270438: a(n) is the number of entries == 1 mod 4 in row n of Pascal's triangle.

The programs for A270438, the canonical program `A270438.P3486021905368719773` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270438 has offset 0).

The definition of A270438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270438.P7262507672282792040

`A001316(n)/(2-char[A003714(n)])`
-/

namespace A270438.P7262507672282792040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A270438.P7262507672282792040

namespace A270438

/-- `A001316(n)/(2-char[A003714(n)])` -/
def P7262507672282792040.Spec : Prop :=
  ∀ n, P7262507672282792040.a n = (A270438 n : ℚ)

end A270438

/-! ## A270438.P18166065790382219593

`2^(A000120(n)-char[A004780(n+1)])`
-/

namespace A270438.P18166065790382219593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A270438.P18166065790382219593

namespace A270438

/-- `2^(A000120(n)-char[A004780(n+1)])` -/
def P18166065790382219593.Spec : Prop :=
  ∀ n, P18166065790382219593.a n = (A270438 n : ℚ)

end A270438

/-! ## A270438.P3365154420900343026

`A011782(A085357(n)+A000120(n))`
-/

namespace A270438.P3365154420900343026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A085357 n + A000120 n).toNat

end

end A270438.P3365154420900343026

namespace A270438

/-- `A011782(A085357(n)+A000120(n))` -/
def P3365154420900343026.Spec : Prop :=
  ∀ n, P3365154420900343026.a n = A270438 n

end A270438

/-! ## A270438.P3486021905368719773

`A011782(A014081(n))*A277561(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A270438

/-- `A011782(A014081(n))*A277561(n)` -/
def P3486021905368719773.Spec : Prop :=
  ∀ n, P3486021905368719773.a n = A270438 n

theorem P3486021905368719773.correct : P3486021905368719773.Spec := by
  intro n
  simp only [A270438]

end A270438

/-! ## A270438.P7708551195455548772

`A001316(n)/A048896(A245195(n))`
-/

namespace A270438.P7708551195455548772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / (A048896 (A245195 n).toNat : ℚ)

end

end A270438.P7708551195455548772

namespace A270438

/-- `A001316(n)/A048896(A245195(n))` -/
def P7708551195455548772.Spec : Prop :=
  ∀ n, P7708551195455548772.a n = (A270438 n : ℚ)

end A270438

/-! ## A270438.P13754231091673784188

`A011782(A000120(n)+char[A003714(n)])`
-/

namespace A270438.P13754231091673784188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000120 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A270438.P13754231091673784188

namespace A270438

/-- `A011782(A000120(n)+char[A003714(n)])` -/
def P13754231091673784188.Spec : Prop :=
  ∀ n, P13754231091673784188.a n = A270438 n

end A270438

/-! ## A270438.P2098105327838150397

`A001316(n)/A277561(A001316(n)-A277561(n))`
-/

namespace A270438.P2098105327838150397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / (A277561 (A001316 n - A277561 n).toNat : ℚ)

end

end A270438.P2098105327838150397

namespace A270438

/-- `A001316(n)/A277561(A001316(n)-A277561(n))` -/
def P2098105327838150397.Spec : Prop :=
  ∀ n, P2098105327838150397.a n = (A270438 n : ℚ)

end A270438

/-! ## A270438.P16929405039502391594

`A001316(n)/(A385393(n)-A033264(n))`
-/

namespace A270438.P16929405039502391594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 n : ℚ) / (A385393 n - A033264 n : ℚ)

end

end A270438.P16929405039502391594

namespace A270438

/-- `A001316(n)/(A385393(n)-A033264(n))` -/
def P16929405039502391594.Spec : Prop :=
  ∀ n, P16929405039502391594.a n = (A270438 n : ℚ)

end A270438

/-! ## A270438.P8091862300276207811

`A048896(2*n)/A048896(A245195(n))`
-/

namespace A270438.P8091862300276207811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048896 (2 * n) : ℚ) / (A048896 (A245195 n).toNat : ℚ)

end

end A270438.P8091862300276207811

namespace A270438

/-- `A048896(2*n)/A048896(A245195(n))` -/
def P8091862300276207811.Spec : Prop :=
  ∀ n, P8091862300276207811.a n = (A270438 n : ℚ)

end A270438

/-! ## A270438.P13187781855710194039

`A363827(A253064(n))`
-/

namespace A270438.P13187781855710194039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363827 (A253064 n).toNat

end

end A270438.P13187781855710194039

namespace A270438

/-- `A363827(A253064(n))` -/
def P13187781855710194039.Spec : Prop :=
  ∀ n, P13187781855710194039.a n = A270438 n

end A270438

/-!
# A270439: Alternating sum of nonsquares (A000037).

The programs for A270439, the canonical program `A270439.P10839676929564506140` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270439 has offset 1).

The definition of A270439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270439.P10839676929564506140

`∑[(-1)^n*comp[n²]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270439

/-- `∑[(-1)^n*comp[n²]]` -/
def P10839676929564506140.Spec : Prop :=
  ∀ n, P10839676929564506140.a n = A270439 (n + 1)

theorem P10839676929564506140.correct : P10839676929564506140.Spec := by
  intro n
  simp only [A270439, Nat.add_sub_cancel]

end A270439

/-! ## A270439.P17097016762794378776

`floor(∑[(-1)^n/acot(comp[n²])])`
-/

namespace A270439.P17097016762794378776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℝ) / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A270439.P17097016762794378776

namespace A270439

/-- `floor(∑[(-1)^n/acot(comp[n²])])` -/
def P17097016762794378776.Spec : Prop :=
  ∀ n, P17097016762794378776.a n = A270439 (n + 1)

end A270439

/-! ## A270439.P13821061489437906057

`(n+1)%2+round(sqrt(n+1))-a(n-1)` with `a(0)=2`
-/

namespace A270439.P13821061489437906057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (((n + 1) % 2 : ℕ) : ℤ) + (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - a (n - 1))

end

end A270439.P13821061489437906057

namespace A270439

/-- `(n+1)%2+round(sqrt(n+1))-a(n-1)` -/
def P13821061489437906057.Spec : Prop :=
  ∀ n, P13821061489437906057.a n = A270439 (n + 1)

end A270439

/-! ## A270439.P16294617419027329775

`round(sqrt(n+1))+1-and(1, n)-a(n-1)` with `a(0)=2`
-/

namespace A270439.P16294617419027329775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) + 1 - (Nat.land 1 n : ℤ) - a (n - 1)

end

end A270439.P16294617419027329775

namespace A270439

/-- `round(sqrt(n+1))+1-and(1, n)-a(n-1)` -/
def P16294617419027329775.Spec : Prop :=
  ∀ n, P16294617419027329775.a n = A270439 (n + 1)

end A270439

/-! ## A270439.P2596297065835826227

`round(∑[comp[n²]/A033999(n)])`
-/

namespace A270439.P2596297065835826227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270439.P2596297065835826227

namespace A270439

/-- `round(∑[comp[n²]/A033999(n)])` -/
def P2596297065835826227.Spec : Prop :=
  ∀ n, P2596297065835826227.a n = A270439 (n + 1)

end A270439

/-! ## A270439.P13236334243905157413

`ceil(∑[comp[n²]/A009001(2*n)])`
-/

namespace A270439.P13236334243905157413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) / (A009001 (2 * n) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A270439.P13236334243905157413

namespace A270439

/-- `ceil(∑[comp[n²]/A009001(2*n)])` -/
def P13236334243905157413.Spec : Prop :=
  ∀ n, P13236334243905157413.a n = A270439 (n + 1)

end A270439

/-! ## A270439.P6155190139699251123

`a(n-1)+(-1)^n*A000037(n+1)` with `a(0)=2`
-/

namespace A270439.P6155190139699251123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (-1) ^ n * A000037 (n + 1)

end

end A270439.P6155190139699251123

namespace A270439

/-- `a(n-1)+(-1)^n*A000037(n+1)` -/
def P6155190139699251123.Spec : Prop :=
  ∀ n, P6155190139699251123.a n = A270439 (n + 1)

end A270439

/-! ## A270439.P3101327591471175146

`floor(∑[A000037(n+1)/A033999(n)])`
-/

namespace A270439.P3101327591471175146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A270439.P3101327591471175146

namespace A270439

/-- `floor(∑[A000037(n+1)/A033999(n)])` -/
def P3101327591471175146.Spec : Prop :=
  ∀ n, P3101327591471175146.a n = A270439 (n + 1)

end A270439

/-!
# A270440: Least k such that binomial(k, 2) >= binomial(2*n, n).

The programs for A270440, the canonical program `A270440.P8383876616977072034` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270440 has offset 0).

The definition of A270440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270440.P8383876616977072034

`round(sqrt(A028329(n)))+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A270440

/-- `round(sqrt(A028329(n)))+1` -/
def P8383876616977072034.Spec : Prop :=
  ∀ n, P8383876616977072034.a n = A270440 n

theorem P8383876616977072034.correct : P8383876616977072034.Spec := by
  intro n
  simp only [A270440]

end A270440

/-! ## A270440.P6477370958948997914

`round(sqrt(A100320(n)))+1`
-/

namespace A270440.P6477370958948997914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A100320 n : ℝ)) + 1

end

end A270440.P6477370958948997914

namespace A270440

/-- `round(sqrt(A100320(n)))+1` -/
def P6477370958948997914.Spec : Prop :=
  ∀ n, P6477370958948997914.a n = A270440 n

end A270440

/-! ## A270440.P17289073819228085843

`round(sqrt(A134760(n)))+1`
-/

namespace A270440.P17289073819228085843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A134760 n : ℝ)) + 1

end

end A270440.P17289073819228085843

namespace A270440

/-- `round(sqrt(A134760(n)))+1` -/
def P17289073819228085843.Spec : Prop :=
  ∀ n, P17289073819228085843.a n = A270440 n

end A270440

/-! ## A270440.P18280434964624670733

`round(sqrt(2*A000984(n)))+1`
-/

namespace A270440.P18280434964624670733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A000984 n : ℝ)) + 1

end

end A270440.P18280434964624670733

namespace A270440

/-- `round(sqrt(2*A000984(n)))+1` -/
def P18280434964624670733.Spec : Prop :=
  ∀ n, P18280434964624670733.a n = A270440 n

end A270440

/-! ## A270440.P8663842143045937061

`round(sqrt(A063886(2*n+1)))+1`
-/

namespace A270440.P8663842143045937061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A063886 (2 * n + 1) : ℝ)) + 1

end

end A270440.P8663842143045937061

namespace A270440

/-- `round(sqrt(A063886(2*n+1)))+1` -/
def P8663842143045937061.Spec : Prop :=
  ∀ n, P8663842143045937061.a n = A270440 n

end A270440

/-! ## A270440.P6539970072168743383

`round(sqrt(2*C(2*n, n)))+1`
-/

namespace A270440.P6539970072168743383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * Nat.choose (2 * n) n : ℝ)) + 1

end

end A270440.P6539970072168743383

namespace A270440

/-- `round(sqrt(2*C(2*n, n)))+1` -/
def P6539970072168743383.Spec : Prop :=
  ∀ n, P6539970072168743383.a n = A270440 n

end A270440

/-!
# A270443: Least m such that d(n^m) > n, where d(n) is the number of divisors of n.

The programs for A270443, there is no canonical definition to state claims against.
-/

/-! ## A270443.P16919564457620247566

`or(A037824(A000079(n)), A108077(n+1))`
-/

namespace A270443.P16919564457620247566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037824 (A000079 n).toNat) (A108077 (n + 1))

end

end A270443.P16919564457620247566

/-! ## A270443.P14650227154267473748

`or(A108077(n+1), A141743(A000096(n)))`
-/

namespace A270443.P14650227154267473748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108077 (n + 1)) (A141743 (A000096 n).toNat)

end

end A270443.P14650227154267473748

/-! ## A270443.P7792511903329932491

`p?[A064881(n+1)*A256268(n)]`
-/

namespace A270443.P7792511903329932491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) * A256268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270443.P7792511903329932491

/-! ## A270443.P17853606230283338524

`p?[A064881(n+1)*A257565(n)]`
-/

namespace A270443.P17853606230283338524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) * A257565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270443.P17853606230283338524

/-!
# A270444: Expansion of g.f. 2*(1 + 2*x)/(1 - 8*x + 4*x^2).

The programs for A270444, the canonical program `A270444.P3695728822751672526` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270444 has offset 1).

The definition of A270444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270444.P3695728822751672526

`2*A107903(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A270444

/-- `2*A107903(n)` -/
def P3695728822751672526.Spec : Prop :=
  ∀ n, P3695728822751672526.a n = A270444 (n + 1)

theorem P3695728822751672526.correct : P3695728822751672526.Spec := by
  intro n
  simp only [A270444, Nat.add_sub_cancel]

end A270444

/-! ## A270444.P6457475798024172449

`2^(n+1)*∑[ceil((sqrt(3)+2)^n)]`
-/

namespace A270444.P6457475798024172449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (3 : ℝ) + 2) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270444.P6457475798024172449

namespace A270444

/-- `2^(n+1)*∑[ceil((sqrt(3)+2)^n)]` -/
def P6457475798024172449.Spec : Prop :=
  ∀ n, P6457475798024172449.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P2237336546223561845

`A080040(Δ[n²])`
-/

namespace A270444.P2237336546223561845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A270444.P2237336546223561845

namespace A270444

/-- `A080040(Δ[n²])` -/
def P2237336546223561845.Spec : Prop :=
  ∀ n, P2237336546223561845.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P4408819662889174708

`A080041(Δ[n²])`
-/

namespace A270444.P4408819662889174708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080041 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A270444.P4408819662889174708

namespace A270444

/-- `A080041(Δ[n²])` -/
def P4408819662889174708.Spec : Prop :=
  ∀ n, P4408819662889174708.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P16400413894153637224

`∑[2*A121907(2*n)]`
-/

namespace A270444.P16400413894153637224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121907 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270444.P16400413894153637224

namespace A270444

/-- `∑[2*A121907(2*n)]` -/
def P16400413894153637224.Spec : Prop :=
  ∀ n, P16400413894153637224.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P5394361446876428874

`lcm(2, A080040(2*n+1))`
-/

namespace A270444.P5394361446876428874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A080040 (2 * n + 1))

end

end A270444.P5394361446876428874

namespace A270444

/-- `lcm(2, A080040(2*n+1))` -/
def P5394361446876428874.Spec : Prop :=
  ∀ n, (P5394361446876428874.a n : ℤ) = A270444 (n + 1)

end A270444

/-! ## A270444.P7178076867542398800

`∑[A083337(2*n+1)]-1`
-/

namespace A270444.P7178076867542398800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A270444.P7178076867542398800

namespace A270444

/-- `∑[A083337(2*n+1)]-1` -/
def P7178076867542398800.Spec : Prop :=
  ∀ n, P7178076867542398800.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P11626766120785070485

`∑[3*A002605(2*n+1)-1]+n`
-/

namespace A270444.P11626766120785070485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002605 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A270444.P11626766120785070485

namespace A270444

/-- `∑[3*A002605(2*n+1)-1]+n` -/
def P11626766120785070485.Spec : Prop :=
  ∀ n, P11626766120785070485.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P2013075877352497130

`record[A080040(A026741(n))]`
-/

namespace A270444.P2013075877352497130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080040 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270444.P2013075877352497130

namespace A270444

/-- `record[A080040(A026741(n))]` -/
def P2013075877352497130.Spec : Prop :=
  ∀ n, P2013075877352497130.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P3321129981723353847

`record[2*A026150(A152204(n))]`
-/

namespace A270444.P3321129981723353847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026150 (A152204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270444.P3321129981723353847

namespace A270444

/-- `record[2*A026150(A152204(n))]` -/
def P3321129981723353847.Spec : Prop :=
  ∀ n, P3321129981723353847.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P4991388939687465082

`A083337(2*n)+A052945(2*n+1)`
-/

namespace A270444.P4991388939687465082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 (2 * n) + A052945 (2 * n + 1)

end

end A270444.P4991388939687465082

namespace A270444

/-- `A083337(2*n)+A052945(2*n+1)` -/
def P4991388939687465082.Spec : Prop :=
  ∀ n, P4991388939687465082.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P16625515778182732070

`A028859(2*n+1)-A028860(2*n+1)`
-/

namespace A270444.P16625515778182732070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (2 * n + 1) - A028860 (2 * n + 1)

end

end A270444.P16625515778182732070

namespace A270444

/-- `A028859(2*n+1)-A028860(2*n+1)` -/
def P16625515778182732070.Spec : Prop :=
  ∀ n, P16625515778182732070.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P7966582175200049865

`A080882(2*n+1)-A080876(2*n+1)`
-/

namespace A270444.P7966582175200049865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080882 (2 * n + 1) - A080876 (2 * n + 1)

end

end A270444.P7966582175200049865

namespace A270444

/-- `A080882(2*n+1)-A080876(2*n+1)` -/
def P7966582175200049865.Spec : Prop :=
  ∀ n, P7966582175200049865.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P4458462268397835580

`A287594(2*n+1)-A052531(2*n+1)`
-/

namespace A270444.P4458462268397835580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287594 (2 * n + 1) - A052531 (2 * n + 1)

end

end A270444.P4458462268397835580

namespace A270444

/-- `A287594(2*n+1)-A052531(2*n+1)` -/
def P4458462268397835580.Spec : Prop :=
  ∀ n, P4458462268397835580.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P5748697184599129952

`A000051(n+1)*A001834(n)-A001834(n)`
-/

namespace A270444.P5748697184599129952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) * A001834 n - A001834 n

end

end A270444.P5748697184599129952

namespace A270444

/-- `A000051(n+1)*A001834(n)-A001834(n)` -/
def P5748697184599129952.Spec : Prop :=
  ∀ n, P5748697184599129952.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P17979348397650892057

`Δ[2*A028860(2*n+1)]`
-/

namespace A270444.P17979348397650892057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028860 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270444.P17979348397650892057

namespace A270444

/-- `Δ[2*A028860(2*n+1)]` -/
def P17979348397650892057.Spec : Prop :=
  ∀ n, P17979348397650892057.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P7628157289670310363

`Δ[2*A080876(2*n+1)]`
-/

namespace A270444.P7628157289670310363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080876 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270444.P7628157289670310363

namespace A270444

/-- `Δ[2*A080876(2*n+1)]` -/
def P7628157289670310363.Spec : Prop :=
  ∀ n, P7628157289670310363.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P13858154144525894512

`Δ[A090965(n)]-A090965(n)`
-/

namespace A270444.P13858154144525894512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A090965 n

end

end A270444.P13858154144525894512

namespace A270444

/-- `Δ[A090965(n)]-A090965(n)` -/
def P13858154144525894512.Spec : Prop :=
  ∀ n, P13858154144525894512.a n = A270444 (n + 1)

end A270444

/-! ## A270444.P15166129854075143442

`A090965(n+1)-2*A090965(n)`
-/

namespace A270444.P15166129854075143442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090965 (n + 1) - 2 * A090965 n

end

end A270444.P15166129854075143442

namespace A270444

/-- `A090965(n+1)-2*A090965(n)` -/
def P15166129854075143442.Spec : Prop :=
  ∀ n, P15166129854075143442.a n = A270444 (n + 1)

end A270444

/-!
# A270445: Expansion of 2*x*(1+4*x) / (1-12*x+16*x^2).

The programs for A270445, the canonical program `A270445.P10312145370042509948` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270445 has offset 1).

The definition of A270445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270445.P10312145370042509948

`12*a(n-1)-16*a(n-2)` with `a(0)=2, a(1)=32`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270445

/-- `12*a(n-1)-16*a(n-2)` -/
def P10312145370042509948.Spec : Prop :=
  ∀ n, P10312145370042509948.a n = A270445 (n + 1)

theorem P10312145370042509948.correct : P10312145370042509948.Spec := by
  intro n
  simp only [A270445, Nat.add_sub_cancel]

end A270445

/-! ## A270445.P5708675745010319611

`2*4^n*floor(ϕ^(2*n+1))`
-/

namespace A270445.P5708675745010319611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) * ⌊Real.goldenRatio ^ (2 * n + 1)⌋

end

end A270445.P5708675745010319611

namespace A270445

/-- `2*4^n*floor(ϕ^(2*n+1))` -/
def P5708675745010319611.Spec : Prop :=
  ∀ n, P5708675745010319611.a n = A270445 (n + 1)

end A270445

/-! ## A270445.P4518256973299504888

`A087131(Δ[n²])`
-/

namespace A270445.P4518256973299504888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A270445.P4518256973299504888

namespace A270445

/-- `A087131(Δ[n²])` -/
def P4518256973299504888.Spec : Prop :=
  ∀ n, P4518256973299504888.a n = A270445 (n + 1)

end A270445

/-! ## A270445.P18091641897240700507

`A272263(Δ[n²])+1`
-/

namespace A270445.P18091641897240700507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272263 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A270445.P18091641897240700507

namespace A270445

/-- `A272263(Δ[n²])+1` -/
def P18091641897240700507.Spec : Prop :=
  ∀ n, P18091641897240700507.a n = A270445 (n + 1)

end A270445

/-! ## A270445.P17171560257291725042

`lcm(2, A087131(2*n+1))`
-/

namespace A270445.P17171560257291725042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A087131 (2 * n + 1))

end

end A270445.P17171560257291725042

namespace A270445

/-- `lcm(2, A087131(2*n+1))` -/
def P17171560257291725042.Spec : Prop :=
  ∀ n, (P17171560257291725042.a n : ℤ) = A270445 (n + 1)

end A270445

/-! ## A270445.P13339113327848061226

`abs(Δ[2*A087205(2*n)])`
-/

namespace A270445.P13339113327848061226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087205 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A270445.P13339113327848061226

namespace A270445

/-- `abs(Δ[2*A087205(2*n)])` -/
def P13339113327848061226.Spec : Prop :=
  ∀ n, P13339113327848061226.a n = A270445 (n + 1)

end A270445

/-! ## A270445.P10361433094645365041

`Δ[2*A319196(2*n+1)]`
-/

namespace A270445.P10361433094645365041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319196 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270445.P10361433094645365041

namespace A270445

/-- `Δ[2*A319196(2*n+1)]` -/
def P10361433094645365041.Spec : Prop :=
  ∀ n, P10361433094645365041.a n = A270445 (n + 1)

end A270445

/-! ## A270445.P17848731406399900397

`A209084(2*n)+A063727(2*n+1)`
-/

namespace A270445.P17848731406399900397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209084 (2 * n) + A063727 (2 * n + 1)

end

end A270445.P17848731406399900397

namespace A270445

/-- `A209084(2*n)+A063727(2*n+1)` -/
def P17848731406399900397.Spec : Prop :=
  ∀ n, P17848731406399900397.a n = A270445 (n + 1)

end A270445

/-! ## A270445.P58078431730693161

`A063782(2*n+1)-A087205(2*n)`
-/

namespace A270445.P58078431730693161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 (2 * n + 1) - A087205 (2 * n)

end

end A270445.P58078431730693161

namespace A270445

/-- `A063782(2*n+1)-A087205(2*n)` -/
def P58078431730693161.Spec : Prop :=
  ∀ n, P58078431730693161.a n = A270445 (n + 1)

end A270445

/-!
# A270446: Positive even numbers which are neither of the form p + 2^m + 1 nor of the form p + 2^m - 1 with p prime.

The programs for A270446, there is no canonical definition to state claims against.
-/

/-! ## A270446.P15087248041420015419

`A330284(n+1)+1`
-/

namespace A270446.P15087248041420015419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330284 (n + 1) + 1

end

end A270446.P15087248041420015419

/-! ## A270446.P11109324622124184238

`abs(xor(-1, A330284(n-or(n, -1))))`
-/

namespace A270446.P11109324622124184238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (A330284 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat)|

end

end A270446.P11109324622124184238

/-! ## A270446.P8126446557071829505

`∩[A006285(n+1)-1, A006286(n+1)]`
-/

namespace A270446.P8126446557071829505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006285 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270446.P8126446557071829505

/-! ## A270446.P3704085382783962018

`A092486(A330284(n+1))`
-/

namespace A270446.P3704085382783962018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A330284 (n + 1)).toNat

end

end A270446.P3704085382783962018

/-! ## A270446.P13016716883053387571

`A328399(2*A330284(n-or(n, -1)))`
-/

namespace A270446.P13016716883053387571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A330284 ((n : ℤ) - Int.lor (n : ℤ) (-1)).toNat).toNat

end

end A270446.P13016716883053387571

/-!
# A270447: Binomial transform(2) of Catalan numbers.

The programs for A270447, there is no canonical definition to state claims against.
-/

/-! ## A270447.P15693709941874111979

`A125177(2*(n+1)²)`
-/

namespace A270447.P15693709941874111979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 (2 * (n + 1) ^ 2)

end

end A270447.P15693709941874111979

/-! ## A270447.P3159157924336762305

`record[Δ[A125177(A080827(n+1))]]`
-/

namespace A270447.P3159157924336762305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 (A080827 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270447.P3159157924336762305

/-! ## A270447.P10015852665281642833

`record[A125177(A001105(∑[(-1)^(n%3)]))]`
-/

namespace A270447.P10015852665281642833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 (A001105 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270447.P10015852665281642833

/-! ## A270447.P10089450144670593488

`record[A125177(A001105(C(n², 3)%(n+1)))]`
-/

namespace A270447.P10089450144670593488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 (A001105 (Nat.choose (n ^ 2) 3 % (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270447.P10089450144670593488

/-! ## A270447.P4292698784038735360

`record[A125177(A000982(n)%A099392(n+1))]`
-/

namespace A270447.P4292698784038735360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 (Int.tmod (A000982 n) (A099392 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270447.P4292698784038735360

/-!
# A270448: Numbers k such that 10^k - 8001 is prime.

The programs for A270448, there is no canonical definition to state claims against.
-/

/-! ## A270448.P1380341648865634956

`eq[A242498(n), A316342(A114225(n))]`
-/

namespace A270448.P1380341648865634956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242498 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316342 (A114225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270448.P1380341648865634956

/-!
# A270449: Odd integers n such that the sum of the Pell numbers A000129(0) + ... + A000129(n-1) is divisible by n*(n+1)/2.

The programs for A270449, there is no canonical definition to state claims against.
-/

/-! ## A270449.P96304694658490774

`A068228(eq[A000720(n+1), A179833(n+1)])`
-/

namespace A270449.P96304694658490774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A270449.P96304694658490774

/-!
# A270450: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A270450, there is no canonical definition to state claims against.
-/

/-! ## A270450.P7727913925397684804

`A270453(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270450.P7727913925397684804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270453 (n - 1) + a (n - 1)

end

end A270450.P7727913925397684804

/-! ## A270450.P12397950387910098888

`∑[∏{e}[A006530(n+1), A270453(n-#)]]`
-/

namespace A270450.P12397950387910098888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A270453 (n - Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270450.P12397950387910098888

/-! ## A270450.P15180506353240055366

`∑[∏{e}[A027748(n+1), A270453(n-#)]]`
-/

namespace A270450.P15180506353240055366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A270453 (n - Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270450.P15180506353240055366

/-! ## A270450.P3141465236692966658

`Δ[A270452(n)]-A270453(n)`
-/

namespace A270450.P3141465236692966658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270453 n

end

end A270450.P3141465236692966658

/-! ## A270450.P15479800669198457666

`A270452(n+1)-(A270453(n)+A270452(n))`
-/

namespace A270450.P15479800669198457666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270452 (n + 1) - (A270453 n + A270452 n)

end

end A270450.P15479800669198457666

/-! ## A270450.P11847466579628719135

`A270453(n-1)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A270450.P11847466579628719135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270453 (n - 1) - A001489 (a (n - 1)).toNat

end

end A270450.P11847466579628719135

/-!
# A270451: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A270451, there is no canonical definition to state claims against.
-/

/-! ## A270451.P15756949363017099470

`A270450(2^n-1)`
-/

namespace A270451.P15756949363017099470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 (2 ^ n - 1)

end

end A270451.P15756949363017099470

/-! ## A270451.P7309479576814291034

`record[A270450(A269386(n+1))]`
-/

namespace A270451.P7309479576814291034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 (A269386 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270451.P7309479576814291034

/-! ## A270451.P775154254031037352

`record[gcd(A080791(n), A270450(n))]`
-/

namespace A270451.P775154254031037352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080791 n) (A270450 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270451.P775154254031037352

/-! ## A270451.P11466924682642536338

`record[A270450(n)/A000265(n+1)]`
-/

namespace A270451.P11466924682642536338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270450 n : ℚ) / (A000265 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270451.P11466924682642536338

/-! ## A270451.P7728547743166135347

`record[root(A270450(n), A003602(n+1))]`
-/

namespace A270451.P7728547743166135347
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A270450 n : ℝ) ^ (1 / (A003602 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270451.P7728547743166135347

/-!
# A270452: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A270452, there is no canonical definition to state claims against.
-/

/-! ## A270452.P18288661376291570480

`∑[A270450(n)]`
-/

namespace A270452.P18288661376291570480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270452.P18288661376291570480

/-! ## A270452.P12380077124940603942

`A270450(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A270452.P12380077124940603942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270450 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A270452.P12380077124940603942

/-! ## A270452.P12837708047814974367

`a(n-1)+A270450(n)%A008778(n)` with `a(0)=1`
-/

namespace A270452.P12837708047814974367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270450 n) (A008778 n)

end

end A270452.P12837708047814974367

/-! ## A270452.P166832316054140961

`a(n-1)+char[A004442(n)]*A270450(n)` with `a(0)=1`
-/

namespace A270452.P166832316054140961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A270450 n

end

end A270452.P166832316054140961

/-! ## A270452.P8822846866659001991

`∑[A270453(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270452.P8822846866659001991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270453 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270452.P8822846866659001991

/-! ## A270452.P13289837534062005293

`a(n-1)+A001065(A005384(n+1))*A270450(n)` with `a(0)=1`
-/

namespace A270452.P13289837534062005293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001065 (A005384 (n + 1)).toNat * A270450 n

end

end A270452.P13289837534062005293

/-! ## A270452.P13946983126194711770

`a(n-1)-A008683(A019546(n+1))*A270450(n)` with `a(0)=1`
-/

namespace A270452.P13946983126194711770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A008683 (A019546 (n + 1)).toNat * A270450 n

end

end A270452.P13946983126194711770

/-!
# A270453: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 161", based on the 5-celled von Neumann neighborhood.

The programs for A270453, there is no canonical definition to state claims against.
-/

/-! ## A270453.P12293092620606517306

`Δ[A270450(n)]`
-/

namespace A270453.P12293092620606517306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270453.P12293092620606517306

/-! ## A270453.P13915233941382342779

`A270450(n+1)-A270450(n)`
-/

namespace A270453.P13915233941382342779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 (n + 1) - A270450 n

end

end A270453.P13915233941382342779

/-! ## A270453.P15316606565762847044

`A270450(n+1)+A270450(n)*A339791(A055377(n+4))`
-/

namespace A270453.P15316606565762847044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 (n + 1) + A270450 n * A339791 (A055377 (n + 4)).toNat

end

end A270453.P15316606565762847044

/-! ## A270453.P3824544831787439738

`A270450(n+1)+A270450(n)*A307428(A000040(n+1))`
-/

namespace A270453.P3824544831787439738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 (n + 1) + A270450 n * A307428 (A000040 (n + 1)).toNat

end

end A270453.P3824544831787439738

/-! ## A270453.P8285335057133620840

`A270450(n+1)+A270450(n)*A325970(A185269(n+1))`
-/

namespace A270453.P8285335057133620840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270450 (n + 1) + A270450 n * A325970 (A185269 (n + 1)).toNat

end

end A270453.P8285335057133620840

/-!
# A270454: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 163", based on the 5-celled von Neumann neighborhood.

The programs for A270454, the canonical program `A270454.P12735755009287333969` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270454 has offset 0).

The definition of A270454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270454.P12735755009287333969

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=33, a(4)=25, a(5)=85`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270454

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P12735755009287333969.Spec : Prop :=
  ∀ n, P12735755009287333969.a n = A270454 n

theorem P12735755009287333969.correct : P12735755009287333969.Spec := by
  intro n
  simp only [A270454]

end A270454

/-! ## A270454.P5337659389780157045

`or(1, n)*Δ[n*or(1, n)]`
-/

namespace A270454.P5337659389780157045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A270454.P5337659389780157045

namespace A270454

/-- `or(1, n)*Δ[n*or(1, n)]` -/
def P5337659389780157045.Spec : Prop :=
  ∀ n, P5337659389780157045.a n = A270454 n

end A270454

/-! ## A270454.P11526252848150671062

`2*n+3^(n%2)*or(1, n²)`
-/

namespace A270454.P11526252848150671062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3 ^ (n % 2) * Nat.lor 1 (n ^ 2)

end

end A270454.P11526252848150671062

namespace A270454

/-- `2*n+3^(n%2)*or(1, n²)` -/
def P11526252848150671062.Spec : Prop :=
  ∀ n, (P11526252848150671062.a n : ℤ) = A270454 n

end A270454

/-! ## A270454.P11028699931150861829

`gcd(2*n², (n+1)%2)+n*(n+2)`
-/

namespace A270454.P11028699931150861829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n ^ 2) ((n + 1) % 2) + n * (n + 2)

end

end A270454.P11028699931150861829

namespace A270454

/-- `gcd(2*n², (n+1)%2)+n*(n+2)` -/
def P11028699931150861829.Spec : Prop :=
  ∀ n, (P11028699931150861829.a n : ℤ) = A270454 n

end A270454

/-! ## A270454.P14250759580656698653

`Δ[n*or(1, n)]*A109613(n)`
-/

namespace A270454.P14250759580656698653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A109613 n

end

end A270454.P14250759580656698653

namespace A270454

/-- `Δ[n*or(1, n)]*A109613(n)` -/
def P14250759580656698653.Spec : Prop :=
  ∀ n, P14250759580656698653.a n = A270454 n

end A270454

/-! ## A270454.P16970903990057843497

`A270456(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270454.P16970903990057843497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270456 (n - 1) + a (n - 1)

end

end A270454.P16970903990057843497

namespace A270454

/-- `A270456(n-1)+a(n-1)` -/
def P16970903990057843497.Spec : Prop :=
  ∀ n, P16970903990057843497.a n = A270454 n

end A270454

/-! ## A270454.P7315432239954670978

`or(1, (n+1)*(A266072(n)+n))`
-/

namespace A270454.P7315432239954670978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 1 : ℤ) * (A266072 n + (n : ℤ)))

end

end A270454.P7315432239954670978

namespace A270454

/-- `or(1, (n+1)*(A266072(n)+n))` -/
def P7315432239954670978.Spec : Prop :=
  ∀ n, P7315432239954670978.a n = A270454 n

end A270454

/-! ## A270454.P15590500831199719619

`or(1, n*(A266073(n+1)+n))`
-/

namespace A270454.P15590500831199719619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * (A266073 (n + 1) + (n : ℤ)))

end

end A270454.P15590500831199719619

namespace A270454

/-- `or(1, n*(A266073(n+1)+n))` -/
def P15590500831199719619.Spec : Prop :=
  ∀ n, P15590500831199719619.a n = A270454 n

end A270454

/-! ## A270454.P14026362305013272491

`(A123168(n+2)-n)*or(1, n)`
-/

namespace A270454.P14026362305013272491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123168 (n + 2) - (n : ℤ)) * (Nat.lor 1 n : ℤ)

end

end A270454.P14026362305013272491

namespace A270454

/-- `(A123168(n+2)-n)*or(1, n)` -/
def P14026362305013272491.Spec : Prop :=
  ∀ n, P14026362305013272491.a n = A270454 n

end A270454

/-! ## A270454.P2294280289335724598

`A201271(A047238(n+1))`
-/

namespace A270454.P2294280289335724598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201271 (A047238 (n + 1)).toNat

end

end A270454.P2294280289335724598

namespace A270454

/-- `A201271(A047238(n+1))` -/
def P2294280289335724598.Spec : Prop :=
  ∀ n, P2294280289335724598.a n = A270454 n

end A270454

/-! ## A270454.P3343050855295099869

`A367965(A042963(n+1))`
-/

namespace A270454.P3343050855295099869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367965 (A042963 (n + 1)).toNat

end

end A270454.P3343050855295099869

namespace A270454

/-- `A367965(A042963(n+1))` -/
def P3343050855295099869.Spec : Prop :=
  ∀ n, P3343050855295099869.a n = A270454 n

end A270454

/-! ## A270454.P3139590942269224678

`∑[A022998(n)]+A266981(n)²`
-/

namespace A270454.P3139590942269224678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A266981 n ^ 2

end

end A270454.P3139590942269224678

namespace A270454

/-- `∑[A022998(n)]+A266981(n)²` -/
def P3139590942269224678.Spec : Prop :=
  ∀ n, P3139590942269224678.a n = A270454 n

end A270454

/-! ## A270454.P8027272341035365755

`A001082(n+1)+A266981(n)²`
-/

namespace A270454.P8027272341035365755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) + A266981 n ^ 2

end

end A270454.P8027272341035365755

namespace A270454

/-- `A001082(n+1)+A266981(n)²` -/
def P8027272341035365755.Spec : Prop :=
  ∀ n, P8027272341035365755.a n = A270454 n

end A270454

/-! ## A270454.P3976289699040987855

`n²+A000034(n)*A103832(n)`
-/

namespace A270454.P3976289699040987855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000034 n * A103832 n

end

end A270454.P3976289699040987855

namespace A270454

/-- `n²+A000034(n)*A103832(n)` -/
def P3976289699040987855.Spec : Prop :=
  ∀ n, P3976289699040987855.a n = A270454 n

end A270454

/-! ## A270454.P16490393217377068406

`Δ[n*A109613(n)]*A109613(n)`
-/

namespace A270454.P16490393217377068406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A109613 n

end

end A270454.P16490393217377068406

namespace A270454

/-- `Δ[n*A109613(n)]*A109613(n)` -/
def P16490393217377068406.Spec : Prop :=
  ∀ n, P16490393217377068406.a n = A270454 n

end A270454

/-! ## A270454.P15700629046679423606

`∑[∑[A008574(n)]-A266724(n)²]`
-/

namespace A270454.P15700629046679423606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A266724 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270454.P15700629046679423606

namespace A270454

/-- `∑[∑[A008574(n)]-A266724(n)²]` -/
def P15700629046679423606.Spec : Prop :=
  ∀ n, P15700629046679423606.a n = A270454 n

end A270454

/-! ## A270454.P11111531637369824992

`A168273(n+1)*A266285(n)+1`
-/

namespace A270454.P11111531637369824992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) * A266285 n + 1

end

end A270454.P11111531637369824992

namespace A270454

/-- `A168273(n+1)*A266285(n)+1` -/
def P11111531637369824992.Spec : Prop :=
  ∀ n, P11111531637369824992.a n = A270454 n

end A270454

/-! ## A270454.P497369236357742923

`A042963(n+1)+n²*A010684(n)`
-/

namespace A270454.P497369236357742923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1) + (n ^ 2 : ℤ) * A010684 n

end

end A270454.P497369236357742923

namespace A270454

/-- `A042963(n+1)+n²*A010684(n)` -/
def P497369236357742923.Spec : Prop :=
  ∀ n, P497369236357742923.a n = A270454 n

end A270454

/-! ## A270454.P9676814561152299256

`(A266491(2*n+1)-n)*A004525(2*n+1)`
-/

namespace A270454.P9676814561152299256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266491 (2 * n + 1) - (n : ℤ)) * A004525 (2 * n + 1)

end

end A270454.P9676814561152299256

namespace A270454

/-- `(A266491(2*n+1)-n)*A004525(2*n+1)` -/
def P9676814561152299256.Spec : Prop :=
  ∀ n, P9676814561152299256.a n = A270454 n

end A270454

/-! ## A270454.P16069391530567011127

`A176889(A053438(n))+A005563(n)`
-/

namespace A270454.P16069391530567011127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176889 (A053438 n).toNat + A005563 n

end

end A270454.P16069391530567011127

namespace A270454

/-- `A176889(A053438(n))+A005563(n)` -/
def P16069391530567011127.Spec : Prop :=
  ∀ n, P16069391530567011127.a n = A270454 n

end A270454

/-!
# A270455: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 163", based on the 5-celled von Neumann neighborhood.

The programs for A270455, the canonical program `A270455.P4716439909921633587` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270455 has offset 0).

The definition of A270455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270455.P4716439909921633587

`∑[or(1, n)*Δ[n*or(1, n)]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270455

/-- `∑[or(1, n)*Δ[n*or(1, n)]]` -/
def P4716439909921633587.Spec : Prop :=
  ∀ n, P4716439909921633587.a n = A270455 n

theorem P4716439909921633587.correct : P4716439909921633587.Spec := by
  intro n
  simp only [A270455]

end A270455

/-! ## A270455.P8450970880686573387

`a(n-1)+or(1, n)*Δ[n*or(1, n)]` with `a(0)=1`
-/

namespace A270455.P8450970880686573387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.lor 1 n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A270455.P8450970880686573387

namespace A270455

/-- `a(n-1)+or(1, n)*Δ[n*or(1, n)]` -/
def P8450970880686573387.Spec : Prop :=
  ∀ n, P8450970880686573387.a n = A270455 n

end A270455

/-! ## A270455.P8736833008564889112

`A269876(n)+∑[A266724(n)²]`
-/

namespace A270455.P8736833008564889112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269876 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P8736833008564889112

namespace A270455

/-- `A269876(n)+∑[A266724(n)²]` -/
def P8736833008564889112.Spec : Prop :=
  ∀ n, P8736833008564889112.a n = A270455 n

end A270455

/-! ## A270455.P14342873502818498205

`∑[∑[A022998(n)]+A266981(n)²]`
-/

namespace A270455.P14342873502818498205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + A266981 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P14342873502818498205

namespace A270455

/-- `∑[∑[A022998(n)]+A266981(n)²]` -/
def P14342873502818498205.Spec : Prop :=
  ∀ n, P14342873502818498205.a n = A270455 n

end A270455

/-! ## A270455.P9450311630119945340

`∑[n²+A000034(n)*A103832(n)]`
-/

namespace A270455.P9450311630119945340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A000034 n * A103832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P9450311630119945340

namespace A270455

/-- `∑[n²+A000034(n)*A103832(n)]` -/
def P9450311630119945340.Spec : Prop :=
  ∀ n, P9450311630119945340.a n = A270455 n

end A270455

/-! ## A270455.P4284088522163410074

`∑[Δ[n*A109613(n)]*A109613(n)]`
-/

namespace A270455.P4284088522163410074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P4284088522163410074

namespace A270455

/-- `∑[Δ[n*A109613(n)]*A109613(n)]` -/
def P4284088522163410074.Spec : Prop :=
  ∀ n, P4284088522163410074.a n = A270455 n

end A270455

/-! ## A270455.P13686001245444895179

`∑[A271391(n)+A046092(A026741(n))]`
-/

namespace A270455.P13686001245444895179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271391 n + A046092 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P13686001245444895179

namespace A270455

/-- `∑[A271391(n)+A046092(A026741(n))]` -/
def P13686001245444895179.Spec : Prop :=
  ∀ n, P13686001245444895179.a n = A270455 n

end A270455

/-! ## A270455.P4458825907552019144

`∑[A005408(A014682(n))*A109613(n)]`
-/

namespace A270455.P4458825907552019144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A014682 n).toNat * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P4458825907552019144

namespace A270455

/-- `∑[A005408(A014682(n))*A109613(n)]` -/
def P4458825907552019144.Spec : Prop :=
  ∀ n, P4458825907552019144.a n = A270455 n

end A270455

/-! ## A270455.P1913499857345508985

`A173196(A014601(n))+∑[A042963(n+1)]`
-/

namespace A270455.P1913499857345508985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A014601 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P1913499857345508985

namespace A270455

/-- `A173196(A014601(n))+∑[A042963(n+1)]` -/
def P1913499857345508985.Spec : Prop :=
  ∀ n, P1913499857345508985.a n = A270455 n

end A270455

/-! ## A270455.P16589448174152070944

`∑[A051176(A047270(n+1))*A109613(n)]`
-/

namespace A270455.P16589448174152070944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A047270 (n + 1)).toNat * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P16589448174152070944

namespace A270455

/-- `∑[A051176(A047270(n+1))*A109613(n)]` -/
def P16589448174152070944.Spec : Prop :=
  ∀ n, P16589448174152070944.a n = A270455 n

end A270455

/-! ## A270455.P18236794710095927462

`∑[(A093178(n)+A066106(n))*A093178(n)]`
-/

namespace A270455.P18236794710095927462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093178 n + A066106 n) * A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P18236794710095927462

namespace A270455

/-- `∑[(A093178(n)+A066106(n))*A093178(n)]` -/
def P18236794710095927462.Spec : Prop :=
  ∀ n, P18236794710095927462.a n = A270455 n

end A270455

/-! ## A270455.P2758477043933261346

`∑[A270454(n)]`
-/

namespace A270455.P2758477043933261346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P2758477043933261346

namespace A270455

/-- `∑[A270454(n)]` -/
def P2758477043933261346.Spec : Prop :=
  ∀ n, P2758477043933261346.a n = A270455 n

end A270455

/-! ## A270455.P16442795261482159889

`A270454(n%A270454(n))+a(n-1)` with `a(0)=1`
-/

namespace A270455.P16442795261482159889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270454 (Int.tmod (n : ℤ) (A270454 n)).toNat + a (n - 1)

end

end A270455.P16442795261482159889

namespace A270455

/-- `A270454(n%A270454(n))+a(n-1)` -/
def P16442795261482159889.Spec : Prop :=
  ∀ n, P16442795261482159889.a n = A270455 n

end A270455

/-! ## A270455.P15758301371253561940

`a(n-1)+lcm(A063196(n+1), A270454(n))` with `a(0)=1`
-/

namespace A270455.P15758301371253561940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A063196 (n + 1)) (A270454 n)

end

end A270455.P15758301371253561940

namespace A270455

/-- `a(n-1)+lcm(A063196(n+1), A270454(n))` -/
def P15758301371253561940.Spec : Prop :=
  ∀ n, (P15758301371253561940.a n : ℤ) = A270455 n

end A270455

/-! ## A270455.P16467429418327738994

`∑[A014682(A077221(n))+2*n+1]`
-/

namespace A270455.P16467429418327738994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077221 n).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P16467429418327738994

namespace A270455

/-- `∑[A014682(A077221(n))+2*n+1]` -/
def P16467429418327738994.Spec : Prop :=
  ∀ n, P16467429418327738994.a n = A270455 n

end A270455

/-! ## A270455.P6728684793501196686

`∑[A294178(n²)+2*n]`
-/

namespace A270455.P6728684793501196686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 (n ^ 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270455.P6728684793501196686

namespace A270455

/-- `∑[A294178(n²)+2*n]` -/
def P6728684793501196686.Spec : Prop :=
  ∀ n, P6728684793501196686.a n = A270455 n

end A270455

/-!
# A270456: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 163", based on the 5-celled von Neumann neighborhood.

The programs for A270456, the canonical program `A270456.P13414662212559692061` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270456 has offset 0).

The definition of A270456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270456.P13414662212559692061

`∑[4*(n²*(-1)^n+1)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270456

/-- `∑[4*(n²*(-1)^n+1)]` -/
def P13414662212559692061.Spec : Prop :=
  ∀ n, P13414662212559692061.a n = A270456 n

theorem P13414662212559692061.correct : P13414662212559692061.Spec := by
  intro n
  simp only [A270456]

end A270456

/-! ## A270456.P3621902740543283588

`4*((n+1)^gcd(2, n)-∑[n])`
-/

namespace A270456.P3621902740543283588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (((n + 1) ^ Nat.gcd 2 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A270456.P3621902740543283588

namespace A270456

/-- `4*((n+1)^gcd(2, n)-∑[n])` -/
def P3621902740543283588.Spec : Prop :=
  ∀ n, P3621902740543283588.a n = A270456 n

end A270456

/-! ## A270456.P16504233061958995191

`4*(n+1)-2*n*A038608(n+1)`
-/

namespace A270456.P16504233061958995191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - (2 * n : ℤ) * A038608 (n + 1)

end

end A270456.P16504233061958995191

namespace A270456

/-- `4*(n+1)-2*n*A038608(n+1)` -/
def P16504233061958995191.Spec : Prop :=
  ∀ n, P16504233061958995191.a n = A270456 n

end A270456

/-! ## A270456.P5291444801575646651

`Δ[A168273(n+1)*A266285(n)]`
-/

namespace A270456.P5291444801575646651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168273 (n + 1) * A266285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270456.P5291444801575646651

namespace A270456

/-- `Δ[A168273(n+1)*A266285(n)]` -/
def P5291444801575646651.Spec : Prop :=
  ∀ n, P5291444801575646651.a n = A270456 n

end A270456

/-! ## A270456.P15132570286532800843

`Δ[Δ[n*A109613(n)]*A109613(n)]`
-/

namespace A270456.P15132570286532800843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270456.P15132570286532800843

namespace A270456

/-- `Δ[Δ[n*A109613(n)]*A109613(n)]` -/
def P15132570286532800843.Spec : Prop :=
  ∀ n, P15132570286532800843.a n = A270456 n

end A270456

/-! ## A270456.P14974903848900525748

`Δ[A046092(n)]+A033999(n)*A046092(n)`
-/

namespace A270456.P14974903848900525748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A033999 n * A046092 n

end

end A270456.P14974903848900525748

namespace A270456

/-- `Δ[A046092(n)]+A033999(n)*A046092(n)` -/
def P14974903848900525748.Spec : Prop :=
  ∀ n, P14974903848900525748.a n = A270456 n

end A270456

/-! ## A270456.P7862154204007285008

`Δ[(A093178(n)+A066106(n))*A093178(n)]`
-/

namespace A270456.P7862154204007285008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093178 n + A066106 n) * A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270456.P7862154204007285008

namespace A270456

/-- `Δ[(A093178(n)+A066106(n))*A093178(n)]` -/
def P7862154204007285008.Spec : Prop :=
  ∀ n, P7862154204007285008.a n = A270456 n

end A270456

/-! ## A270456.P10553433551742699698

`(A005843(n+1)-A347365(n))*A005843(n+1)`
-/

namespace A270456.P10553433551742699698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 1) - A347365 n) * A005843 (n + 1)

end

end A270456.P10553433551742699698

namespace A270456

/-- `(A005843(n+1)-A347365(n))*A005843(n+1)` -/
def P10553433551742699698.Spec : Prop :=
  ∀ n, P10553433551742699698.a n = A270456 n

end A270456

/-! ## A270456.P6365566221354718344

`A008574(n+1)-A181983(2*n)*A181983(n+1)`
-/

namespace A270456.P6365566221354718344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) - A181983 (2 * n) * A181983 (n + 1)

end

end A270456.P6365566221354718344

namespace A270456

/-- `A008574(n+1)-A181983(2*n)*A181983(n+1)` -/
def P6365566221354718344.Spec : Prop :=
  ∀ n, P6365566221354718344.a n = A270456 n

end A270456

/-! ## A270456.P11763965507733179877

`Δ[A270454(n)]`
-/

namespace A270456.P11763965507733179877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270456.P11763965507733179877

namespace A270456

/-- `Δ[A270454(n)]` -/
def P11763965507733179877.Spec : Prop :=
  ∀ n, P11763965507733179877.a n = A270456 n

end A270456

/-! ## A270456.P13047992053592960477

`A270454(n+1)-A270454(n)`
-/

namespace A270456.P13047992053592960477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 (n + 1) - A270454 n

end

end A270456.P13047992053592960477

namespace A270456

/-- `A270454(n+1)-A270454(n)` -/
def P13047992053592960477.Spec : Prop :=
  ∀ n, P13047992053592960477.a n = A270456 n

end A270456

/-! ## A270456.P9450586059164492250

`Δ[A014682(A077221(n))]+2`
-/

namespace A270456.P9450586059164492250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A270456.P9450586059164492250

namespace A270456

/-- `Δ[A014682(A077221(n))]+2` -/
def P9450586059164492250.Spec : Prop :=
  ∀ n, P9450586059164492250.a n = A270456 n

end A270456

/-!
# A270457: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A270457, there is no canonical definition to state claims against.
-/

/-! ## A270457.P17954583549406633758

`A270460(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270457.P17954583549406633758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270460 (n - 1) + a (n - 1)

end

end A270457.P17954583549406633758

/-! ## A270457.P17931852818135887693

`∑[A270460(n)]+1-A270460(n)`
-/

namespace A270457.P17931852818135887693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270460 n)

end

end A270457.P17931852818135887693

/-! ## A270457.P2478861806189083279

`Δ[A270459(n)]-A270460(n)`
-/

namespace A270457.P2478861806189083279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270460 n

end

end A270457.P2478861806189083279

/-! ## A270457.P10176432757774262835

`A270459(n+1)-(A270460(n)+A270459(n))`
-/

namespace A270457.P10176432757774262835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270459 (n + 1) - (A270460 n + A270459 n)

end

end A270457.P10176432757774262835

/-!
# A270458: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A270458, there is no canonical definition to state claims against.
-/

/-! ## A270458.P11897556243035213840

`A270457(2^n-1)`
-/

namespace A270458.P11897556243035213840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 (2 ^ n - 1)

end

end A270458.P11897556243035213840

/-! ## A270458.P2404774258062497900

`record[A270457(A092569(n))]`
-/

namespace A270458.P2404774258062497900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 (A092569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270458.P2404774258062497900

/-! ## A270458.P5770751231386999188

`record[A270457(A173787(n))]`
-/

namespace A270458.P5770751231386999188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270458.P5770751231386999188

/-! ## A270458.P528315991889368271

`record[A270457(A255067(n))]`
-/

namespace A270458.P528315991889368271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270458.P528315991889368271

/-! ## A270458.P192027222911355955

`record[A270457(A355090(n))]`
-/

namespace A270458.P192027222911355955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 (A355090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270458.P192027222911355955

/-!
# A270459: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A270459, there is no canonical definition to state claims against.
-/

/-! ## A270459.P7518568588671911966

`∑[A270457(n)]`
-/

namespace A270459.P7518568588671911966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270459.P7518568588671911966

/-! ## A270459.P16947838289146289222

`∑[∑[A270460(n)]+1-A270460(n)]`
-/

namespace A270459.P16947838289146289222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270460 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270460 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270459.P16947838289146289222

/-! ## A270459.P9107078200891975853

`A270457(A000290(n)/n)+a(n-1)` with `a(0)=1`
-/

namespace A270459.P9107078200891975853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270457 (SequenceMachineLib.roundAway ((A000290 n : ℚ) / (n : ℚ))).toNat + a (n - 1)

end

end A270459.P9107078200891975853

/-! ## A270459.P1660120850529540556

`a(n-1)+A270457(n)*A328479(2*n+1)` with `a(0)=1`
-/

namespace A270459.P1660120850529540556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A270457 n * A328479 (2 * n + 1)

end

end A270459.P1660120850529540556

/-! ## A270459.P8577442883974653809

`a(n-1)-(A118824(A000265(n+1))+1)*A270457(n)` with `a(0)=1`
-/

namespace A270459.P8577442883974653809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A118824 (A000265 (n + 1)).toNat + 1) * A270457 n

end

end A270459.P8577442883974653809

/-!
# A270460: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 165", based on the 5-celled von Neumann neighborhood.

The programs for A270460, there is no canonical definition to state claims against.
-/

/-! ## A270460.P9364291450080866900

`Δ[A270457(n)]`
-/

namespace A270460.P9364291450080866900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270460.P9364291450080866900

/-! ## A270460.P9483426423634671080

`A270457(n+1)-A270457(n)`
-/

namespace A270460.P9483426423634671080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 (n + 1) - A270457 n

end

end A270460.P9483426423634671080

/-! ## A270460.P12236459524304534646

`A270457(n+1)+A270457(n)/A008683(A068486(n+1))`
-/

namespace A270460.P12236459524304534646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270457 (n + 1) : ℚ) + (A270457 n : ℚ) / (A008683 (A068486 (n + 1)).toNat : ℚ)

end

end A270460.P12236459524304534646

/-! ## A270460.P9275200413753314441

`A270457(n+1)+A001478(A270457(n)+1)+1`
-/

namespace A270460.P9275200413753314441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270457 (n + 1) + A001478 (A270457 n + 1).toNat + 1

end

end A270460.P9275200413753314441

/-!
# A270461: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A270461, there is no canonical definition to state claims against.
-/

/-! ## A270461.P6096830180861155241

`∑[A270464(abs(1-n))]-4`
-/

namespace A270461.P6096830180861155241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270464 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A270461.P6096830180861155241

/-! ## A270461.P17437144141239142105

`A270464(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270461.P17437144141239142105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270464 (n - 1) + a (n - 1)

end

end A270461.P17437144141239142105

/-! ## A270461.P7479167569449225580

`Δ[A270463(n)]-A270464(n)`
-/

namespace A270461.P7479167569449225580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270464 n

end

end A270461.P7479167569449225580

/-! ## A270461.P13797996850426876932

`A270463(n+1)-(A270464(n)+A270463(n))`
-/

namespace A270461.P13797996850426876932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270463 (n + 1) - (A270464 n + A270463 n)

end

end A270461.P13797996850426876932

/-!
# A270462: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A270462, there is no canonical definition to state claims against.
-/

/-! ## A270462.P11767192331237092996

`A270461(2^n-1)`
-/

namespace A270462.P11767192331237092996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270461 (2 ^ n - 1)

end

end A270462.P11767192331237092996

/-! ## A270462.P16396890077830411544

`record[A270461(A232751(n))]`
-/

namespace A270462.P16396890077830411544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270461 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270462.P16396890077830411544

/-! ## A270462.P8370483942246919871

`record[A270461(A252756(n+1))]`
-/

namespace A270462.P8370483942246919871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270461 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270462.P8370483942246919871

/-! ## A270462.P17893388186432650613

`record[A270461(A302029(n+1))]`
-/

namespace A270462.P17893388186432650613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270461 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270462.P17893388186432650613

/-! ## A270462.P17026060766122755796

`record[A270461(A048483(n)-1)]`
-/

namespace A270462.P17026060766122755796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270461 (A048483 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270462.P17026060766122755796

/-!
# A270463: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A270463, there is no canonical definition to state claims against.
-/

/-! ## A270463.P10595766454418435916

`∑[∑[A270464(abs(1-n))]-4]`
-/

namespace A270463.P10595766454418435916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270464 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270463.P10595766454418435916

/-! ## A270463.P12164259220560588899

`∑[A270461(n)]`
-/

namespace A270463.P12164259220560588899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270463.P12164259220560588899

/-! ## A270463.P15946384560591715548

`a(n-1)+A270461(n)+A000007(n)` with `a(0)=1`
-/

namespace A270463.P15946384560591715548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270461 n + A000007 n)

end

end A270463.P15946384560591715548

/-! ## A270463.P1089556598379422493

`A270461(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A270463.P1089556598379422493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270461 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A270463.P1089556598379422493

/-! ## A270463.P14692466566931047304

`a(n-1)+A270461(n)%A270452(n)` with `a(0)=1`
-/

namespace A270463.P14692466566931047304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A270461 n) (A270452 n)

end

end A270463.P14692466566931047304

/-!
# A270464: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 169", based on the 5-celled von Neumann neighborhood.

The programs for A270464, there is no canonical definition to state claims against.
-/

/-! ## A270464.P1309288678019305820

`Δ[A270461(n)]`
-/

namespace A270464.P1309288678019305820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270464.P1309288678019305820

/-! ## A270464.P2643077681739837582

`A270461(n+1)-A270461(n)`
-/

namespace A270464.P2643077681739837582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270461 (n + 1) - A270461 n

end

end A270464.P2643077681739837582

/-!
# A270465: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A270465, there is no canonical definition to state claims against.
-/

/-! ## A270465.P4217786597389573916

`A270468(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270465.P4217786597389573916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270468 (n - 1) + a (n - 1)

end

end A270465.P4217786597389573916

/-! ## A270465.P10868693700809302698

`∑[A270468((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A270465.P10868693700809302698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270468 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270465.P10868693700809302698

/-! ## A270465.P1272387200020927521

`Δ[A270467(n)]-A270468(n)`
-/

namespace A270465.P1272387200020927521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270468 n

end

end A270465.P1272387200020927521

/-! ## A270465.P13678197639026527938

`A270467(n+1)-(A270468(n)+A270467(n))`
-/

namespace A270465.P13678197639026527938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270467 (n + 1) - (A270468 n + A270467 n)

end

end A270465.P13678197639026527938

/-! ## A270465.P11847234404382975542

`∑[A270468(A091954(3^n))]+1-A270468(n)`
-/

namespace A270465.P11847234404382975542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270468 (A091954 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A270468 n)

end

end A270465.P11847234404382975542

/-!
# A270466: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A270466, there is no canonical definition to state claims against.
-/

/-! ## A270466.P14068050137021005736

`A270465(2^n-1)`
-/

namespace A270466.P14068050137021005736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270465 (2 ^ n - 1)

end

end A270466.P14068050137021005736

/-! ## A270466.P1133552366692444965

`record[A270465(A088163(n))]`
-/

namespace A270466.P1133552366692444965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270465 (A088163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270466.P1133552366692444965

/-! ## A270466.P11455335185443988885

`record[A270465(A173787(n))]`
-/

namespace A270466.P11455335185443988885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270465 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270466.P11455335185443988885

/-! ## A270466.P13637800927308733962

`record[A270465(A218616(n))]`
-/

namespace A270466.P13637800927308733962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270465 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270466.P13637800927308733962

/-! ## A270466.P11187279823286766383

`record[A270465(A231551(n))]`
-/

namespace A270466.P11187279823286766383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270465 (A231551 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270466.P11187279823286766383

/-!
# A270467: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A270467, there is no canonical definition to state claims against.
-/

/-! ## A270467.P17959880157904228794

`∑[A270465(n)]`
-/

namespace A270467.P17959880157904228794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270467.P17959880157904228794

/-! ## A270467.P6616421285979187144

`a(n-1)+A019426(2*n)*A270465(n)` with `a(0)=1`
-/

namespace A270467.P6616421285979187144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A019426 (2 * n) * A270465 n

end

end A270467.P6616421285979187144

/-! ## A270467.P6171332599228905932

`a(n-1)+A270465(n)+A062110(A013322(n+1))` with `a(0)=1`
-/

namespace A270467.P6171332599228905932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A270465 n + A062110 (A013322 (n + 1)).toNat)

end

end A270467.P6171332599228905932

/-! ## A270467.P12483967536974474867

`∑[A270468(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A270467.P12483967536974474867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270468 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270467.P12483967536974474867

/-! ## A270467.P16035187711308248918

`∑[∑[A270468(n)]+1-A270468(n)]`
-/

namespace A270467.P16035187711308248918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A270468 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270467.P16035187711308248918

/-!
# A270468: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 173", based on the 5-celled von Neumann neighborhood.

The programs for A270468, there is no canonical definition to state claims against.
-/

/-! ## A270468.P3580834698998494016

`Δ[A270465(n)]`
-/

namespace A270468.P3580834698998494016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270468.P3580834698998494016

/-! ## A270468.P4755623938644882854

`A270465(n+1)-A270465(n)`
-/

namespace A270468.P4755623938644882854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270465 (n + 1) - A270465 n

end

end A270468.P4755623938644882854

/-! ## A270468.P12174507063560623981

`Δ[A270467(n)]-(A270980(n)-A058348(A028328(n)))`
-/

namespace A270468.P12174507063560623981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A270980 n - A058348 (A028328 n).toNat)

end

end A270468.P12174507063560623981

/-!
# A270469: Number of ordered ways to write n = x^3 + y*(y+1) + z*(3*z+2), where x and y are nonnegative integers and z is a nonzero integer.

The programs for A270469, there is no canonical definition to state claims against.
-/

/-! ## A270469.P5272360395282322012

`A240595(∑[dr(A090869(n+1))])`
-/

namespace A270469.P5272360395282322012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A090869 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270469.P5272360395282322012

/-! ## A270469.P15809525914087549361

`gcd(6, A117894(A212804(n)))`
-/

namespace A270469.P15809525914087549361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A117894 (A212804 n).toNat)

end

end A270469.P15809525914087549361

/-! ## A270469.P16683022146408995867

`or(A154325(A010049(n)), A163584(n))`
-/

namespace A270469.P16683022146408995867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154325 (A010049 n).toNat) (A163584 n)

end

end A270469.P16683022146408995867

/-! ## A270469.P8081665215296128399

`A083671(A238016(2*(n+2))+A151571(n))`
-/

namespace A270469.P8081665215296128399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083671 (A238016 (2 * (n + 2)) + A151571 n).toNat

end

end A270469.P8081665215296128399

/-!
# A270471: Expansion of g.f. (1-3*x)/(1-7*x).

The programs for A270471, the canonical program `A270471.P4708195509012582493` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270471 has offset 0).

The definition of A270471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270471.P4708195509012582493

`7*a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270471

/-- `7*a(n-1)` -/
def P4708195509012582493.Spec : Prop :=
  ∀ n, (P4708195509012582493.a n : ℤ) = A270471 n

theorem P4708195509012582493.correct : P4708195509012582493.Spec := by
  intro n
  simp only [A270471]

end A270471

/-! ## A270471.P4057299995583508150

`ceil(4*7^(n-1))`
-/

namespace A270471.P4057299995583508150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A270471.P4057299995583508150

namespace A270471

/-- `ceil(4*7^(n-1))` -/
def P4057299995583508150.Spec : Prop :=
  ∀ n, P4057299995583508150.a n = A270471 n

end A270471

/-! ## A270471.P186538997599575715

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=4, a(2)=7`
-/

namespace A270471.P186538997599575715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 7] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A270471.P186538997599575715

namespace A270471

/-- `abs(∏[-a(n-1)])` -/
def P186538997599575715.Spec : Prop :=
  ∀ n, P186538997599575715.a n = A270471 n

end A270471

/-! ## A270471.P13237506717865057706

`a(n-1)/(1-6/7)` with `a(0)=1, a(1)=4`
-/

namespace A270471.P13237506717865057706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7)

end

end A270471.P13237506717865057706

namespace A270471

/-- `a(n-1)/(1-6/7)` -/
def P13237506717865057706.Spec : Prop :=
  ∀ n, P13237506717865057706.a n = (A270471 n : ℚ)

end A270471

/-! ## A270471.P461229960520511536

`lcm(7^(n-1), a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A270471.P461229960520511536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((7 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A270471.P461229960520511536

namespace A270471

/-- `lcm(7^(n-1), a(n-1))` -/
def P461229960520511536.Spec : Prop :=
  ∀ n, (P461229960520511536.a n : ℤ) = A270471 n

end A270471

/-! ## A270471.P13816678621054933005

`round(A003950(n)/2)`
-/

namespace A270471.P13816678621054933005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003950 n : ℚ) / 2)

end

end A270471.P13816678621054933005

namespace A270471

/-- `round(A003950(n)/2)` -/
def P13816678621054933005.Spec : Prop :=
  ∀ n, P13816678621054933005.a n = A270471 n

end A270471

/-! ## A270471.P5209668785560548276

`A328778(n+1)/3`
-/

namespace A270471.P5209668785560548276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328778 (n + 1) : ℚ) / 3

end

end A270471.P5209668785560548276

namespace A270471

/-- `A328778(n+1)/3` -/
def P5209668785560548276.Spec : Prop :=
  ∀ n, P5209668785560548276.a n = (A270471 n : ℚ)

end A270471

/-! ## A270471.P18032444372862061879

`A036565(∑[n+2]-2)`
-/

namespace A270471.P18032444372862061879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036565 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A270471.P18032444372862061879

namespace A270471

/-- `A036565(∑[n+2]-2)` -/
def P18032444372862061879.Spec : Prop :=
  ∀ n, P18032444372862061879.a n = A270471 n

end A270471

/-! ## A270471.P280535146396412056

`A003950(n)/A029653(∑[n])`
-/

namespace A270471.P280535146396412056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 n : ℚ) / (A029653 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A270471.P280535146396412056

namespace A270471

/-- `A003950(n)/A029653(∑[n])` -/
def P280535146396412056.Spec : Prop :=
  ∀ n, P280535146396412056.a n = (A270471 n : ℚ)

end A270471

/-! ## A270471.P15063227028058208610

`A003950(n)/A003947(n)%3`
-/

namespace A270471.P15063227028058208610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 n : ℚ) / (Int.tmod (A003947 n) 3 : ℚ)

end

end A270471.P15063227028058208610

namespace A270471

/-- `A003950(n)/A003947(n)%3` -/
def P15063227028058208610.Spec : Prop :=
  ∀ n, P15063227028058208610.a n = (A270471 n : ℚ)

end A270471

/-! ## A270471.P12388135760012058902

`A003950(n)/A005897(n)%3`
-/

namespace A270471.P12388135760012058902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 n : ℚ) / (Int.tmod (A005897 n) 3 : ℚ)

end

end A270471.P12388135760012058902

namespace A270471

/-- `A003950(n)/A005897(n)%3` -/
def P12388135760012058902.Spec : Prop :=
  ∀ n, P12388135760012058902.a n = (A270471 n : ℚ)

end A270471

/-! ## A270471.P18416261770825384482

`A000420(n)-floor(A055272(n)/2)`
-/

namespace A270471.P18416261770825384482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n - ⌊(A055272 n : ℚ) / 2⌋

end

end A270471.P18416261770825384482

namespace A270471

/-- `A000420(n)-floor(A055272(n)/2)` -/
def P18416261770825384482.Spec : Prop :=
  ∀ n, P18416261770825384482.a n = A270471 n

end A270471

/-! ## A270471.P7215679949521008820

`record[gcd(A055258(n)/2, A105422(n))]`
-/

namespace A270471.P7215679949521008820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A055258 n : ℚ) / 2)) (A105422 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270471.P7215679949521008820

namespace A270471

/-- `record[gcd(A055258(n)/2, A105422(n))]` -/
def P7215679949521008820.Spec : Prop :=
  ∀ n, (P7215679949521008820.a n : ℤ) = A270471 n

end A270471

/-! ## A270471.P1024671371732848156

`A003950(n)/(A005893(n)+(2*n)²)%3`
-/

namespace A270471.P1024671371732848156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 n : ℚ) / (Int.tmod (A005893 n + ((2 * n) ^ 2 : ℤ)) 3 : ℚ)

end

end A270471.P1024671371732848156

namespace A270471

/-- `A003950(n)/(A005893(n)+(2*n)²)%3` -/
def P1024671371732848156.Spec : Prop :=
  ∀ n, P1024671371732848156.a n = (A270471 n : ℚ)

end A270471

/-! ## A270471.P16066447591258444610

`A003950(n)/(A005901(n)-(2*n)²)%3`
-/

namespace A270471.P16066447591258444610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 n : ℚ) / (Int.tmod (A005901 n - ((2 * n) ^ 2 : ℤ)) 3 : ℚ)

end

end A270471.P16066447591258444610

namespace A270471

/-- `A003950(n)/(A005901(n)-(2*n)²)%3` -/
def P16066447591258444610.Spec : Prop :=
  ∀ n, P16066447591258444610.a n = (A270471 n : ℚ)

end A270471

/-! ## A270471.P13816170785192884896

`A003950(n)/A020639(A001316(n))`
-/

namespace A270471.P13816170785192884896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003950 n : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A270471.P13816170785192884896

namespace A270471

/-- `A003950(n)/A020639(A001316(n))` -/
def P13816170785192884896.Spec : Prop :=
  ∀ n, P13816170785192884896.a n = (A270471 n : ℚ)

end A270471

/-! ## A270471.P4406037469892396008

`A025192(n)/∑[A025192(n)]*A055272(n)`
-/

namespace A270471.P4406037469892396008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A055272 n : ℚ)

end

end A270471.P4406037469892396008

namespace A270471

/-- `A025192(n)/∑[A025192(n)]*A055272(n)` -/
def P4406037469892396008.Spec : Prop :=
  ∀ n, P4406037469892396008.a n = (A270471 n : ℚ)

end A270471

/-!
# A270472: Expansion of g.f. (1-2*x)/(1-9*x).

The programs for A270472, the canonical program `A270472.P1819644530285132966` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270472 has offset 0).

The definition of A270472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270472.P1819644530285132966

`9*a(n-1)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270472

/-- `9*a(n-1)` -/
def P1819644530285132966.Spec : Prop :=
  ∀ n, (P1819644530285132966.a n : ℤ) = A270472 n

theorem P1819644530285132966.correct : P1819644530285132966.Spec := by
  intro n
  simp only [A270472]

end A270472

/-! ## A270472.P13686490245588123453

`ceil(7*9^(n-1))`
-/

namespace A270472.P13686490245588123453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A270472.P13686490245588123453

namespace A270472

/-- `ceil(7*9^(n-1))` -/
def P13686490245588123453.Spec : Prop :=
  ∀ n, P13686490245588123453.a n = A270472 n

end A270472

/-! ## A270472.P2846481542126242279

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=7, a(2)=9`
-/

namespace A270472.P2846481542126242279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A270472.P2846481542126242279

namespace A270472

/-- `abs(∏[-a(n-1)])` -/
def P2846481542126242279.Spec : Prop :=
  ∀ n, P2846481542126242279.a n = A270472 n

end A270472

/-! ## A270472.P7192696935543708825

`a(n-1)/(1/3)²` with `a(0)=1, a(1)=7`
-/

namespace A270472.P7192696935543708825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A270472.P7192696935543708825

namespace A270472

/-- `a(n-1)/(1/3)²` -/
def P7192696935543708825.Spec : Prop :=
  ∀ n, P7192696935543708825.a n = (A270472 n : ℚ)

end A270472

/-! ## A270472.P17303582441939941161

`lcm(9^(n-1), a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A270472.P17303582441939941161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A270472.P17303582441939941161

namespace A270472

/-- `lcm(9^(n-1), a(n-1))` -/
def P17303582441939941161.Spec : Prop :=
  ∀ n, (P17303582441939941161.a n : ℤ) = A270472 n

end A270472

/-! ## A270472.P12772365217070502059

`A141495(2*n)`
-/

namespace A270472.P12772365217070502059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141495 (2 * n)

end

end A270472.P12772365217070502059

namespace A270472

/-- `A141495(2*n)` -/
def P12772365217070502059.Spec : Prop :=
  ∀ n, P12772365217070502059.a n = A270472 n

end A270472

/-! ## A270472.P1605471506816114960

`A141495(Δ[n²])/3`
-/

namespace A270472.P1605471506816114960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141495 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A270472.P1605471506816114960

namespace A270472

/-- `A141495(Δ[n²])/3` -/
def P1605471506816114960.Spec : Prop :=
  ∀ n, P1605471506816114960.a n = (A270472 n : ℚ)

end A270472

/-! ## A270472.P8577172367902879421

`record[A082541(n*n%2)]`
-/

namespace A270472.P8577172367902879421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082541 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270472.P8577172367902879421

namespace A270472

/-- `record[A082541(n*n%2)]` -/
def P8577172367902879421.Spec : Prop :=
  ∀ n, P8577172367902879421.a n = A270472 n

end A270472

/-! ## A270472.P9772163326431021964

`A082541(A004273(n))`
-/

namespace A270472.P9772163326431021964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082541 (A004273 n).toNat

end

end A270472.P9772163326431021964

namespace A270472

/-- `A082541(A004273(n))` -/
def P9772163326431021964.Spec : Prop :=
  ∀ n, P9772163326431021964.a n = A270472 n

end A270472

/-! ## A270472.P16033698633745105499

`A072985(A130824(n))`
-/

namespace A270472.P16033698633745105499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072985 (A130824 n).toNat

end

end A270472.P16033698633745105499

namespace A270472

/-- `A072985(A130824(n))` -/
def P16033698633745105499.Spec : Prop :=
  ∀ n, P16033698633745105499.a n = A270472 n

end A270472

/-! ## A270472.P15523155329013589807

`A140576(A133655(n))+1`
-/

namespace A270472.P15523155329013589807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140576 (A133655 n).toNat + 1

end

end A270472.P15523155329013589807

namespace A270472

/-- `A140576(A133655(n))+1` -/
def P15523155329013589807.Spec : Prop :=
  ∀ n, P15523155329013589807.a n = A270472 n

end A270472

/-! ## A270472.P3715435777813364223

`A166481(A111284(n+1))`
-/

namespace A270472.P3715435777813364223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166481 (A111284 (n + 1)).toNat

end

end A270472.P3715435777813364223

namespace A270472

/-- `A166481(A111284(n+1))` -/
def P3715435777813364223.Spec : Prop :=
  ∀ n, P3715435777813364223.a n = A270472 n

end A270472

/-! ## A270472.P2370275264887648871

`A072985(A004275(2*n))`
-/

namespace A270472.P2370275264887648871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072985 (A004275 (2 * n)).toNat

end

end A270472.P2370275264887648871

namespace A270472

/-- `A072985(A004275(2*n))` -/
def P2370275264887648871.Spec : Prop :=
  ∀ n, P2370275264887648871.a n = A270472 n

end A270472

/-! ## A270472.P1660810803345668404

`A082541(n)*A133494(n)`
-/

namespace A270472.P1660810803345668404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082541 n * A133494 n

end

end A270472.P1660810803345668404

namespace A270472

/-- `A082541(n)*A133494(n)` -/
def P1660810803345668404.Spec : Prop :=
  ∀ n, P1660810803345668404.a n = A270472 n

end A270472

/-! ## A270472.P12219347423103518564

`A082541(record[Δ[A002264(n)²]])`
-/

namespace A270472.P12219347423103518564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082541 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A270472.P12219347423103518564

namespace A270472

/-- `A082541(record[Δ[A002264(n)²]])` -/
def P12219347423103518564.Spec : Prop :=
  ∀ n, P12219347423103518564.a n = A270472 n

end A270472

/-! ## A270472.P10685583927568790800

`2*A055275(n)-A001019(n)`
-/

namespace A270472.P10685583927568790800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055275 n - A001019 n

end

end A270472.P10685583927568790800

namespace A270472

/-- `2*A055275(n)-A001019(n)` -/
def P10685583927568790800.Spec : Prop :=
  ∀ n, P10685583927568790800.a n = A270472 n

end A270472

/-! ## A270472.P4903333053949534610

`(A067403(n)+A001019(n))/2`
-/

namespace A270472.P4903333053949534610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067403 n + A001019 n : ℚ) / 2

end

end A270472.P4903333053949534610

namespace A270472

/-- `(A067403(n)+A001019(n))/2` -/
def P4903333053949534610.Spec : Prop :=
  ∀ n, P4903333053949534610.a n = (A270472 n : ℚ)

end A270472

/-! ## A270472.P18171801801829102521

`A082541(2*n-A057427(n))`
-/

namespace A270472.P18171801801829102521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082541 ((2 * n : ℤ) - A057427 n).toNat

end

end A270472.P18171801801829102521

namespace A270472

/-- `A082541(2*n-A057427(n))` -/
def P18171801801829102521.Spec : Prop :=
  ∀ n, P18171801801829102521.a n = A270472 n

end A270472

/-! ## A270472.P18082803319805612282

`A082541(2*n-A178334(n))`
-/

namespace A270472.P18082803319805612282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082541 ((2 * n : ℤ) - A178334 n).toNat

end

end A270472.P18082803319805612282

namespace A270472

/-- `A082541(2*n-A178334(n))` -/
def P18082803319805612282.Spec : Prop :=
  ∀ n, P18082803319805612282.a n = A270472 n

end A270472

/-!
# A270473: Expansion of g.f. (1-5*x)/(1-9*x).

The programs for A270473, the canonical program `A270473.P1680656316592398379` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270473 has offset 0).

The definition of A270473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270473.P1680656316592398379

`9*a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A270473

/-- `9*a(n-1)` -/
def P1680656316592398379.Spec : Prop :=
  ∀ n, (P1680656316592398379.a n : ℤ) = A270473 n

theorem P1680656316592398379.correct : P1680656316592398379.Spec := by
  intro n
  simp only [A270473]

end A270473

/-! ## A270473.P2287601561574143159

`ceil(4*9^(n-1))`
-/

namespace A270473.P2287601561574143159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A270473.P2287601561574143159

namespace A270473

/-- `ceil(4*9^(n-1))` -/
def P2287601561574143159.Spec : Prop :=
  ∀ n, P2287601561574143159.a n = A270473 n

end A270473

/-! ## A270473.P1984858823160939861

`∏[-a(n-1)]²` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A270473.P1984858823160939861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A270473.P1984858823160939861

namespace A270473

/-- `∏[-a(n-1)]²` -/
def P1984858823160939861.Spec : Prop :=
  ∀ n, P1984858823160939861.a n = A270473 n

end A270473

/-! ## A270473.P5482443105404532036

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A270473.P5482443105404532036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A270473.P5482443105404532036

namespace A270473

/-- `abs(∏[-a(n-1)])` -/
def P5482443105404532036.Spec : Prop :=
  ∀ n, P5482443105404532036.a n = A270473 n

end A270473

/-! ## A270473.P7543147033498897578

`a(n-1)/(1/3)²` with `a(0)=1, a(1)=4`
-/

namespace A270473.P7543147033498897578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2

end

end A270473.P7543147033498897578

namespace A270473

/-- `a(n-1)/(1/3)²` -/
def P7543147033498897578.Spec : Prop :=
  ∀ n, P7543147033498897578.a n = (A270473 n : ℚ)

end A270473

/-! ## A270473.P4001303307761245405

`lcm(9^(n-1), a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A270473.P4001303307761245405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((9 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A270473.P4001303307761245405

namespace A270473

/-- `lcm(9^(n-1), a(n-1))` -/
def P4001303307761245405.Spec : Prop :=
  ∀ n, (P4001303307761245405.a n : ℤ) = A270473 n

end A270473

/-! ## A270473.P5799090146399639502

`A025192(n)²`
-/

namespace A270473.P5799090146399639502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n ^ 2

end

end A270473.P5799090146399639502

namespace A270473

/-- `A025192(n)²` -/
def P5799090146399639502.Spec : Prop :=
  ∀ n, P5799090146399639502.a n = A270473 n

end A270473

/-! ## A270473.P14568418661507856879

`A052156(2*n)`
-/

namespace A270473.P14568418661507856879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 (2 * n)

end

end A270473.P14568418661507856879

namespace A270473

/-- `A052156(2*n)` -/
def P14568418661507856879.Spec : Prop :=
  ∀ n, P14568418661507856879.a n = A270473 n

end A270473

/-! ## A270473.P15297173008387626142

`∑[A052156(n)]²`
-/

namespace A270473.P15297173008387626142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A270473.P15297173008387626142

namespace A270473

/-- `∑[A052156(n)]²` -/
def P15297173008387626142.Spec : Prop :=
  ∀ n, P15297173008387626142.a n = A270473 n

end A270473

/-! ## A270473.P6985961901482263110

`A114283(∑[n])²`
-/

namespace A270473.P6985961901482263110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114283 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A270473.P6985961901482263110

namespace A270473

/-- `A114283(∑[n])²` -/
def P6985961901482263110.Spec : Prop :=
  ∀ n, P6985961901482263110.a n = A270473 n

end A270473

/-! ## A270473.P5694310264681364612

`A125693(∑[n])²`
-/

namespace A270473.P5694310264681364612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125693 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A270473.P5694310264681364612

namespace A270473

/-- `A125693(∑[n])²` -/
def P5694310264681364612.Spec : Prop :=
  ∀ n, P5694310264681364612.a n = A270473 n

end A270473

/-! ## A270473.P9041629564472224147

`A183189(∑[n])²`
-/

namespace A270473.P9041629564472224147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183189 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A270473.P9041629564472224147

namespace A270473

/-- `A183189(∑[n])²` -/
def P9041629564472224147.Spec : Prop :=
  ∀ n, P9041629564472224147.a n = A270473 n

end A270473

/-! ## A270473.P9182725415103436413

`A193723(∑[n])²`
-/

namespace A270473.P9182725415103436413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193723 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A270473.P9182725415103436413

namespace A270473

/-- `A193723(∑[n])²` -/
def P9182725415103436413.Spec : Prop :=
  ∀ n, P9182725415103436413.a n = A270473 n

end A270473

/-! ## A270473.P6011417183532328137

`A025579(Δ[n²])`
-/

namespace A270473.P6011417183532328137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A270473.P6011417183532328137

namespace A270473

/-- `A025579(Δ[n²])` -/
def P6011417183532328137.Spec : Prop :=
  ∀ n, P6011417183532328137.a n = A270473 n

end A270473

/-! ## A270473.P1690237983479589658

`Δ[A094388(n)]²`
-/

namespace A270473.P1690237983479589658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A270473.P1690237983479589658

namespace A270473

/-- `Δ[A094388(n)]²` -/
def P1690237983479589658.Spec : Prop :=
  ∀ n, P1690237983479589658.a n = A270473 n

end A270473

/-! ## A270473.P18220171599325224957

`Δ[A140429(n)]²`
-/

namespace A270473.P18220171599325224957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A270473.P18220171599325224957

namespace A270473

/-- `Δ[A140429(n)]²` -/
def P18220171599325224957.Spec : Prop :=
  ∀ n, P18220171599325224957.a n = A270473 n

end A270473

/-! ## A270473.P135399066410795750

`record[A114283(n)²]`
-/

namespace A270473.P135399066410795750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114283 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270473.P135399066410795750

namespace A270473

/-- `record[A114283(n)²]` -/
def P135399066410795750.Spec : Prop :=
  ∀ n, P135399066410795750.a n = A270473 n

end A270473

/-! ## A270473.P10628748695628346358

`(1-A052919(n))²`
-/

namespace A270473.P10628748695628346358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A052919 n) ^ 2

end

end A270473.P10628748695628346358

namespace A270473

/-- `(1-A052919(n))²` -/
def P10628748695628346358.Spec : Prop :=
  ∀ n, P10628748695628346358.a n = A270473 n

end A270473

/-! ## A270473.P17819417012625581071

`A182522(2*n)²`
-/

namespace A270473.P17819417012625581071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (2 * n) ^ 2

end

end A270473.P17819417012625581071

namespace A270473

/-- `A182522(2*n)²` -/
def P17819417012625581071.Spec : Prop :=
  ∀ n, P17819417012625581071.a n = A270473 n

end A270473

/-!
# A270474: Integers k such that A256832(k) is not divisible by k*(k+1)/2.

The programs for A270474, there is no canonical definition to state claims against.
-/

/-! ## A270474.P14424068010694133237

`A213891(floor(n/2)+1)-char[2*n]`
-/

namespace A270474.P14424068010694133237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213891 (⌊(n : ℚ) / 2⌋ + 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A270474.P14424068010694133237

/-! ## A270474.P14504103408396429425

`n%2+A213891(A008619(n))-1`
-/

namespace A270474.P14504103408396429425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + (A213891 (A008619 n).toNat - 1)

end

end A270474.P14504103408396429425

/-! ## A270474.P9746118907244784013

`∪[A213891(n+1)-1, A213891(n+1)]`
-/

namespace A270474.P9746118907244784013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213891 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270474.P9746118907244784013

/-! ## A270474.P6969731838384945510

`A000035(n)+A213891(A008619(n))-1`
-/

namespace A270474.P6969731838384945510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A213891 (A008619 n).toNat - 1)

end

end A270474.P6969731838384945510

/-! ## A270474.P16742630264511766030

`xor(A000035(n+1), A213891(A008619(n)))`
-/

namespace A270474.P16742630264511766030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (n + 1)) (A213891 (A008619 n).toNat)

end

end A270474.P16742630264511766030

/-! ## A270474.P1432516227954930420

`xor(A213891(A008619(n))-1, A000035(n²))`
-/

namespace A270474.P1432516227954930420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A213891 (A008619 n).toNat - 1) (A000035 (n ^ 2))

end

end A270474.P1432516227954930420

/-! ## A270474.P8204135428133957725

`char[A005408(n)]+A213891(A008619(n))-1`
-/

namespace A270474.P8204135428133957725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A213891 (A008619 n).toNat - 1)

end

end A270474.P8204135428133957725

/-! ## A270474.P7315042141986562673

`∪[A213891(n+1), A000010(A213891(n+1))]`
-/

namespace A270474.P7315042141986562673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A213891 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270474.P7315042141986562673

/-! ## A270474.P10661490293788597300

`char[A000265(n+1)]+A213891(A008619(n))-1`
-/

namespace A270474.P10661490293788597300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A213891 (A008619 n).toNat - 1)

end

end A270474.P10661490293788597300

/-!
# A270475: Integers n such that A003266(n) is not divisible by n*(n+1)/2.

The programs for A270475, there is no canonical definition to state claims against.
-/

/-! ## A270475.P48762709270180235

`∪[A270777(n+2)-1, A270777(n+2)]`
-/

namespace A270475.P48762709270180235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270777 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270777 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270475.P48762709270180235

/-! ## A270475.P5049182137167601516

`A040001(n)+A270777(A065033(n+4))-2`
-/

namespace A270475.P5049182137167601516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n + (A270777 (A065033 (n + 4)).toNat - 2)

end

end A270475.P5049182137167601516

/-! ## A270475.P2032066899140479832

`∪[A270777(n+1), A000010(A270777(n+3))]`
-/

namespace A270475.P2032066899140479832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A270777 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A270475.P2032066899140479832

/-! ## A270475.P3775291423042550127

`eq[A151359(n), A285351(A072618(n+2))]`
-/

namespace A270475.P3775291423042550127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285351 (A072618 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270475.P3775291423042550127

/-!
# A270478: Denominators of r-Egyptian fraction expansion for sqrt(2) - 1, where r(k) = 1/Prime(k).

The programs for A270478, there is no canonical definition to state claims against.
-/

/-! ## A270478.P9679708387471098919

`A250470(A143293(n+1)-A006879(n))`
-/

namespace A270478.P9679708387471098919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (A143293 (n + 1) - A006879 n).toNat

end

end A270478.P9679708387471098919

/-!
# A270487: Denominators of r-Egyptian fraction expansion for (1/2)^(1/3), where r(k) = 1/Prime(k).

The programs for A270487, there is no canonical definition to state claims against.
-/

/-! ## A270487.P2548785378142958583

`A130935(A015462(n)+1)`
-/

namespace A270487.P2548785378142958583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130935 (A015462 n + 1).toNat

end

end A270487.P2548785378142958583

/-! ## A270487.P11649236694805235473

`A370808(A213385(n+1))`
-/

namespace A270487.P11649236694805235473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370808 (A213385 (n + 1)).toNat

end

end A270487.P11649236694805235473

/-!
# A270488: Number of ordered ways to write n = x^2 + y*(y+1) + z*(z^2+1), where x, y and z are nonnegative integers.

The programs for A270488, there is no canonical definition to state claims against.
-/

/-! ## A270488.P15124535676712925540

`A001221(A000203(A090882(n+1)+A001358(n+1)))`
-/

namespace A270488.P15124535676712925540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000203 (A090882 (n + 1) + A001358 (n + 1)).toNat).toNat

end

end A270488.P15124535676712925540

/-!
# A270489: Sum_{k=0..n} ((binomial(3*k,k)*binomial(2*n-k,n))/(2*k+1)).

The programs for A270489, there is no canonical definition to state claims against.
-/

/-! ## A270489.P14061834835738401384

`A355247(n)-A222254(A129327(n))`
-/

namespace A270489.P14061834835738401384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355247 n - A222254 (A129327 n).toNat

end

end A270489.P14061834835738401384

/-!
# A270490: a(n) = Sum_{i=0..(n+1)/2} binomial(2*i+1,i)*binomial(2*n-2*i,n)/(2*i+1).

The programs for A270490, there is no canonical definition to state claims against.
-/

/-! ## A270490.P2595613362185689155

`A328080(n)-A007949(A005030(n))`
-/

namespace A270490.P2595613362185689155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328080 n - A007949 (A005030 n).toNat

end

end A270490.P2595613362185689155

/-! ## A270490.P203205111871497698

`A328080(n)-A229951(A229966(n+1))`
-/

namespace A270490.P203205111871497698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328080 n - A229951 (A229966 (n + 1)).toNat

end

end A270490.P203205111871497698

/-! ## A270490.P6556443527980210606

`A328078(2*n)-A001221(A002110(n))`
-/

namespace A270490.P6556443527980210606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328078 (2 * n) - A001221 (A002110 n).toNat

end

end A270490.P6556443527980210606

/-!
# A270492: a(n) = gcd(r) where r ranges over the orders of all subgroups whose direct product gives the multiplicative group modulo n.

The programs for A270492, there is no canonical definition to state claims against.
-/

/-! ## A270492.P5130035033675202354

`A052928(A000010(n+1)/A290084(n+1))`
-/

namespace A270492.P5130035033675202354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A290084 (n + 1) : ℚ))).toNat

end

end A270492.P5130035033675202354

/-! ## A270492.P3934715357212938821

`A014681(A109606(n+1))/A290084(n+1)`
-/

namespace A270492.P3934715357212938821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014681 (A109606 (n + 1)).toNat : ℚ) / (A290084 (n + 1) : ℚ)

end

end A270492.P3934715357212938821

/-! ## A270492.P16457404261667398762

`A237420(A000010(n+1)/A290084(n+1))`
-/

namespace A270492.P16457404261667398762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A290084 (n + 1) : ℚ))).toNat

end

end A270492.P16457404261667398762

/-! ## A270492.P14701508977293020761

`A277030(A219793(n+1))/A290084(n+1)`
-/

namespace A270492.P14701508977293020761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277030 (A219793 (n + 1)).toNat : ℚ) / (A290084 (n + 1) : ℚ)

end

end A270492.P14701508977293020761

/-! ## A270492.P17124136920943157521

`A000010(n+1)%A289625(n+1)/A290084(n+1)`
-/

namespace A270492.P17124136920943157521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000010 (n + 1)) (A289625 (n + 1)) : ℚ) / (A290084 (n + 1) : ℚ)

end

end A270492.P17124136920943157521

/-!
# A270494: Sum of the sizes of the second blocks in all set partitions of {1,2,...,n}.

The programs for A270494, there is no canonical definition to state claims against.
-/

/-! ## A270494.P3078133361084661624

`∑[A270765(n+2)]`
-/

namespace A270494.P3078133361084661624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270765 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270494.P3078133361084661624

/-! ## A270494.P7773953124758777744

`∑[A270701(∑[n+2])]`
-/

namespace A270494.P7773953124758777744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270701 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270494.P7773953124758777744

/-! ## A270494.P10560729837671332796

`A270236(∑[n+1]+2)`
-/

namespace A270494.P10560729837671332796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A270494.P10560729837671332796

/-! ## A270494.P3268358292956758521

`∑[A270702(∑[n+1]+2)]`
-/

namespace A270494.P3268358292956758521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270702 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270494.P3268358292956758521

/-! ## A270494.P8867842359290341889

`record[A270236(A080036(n))]`
-/

namespace A270494.P8867842359290341889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270494.P8867842359290341889

/-! ## A270494.P3246366400802072223

`record[A270236(lt[2, A131818(n+1)])]`
-/

namespace A270494.P3246366400802072223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270494.P3246366400802072223

/-! ## A270494.P7965230105139372206

`record[A270236(lt[2, A135223(n+1)])]`
-/

namespace A270494.P7965230105139372206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270494.P7965230105139372206

/-! ## A270494.P17673132038170629203

`∑[Δ[A124427(n+1)]-A000110(n+1)]`
-/

namespace A270494.P17673132038170629203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270494.P17673132038170629203

/-!
# A270495: Sum of the sizes of the third blocks in all set partitions of {1,2,...,n}.

The programs for A270495, there is no canonical definition to state claims against.
-/

/-! ## A270495.P16861038474915482429

`A270236(∑[n+2]+4)`
-/

namespace A270495.P16861038474915482429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270495.P16861038474915482429

/-! ## A270495.P17630406451279532967

`A270236(A167614(n+1))^A178334(n)`
-/

namespace A270495.P17630406451279532967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270236 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A270495.P17630406451279532967

/-! ## A270495.P423793708924720762

`or(A000007(n), A270236(A167614(n+1)))`
-/

namespace A270495.P423793708924720762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A270236 (A167614 (n + 1)).toNat)

end

end A270495.P423793708924720762

/-! ## A270495.P9388066093322043424

`or(A003982(n), A270236(A167614(n+1)))`
-/

namespace A270495.P9388066093322043424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A270236 (A167614 (n + 1)).toNat)

end

end A270495.P9388066093322043424

/-! ## A270495.P14284028510599671554

`A025444(n)!*A270236(A167614(n+1))`
-/

namespace A270495.P14284028510599671554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025444 n).toNat : ℤ) * A270236 (A167614 (n + 1)).toNat

end

end A270495.P14284028510599671554

/-! ## A270495.P8855161820284354566

`A001222(A061237(n+1))*A270236(A167614(n+1))`
-/

namespace A270495.P8855161820284354566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061237 (n + 1)).toNat * A270236 (A167614 (n + 1)).toNat

end

end A270495.P8855161820284354566

/-! ## A270495.P12127929738786679850

`A001222(A061242(n+1))*A270236(A167614(n+1))`
-/

namespace A270495.P12127929738786679850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061242 (n + 1)).toNat * A270236 (A167614 (n + 1)).toNat

end

end A270495.P12127929738786679850

/-! ## A270495.P15101967354728743394

`A270236(A167614(n+1))%A157097(n)`
-/

namespace A270495.P15101967354728743394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270236 (A167614 (n + 1)).toNat) (A157097 n)

end

end A270495.P15101967354728743394

/-!
# A270496: Sum of the sizes of the fourth blocks in all set partitions of {1,2,...,n}.

The programs for A270496, there is no canonical definition to state claims against.
-/

/-! ## A270496.P8834900371085300397

`A270236(∑[n+3]+7)`
-/

namespace A270496.P8834900371085300397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A270496.P8834900371085300397

/-! ## A270496.P5451330887978620062

`or(char[2], A270236(A167499(n+2)-1))`
-/

namespace A270496.P5451330887978620062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A270236 (A167499 (n + 2) - 1).toNat)

end

end A270496.P5451330887978620062

/-! ## A270496.P15002938582330335250

`A270236(A055999(n)+10)^A178334(n)`
-/

namespace A270496.P15002938582330335250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270236 (A055999 n + 10).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A270496.P15002938582330335250

/-! ## A270496.P14538281728180684380

`gcd(A000038(n), A270236(A055999(n)+10))`
-/

namespace A270496.P14538281728180684380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A270236 (A055999 n + 10).toNat)

end

end A270496.P14538281728180684380

/-! ## A270496.P14299876296325471366

`A270236(A167499(n+2)-1)^abs(A011608(n))`
-/

namespace A270496.P14299876296325471366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270236 (A167499 (n + 2) - 1).toNat : ℚ) ^ (|A011608 n| : ℤ)

end

end A270496.P14299876296325471366

/-! ## A270496.P2766076148368268490

`A270236(A167499(n+2)-1)^abs(A057428(n))`
-/

namespace A270496.P2766076148368268490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270236 (A167499 (n + 2) - 1).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A270496.P2766076148368268490

/-! ## A270496.P9385693063739912184

`char[A002262(n)]*A270236(A167499(n+2)-1)`
-/

namespace A270496.P9385693063739912184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A270236 (A167499 (n + 2) - 1).toNat

end

end A270496.P9385693063739912184

/-! ## A270496.P16941978373353527437

`A270236(A052905(n)+9)+val(A000040(n+1), 4)`
-/

namespace A270496.P16941978373353527437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A052905 n + 9).toNat + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A270496.P16941978373353527437

/-! ## A270496.P4146799020999455272

`A270236(A052905(n)+9)^A001222(A008578(n+1))`
-/

namespace A270496.P4146799020999455272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270236 (A052905 n + 9).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A270496.P4146799020999455272

/-!
# A270497: Sum of the sizes of the fifth blocks in all set partitions of {1,2,...,n}.

The programs for A270497, there is no canonical definition to state claims against.
-/

/-! ## A270497.P11892330906376007364

`A270236(A167499(n+3))`
-/

namespace A270497.P11892330906376007364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A167499 (n + 3)).toNat

end

end A270497.P11892330906376007364

/-! ## A270497.P14334601922522637405

`A270236(A056000(n)+15)`
-/

namespace A270497.P14334601922522637405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A056000 n + 15).toNat

end

end A270497.P14334601922522637405

/-! ## A270497.P13169938707751603863

`A270236(A253145(n+3)+5)`
-/

namespace A270497.P13169938707751603863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A253145 (n + 3) + 5).toNat

end

end A270497.P13169938707751603863

/-! ## A270497.P3744179588501423343

`A270236(A000217(n+4)+5)`
-/

namespace A270497.P3744179588501423343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A000217 (n + 4) + 5).toNat

end

end A270497.P3744179588501423343

/-! ## A270497.P16367351754104965435

`A270236(A034856(n+3)+7)`
-/

namespace A270497.P16367351754104965435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A034856 (n + 3) + 7).toNat

end

end A270497.P16367351754104965435

/-! ## A270497.P4890663667071798522

`A270236(A055998(n+2)+8)`
-/

namespace A270497.P4890663667071798522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A055998 (n + 2) + 8).toNat

end

end A270497.P4890663667071798522

/-!
# A270498: Sum of the sizes of the sixth blocks in all set partitions of {1,2,...,n}.

The programs for A270498, there is no canonical definition to state claims against.
-/

/-! ## A270498.P5520403619440195927

`A270236(A166136(n+4))`
-/

namespace A270498.P5520403619440195927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A166136 (n + 4)).toNat

end

end A270498.P5520403619440195927

/-! ## A270498.P5475075650410625398

`A270236(∑[A020710(n)]+16)`
-/

namespace A270498.P5475075650410625398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A270498.P5475075650410625398

/-! ## A270498.P14907581189719225727

`A270236(A167499(n+4)+1)`
-/

namespace A270498.P14907581189719225727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A167499 (n + 4) + 1).toNat

end

end A270498.P14907581189719225727

/-! ## A270498.P8596882465422169602

`A270236(A000124(n+5)+5)`
-/

namespace A270498.P8596882465422169602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A000124 (n + 5) + 5).toNat

end

end A270498.P8596882465422169602

/-! ## A270498.P11159743031968093472

`A270236(A253145(n+4)+6)`
-/

namespace A270498.P11159743031968093472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A253145 (n + 4) + 6).toNat

end

end A270498.P11159743031968093472

/-! ## A270498.P12342327512676853581

`A270236(A000096(n+4)+7)`
-/

namespace A270498.P12342327512676853581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A000096 (n + 4) + 7).toNat

end

end A270498.P12342327512676853581

/-! ## A270498.P10650776178094092760

`A270236(A000217(n+5)+6)`
-/

namespace A270498.P10650776178094092760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A000217 (n + 5) + 6).toNat

end

end A270498.P10650776178094092760

/-!
# A270499: Sum of the sizes of the seventh blocks in all set partitions of {1,2,...,n}.

The programs for A270499, there is no canonical definition to state claims against.
-/

/-! ## A270499.P16529903648528079518

`A270236(A167499(n+5)+2)`
-/

namespace A270499.P16529903648528079518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A167499 (n + 5) + 2).toNat

end

end A270499.P16529903648528079518

/-! ## A270499.P593461045065369797

`A270236(A000124(n+6)+6)`
-/

namespace A270499.P593461045065369797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A000124 (n + 6) + 6).toNat

end

end A270499.P593461045065369797

/-! ## A270499.P16123439868436751462

`A270236(A000096(n+5)+8)`
-/

namespace A270499.P16123439868436751462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A000096 (n + 5) + 8).toNat

end

end A270499.P16123439868436751462

/-! ## A270499.P3036933323133019223

`A270236(A000217(n+6)+7)`
-/

namespace A270499.P3036933323133019223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A000217 (n + 6) + 7).toNat

end

end A270499.P3036933323133019223

/-! ## A270499.P16910535667625491078

`A270236(A155212(n+2)+15)`
-/

namespace A270499.P16910535667625491078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A155212 (n + 2) + 15).toNat

end

end A270499.P16910535667625491078

