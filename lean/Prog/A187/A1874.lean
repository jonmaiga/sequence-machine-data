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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A187400: Semiprimes with a semiprime average of the two factors.

The programs for A187400, the canonical program `A187400.P8729898359760027583` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187400 has offset 1).

The definition of A187400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187400.P10379902888245147158

`filter[A114988(n+1), A353480(#)]`
-/

namespace A187400.P10379902888245147158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A187400.P10379902888245147158

namespace A187400

/-- `filter[A114988(n+1), A353480(#)]` -/
def P10379902888245147158.Spec : Prop :=
  ∀ n, P10379902888245147158.a n = A187400 (n + 1)

end A187400

/-! ## A187400.P17458237595043645025

`filter[A114988(n+1), A353481(#)]`
-/

namespace A187400.P17458237595043645025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A187400.P17458237595043645025

namespace A187400

/-- `filter[A114988(n+1), A353481(#)]` -/
def P17458237595043645025.Spec : Prop :=
  ∀ n, P17458237595043645025.a n = A187400 (n + 1)

end A187400

/-! ## A187400.P8729898359760027583

`∩[A046315(n+1), A114988(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A187400

/-- `∩[A046315(n+1), A114988(n+1)]` -/
def P8729898359760027583.Spec : Prop :=
  ∀ n, (P8729898359760027583.a n : ℤ) = A187400 (n + 1)

theorem P8729898359760027583.correct : P8729898359760027583.Spec := by
  intro n
  simp only [A187400, Nat.add_sub_cancel]

end A187400

/-! ## A187400.P8806434358203341127

`∩[A046388(n+1), A114988(n+1)]`
-/

namespace A187400.P8806434358203341127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187400.P8806434358203341127

namespace A187400

/-- `∩[A046388(n+1), A114988(n+1)]` -/
def P8806434358203341127.Spec : Prop :=
  ∀ n, (P8806434358203341127.a n : ℤ) = A187400 (n + 1)

end A187400

/-! ## A187400.P16519525834871058195

`∩[A114988(n+1), A385350(n+1)]`
-/

namespace A187400.P16519525834871058195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A187400.P16519525834871058195

namespace A187400

/-- `∩[A114988(n+1), A385350(n+1)]` -/
def P16519525834871058195.Spec : Prop :=
  ∀ n, (P16519525834871058195.a n : ℤ) = A187400 (n + 1)

end A187400

/-!
# A187401: Numbers k such that k^2 + 1 = p*q, p and q primes and |p-q| is square.

The programs for A187401, there is no canonical definition to state claims against.
-/

/-! ## A187401.P6895614307343107055

`floor(sqrt(A268585(n+1)))`
-/

namespace A187401.P6895614307343107055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A268585 (n + 1))

end

end A187401.P6895614307343107055

/-! ## A187401.P8822789000803151998

`round(sqrt(A268585(Δ[n²]-n)))`
-/

namespace A187401.P8822789000803151998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A268585 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))

end

end A187401.P8822789000803151998

/-! ## A187401.P6851900318617493948

`sqrt(A268585(n+1)-A007318(∑[n]))`
-/

namespace A187401.P6851900318617493948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A268585 (n + 1) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A187401.P6851900318617493948

/-! ## A187401.P13054321903280299132

`sqrt(A268585(n+1)-A000041(gcd(n, n+1)))`
-/

namespace A187401.P13054321903280299132
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A268585 (n + 1) - A000041 (Nat.gcd n (n + 1)) : ℝ)

end

end A187401.P13054321903280299132

/-! ## A187401.P15188718551394030039

`sqrt(A268585(n+1)-log2(A020639(2*(n+1))))`
-/

namespace A187401.P15188718551394030039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A268585 (n + 1) : ℝ) - Real.logb 2 (A020639 (2 * (n + 1)) : ℝ))

end

end A187401.P15188718551394030039

/-!
# A187402: Number of (n+1)X(n+1) 0..2 arrays with diagonal zero and the i,j-th 2X2 subblock sum equal to the j,i-th 2X2 subblock sum.

The programs for A187402, there is no canonical definition to state claims against.
-/

/-! ## A187402.P10896149156609518373

`A187408(∑[n+2])`
-/

namespace A187402.P10896149156609518373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187402.P10896149156609518373

/-!
# A187403: Number of (n+1)X(n+1) 0..3 arrays with diagonal zero and the i,j-th 2X2 subblock sum equal to the j,i-th 2X2 subblock sum.

The programs for A187403, there is no canonical definition to state claims against.
-/

/-! ## A187403.P8608802506617850859

`A187408(∑[n+3]+1)`
-/

namespace A187403.P8608802506617850859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187408 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187403.P8608802506617850859

/-!
# A187404: Number of (n+1)X(n+1) 0..4 arrays with diagonal zero and the i,j-th 2X2 subblock sum equal to the j,i-th 2X2 subblock sum.

The programs for A187404, there is no canonical definition to state claims against.
-/

/-! ## A187404.P8419659060438845193

`A187408(A141214(n+1))`
-/

namespace A187404.P8419659060438845193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187408 (A141214 (n + 1)).toNat

end

end A187404.P8419659060438845193

/-! ## A187404.P12550854974407623352

`A187408(A167614(n+1)+A005408(n))`
-/

namespace A187404.P12550854974407623352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187408 (A167614 (n + 1) + A005408 n).toNat

end

end A187404.P12550854974407623352

/-!
# A187405: Number of (n+1)X(n+1) 0..5 arrays with diagonal zero and the i,j-th 2X2 subblock sum equal to the j,i-th 2X2 subblock sum.

The programs for A187405, there is no canonical definition to state claims against.
-/

/-! ## A187405.P4101976947738179913

`A187408(Δ[A264443(n)])`
-/

namespace A187405.P4101976947738179913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187408 (f1 (n + 1) - f1 n).toNat

end

end A187405.P4101976947738179913

/-!
# A187407: Number of (n+1) X (n+1) 0..7 arrays with diagonal zero and the i,j-th 2 X 2 subblock sum equal to the j,i-th 2 X 2 subblock sum.

The programs for A187407, there is no canonical definition to state claims against.
-/

/-! ## A187407.P5385833310263929281

`A187408(abs(A055999(n+4)-1)+1)`
-/

namespace A187407.P5385833310263929281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187408 (|A055999 (n + 4) - 1| + 1).toNat

end

end A187407.P5385833310263929281

/-!
# A187408: T(n,k)=Number of (n+1)X(n+1) 0..k arrays with diagonal zero and the i,j-th 2X2 subblock sum equal to the j,i-th 2X2 subblock sum.

The programs for A187408, there is no canonical definition to state claims against.
-/

/-! ## A187408.P16768823638123306270

`A023022(A275923(n)+A107579(n+1))`
-/

namespace A187408.P16768823638123306270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A275923 n + A107579 (n + 1)).toNat

end

end A187408.P16768823638123306270

/-!
# A187409: n^2 + nextprime(n^2).

The programs for A187409, there is no canonical definition to state claims against.
-/

/-! ## A187409.P915763203133201779

`A013634((1+n)²)`
-/

namespace A187409.P915763203133201779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 ((1 + n) ^ 2)

end

end A187409.P915763203133201779

/-! ## A187409.P2663301824752464229

`record[A013634((1-n)²)]`
-/

namespace A187409.P2663301824752464229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187409.P2663301824752464229

/-! ## A187409.P15157641660668617045

`A013634(n*(n+2))+1`
-/

namespace A187409.P15157641660668617045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (n * (n + 2)) + 1

end

end A187409.P15157641660668617045

/-! ## A187409.P3392627336643284032

`A007491(n+1)+(n+1)²`
-/

namespace A187409.P3392627336643284032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A187409.P3392627336643284032

/-! ## A187409.P9630546858154576319

`A007918((n+1)²)+(n+1)²`
-/

namespace A187409.P9630546858154576319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1) ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A187409.P9630546858154576319

/-!
# A187410: Complement of A187319.

The programs for A187410, there is no canonical definition to state claims against.
-/

/-! ## A187410.P13755556528133679171

`comp[A187319(n+1)-1]+1`
-/

namespace A187410.P13755556528133679171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187319 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187410.P13755556528133679171

/-! ## A187410.P267813329285009561

`eq[char[A187319(n+1)], A151933(n)]`
-/

namespace A187410.P267813329285009561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187319 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187410.P267813329285009561

/-! ## A187410.P13040500140571817954

`∑[A190693(eq[1, n/gcd(36, n)])+2]`
-/

namespace A187410.P13040500140571817954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 36 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190693 (SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187410.P13040500140571817954

/-! ## A187410.P8639104908165274452

`A227216(A002212(n))+A161187(n+1)`
-/

namespace A187410.P8639104908165274452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 (A002212 n).toNat + A161187 (n + 1)

end

end A187410.P8639104908165274452

/-! ## A187410.P7087287079156659376

`A187946(A187928(n))+A187900(n+1)`
-/

namespace A187410.P7087287079156659376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187946 (A187928 (n + 10)).toNat + A187900 (n + 1)

end

end A187410.P7087287079156659376

/-!
# A187411: Rank transform of the sequence floor(n*sqrt(3)); complement of A187412.

The programs for A187411, there is no canonical definition to state claims against.
-/

/-! ## A187411.P16890540086472111707

`eq[char[A187412(n+1)], A151933(n)]`
-/

namespace A187411.P16890540086472111707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187412 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187411.P16890540086472111707

/-! ## A187411.P5992444523452721085

`A002024(A060820(n+1))-A187233(n+1)`
-/

namespace A187411.P5992444523452721085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A060820 (n + 1)).toNat - A187233 (n + 1)

end

end A187411.P5992444523452721085

/-! ## A187411.P2625943662492662057

`eq[char[A187412(n+1)], A151622(n)]`
-/

namespace A187411.P2625943662492662057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187412 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187411.P2625943662492662057

/-! ## A187411.P18036717922679551590

`A220539(n+1)%2+2*n`
-/

namespace A187411.P18036717922679551590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220539 (n + 1)) 2 + (2 * n : ℤ)

end

end A187411.P18036717922679551590

/-! ## A187411.P9956483439659673640

`A010054(A078495(n))+2*n`
-/

namespace A187411.P9956483439659673640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A078495 n).toNat + (2 * n : ℤ)

end

end A187411.P9956483439659673640

/-!
# A187412: Complement of A187411.

The programs for A187412, there is no canonical definition to state claims against.
-/

/-! ## A187412.P4395603796954283997

`A110532(3*n+2)+A001035(A023929(n))`
-/

namespace A187412.P4395603796954283997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (3 * n + 2) + A001035 (A023929 n).toNat

end

end A187412.P4395603796954283997

/-! ## A187412.P15324121341905692100

`A204164(A157884(3*n+1)+A046087(n+1))`
-/

namespace A187412.P15324121341905692100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A157884 (3 * n + 1) + A046087 (n + 1)).toNat

end

end A187412.P15324121341905692100

/-! ## A187412.P18240856481462739439

`A110532(3*n+2)+A057427(A264131(n+1))`
-/

namespace A187412.P18240856481462739439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (3 * n + 2) + A057427 (A264131 (n + 1)).toNat

end

end A187412.P18240856481462739439

/-! ## A187412.P2486662816950044686

`A110532(3*n+2)+A001035(A023931(n+2))`
-/

namespace A187412.P2486662816950044686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (3 * n + 2) + A001035 (A023931 (n + 2)).toNat

end

end A187412.P2486662816950044686

/-! ## A187412.P9171192378467066789

`A110532(3*n+2)+A000688(A002385(n+4))`
-/

namespace A187412.P9171192378467066789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (3 * n + 2) + A000688 (A002385 (n + 4)).toNat

end

end A187412.P9171192378467066789

/-!
# A187413: Rank transform of the lower Wythoff sequence; complement of A187414.

The programs for A187413, there is no canonical definition to state claims against.
-/

/-! ## A187413.P12729687091581981321

`comp[A187414(n+1)-1]+1`
-/

namespace A187413.P12729687091581981321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187414 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187413.P12729687091581981321

/-! ## A187413.P17714005840525820542

`eq[char[A187414(n+1)], A000038(n)]`
-/

namespace A187413.P17714005840525820542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187413.P17714005840525820542

/-! ## A187413.P10127249310039798936

`eq[char[A187414(n+1)], A151933(n)]`
-/

namespace A187413.P10127249310039798936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187414 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187413.P10127249310039798936

/-! ## A187413.P7751188902569641317

`A286999(n+1)-A290081(A156582(n))`
-/

namespace A187413.P7751188902569641317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286999 (n + 1) - A290081 (A156582 n).toNat

end

end A187413.P7751188902569641317

/-! ## A187413.P8435977870844134077

`A192002(A003231(n+1))+n+1`
-/

namespace A187413.P8435977870844134077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A003231 (n + 1)).toNat + (n + 1 : ℤ)

end

end A187413.P8435977870844134077

/-!
# A187414: Complement of A187413.

The programs for A187414, there is no canonical definition to state claims against.
-/

/-! ## A187414.P14982967297569925331

`n+1+A005206(A187413(n+1))`
-/

namespace A187414.P14982967297569925331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A005206 (A187413 (n + 1)).toNat

end

end A187414.P14982967297569925331

/-! ## A187414.P8561219765438957880

`eq[char[A187413(n+1)], A000007(n)]`
-/

namespace A187414.P8561219765438957880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187414.P8561219765438957880

/-! ## A187414.P6263074040149956376

`eq[char[A187413(n+1)], A000038(n)]`
-/

namespace A187414.P6263074040149956376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187414.P6263074040149956376

/-! ## A187414.P1920036204918547437

`eq[char[A187413(n+1)], A151933(n)]`
-/

namespace A187414.P1920036204918547437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187413 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187414.P1920036204918547437

/-! ## A187414.P12549327245080649436

`A004526(A340932(3*n+2)%A272595(3*n+2))`
-/

namespace A187414.P12549327245080649436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A340932 (3 * n + 2)) (A272595 (3 * n + 2))).toNat

end

end A187414.P12549327245080649436

/-!
# A187415: Rank transform of the sequence floor(n*(-1+sqrt(5))); complement of A187416.

The programs for A187415, there is no canonical definition to state claims against.
-/

/-! ## A187415.P12956464666730640178

`comp[A187416(n+1)-1]+1`
-/

namespace A187415.P12956464666730640178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187416 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187415.P12956464666730640178

/-! ## A187415.P10079028026135430053

`A094500(A288474(n+1))`
-/

namespace A187415.P10079028026135430053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (A288474 (n + 1)).toNat

end

end A187415.P10079028026135430053

/-! ## A187415.P7707249867436025323

`A003152(n+1)-A079261(A219282(n+2))`
-/

namespace A187415.P7707249867436025323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - A079261 (A219282 (n + 2)).toNat

end

end A187415.P7707249867436025323

/-! ## A187415.P11012466690061728983

`A003152(n+1)-A185014(A000009(2*(n+1)))`
-/

namespace A187415.P11012466690061728983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - A185014 (A000009 (2 * (n + 1))).toNat

end

end A187415.P11012466690061728983

/-! ## A187415.P1225749205800268151

`A379801(n)+A188470(A172351(n+1)+1)`
-/

namespace A187415.P1225749205800268151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379801 n + A188470 (A172351 (n + 1) + 1).toNat

end

end A187415.P1225749205800268151

/-!
# A187416: Complement of A187415.

The programs for A187416, there is no canonical definition to state claims against.
-/

/-! ## A187416.P5809505633458751742

`A004526(A000201(A187415(n+1)+1))+n+1`
-/

namespace A187416.P5809505633458751742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000201 (A187415 (n + 1) + 1).toNat).toNat + (n + 1 : ℤ)

end

end A187416.P5809505633458751742

/-! ## A187416.P16205190528740641761

`A194979(A189458(n+1))%A089585(2*n+5)`
-/

namespace A187416.P16205190528740641761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194979 (A189458 (n + 1)).toNat) (A089585 (2 * n + 5))

end

end A187416.P16205190528740641761

/-! ## A187416.P4598676660708216762

`xor(A003151(n+1), A025456(A192023(n+1)))`
-/

namespace A187416.P4598676660708216762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003151 (n + 1)) (A025456 (A192023 (n + 1)).toNat)

end

end A187416.P4598676660708216762

/-! ## A187416.P16094115659212780985

`∑[A036453(A147312(3*n+4)+1)+1]`
-/

namespace A187416.P16094115659212780985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A147312 (3 * n + 4) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187416.P16094115659212780985

/-! ## A187416.P9854074629095674902

`∑[A000217(A368521(3*n+5)+3)%4]`
-/

namespace A187416.P9854074629095674902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A368521 (3 * n + 5) + 3).toNat) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187416.P9854074629095674902

/-!
# A187417: Rank transform of A003159; complement of A187418.

The programs for A187417, there is no canonical definition to state claims against.
-/

/-! ## A187417.P5951708610562372766

`eq[char[A187418(n+1)], A000007(n)]`
-/

namespace A187417.P5951708610562372766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187417.P5951708610562372766

/-! ## A187417.P2492900212332683658

`eq[char[A187418(n+1)], A151933(n)]`
-/

namespace A187417.P2492900212332683658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187417.P2492900212332683658

/-! ## A187417.P7644623641771041633

`eq[char[A187418(n+1)], A151622(n)]`
-/

namespace A187417.P7644623641771041633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187418 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187417.P7644623641771041633

/-! ## A187417.P10420322644571224754

`∑[A046072(A001704(A207785(n+1)))]`
-/

namespace A187417.P10420322644571224754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A001704 (A207785 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187417.P10420322644571224754

/-! ## A187417.P7941243988808548297

`A286692(n+1)+A092248(A007783(n+4))`
-/

namespace A187417.P7941243988808548297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286692 (n + 1) + A092248 (A007783 (n + 4)).toNat

end

end A187417.P7941243988808548297

/-!
# A187418: Complement of A187417.

The programs for A187418, there is no canonical definition to state claims against.
-/

/-! ## A187418.P1149720201834747528

`eq[char[A187417(n+1)], A000007(n)]`
-/

namespace A187418.P1149720201834747528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187418.P1149720201834747528

/-! ## A187418.P18402660377011273389

`eq[char[A187417(n+1)], A151933(n)]`
-/

namespace A187418.P18402660377011273389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187417 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187418.P18402660377011273389

/-! ## A187418.P644771429868011118

`lt[A263428(A000041(n)), A269158(n+1)]`
-/

namespace A187418.P644771429868011118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263428 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187418.P644771429868011118

/-! ## A187418.P9081133077338786684

`lt[A337144(A376779(3*n+2)), A132881(3*n+4)]`
-/

namespace A187418.P9081133077338786684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337144 (A376779 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A187418.P9081133077338786684

/-!
# A187419: Least odd prime p such that p*2^(2^n)+1 is prime.

The programs for A187419, there is no canonical definition to state claims against.
-/

/-! ## A187419.P1913598288267215415

`A134855(2^n)`
-/

namespace A187419.P1913598288267215415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134855 (2 ^ n)

end

end A187419.P1913598288267215415

/-! ## A187419.P2052716969785581443

`A051886(A090129(n+2))`
-/

namespace A187419.P2052716969785581443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051886 (A090129 (n + 2)).toNat

end

end A187419.P2052716969785581443

/-! ## A187419.P1084446747806264990

`A051886(lcm(2, A000079(n)))`
-/

namespace A187419.P1084446747806264990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051886 (Int.lcm 2 (A000079 n))

end

end A187419.P1084446747806264990

/-! ## A187419.P11049816096603526338

`A051886(A000079(A000007(n)+n))`
-/

namespace A187419.P11049816096603526338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051886 (A000079 (A000007 n + (n : ℤ)).toNat).toNat

end

end A187419.P11049816096603526338

/-! ## A187419.P12854446489814767297

`A051886(A000051(n)-A057427(n))`
-/

namespace A187419.P12854446489814767297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051886 (A000051 n - A057427 n).toNat

end

end A187419.P12854446489814767297

/-!
# A187420: Number of (n+1)X3 0..2 arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A187420, there is no canonical definition to state claims against.
-/

/-! ## A187420.P13783805348278400126

`A187425(∑[n+1]+2)`
-/

namespace A187420.P13783805348278400126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187420.P13783805348278400126

/-! ## A187420.P4964405398351225923

`record[A187425(A133263(abs(1-n)))]`
-/

namespace A187420.P4964405398351225923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187420.P4964405398351225923

/-! ## A187420.P5108717204407620412

`record[A187425(A114091(n+1)+1)]`
-/

namespace A187420.P5108717204407620412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187420.P5108717204407620412

/-! ## A187420.P9460700519709469826

`record[A187425(A166017(n+1)+1)]`
-/

namespace A187420.P9460700519709469826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187420.P9460700519709469826

/-! ## A187420.P8110002620647221129

`record[A187425(A286235(n+1)+1)]`
-/

namespace A187420.P8110002620647221129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187420.P8110002620647221129

/-!
# A187421: Number of (n+1)X4 0..2 arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A187421, there is no canonical definition to state claims against.
-/

/-! ## A187421.P9125018137669390256

`A187425(∑[n+2]+4)`
-/

namespace A187421.P9125018137669390256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187421.P9125018137669390256

/-! ## A187421.P5092187086323836096

`lcm((-1)^n, A187425(A167614(n+1)))`
-/

namespace A187421.P5092187086323836096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A187425 (A167614 (n + 1)).toNat)

end

end A187421.P5092187086323836096

/-! ## A187421.P11498063426335869328

`A187425(A167614(n+1))+A014083(n)`
-/

namespace A187421.P11498063426335869328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A167614 (n + 1)).toNat + A014083 n

end

end A187421.P11498063426335869328

/-! ## A187421.P9621444964767670513

`A187425(A167614(n+1))+A070565(n)`
-/

namespace A187421.P9621444964767670513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A167614 (n + 1)).toNat + A070565 n

end

end A187421.P9621444964767670513

/-! ## A187421.P5732879132690351662

`A187425(A167614(n+1))+A102683(n)`
-/

namespace A187421.P5732879132690351662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A167614 (n + 1)).toNat + A102683 n

end

end A187421.P5732879132690351662

/-!
# A187422: Number of (n+1)X5 0..2 arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A187422, there is no canonical definition to state claims against.
-/

/-! ## A187422.P17314883634276800018

`A187425(∑[n+3]+7)`
-/

namespace A187422.P17314883634276800018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A187422.P17314883634276800018

/-! ## A187422.P2122037875574320774

`A187425(A000124(n+3)+3)+A081130(n)`
-/

namespace A187422.P2122037875574320774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A000124 (n + 3) + 3).toNat + A081130 n

end

end A187422.P2122037875574320774

/-!
# A187423: Number of (n+1)X6 0..2 arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A187423, there is no canonical definition to state claims against.
-/

/-! ## A187423.P9441224149898345052

`A187425(C(n+5, 2)+5)`
-/

namespace A187423.P9441224149898345052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (Nat.choose (n + 5) 2 + 5)

end

end A187423.P9441224149898345052

/-!
# A187424: Number of (n+1)X7 0..2 arrays with every 2X2 subblock determinant equal to exactly one or two horizontal and vertical neighbor 2X2 subblock determinants.

The programs for A187424, there is no canonical definition to state claims against.
-/

/-! ## A187424.P2206441656162219988

`A187425(A374007(n+1))`
-/

namespace A187424.P2206441656162219988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187425 (A374007 (n + 1)).toNat

end

end A187424.P2206441656162219988

/-!
# A187426: Decimal expansion of (3-phi)^2 = 10 - 5*phi where phi is the golden ratio.

The programs for A187426, there is no canonical definition to state claims against.
-/

/-! ## A187426.P1371768256804439179

`9-A019863(n)`
-/

namespace A187426.P1371768256804439179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019863 n

end

end A187426.P1371768256804439179

/-! ## A187426.P3511896931837031847

`9-A296182(n+1)`
-/

namespace A187426.P3511896931837031847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A296182 (n + 1 + 1)

end

end A187426.P3511896931837031847

/-! ## A187426.P6883419671482098881

`a(n-1)-Δ[A296182(n)]` with `a(0)=1`
-/

namespace A187426.P6883419671482098881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A187426.P6883419671482098881

/-! ## A187426.P13423949299372119100

`A229759(n+1)+A187798(n)-A225667(n+1)`
-/

namespace A187426.P13423949299372119100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229759 (n + 1 + 1) + (A187798 n - A225667 (n + 1 + 1))

end

end A187426.P13423949299372119100

/-! ## A187426.P3022220722361203234

`gcd(9-A239798(n+1), A336352(A040098(n+1)))`
-/

namespace A187426.P3022220722361203234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 - A239798 (n + 1 + 1)) (A336352 (A040098 (n + 1)).toNat)

end

end A187426.P3022220722361203234

/-!
# A187427: Expansion of q^(3/8) * eta(q)^3 / eta(q^3)^4 in powers of q.

The programs for A187427, there is no canonical definition to state claims against.
-/

/-! ## A187427.P8427712737985315519

`A187429(n)/A131713(n)`
-/

namespace A187427.P8427712737985315519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 n : ℚ) / (A131713 n : ℚ)

end

end A187427.P8427712737985315519

/-! ## A187427.P12440528177151249467

`A187429(n)/Δ[A004482(n)]`
-/

namespace A187427.P12440528177151249467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A187427.P12440528177151249467

/-! ## A187427.P15163087655562105645

`A187429(n)/Δ[A117966(n)]`
-/

namespace A187427.P15163087655562105645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A187427.P15163087655562105645

/-! ## A187427.P1232681138554245030

`A187429(n)/A117188(2*n)`
-/

namespace A187427.P1232681138554245030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 n : ℚ) / (A117188 (2 * n) : ℚ)

end

end A187427.P1232681138554245030

/-! ## A187427.P12775244683807555198

`A187429(n)/A100051(2*n+1)`
-/

namespace A187427.P12775244683807555198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 n : ℚ) / (A100051 (2 * n + 1) : ℚ)

end

end A187427.P12775244683807555198

/-! ## A187427.P7322621897843125483

`1/A100051(A005408(n))*A187429(n)`
-/

namespace A187427.P7322621897843125483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A100051 (A005408 n).toNat : ℚ) * (A187429 n : ℚ)

end

end A187427.P7322621897843125483

/-! ## A187427.P18163384636545166218

`1/A100051(A004771(n))*A187429(n)`
-/

namespace A187427.P18163384636545166218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A100051 (A004771 n).toNat : ℚ) * (A187429 n : ℚ)

end

end A187427.P18163384636545166218

/-!
# A187428: Expansion of q^(-5/24) * eta(q^3)^3 / eta(q)^4 in powers of q.

The programs for A187428, there is no canonical definition to state claims against.
-/

/-! ## A187428.P3362121235575552006

`A187429(3*n+1)/6`
-/

namespace A187428.P3362121235575552006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 (3 * n + 1) : ℚ) / 6

end

end A187428.P3362121235575552006

/-! ## A187428.P17841274282773310725

`record[A187429((n²-1)%Δ[n²]+1)/6]`
-/

namespace A187428.P17841274282773310725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 (Int.tmod ((n ^ 2 : ℤ) - 1) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187428.P17841274282773310725

/-! ## A187428.P14396147559793730722

`record[A187429(A004482(n))/6]`
-/

namespace A187428.P14396147559793730722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187429 (A004482 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187428.P14396147559793730722

/-! ## A187428.P7229895170981992782

`ceil(A187429(A008585(n)+1)/6)`
-/

namespace A187428.P7229895170981992782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A187429 (A008585 n + 1).toNat : ℚ) / 6⌉

end

end A187428.P7229895170981992782

/-! ## A187428.P8220028685724672197

`abs(A187427(3*n+1)/3)`
-/

namespace A187428.P8220028685724672197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A187427 (3 * n + 1) : ℚ) / 3|

end

end A187428.P8220028685724672197

/-!
# A187429: Expansion of q^(3/8) * a(q) / eta(q^3)^3 in powers of q where a() is a cubic AGM function.

The programs for A187429, there is no canonical definition to state claims against.
-/

/-! ## A187429.P2566391327186838790

`A131713(n)*A187427(n)`
-/

namespace A187429.P2566391327186838790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A187427 n

end

end A187429.P2566391327186838790

/-! ## A187429.P16534501321008432634

`Δ[A004482(n)]*A187427(n)`
-/

namespace A187429.P16534501321008432634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A187427 n

end

end A187429.P16534501321008432634

/-! ## A187429.P15949090972593108706

`Δ[A004499(n)]*A187427(n)`
-/

namespace A187429.P15949090972593108706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A187427 n

end

end A187429.P15949090972593108706

/-! ## A187429.P12466357326161053582

`Δ[A117966(n)]*A187427(n)`
-/

namespace A187429.P12466357326161053582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A187427 n

end

end A187429.P12466357326161053582

/-! ## A187429.P4787889420825826669

`abs(∑[A100051(n)]*A187427(n))`
-/

namespace A187429.P4787889420825826669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(∑ j ∈ Finset.range (n + 1), f1 j) * A187427 n|

end

end A187429.P4787889420825826669

/-! ## A187429.P3505128476439781411

`A117188(2*n)*A187427(n)`
-/

namespace A187429.P3505128476439781411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 (2 * n) * A187427 n

end

end A187429.P3505128476439781411

/-! ## A187429.P1548347282703980281

`A100051(2*n+1)*A187427(n)`
-/

namespace A187429.P1548347282703980281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (2 * n + 1) * A187427 n

end

end A187429.P1548347282703980281

/-!
# A187430: Number of nonnegative walks of n steps with step sizes 1 and 2, starting and ending at 0.

The programs for A187430, there is no canonical definition to state claims against.
-/

/-! ## A187430.P9295576674422445572

`A000108(n)-A346380(n+1)`
-/

namespace A187430.P9295576674422445572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A346380 (n + 1)

end

end A187430.P9295576674422445572

/-! ## A187430.P11316193648659943769

`A055113(n+1)+A111160(n)-A346380(n+1)`
-/

namespace A187430.P11316193648659943769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055113 (n + 1) + (A111160 n - A346380 (n + 1))

end

end A187430.P11316193648659943769

/-! ## A187430.P15801280634935606491

`A166135(n+1)-A055113(n+2)`
-/

namespace A187430.P15801280634935606491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166135 (n + 1) - A055113 (n + 2)

end

end A187430.P15801280634935606491

/-! ## A187430.P12022926530621207252

`∑{#}[n, (-1)^(n-#)*C(n, #)*A104184(#)]`
-/

namespace A187430.P12022926530621207252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A104184 k : ℚ)

end

end A187430.P12022926530621207252

/-! ## A187430.P11687737315133885641

`A185286(n²)`
-/

namespace A187430.P11687737315133885641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185286 (n ^ 2)

end

end A187430.P11687737315133885641

/-! ## A187430.P8012233934835192765

`A242447(∑[n+1])+A185286(n*n)`
-/

namespace A187430.P8012233934835192765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (∑ j ∈ Finset.range (n + 1), f1 j) + A185286 (n * n)

end

end A187430.P8012233934835192765

/-! ## A187430.P17303941940053307614

`lcm(A033999(n), A185286(A000290(n)))`
-/

namespace A187430.P17303941940053307614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A185286 (A000290 n).toNat)

end

end A187430.P17303941940053307614

/-! ## A187430.P3065350372453567238

`A185286(A000290(n))%A297459(n+1)`
-/

namespace A187430.P3065350372453567238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185286 (A000290 n).toNat) (A297459 (n + 1))

end

end A187430.P3065350372453567238

/-!
# A187432: Number of (n+1) X (n+1) 0..2 arrays with no 2 X 2 subblock commuting with any of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A187432, there is no canonical definition to state claims against.
-/

/-! ## A187432.P15272187508783018162

`A187441((n+1)²+n²)`
-/

namespace A187432.P15272187508783018162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 ((n + 1) ^ 2 + n ^ 2)

end

end A187432.P15272187508783018162

/-!
# A187433: Number of (n+1)X2 0..2 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187433, there is no canonical definition to state claims against.
-/

/-! ## A187433.P5117020328440277420

`A187441(∑[n]+1)`
-/

namespace A187433.P5117020328440277420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187433.P5117020328440277420

/-! ## A187433.P15688029856283444622

`record[A187441(n+1)/A015116(n)]`
-/

namespace A187433.P15688029856283444622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187441 (n + 1) : ℚ) / (A015116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187433.P15688029856283444622

/-! ## A187433.P693150204804587126

`record[A187441(n+1)/A022179(n)]`
-/

namespace A187433.P693150204804587126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187441 (n + 1) : ℚ) / (A022179 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187433.P693150204804587126

/-! ## A187433.P14815842355857534944

`record[root(A187441(n+1), A022166(n))]`
-/

namespace A187433.P14815842355857534944
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187441 (n + 1) : ℝ) ^ (1 / (A022166 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187433.P14815842355857534944

/-! ## A187433.P1473654355955384999

`record[root(A187441(n+1), A061702(n))]`
-/

namespace A187433.P1473654355955384999
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187441 (n + 1) : ℝ) ^ (1 / (A061702 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187433.P1473654355955384999

/-!
# A187434: Number of (n+1)X3 0..2 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187434, there is no canonical definition to state claims against.
-/

/-! ## A187434.P15183316482802073145

`A187441(∑[n+1]+2)`
-/

namespace A187434.P15183316482802073145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187434.P15183316482802073145

/-! ## A187434.P2598804746948924937

`record[root(A187441(n+2), A061702(n))]`
-/

namespace A187434.P2598804746948924937
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A187441 (n + 2) : ℝ) ^ (1 / (A061702 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187434.P2598804746948924937

/-! ## A187434.P16300479245633550346

`record[A187441(abs(A201163(n)))]`
-/

namespace A187434.P16300479245633550346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187434.P16300479245633550346

/-! ## A187434.P12925302082275206273

`record[A187441(Δ[A003453(n+5)])]`
-/

namespace A187434.P12925302082275206273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187434.P12925302082275206273

/-! ## A187434.P4232479594903323610

`record[A187441(n+2)/A022179(n+2)]`
-/

namespace A187434.P4232479594903323610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187441 (n + 2) : ℚ) / (A022179 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187434.P4232479594903323610

/-!
# A187435: Number of (n+1) X 4 0..2 arrays with no 2 X 2 subblock commuting with any of its horizontal and vertical 2 X 2 subblock neighbors.

The programs for A187435, there is no canonical definition to state claims against.
-/

/-! ## A187435.P11404886108626402872

`A187441(∑[n+2]+4)`
-/

namespace A187435.P11404886108626402872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187435.P11404886108626402872

/-! ## A187435.P15749605206248588168

`lcm((-1)^n, A187441(A167614(n+1)))`
-/

namespace A187435.P15749605206248588168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A187441 (A167614 (n + 1)).toNat)

end

end A187435.P15749605206248588168

/-! ## A187435.P1883646979787260900

`or(A165052(n), A187441(A167614(n+1)))`
-/

namespace A187435.P1883646979787260900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165052 n) (A187441 (A167614 (n + 1)).toNat)

end

end A187435.P1883646979787260900

/-! ## A187435.P244743982869443888

`A083311(n+1)*A187441(A167614(n+1))`
-/

namespace A187435.P244743982869443888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083311 (n + 1) * A187441 (A167614 (n + 1)).toNat

end

end A187435.P244743982869443888

/-! ## A187435.P11133061842894981023

`A187441(A167614(n+1))%A187436(n+1)`
-/

namespace A187435.P11133061842894981023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187441 (A167614 (n + 1)).toNat) (A187436 (n + 1))

end

end A187435.P11133061842894981023

/-!
# A187436: Number of (n+1)X5 0..2 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187436, there is no canonical definition to state claims against.
-/

/-! ## A187436.P17940176811144854257

`A187441(A141214(n)+7)`
-/

namespace A187436.P17940176811144854257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (A141214 n + 7).toNat

end

end A187436.P17940176811144854257

/-! ## A187436.P3087528102785220139

`A187441(A052905(n)+9)`
-/

namespace A187436.P3087528102785220139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (A052905 n + 9).toNat

end

end A187436.P3087528102785220139

/-! ## A187436.P7277142426173836171

`A187441(A167614(n+2)+1)`
-/

namespace A187436.P7277142426173836171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (A167614 (n + 2) + 1).toNat

end

end A187436.P7277142426173836171

/-!
# A187437: Number of (n+1)X6 0..2 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187437, there is no canonical definition to state claims against.
-/

/-! ## A187437.P3891078942939753822

`A187441(eq[4, A193592(n)])`
-/

namespace A187437.P3891078942939753822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187437.P3891078942939753822

/-!
# A187438: Number of (n+1)X7 0..2 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187438, there is no canonical definition to state claims against.
-/

/-! ## A187438.P2393045125475130207

`A187441(eq[5, A193592(n)])`
-/

namespace A187438.P2393045125475130207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187438.P2393045125475130207

/-!
# A187439: Number of (n+1)X8 0..2 arrays with no 2X2 subblock commuting with any of its horizontal and vertical 2X2 subblock neighbors.

The programs for A187439, there is no canonical definition to state claims against.
-/

/-! ## A187439.P15360302697591370078

`A187441(eq[6, A193592(n)])`
-/

namespace A187439.P15360302697591370078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187439.P15360302697591370078

/-!
# A187442: A trisection of A001405 (central binomial coefficients): binomial(3*n,floor(3*n/2)), n >= 0.

The programs for A187442, the canonical program `A187442.P12849095205890904513` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187442 has offset 0).

The definition of A187442 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n, floor(3*n/2))` (program `A187442.P12849095205890904513`, by `A187442.P12849095205890904513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187442.P12849095205890904513

`C(3*n, floor(3*n/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187442

/-- `C(3*n, floor(3*n/2))` -/
def P12849095205890904513.Spec : Prop :=
  ∀ n, (P12849095205890904513.a n : ℤ) = A187442 n

theorem P12849095205890904513.correct : P12849095205890904513.Spec := by
  intro n
  simp only [A187442]

end A187442

/-! ## A187442.P4593768658188443726

`A001405(3*n)`
-/

namespace A187442.P4593768658188443726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (3 * n)

end

end A187442.P4593768658188443726

namespace A187442

/-- `A001405(3*n)` -/
def P4593768658188443726.Spec : Prop :=
  ∀ n, P4593768658188443726.a n = A187442 n

theorem P4593768658188443726.correct : P4593768658188443726.Spec := by
  intro n
  simp only [A187442, Nat.add_sub_cancel, A187442.P4593768658188443726.a, A187442.P12849095205890904513.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187442

/-! ## A187442.P10197396666847153981

`abs(A126930(3*n))`
-/

namespace A187442.P10197396666847153981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 (3 * n)|

end

end A187442.P10197396666847153981

namespace A187442

/-- `abs(A126930(3*n))` -/
def P10197396666847153981.Spec : Prop :=
  ∀ n, P10197396666847153981.a n = A187442 n

end A187442

/-! ## A187442.P6074492882193699424

`A014495(3*n)+1`
-/

namespace A187442.P6074492882193699424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (3 * n) + 1

end

end A187442.P6074492882193699424

namespace A187442

/-- `A014495(3*n)+1` -/
def P6074492882193699424.Spec : Prop :=
  ∀ n, P6074492882193699424.a n = A187442 n

theorem P6074492882193699424.correct : P6074492882193699424.Spec := by
  intro n
  simp only [A187442, Nat.add_sub_cancel, A187442.P6074492882193699424.a, A187442.P12849095205890904513.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187442

/-! ## A187442.P3032864305342137524

`A210736(3*n+1)`
-/

namespace A187442.P3032864305342137524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (3 * n + 1)

end

end A187442.P3032864305342137524

namespace A187442

/-- `A210736(3*n+1)` -/
def P3032864305342137524.Spec : Prop :=
  ∀ n, P3032864305342137524.a n = A187442 n

end A187442

/-! ## A187442.P14527890391734062413

`A051920(3*n)-1`
-/

namespace A187442.P14527890391734062413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (3 * n) - 1

end

end A187442.P14527890391734062413

namespace A187442

/-- `A051920(3*n)-1` -/
def P14527890391734062413.Spec : Prop :=
  ∀ n, P14527890391734062413.a n = A187442 n

theorem P14527890391734062413.correct : P14527890391734062413.Spec := by
  intro n
  simp only [A187442, Nat.add_sub_cancel, A187442.P14527890391734062413.a, A187442.P12849095205890904513.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187442

/-! ## A187442.P1489862364738191599

`A201686(3*n)+2`
-/

namespace A187442.P1489862364738191599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (3 * n) + 2

end

end A187442.P1489862364738191599

namespace A187442

/-- `A201686(3*n)+2` -/
def P1489862364738191599.Spec : Prop :=
  ∀ n, P1489862364738191599.a n = A187442 n

theorem P1489862364738191599.correct : P1489862364738191599.Spec := by
  intro n
  simp only [A187442, Nat.add_sub_cancel, A187442.P1489862364738191599.a, A187442.P12849095205890904513.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187442

/-! ## A187442.P9418240953510192335

`record[A001405(floor(n/(xor(n, n+1)+1))+n)]`
-/

namespace A187442.P9418240953510192335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187442.P9418240953510192335

namespace A187442

/-- `record[A001405(floor(n/(xor(n, n+1)+1))+n)]` -/
def P9418240953510192335.Spec : Prop :=
  ∀ n, P9418240953510192335.a n = A187442 n

end A187442

/-! ## A187442.P864642625754704175

`A269956(A194274(n))`
-/

namespace A187442.P864642625754704175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269956 (A194274 n).toNat

end

end A187442.P864642625754704175

namespace A187442

/-- `A269956(A194274(n))` -/
def P864642625754704175.Spec : Prop :=
  ∀ n, P864642625754704175.a n = A187442 n

end A187442

/-! ## A187442.P18402054861253899762

`A401031(A301291(n))`
-/

namespace A187442.P18402054861253899762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401031 (A301291 n).toNat

end

end A187442.P18402054861253899762

namespace A187442

/-- `A401031(A301291(n))` -/
def P18402054861253899762.Spec : Prop :=
  ∀ n, P18402054861253899762.a n = A187442 n

end A187442

/-! ## A187442.P8980937135934277538

`A401031(A301293(n))`
-/

namespace A187442.P8980937135934277538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401031 (A301293 n).toNat

end

end A187442.P8980937135934277538

namespace A187442

/-- `A401031(A301293(n))` -/
def P8980937135934277538.Spec : Prop :=
  ∀ n, P8980937135934277538.a n = A187442 n

end A187442

/-! ## A187442.P17559533297670180650

`A401031(A312933(n))`
-/

namespace A187442.P17559533297670180650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401031 (A312933 n).toNat

end

end A187442.P17559533297670180650

namespace A187442

/-- `A401031(A312933(n))` -/
def P17559533297670180650.Spec : Prop :=
  ∀ n, P17559533297670180650.a n = A187442 n

end A187442

/-! ## A187442.P7716410602065745365

`A401031(A312941(n))`
-/

namespace A187442.P7716410602065745365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401031 (A312941 n).toNat

end

end A187442.P7716410602065745365

namespace A187442

/-- `A401031(A312941(n))` -/
def P7716410602065745365.Spec : Prop :=
  ∀ n, P7716410602065745365.a n = A187442 n

end A187442

/-! ## A187442.P4761452546782995797

`A401031(A312943(n))`
-/

namespace A187442.P4761452546782995797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401031 (A312943 n).toNat

end

end A187442.P4761452546782995797

namespace A187442

/-- `A401031(A312943(n))` -/
def P4761452546782995797.Spec : Prop :=
  ∀ n, P4761452546782995797.a n = A187442 n

end A187442

/-! ## A187442.P1364900591656635095

`A401031(A314712(n))`
-/

namespace A187442.P1364900591656635095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401031 (A314712 n).toNat

end

end A187442.P1364900591656635095

namespace A187442

/-- `A401031(A314712(n))` -/
def P1364900591656635095.Spec : Prop :=
  ∀ n, P1364900591656635095.a n = A187442 n

end A187442

/-! ## A187442.P12309277478023608346

`A401031(A314829(n))`
-/

namespace A187442.P12309277478023608346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401031 (A314829 n).toNat

end

end A187442.P12309277478023608346

namespace A187442

/-- `A401031(A314829(n))` -/
def P12309277478023608346.Spec : Prop :=
  ∀ n, P12309277478023608346.a n = A187442 n

end A187442

/-! ## A187442.P6926304605340396605

`A269956(A007590(n+1))`
-/

namespace A187442.P6926304605340396605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269956 (A007590 (n + 1)).toNat

end

end A187442.P6926304605340396605

namespace A187442

/-- `A269956(A007590(n+1))` -/
def P6926304605340396605.Spec : Prop :=
  ∀ n, P6926304605340396605.a n = A187442 n

end A187442

/-! ## A187442.P4114230193897007064

`A375963(A130877(n+1))`
-/

namespace A187442.P4114230193897007064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375963 (A130877 (n + 1)).toNat

end

end A187442.P4114230193897007064

namespace A187442

/-- `A375963(A130877(n+1))` -/
def P4114230193897007064.Spec : Prop :=
  ∀ n, P4114230193897007064.a n = A187442 n

end A187442

/-! ## A187442.P17146441531179458197

`A375963(A120740(n+2))`
-/

namespace A187442.P17146441531179458197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375963 (A120740 (n + 2)).toNat

end

end A187442.P17146441531179458197

namespace A187442

/-- `A375963(A120740(n+2))` -/
def P17146441531179458197.Spec : Prop :=
  ∀ n, P17146441531179458197.a n = A187442 n

end A187442

/-! ## A187442.P12476023457935264263

`gcd(A000038(n), A001405(A016777(n)-1))`
-/

namespace A187442.P12476023457935264263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001405 (A016777 n - 1).toNat)

end

end A187442.P12476023457935264263

namespace A187442

/-- `gcd(A000038(n), A001405(A016777(n)-1))` -/
def P12476023457935264263.Spec : Prop :=
  ∀ n, (P12476023457935264263.a n : ℤ) = A187442 n

end A187442

/-!
# A187443: A trisection of A001405 (central binomial coefficients): binomial(3n+1,floor((3n+1)/2)), n >= 0.

The programs for A187443, the canonical program `A187443.P5561138678384120018` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187443 has offset 0).

The definition of A187443 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*n+1, floor((3*n+1)/2))` (program `A187443.P5561138678384120018`, by `A187443.P5561138678384120018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187443.P5561138678384120018

`C(3*n+1, floor((3*n+1)/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187443

/-- `C(3*n+1, floor((3*n+1)/2))` -/
def P5561138678384120018.Spec : Prop :=
  ∀ n, (P5561138678384120018.a n : ℤ) = A187443 n

theorem P5561138678384120018.correct : P5561138678384120018.Spec := by
  intro n
  simp only [A187443]

end A187443

/-! ## A187443.P11222640138495546788

`A001405(1+3*n)`
-/

namespace A187443.P11222640138495546788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (1 + 3 * n)

end

end A187443.P11222640138495546788

namespace A187443

/-- `A001405(1+3*n)` -/
def P11222640138495546788.Spec : Prop :=
  ∀ n, P11222640138495546788.a n = A187443 n

theorem P11222640138495546788.correct : P11222640138495546788.Spec := by
  intro n
  simp only [A187443, Nat.add_sub_cancel, A187443.P11222640138495546788.a, A187443.P5561138678384120018.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187443

/-! ## A187443.P3081226595047397370

`A210736(3*n+2)`
-/

namespace A187443.P3081226595047397370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (3 * n + 2)

end

end A187443.P3081226595047397370

namespace A187443

/-- `A210736(3*n+2)` -/
def P3081226595047397370.Spec : Prop :=
  ∀ n, P3081226595047397370.a n = A187443 n

end A187443

/-! ## A187443.P3371533243167954702

`abs(A126930(1+3*n))`
-/

namespace A187443.P3371533243167954702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126930 (1 + 3 * n)|

end

end A187443.P3371533243167954702

namespace A187443

/-- `abs(A126930(1+3*n))` -/
def P3371533243167954702.Spec : Prop :=
  ∀ n, P3371533243167954702.a n = A187443 n

end A187443

/-! ## A187443.P15367019225414075103

`A014495(3*n+1)+1`
-/

namespace A187443.P15367019225414075103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (3 * n + 1) + 1

end

end A187443.P15367019225414075103

namespace A187443

/-- `A014495(3*n+1)+1` -/
def P15367019225414075103.Spec : Prop :=
  ∀ n, P15367019225414075103.a n = A187443 n

theorem P15367019225414075103.correct : P15367019225414075103.Spec := by
  intro n
  simp only [A187443, Nat.add_sub_cancel, A187443.P15367019225414075103.a, A187443.P5561138678384120018.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187443

/-! ## A187443.P3476274487048423943

`A051920(3*n+1)-1`
-/

namespace A187443.P3476274487048423943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (3 * n + 1) - 1

end

end A187443.P3476274487048423943

namespace A187443

/-- `A051920(3*n+1)-1` -/
def P3476274487048423943.Spec : Prop :=
  ∀ n, P3476274487048423943.a n = A187443 n

theorem P3476274487048423943.correct : P3476274487048423943.Spec := by
  intro n
  simp only [A187443, Nat.add_sub_cancel, A187443.P3476274487048423943.a, A187443.P5561138678384120018.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187443

/-! ## A187443.P4662356203123789483

`A201686(3*n+1)+2`
-/

namespace A187443.P4662356203123789483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 (3 * n + 1) + 2

end

end A187443.P4662356203123789483

namespace A187443

/-- `A201686(3*n+1)+2` -/
def P4662356203123789483.Spec : Prop :=
  ∀ n, P4662356203123789483.a n = A187443 n

theorem P4662356203123789483.correct : P4662356203123789483.Spec := by
  intro n
  simp only [A187443, Nat.add_sub_cancel, A187443.P4662356203123789483.a, A187443.P5561138678384120018.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A187443

/-! ## A187443.P420397167252783676

`A182027(3*(n+1))/2`
-/

namespace A187443.P420397167252783676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (3 * (n + 1)) : ℚ) / 2

end

end A187443.P420397167252783676

namespace A187443

/-- `A182027(3*(n+1))/2` -/
def P420397167252783676.Spec : Prop :=
  ∀ n, P420397167252783676.a n = (A187443 n : ℚ)

end A187443

/-! ## A187443.P2832006862308819519

`A375963(A193910(n+1))`
-/

namespace A187443.P2832006862308819519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375963 (A193910 (n + 1)).toNat

end

end A187443.P2832006862308819519

namespace A187443

/-- `A375963(A193910(n+1))` -/
def P2832006862308819519.Spec : Prop :=
  ∀ n, P2832006862308819519.a n = A187443 n

end A187443

/-! ## A187443.P709876148656407658

`A063886(A103517(n)+n)/2`
-/

namespace A187443.P709876148656407658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (A103517 n + (n : ℤ)).toNat : ℚ) / 2

end

end A187443.P709876148656407658

namespace A187443

/-- `A063886(A103517(n)+n)/2` -/
def P709876148656407658.Spec : Prop :=
  ∀ n, P709876148656407658.a n = (A187443 n : ℚ)

end A187443

/-! ## A187443.P7829170803919381204

`A063886(A016825(n)-n)/2`
-/

namespace A187443.P7829170803919381204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (A016825 n - (n : ℤ)).toNat : ℚ) / 2

end

end A187443.P7829170803919381204

namespace A187443

/-- `A063886(A016825(n)-n)/2` -/
def P7829170803919381204.Spec : Prop :=
  ∀ n, P7829170803919381204.a n = (A187443 n : ℚ)

end A187443

/-! ## A187443.P7312780676769135868

`gcd(A000038(n), A001405(A016777(n)))`
-/

namespace A187443.P7312780676769135868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001405 (A016777 n).toNat)

end

end A187443.P7312780676769135868

namespace A187443

/-- `gcd(A000038(n), A001405(A016777(n)))` -/
def P7312780676769135868.Spec : Prop :=
  ∀ n, (P7312780676769135868.a n : ℤ) = A187443 n

end A187443

/-! ## A187443.P10812418559212334306

`or(A000007(n), A001405(A016777(n)))`
-/

namespace A187443.P10812418559212334306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A001405 (A016777 n).toNat)

end

end A187443.P10812418559212334306

namespace A187443

/-- `or(A000007(n), A001405(A016777(n)))` -/
def P10812418559212334306.Spec : Prop :=
  ∀ n, P10812418559212334306.a n = A187443 n

end A187443

/-! ## A187443.P15044415063941960548

`A001405(A016777(n))+A000007(n+1)`
-/

namespace A187443.P15044415063941960548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A016777 n).toNat + A000007 (n + 1)

end

end A187443.P15044415063941960548

namespace A187443

/-- `A001405(A016777(n))+A000007(n+1)` -/
def P15044415063941960548.Spec : Prop :=
  ∀ n, P15044415063941960548.a n = A187443 n

end A187443

/-! ## A187443.P9303535892635182342

`A001405(A016777(n))+A000038(n+1)`
-/

namespace A187443.P9303535892635182342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A016777 n).toNat + A000038 (n + 1)

end

end A187443.P9303535892635182342

namespace A187443

/-- `A001405(A016777(n))+A000038(n+1)` -/
def P9303535892635182342.Spec : Prop :=
  ∀ n, P9303535892635182342.a n = A187443 n

end A187443

/-!
# A187444: A trisection of A001405 (central binomial coefficients): binomial(3n+2,floor((3n+2)/2))/2, n >= 0.

The programs for A187444, the canonical program `A187444.P1947196106501667852` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187444 has offset 0).

The definition of A187444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187444.P1947196106501667852

`C(3*n+2, floor((3*n+2)/2))/2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187444

/-- `C(3*n+2, floor((3*n+2)/2))/2` -/
def P1947196106501667852.Spec : Prop :=
  ∀ n, P1947196106501667852.a n = (A187444 n : ℚ)

end A187444

/-! ## A187444.P12962167303729004616

`A002661(3*n+1)`
-/

namespace A187444.P12962167303729004616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 (3 * n + 1)

end

end A187444.P12962167303729004616

namespace A187444

/-- `A002661(3*n+1)` -/
def P12962167303729004616.Spec : Prop :=
  ∀ n, P12962167303729004616.a n = A187444 n

end A187444

/-! ## A187444.P14201282179863201818

`A366108(3*(n+1))`
-/

namespace A187444.P14201282179863201818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366108 (3 * (n + 1))

end

end A187444.P14201282179863201818

namespace A187444

/-- `A366108(3*(n+1))` -/
def P14201282179863201818.Spec : Prop :=
  ∀ n, P14201282179863201818.a n = A187444 n

end A187444

/-! ## A187444.P14697536189241371970

`A210736(3*(n+1))/2`
-/

namespace A187444.P14697536189241371970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (3 * (n + 1)) : ℚ) / 2

end

end A187444.P14697536189241371970

namespace A187444

/-- `A210736(3*(n+1))/2` -/
def P14697536189241371970.Spec : Prop :=
  ∀ n, P14697536189241371970.a n = (A187444 n : ℚ)

end A187444

/-! ## A187444.P888546646629226871

`A001405(2+3*n)/2`
-/

namespace A187444.P888546646629226871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 + 3 * n) : ℚ) / 2

end

end A187444.P888546646629226871

namespace A187444

/-- `A001405(2+3*n)/2` -/
def P888546646629226871.Spec : Prop :=
  ∀ n, P888546646629226871.a n = (A187444 n : ℚ)

end A187444

/-! ## A187444.P17231619785835702217

`A063886(3*(n+1))/4`
-/

namespace A187444.P17231619785835702217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (3 * (n + 1)) : ℚ) / 4

end

end A187444.P17231619785835702217

namespace A187444

/-- `A063886(3*(n+1))/4` -/
def P17231619785835702217.Spec : Prop :=
  ∀ n, P17231619785835702217.a n = (A187444 n : ℚ)

end A187444

/-! ## A187444.P1828997944845800119

`abs(A126930(3*n+2)/2)`
-/

namespace A187444.P1828997944845800119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A126930 (3 * n + 2) : ℚ) / 2|

end

end A187444.P1828997944845800119

namespace A187444

/-- `abs(A126930(3*n+2)/2)` -/
def P1828997944845800119.Spec : Prop :=
  ∀ n, P1828997944845800119.a n = (A187444 n : ℚ)

end A187444

/-! ## A187444.P14359935381033006661

`floor(A051920(3*n+2)/2)`
-/

namespace A187444.P14359935381033006661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051920 (3 * n + 2) : ℚ) / 2⌋

end

end A187444.P14359935381033006661

namespace A187444

/-- `floor(A051920(3*n+2)/2)` -/
def P14359935381033006661.Spec : Prop :=
  ∀ n, P14359935381033006661.a n = A187444 n

end A187444

/-! ## A187444.P6042298950094131149

`record[A002661(A032766(n^and(1, n)))]`
-/

namespace A187444.P6042298950094131149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 (A032766 (n ^ Nat.land 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187444.P6042298950094131149

namespace A187444

/-- `record[A002661(A032766(n^and(1, n)))]` -/
def P6042298950094131149.Spec : Prop :=
  ∀ n, P6042298950094131149.a n = A187444 n

end A187444

/-! ## A187444.P1816328721099905146

`(A014495(A016777(n)+1)+1)/2`
-/

namespace A187444.P1816328721099905146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014495 (A016777 n + 1).toNat + 1 : ℚ) / 2

end

end A187444.P1816328721099905146

namespace A187444

/-- `(A014495(A016777(n)+1)+1)/2` -/
def P1816328721099905146.Spec : Prop :=
  ∀ n, P1816328721099905146.a n = (A187444 n : ℚ)

end A187444

/-! ## A187444.P11810964750319017874

`(A014495(A016957(n)/2)+1)/2`
-/

namespace A187444.P11810964750319017874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014495 (SequenceMachineLib.roundAway ((A016957 n : ℚ) / 2)).toNat + 1 : ℚ) / 2

end

end A187444.P11810964750319017874

namespace A187444

/-- `(A014495(A016957(n)/2)+1)/2` -/
def P11810964750319017874.Spec : Prop :=
  ∀ n, P11810964750319017874.a n = (A187444 n : ℚ)

end A187444

/-! ## A187444.P13954489553093128844

`A057977(A007310(n+1))/gcd(2, n+1)`
-/

namespace A187444.P13954489553093128844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057977 (A007310 (n + 1)).toNat : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A187444.P13954489553093128844

namespace A187444

/-- `A057977(A007310(n+1))/gcd(2, n+1)` -/
def P13954489553093128844.Spec : Prop :=
  ∀ n, P13954489553093128844.a n = (A187444 n : ℚ)

end A187444

/-!
# A187445: Number of ways to choose two elements from the multiset representative corresponding to the k-th multiset repetition class defining partition of n in Abramowitz-Stegun order.

The programs for A187445, there is no canonical definition to state claims against.
-/

/-! ## A187445.P6649587386699507919

`A003603(A162619(n+1))%A006530(A113409(n))`
-/

namespace A187445.P6649587386699507919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003603 (A162619 (n + 1)).toNat) (A006530 (A113409 n).toNat)

end

end A187445.P6649587386699507919

/-! ## A187445.P15276395342565738714

`val(A324922(A027167(n)), 4)`
-/

namespace A187445.P15276395342565738714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324922 (A027167 n).toNat).toNat 4

end

end A187445.P15276395342565738714

/-! ## A187445.P4897979969095594470

`A318306(or(n, A097121(n)))`
-/

namespace A187445.P4897979969095594470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (Int.lor (n : ℤ) (A097121 n)).toNat

end

end A187445.P4897979969095594470

/-! ## A187445.P15312848337117846356

`A277692(A015818(2*n)+n)`
-/

namespace A187445.P15312848337117846356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A015818 (2 * n) + (n : ℤ)).toNat

end

end A187445.P15312848337117846356

/-! ## A187445.P8549857462847179938

`A001221(A037800(n)+A006452(n))`
-/

namespace A187445.P8549857462847179938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A037800 n + A006452 n).toNat

end

end A187445.P8549857462847179938

/-!
# A187446: Number of parts of the multiset repetition class defining partition (n,k) in Abramowitz-Stegun order.

The programs for A187446, there is no canonical definition to state claims against.
-/

/-! ## A187446.P18389506414227985821

`A036043(lt[0, A176723(n)])`
-/

namespace A187446.P18389506414227985821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A187446.P18389506414227985821

/-! ## A187446.P16281103908420808388

`A036043(eq[1, A176723(n)])`
-/

namespace A187446.P16281103908420808388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187446.P16281103908420808388

/-! ## A187446.P6874155791183472289

`A333486(lt[0, A176723(n)])`
-/

namespace A187446.P6874155791183472289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A187446.P6874155791183472289

/-! ## A187446.P7171362686391069393

`A333486(eq[1, A176723(n)])`
-/

namespace A187446.P7171362686391069393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A187446.P7171362686391069393

/-! ## A187446.P6534457869349880106

`A036043(record[n*A176723(n)])`
-/

namespace A187446.P6534457869349880106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A176723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036043 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A187446.P6534457869349880106

/-!
# A187447: Array for all multiset choices (multiset repetition class representatives in Abramowitz-Stegun order).

The programs for A187447, there is no canonical definition to state claims against.
-/

/-! ## A187447.P9057350743061799898

`and(A054696(n+2), A146292(n+1))`
-/

namespace A187447.P9057350743061799898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054696 (n + 2)) (A146292 (n + 1))

end

end A187447.P9057350743061799898

/-! ## A187447.P9755660830245953370

`gcd(A048146(A016116(n)), A146292(n+1))`
-/

namespace A187447.P9755660830245953370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048146 (A016116 n).toNat) (A146292 (n + 1))

end

end A187447.P9755660830245953370

/-! ## A187447.P13533957729195818522

`gcd(A040001(A258259(2*n)), A165974(n+1))`
-/

namespace A187447.P13533957729195818522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040001 (A258259 (2 * n)).toNat) (A165974 (n + 1))

end

end A187447.P13533957729195818522

/-! ## A187447.P10202090360999107988

`A040001(or(A165974(n+1), A258259(2*n)))`
-/

namespace A187447.P10202090360999107988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.lor (A165974 (n + 1)) (A258259 (2 * n))).toNat

end

end A187447.P10202090360999107988

/-! ## A187447.P16580149381770471610

`and(A146292(n+1), A167794(A146290(3*(n+1))))`
-/

namespace A187447.P16580149381770471610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146292 (n + 1)) (A167794 (A146290 (3 * (n + 1))).toNat)

end

end A187447.P16580149381770471610

/-!
# A187449: Number of ways to choose three elements from the multiset representative corresponding to the k-th multiset repetition class defining partition of n in Abramowitz-Stegun order.

The programs for A187449, there is no canonical definition to state claims against.
-/

/-! ## A187449.P10247959801690785002

`A309892(∑[A010059(A001037(n))])`
-/

namespace A187449.P10247959801690785002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A001037 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A187449.P10247959801690785002

/-!
# A187451: Multiset choose 5: number of ways to choose five elements from the multiset representative corresponding to the k-th multiset repetition class defining partition of n in canonical Abramowitz-Stegun order.

The programs for A187451, there is no canonical definition to state claims against.
-/

/-! ## A187451.P7312151626197137834

`A090918(A090919(n+1))%A028310(A242062(n))`
-/

namespace A187451.P7312151626197137834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090918 (A090919 (n + 1)).toNat) (A028310 (A242062 n).toNat)

end

end A187451.P7312151626197137834

/-! ## A187451.P6606666225980974552

`A242060(3*n+5)%A000041(A242062(n))`
-/

namespace A187451.P6606666225980974552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242060 (3 * n + 5)) (A000041 (A242062 n).toNat)

end

end A187451.P6606666225980974552

/-! ## A187451.P13547053141229178871

`A037808(A098774(n+1)-A210434(n))`
-/

namespace A187451.P13547053141229178871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A098774 (n + 1) - A210434 n).toNat

end

end A187451.P13547053141229178871

/-! ## A187451.P7482768708979101489

`A146719(n+1)%A028310(A242062(n))`
-/

namespace A187451.P7482768708979101489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146719 (n + 1)) (A028310 (A242062 n).toNat)

end

end A187451.P7482768708979101489

/-!
# A187452: Number of right isosceles triangles that can be formed from the n^2 points of n X n grid of points (or geoboard).

The programs for A187452, the canonical program `A187452.P3255454683134633440` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187452 has offset 1).

The definition of A187452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187452.P3255454683134633440

`(3-3*(-1)^(n+1)-16*(n+1)²+10*(n+1)^4)/24`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187452

/-- `(3-3*(-1)^(n+1)-16*(n+1)²+10*(n+1)^4)/24` -/
def P3255454683134633440.Spec : Prop :=
  ∀ n, P3255454683134633440.a n = (A187452 (n + 1) : ℚ)

end A187452

/-! ## A187452.P9151382124173035573

`∑[∑[5*n²-n%2]]`
-/

namespace A187452.P9151382124173035573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P9151382124173035573

namespace A187452

/-- `∑[∑[5*n²-n%2]]` -/
def P9151382124173035573.Spec : Prop :=
  ∀ n, P9151382124173035573.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P1030844590248568741

`ogf((4x+12x^2+4x^3)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A187452.P1030844590248568741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 12, 4] [1, -4, 5, 0, -5, 4, -1] n

end

end A187452.P1030844590248568741

namespace A187452

/-- `ogf((4x+12x^2+4x^3)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P1030844590248568741.Spec : Prop :=
  ∀ n, P1030844590248568741.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P12748137008911855971

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=4, a(2)=28, a(3)=96, a(4)=244, a(5)=516`
-/

namespace A187452.P12748137008911855971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 28, 96, 244, 516] fun n a =>
  4 * a (n - 1) - 5 * a (n - 2) + 5 * a (n - 4) - 4 * a (n - 5) + a (n - 6)

end

end A187452.P12748137008911855971

namespace A187452

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P12748137008911855971.Spec : Prop :=
  ∀ n, P12748137008911855971.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P7800654829274779440

`∑[∑[2*A032526(n)]]`
-/

namespace A187452.P7800654829274779440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P7800654829274779440

namespace A187452

/-- `∑[∑[2*A032526(n)]]` -/
def P7800654829274779440.Spec : Prop :=
  ∀ n, P7800654829274779440.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P12558513251698280467

`∑[∑[4*A032527(n)]]`
-/

namespace A187452.P12558513251698280467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032527 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P12558513251698280467

namespace A187452

/-- `∑[∑[4*A032527(n)]]` -/
def P12558513251698280467.Spec : Prop :=
  ∀ n, P12558513251698280467.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P3720509689626959117

`∑[4*A212980(n+1)]`
-/

namespace A187452.P3720509689626959117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A212980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P3720509689626959117

namespace A187452

/-- `∑[4*A212980(n+1)]` -/
def P3720509689626959117.Spec : Prop :=
  ∀ n, P3720509689626959117.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P18305108250613619365

`∑[4*∑[A249547(n)-n]]`
-/

namespace A187452.P18305108250613619365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P18305108250613619365

namespace A187452

/-- `∑[4*∑[A249547(n)-n]]` -/
def P18305108250613619365.Spec : Prop :=
  ∀ n, P18305108250613619365.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P5234543547912549272

`∑[2*∑[3*n²-A000982(n)]]`
-/

namespace A187452.P5234543547912549272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P5234543547912549272

namespace A187452

/-- `∑[2*∑[3*n²-A000982(n)]]` -/
def P5234543547912549272.Spec : Prop :=
  ∀ n, P5234543547912549272.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P11443114907597849455

`A368046(n)+A011934(n)`
-/

namespace A187452.P11443114907597849455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368046 n + A011934 n

end

end A187452.P11443114907597849455

namespace A187452

/-- `A368046(n)+A011934(n)` -/
def P11443114907597849455.Spec : Prop :=
  ∀ n, P11443114907597849455.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P14833889601299200748

`∑[A096000(n)-A032528(n+1)]`
-/

namespace A187452.P14833889601299200748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096000 n - A032528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P14833889601299200748

namespace A187452

/-- `∑[A096000(n)-A032528(n+1)]` -/
def P14833889601299200748.Spec : Prop :=
  ∀ n, P14833889601299200748.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P18327155848313379779

`∑[2*(A011934(n)+A000330(n))]`
-/

namespace A187452.P18327155848313379779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011934 n + A000330 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P18327155848313379779

namespace A187452

/-- `∑[2*(A011934(n)+A000330(n))]` -/
def P18327155848313379779.Spec : Prop :=
  ∀ n, P18327155848313379779.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P9662343002824408317

`A186434(n+1)-(A190318(n+1)+A190317(n+1))`
-/

namespace A187452.P9662343002824408317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186434 (n + 1) - (A190318 (n + 1) + A190317 (n + 1))

end

end A187452.P9662343002824408317

namespace A187452

/-- `A186434(n+1)-(A190318(n+1)+A190317(n+1))` -/
def P9662343002824408317.Spec : Prop :=
  ∀ n, P9662343002824408317.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P1800316716360013531

`∑[∑[(2*n)²+A137932(n+1)]]`
-/

namespace A187452.P1800316716360013531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) + A137932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P1800316716360013531

namespace A187452

/-- `∑[∑[(2*n)²+A137932(n+1)]]` -/
def P1800316716360013531.Spec : Prop :=
  ∀ n, P1800316716360013531.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P12013804211953973795

`A117066(n+1)-A011934(n+1)`
-/

namespace A187452.P12013804211953973795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) - A011934 (n + 1)

end

end A187452.P12013804211953973795

namespace A187452

/-- `A117066(n+1)-A011934(n+1)` -/
def P12013804211953973795.Spec : Prop :=
  ∀ n, P12013804211953973795.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P8201082150715768538

`A139594(n+1)-(A002620(n+1)+(n+1)²)`
-/

namespace A187452.P8201082150715768538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 (n + 1) - (A002620 (n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A187452.P8201082150715768538

namespace A187452

/-- `A139594(n+1)-(A002620(n+1)+(n+1)²)` -/
def P8201082150715768538.Spec : Prop :=
  ∀ n, P8201082150715768538.a n = A187452 (n + 1)

end A187452

/-! ## A187452.P3553536901579822473

`∑[∑[A146763(n²)]]`
-/

namespace A187452.P3553536901579822473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187452.P3553536901579822473

namespace A187452

/-- `∑[∑[A146763(n²)]]` -/
def P3553536901579822473.Spec : Prop :=
  ∀ n, P3553536901579822473.a n = A187452 (n + 1)

end A187452

/-!
# A187453: Number of (n+1)X(n+1) 0..1 arrays with the array of 2X2 subblock determinants symmetric.

The programs for A187453, there is no canonical definition to state claims against.
-/

/-! ## A187453.P6554368458153008490

`A187457(∑[n+1])`
-/

namespace A187453.P6554368458153008490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187453.P6554368458153008490

/-! ## A187453.P13989021138985257377

`record[A187457(A115364(n+1))]`
-/

namespace A187453.P13989021138985257377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187457 (A115364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187453.P13989021138985257377

/-! ## A187453.P7939208373243760089

`record[A187457(A246276(n+1))]`
-/

namespace A187453.P7939208373243760089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187457 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187453.P7939208373243760089

/-! ## A187453.P6254052261028482095

`record[A187457(A286159(n+1))]`
-/

namespace A187453.P6254052261028482095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187457 (A286159 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187453.P6254052261028482095

/-!
# A187454: Number of (n+1)X(n+1) 0..2 arrays with the array of 2X2 subblock determinants symmetric.

The programs for A187454, there is no canonical definition to state claims against.
-/

/-! ## A187454.P9380238649199182594

`A187457(∑[n+2])`
-/

namespace A187454.P9380238649199182594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187454.P9380238649199182594

/-!
# A187455: Number of (n+1)X(n+1) 0..3 arrays with the array of 2X2 subblock determinants symmetric.

The programs for A187455, there is no canonical definition to state claims against.
-/

/-! ## A187455.P802570422045243785

`A187457(∑[n+3]+1)`
-/

namespace A187455.P802570422045243785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187457 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187455.P802570422045243785

/-!
# A187456: Number of (n+1)X(n+1) 0..4 arrays with the array of 2X2 subblock determinants symmetric.

The programs for A187456, there is no canonical definition to state claims against.
-/

/-! ## A187456.P10666019248123408806

`A187457(∑[A020705(n)]+3)`
-/

namespace A187456.P10666019248123408806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187457 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A187456.P10666019248123408806

/-!
# A187458: Number of (n+1)X(n+1) 0..1 arrays with all the 2X2 subblocks nonsingular and the array of 2X2 subblock determinants symmetric.

The programs for A187458, there is no canonical definition to state claims against.
-/

/-! ## A187458.P13471487433525425800

`A187462(∑[n+1])`
-/

namespace A187458.P13471487433525425800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187458.P13471487433525425800

/-! ## A187458.P5715954957295008019

`record[A187462(A133825(n))]`
-/

namespace A187458.P5715954957295008019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187458.P5715954957295008019

/-! ## A187458.P431112333421696519

`record[A187462(A115364(n+1))]`
-/

namespace A187458.P431112333421696519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (A115364 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187458.P431112333421696519

/-! ## A187458.P1070363467368422964

`record[A187462(A130270(n+1))]`
-/

namespace A187458.P1070363467368422964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (A130270 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187458.P1070363467368422964

/-!
# A187459: Number of (n+1)X(n+1) 0..2 arrays with all the 2X2 subblocks nonsingular and the array of 2X2 subblock determinants symmetric.

The programs for A187459, there is no canonical definition to state claims against.
-/

/-! ## A187459.P5930736964407883023

`A187462(∑[n+2])`
-/

namespace A187459.P5930736964407883023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A187459.P5930736964407883023

/-!
# A187460: Number of (n+1)X(n+1) 0..3 arrays with all the 2X2 subblocks nonsingular and the array of 2X2 subblock determinants symmetric.

The programs for A187460, there is no canonical definition to state claims against.
-/

/-! ## A187460.P16695991243496115568

`A187462(∑[n+3]+1)`
-/

namespace A187460.P16695991243496115568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A187460.P16695991243496115568

/-!
# A187461: Number of (n+1)X(n+1) 0..4 arrays with all the 2X2 subblocks nonsingular and the array of 2X2 subblock determinants symmetric.

The programs for A187461, there is no canonical definition to state claims against.
-/

/-! ## A187461.P12418414049093950246

`A187462(A141214(n+1))`
-/

namespace A187461.P12418414049093950246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (A141214 (n + 1)).toNat

end

end A187461.P12418414049093950246

/-!
# A187463: Number of 3X3 0..n arrays with all the 2X2 subblocks nonsingular and the array of 2X2 subblock determinants symmetric.

The programs for A187463, there is no canonical definition to state claims against.
-/

/-! ## A187463.P6316346679839671098

`A187462(∑[n+1]+2)`
-/

namespace A187463.P6316346679839671098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A187463.P6316346679839671098

/-! ## A187463.P4738445814187590043

`record[A187462(A115364(n+1)+2)]`
-/

namespace A187463.P4738445814187590043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (A115364 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A187463.P4738445814187590043

/-! ## A187463.P1204564876696129976

`A326598(n)+A187462(A133263(n+1))`
-/

namespace A187463.P1204564876696129976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326598 n + A187462 (A133263 (n + 1)).toNat

end

end A187463.P1204564876696129976

/-! ## A187463.P13693904298902473380

`A326636(n)+A187462(A000096(n)+3)`
-/

namespace A187463.P13693904298902473380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 n + A187462 (A000096 n + 3).toNat

end

end A187463.P13693904298902473380

/-!
# A187464: Number of 4X4 0..n arrays with all the 2X2 subblocks nonsingular and the array of 2X2 subblock determinants symmetric.

The programs for A187464, there is no canonical definition to state claims against.
-/

/-! ## A187464.P3442916578252785299

`A187462(∑[n+2]+4)`
-/

namespace A187464.P3442916578252785299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A187464.P3442916578252785299

/-! ## A187464.P17469404756838751649

`lcm(2, A187462(A167614(n+1)))`
-/

namespace A187464.P17469404756838751649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A187462 (A167614 (n + 1)).toNat)

end

end A187464.P17469404756838751649

/-! ## A187464.P5993165616691674555

`A187462(A167614(n+1))+A025465(n)`
-/

namespace A187464.P5993165616691674555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (A167614 (n + 1)).toNat + A025465 n

end

end A187464.P5993165616691674555

/-!
# A187465: Number of 5X5 0..n arrays with all the 2X2 subblocks nonsingular and the array of 2X2 subblock determinants symmetric.

The programs for A187465, there is no canonical definition to state claims against.
-/

/-! ## A187465.P7166608993041464028

`A187462(A020752(n+1))`
-/

namespace A187465.P7166608993041464028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187462 (A020752 (n + 1)).toNat

end

end A187465.P7166608993041464028

/-!
# A187466: a(n) = 9^n mod 11.

The programs for A187466, the canonical program `A187466.P12735345694066532582` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187466 has offset 0).

The definition of A187466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n)%11` (program `A187466.P12735345694066532582`, by `A187466.P12735345694066532582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A187466.P4712528535334458766

`a(n-5)` with `a(0)=1, a(1)=9, a(2)=4, a(3)=3, a(4)=5`
-/

namespace A187466.P4712528535334458766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 4, 3, 5] fun n a =>
  a (n - 5)

end

end A187466.P4712528535334458766

namespace A187466

/-- `a(n-5)` -/
def P4712528535334458766.Spec : Prop :=
  ∀ n, (P4712528535334458766.a n : ℤ) = A187466 n

end A187466

/-! ## A187466.P12735345694066532582

`(9^n)%11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187466

/-- `(9^n)%11` -/
def P12735345694066532582.Spec : Prop :=
  ∀ n, (P12735345694066532582.a n : ℤ) = A187466 n

theorem P12735345694066532582.correct : P12735345694066532582.Spec := by
  intro n
  simp only [A187466]

end A187466

/-!
# A187467: Least k > 1 such that prime(k)*2^n - 1 is prime, or zero if never prime.

The programs for A187467, there is no canonical definition to state claims against.
-/

/-! ## A187467.P4024105299435622010

`A000720(A126715(n+1))`
-/

namespace A187467.P4024105299435622010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A126715 (n + 1)).toNat

end

end A187467.P4024105299435622010

/-! ## A187467.P8784554168561051896

`A000720(ratio[A126715(n)]*A126715(n))`
-/

namespace A187467.P8784554168561051896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A126715 n : ℚ))).toNat

end

end A187467.P8784554168561051896

/-! ## A187467.P4291638404001403313

`A344616(A057427(n+1)*A126715(n+1))`
-/

namespace A187467.P4291638404001403313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A057427 (n + 1) * A126715 (n + 1)).toNat

end

end A187467.P4291638404001403313

/-! ## A187467.P2260385338321808197

`A055396(A126715(n)+Δ[A126715(n)])`
-/

namespace A187467.P2260385338321808197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A126715 n + (f1 (n + 1) - f1 n)).toNat

end

end A187467.P2260385338321808197

/-! ## A187467.P14589652584866810321

`A056239(A126715(n)+Δ[A126715(n)])`
-/

namespace A187467.P14589652584866810321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A126715 n + (f1 (n + 1) - f1 n)).toNat

end

end A187467.P14589652584866810321

/-! ## A187467.P17863409082456124501

`A324829(A126715(n)+Δ[A126715(n)])`
-/

namespace A187467.P17863409082456124501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324829 (A126715 n + (f1 (n + 1) - f1 n)).toNat

end

end A187467.P17863409082456124501

/-!
# A187468: Sum of the squares modulo 2^n of the odd numbers less than 2^n.

The programs for A187468, the canonical program `A187468.P2625992305159440768` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187468 has offset 1).

The definition of A187468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187468.P10161901975032064824

`ogf((1-4x+32x^3)/(1-6x+8x^2))`
-/

namespace A187468.P10161901975032064824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 0, 32] [1, -6, 8] n

end

end A187468.P10161901975032064824

namespace A187468

/-- `ogf((1-4x+32x^3)/(1-6x+8x^2))` -/
def P10161901975032064824.Spec : Prop :=
  ∀ n, P10161901975032064824.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P2625992305159440768

`6*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=40`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187468

/-- `6*a(n-1)-8*a(n-2)` -/
def P2625992305159440768.Spec : Prop :=
  ∀ n, P2625992305159440768.a n = A187468 (n + 1)

theorem P2625992305159440768.correct : P2625992305159440768.Spec := by
  intro n
  simp only [A187468, Nat.add_sub_cancel]

end A187468

/-! ## A187468.P4402712976327776707

`(lcm(4, 2^n)-3)*2^n`
-/

namespace A187468.P4402712976327776707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (2 ^ n) : ℤ) - 3) * (2 ^ n : ℤ)

end

end A187468.P4402712976327776707

namespace A187468

/-- `(lcm(4, 2^n)-3)*2^n` -/
def P4402712976327776707.Spec : Prop :=
  ∀ n, P4402712976327776707.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P12553589416198565641

`lcm((-2)^n, or(3, -2^n))`
-/

namespace A187468.P12553589416198565641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-2) ^ n) (Int.lor 3 (-(2 ^ n : ℤ)))

end

end A187468.P12553589416198565641

namespace A187468

/-- `lcm((-2)^n, or(3, -2^n))` -/
def P12553589416198565641.Spec : Prop :=
  ∀ n, (P12553589416198565641.a n : ℤ) = A187468 (n + 1)

end A187468

/-! ## A187468.P6760803505912042027

`lcm(A255047(n)-2, 2^n)`
-/

namespace A187468.P6760803505912042027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A255047 n - 2) (2 ^ n : ℤ)

end

end A187468.P6760803505912042027

namespace A187468

/-- `lcm(A255047(n)-2, 2^n)` -/
def P6760803505912042027.Spec : Prop :=
  ∀ n, (P6760803505912042027.a n : ℤ) = A187468 (n + 1)

end A187468

/-! ## A187468.P8568502516904071870

`abs(or(3*A000079(n), -4^n))`
-/

namespace A187468.P8568502516904071870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (3 * A000079 n) (-(4 ^ n : ℤ))|

end

end A187468.P8568502516904071870

namespace A187468

/-- `abs(or(3*A000079(n), -4^n))` -/
def P8568502516904071870.Spec : Prop :=
  ∀ n, P8568502516904071870.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P17979529419407806367

`A007283(n)+4*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A187468.P17979529419407806367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A007283 n + 4 * a (n - 1)

end

end A187468.P17979529419407806367

namespace A187468

/-- `A007283(n)+4*a(n-1)` -/
def P17979529419407806367.Spec : Prop :=
  ∀ n, P17979529419407806367.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P12693730971962400144

`and(-A007283(n), A020515(n))`
-/

namespace A187468.P12693730971962400144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007283 n) (A020515 n)

end

end A187468.P12693730971962400144

namespace A187468

/-- `and(-A007283(n), A020515(n))` -/
def P12693730971962400144.Spec : Prop :=
  ∀ n, P12693730971962400144.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P8280568964856427754

`A000302(n)-2*A082505(n)`
-/

namespace A187468.P8280568964856427754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - 2 * A082505 n

end

end A187468.P8280568964856427754

namespace A187468

/-- `A000302(n)-2*A082505(n)` -/
def P8280568964856427754.Spec : Prop :=
  ∀ n, P8280568964856427754.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P16874415616229595140

`A000079(n)²-2*A082505(n)`
-/

namespace A187468.P16874415616229595140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - 2 * A082505 n

end

end A187468.P16874415616229595140

namespace A187468

/-- `A000079(n)²-2*A082505(n)` -/
def P16874415616229595140.Spec : Prop :=
  ∀ n, P16874415616229595140.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P13550587466752704333

`or(2, A284485(2*n))-A055010(n+1)`
-/

namespace A187468.P13550587466752704333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A284485 (2 * n)) - A055010 (n + 1)

end

end A187468.P13550587466752704333

namespace A187468

/-- `or(2, A284485(2*n))-A055010(n+1)` -/
def P13550587466752704333.Spec : Prop :=
  ∀ n, P13550587466752704333.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P12986678182286029848

`abs((1-A155559(n))²-(A000079(n)+1))`
-/

namespace A187468.P12986678182286029848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A155559 n) ^ 2 - (A000079 n + 1)|

end

end A187468.P12986678182286029848

namespace A187468

/-- `abs((1-A155559(n))²-(A000079(n)+1))` -/
def P12986678182286029848.Spec : Prop :=
  ∀ n, P12986678182286029848.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P921991503585132181

`abs(2^n-A157532(n+1))*Δ[A000225(n)]`
-/

namespace A187468.P921991503585132181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A157532 (n + 1)| * (f1 (n + 1) - f1 n)

end

end A187468.P921991503585132181

namespace A187468

/-- `abs(2^n-A157532(n+1))*Δ[A000225(n)]` -/
def P921991503585132181.Spec : Prop :=
  ∀ n, P921991503585132181.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P11627750034638238363

`abs(A020639(A246037(n))-A000225(n))*2^n`
-/

namespace A187468.P11627750034638238363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020639 (A246037 n).toNat - A000225 n| * (2 ^ n : ℤ)

end

end A187468.P11627750034638238363

namespace A187468

/-- `abs(A020639(A246037(n))-A000225(n))*2^n` -/
def P11627750034638238363.Spec : Prop :=
  ∀ n, P11627750034638238363.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P10327854110144752799

`A000079(n)*A088041(n+2)-A000079(n+1)`
-/

namespace A187468.P10327854110144752799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A088041 (n + 2) - A000079 (n + 1)

end

end A187468.P10327854110144752799

namespace A187468

/-- `A000079(n)*A088041(n+2)-A000079(n+1)` -/
def P10327854110144752799.Spec : Prop :=
  ∀ n, P10327854110144752799.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P726092602901120755

`and(A100103(n), A169726(n))`
-/

namespace A187468.P726092602901120755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100103 n) (A169726 n)

end

end A187468.P726092602901120755

namespace A187468

/-- `and(A100103(n), A169726(n))` -/
def P726092602901120755.Spec : Prop :=
  ∀ n, P726092602901120755.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P16645800966167816874

`and(A020515(n), A267678(n))`
-/

namespace A187468.P16645800966167816874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020515 n) (A267678 n)

end

end A187468.P16645800966167816874

namespace A187468

/-- `and(A020515(n), A267678(n))` -/
def P16645800966167816874.Spec : Prop :=
  ∀ n, P16645800966167816874.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P3472311123648220250

`and(A169726(n), A267678(n))`
-/

namespace A187468.P3472311123648220250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169726 n) (A267678 n)

end

end A187468.P3472311123648220250

namespace A187468

/-- `and(A169726(n), A267678(n))` -/
def P3472311123648220250.Spec : Prop :=
  ∀ n, P3472311123648220250.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P7603300182817508545

`and(A169726(n), A267851(n))`
-/

namespace A187468.P7603300182817508545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A169726 n) (A267851 n)

end

end A187468.P7603300182817508545

namespace A187468

/-- `and(A169726(n), A267851(n))` -/
def P7603300182817508545.Spec : Prop :=
  ∀ n, P7603300182817508545.a n = A187468 (n + 1)

end A187468

/-! ## A187468.P6653248733610536259

`or(A020515(n), A028400(n))-A028400(n)`
-/

namespace A187468.P6653248733610536259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020515 n) (A028400 n) - A028400 n

end

end A187468.P6653248733610536259

namespace A187468

/-- `or(A020515(n), A028400(n))-A028400(n)` -/
def P6653248733610536259.Spec : Prop :=
  ∀ n, P6653248733610536259.a n = A187468 (n + 1)

end A187468

/-!
# A187472: Rank transform of the sequence floor((e-1)n); complement of A187473.

The programs for A187472, there is no canonical definition to state claims against.
-/

/-! ## A187472.P17647805261490115715

`comp[A187473(n+1)-1]+1`
-/

namespace A187472.P17647805261490115715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187473 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187472.P17647805261490115715

/-! ## A187472.P14738879783140948732

`comp[A187473(floor(2*n/5)+1)%(n+2)]`
-/

namespace A187472.P14738879783140948732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187473 (⌊2 * ((n : ℚ) / 5)⌋ + 1).toNat) (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187472.P14738879783140948732

/-! ## A187472.P9468090867063507693

`comp[A187473(col(n)+1)%(n+2)]`
-/

namespace A187472.P9468090867063507693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187473 (SequenceMachineLib.triCol n + 1)) (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187472.P9468090867063507693

/-! ## A187472.P7034687781313345050

`eq[char[A187473(n+1)], A151933(n)]`
-/

namespace A187472.P7034687781313345050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187472.P7034687781313345050

/-! ## A187472.P1447215531350109959

`eq[char[A187473(n+1)], A151622(n)]`
-/

namespace A187472.P1447215531350109959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187472.P1447215531350109959

/-!
# A187473: Complement of A187472.

The programs for A187473, there is no canonical definition to state claims against.
-/

/-! ## A187473.P3506918011257362141

`eq[char[A187472(n+1)], A000007(n)]`
-/

namespace A187473.P3506918011257362141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187473.P3506918011257362141

/-! ## A187473.P10422335505608596038

`eq[char[A187472(n+1)], A000038(n)]`
-/

namespace A187473.P10422335505608596038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187473.P10422335505608596038

/-! ## A187473.P3698202688570651527

`eq[char[A187472(n+1)], A299529(3*(n+1))]`
-/

namespace A187473.P3698202688570651527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299529 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187473.P3698202688570651527

/-! ## A187473.P16791183411091157634

`eq[char[A187472(n+1)], A151933(n)]`
-/

namespace A187473.P16791183411091157634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187473.P16791183411091157634

/-! ## A187473.P6702974285140379876

`eq[char[A187472(n+1)], A151622(n)]`
-/

namespace A187473.P6702974285140379876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187473.P6702974285140379876

/-!
# A187474: Rank transform of the sequence floor(n*(Pi-2)); complement of A187475.

The programs for A187474, there is no canonical definition to state claims against.
-/

/-! ## A187474.P920134360332056421

`comp[A187475(n+1)-1]+1`
-/

namespace A187474.P920134360332056421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187475 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187474.P920134360332056421

/-! ## A187474.P5389227903907451001

`eq[char[A187475(n+1)], A000038(n)]`
-/

namespace A187474.P5389227903907451001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187475 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187474.P5389227903907451001

/-! ## A187474.P5739540130868573989

`lt[n*char[A187475(n+1)], A054571(n+1)]`
-/

namespace A187474.P5739540130868573989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187475 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A187474.P5739540130868573989

/-! ## A187474.P12459063410913177405

`lt[char[A187475(n+1)]*A000079(n), n]`
-/

namespace A187474.P12459063410913177405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187475 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000079 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A187474.P12459063410913177405

/-! ## A187474.P2229996230006524265

`eq[char[A187475(n+1)], A151933(n)]`
-/

namespace A187474.P2229996230006524265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187475 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187474.P2229996230006524265

/-!
# A187475: Complement of A187474.

The programs for A187475, there is no canonical definition to state claims against.
-/

/-! ## A187475.P14796228893947230081

`eq[char[A187474(n+1)], A000007(n)]`
-/

namespace A187475.P14796228893947230081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187474 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187475.P14796228893947230081

/-! ## A187475.P10706095292700315930

`eq[char[A187474(n+1)], A151933(n)]`
-/

namespace A187475.P10706095292700315930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187474 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187475.P10706095292700315930

/-! ## A187475.P18199367043075623252

`eq[char[A187474(n+1)], A151622(n)]`
-/

namespace A187475.P18199367043075623252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187474 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187475.P18199367043075623252

/-! ## A187475.P5680686005042250403

`A325169(A209406(n+1))+A186222(n+1)`
-/

namespace A187475.P5680686005042250403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325169 (A209406 (n + 1)).toNat + A186222 (n + 1)

end

end A187475.P5680686005042250403

/-! ## A187475.P7116356214423748599

`A051731(A349496(3*(n+1)))+A047211(n+1)`
-/

namespace A187475.P7116356214423748599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A349496 (3 * (n + 1))).toNat + A047211 (n + 1)

end

end A187475.P7116356214423748599

/-!
# A187476: Rank transform of the sequence floor(3(n-1)/2); complement of A187477.

The programs for A187476, there is no canonical definition to state claims against.
-/

/-! ## A187476.P1778338538673636386

`comp[A187836(n+1)-2]`
-/

namespace A187476.P1778338538673636386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187836 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187476.P1778338538673636386

/-! ## A187476.P10824896036417975170

`comp[A187834(n+1)-4]`
-/

namespace A187476.P10824896036417975170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187834 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187476.P10824896036417975170

/-! ## A187476.P9657717334084690803

`comp[A187225(n+1)-6]`
-/

namespace A187476.P9657717334084690803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187476.P9657717334084690803

/-! ## A187476.P6430188535725897220

`A187835(n+2)-2`
-/

namespace A187476.P6430188535725897220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187835 (n + 2) - 2

end

end A187476.P6430188535725897220

/-! ## A187476.P5169377259439374307

`∑[A162906(Δ[A187835(n+1)])]+n`
-/

namespace A187476.P5169377259439374307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187835 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162906 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187476.P5169377259439374307

/-! ## A187476.P12610640300534745268

`A187833(n+3)-4`
-/

namespace A187476.P12610640300534745268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187833 (n + 3) - 4

end

end A187476.P12610640300534745268

/-! ## A187476.P17489674687464781843

`A187224(n+4)-6`
-/

namespace A187476.P17489674687464781843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (n + 4) - 6

end

end A187476.P17489674687464781843

/-! ## A187476.P9947068126962241582

`A023444(A187835(n+2))`
-/

namespace A187476.P9947068126962241582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A187835 (n + 2)).toNat

end

end A187476.P9947068126962241582

/-! ## A187476.P4239863490593173123

`∑[Δ[A187835(n+1)]+A008683(2*(n+1)²)]`
-/

namespace A187476.P4239863490593173123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187835 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187476.P4239863490593173123

/-!
# A187477: Complement of A187476.

The programs for A187477, there is no canonical definition to state claims against.
-/

/-! ## A187477.P18350923874146678844

`A187836(n+2)-2`
-/

namespace A187477.P18350923874146678844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187836 (n + 2) - 2

end

end A187477.P18350923874146678844

/-! ## A187477.P11245513182658320351

`∑[abs(Δ[A187836(n+1)])]`
-/

namespace A187477.P11245513182658320351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187477.P11245513182658320351

/-! ## A187477.P8274133599823275999

`∑[A000041(Δ[A187836(n+1)])]`
-/

namespace A187477.P8274133599823275999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187477.P8274133599823275999

/-! ## A187477.P9357350116971444682

`A187834(3+n)-4`
-/

namespace A187477.P9357350116971444682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187834 (3 + n) - 4

end

end A187477.P9357350116971444682

/-! ## A187477.P9225071283313515830

`∑[abs(Δ[A187834(n+2)])]`
-/

namespace A187477.P9225071283313515830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187834 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187477.P9225071283313515830

/-! ## A187477.P13145900200520821737

`A187225(n+4)-6`
-/

namespace A187477.P13145900200520821737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 4) - 6

end

end A187477.P13145900200520821737

/-! ## A187477.P4428684850749816955

`∑[abs(Δ[A187225(n+3)])]`
-/

namespace A187477.P4428684850749816955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187477.P4428684850749816955

/-! ## A187477.P3207708511486994243

`∑[A006530(Δ[A187225(n+3)])]`
-/

namespace A187477.P3207708511486994243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187477.P3207708511486994243

/-! ## A187477.P2803471332442229341

`∑[A020639(Δ[A187225(n+3)])]`
-/

namespace A187477.P2803471332442229341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187225 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187477.P2803471332442229341

/-! ## A187477.P1130977624106930047

`A023444(A187836(n+2))`
-/

namespace A187477.P1130977624106930047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A187836 (n + 2)).toNat

end

end A187477.P1130977624106930047

/-!
# A187478: Rank transform of the sequence floor(3(n-2)/2); complement of A187479.

The programs for A187478, there is no canonical definition to state claims against.
-/

/-! ## A187478.P17635709049019663110

`comp[A187479(n+1)-1]+1`
-/

namespace A187478.P17635709049019663110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187479 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187478.P17635709049019663110

/-! ## A187478.P11337043239452743592

`eq[char[A187479(n+1)], A000007(n)]`
-/

namespace A187478.P11337043239452743592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187479 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187478.P11337043239452743592

/-! ## A187478.P8839217039492458789

`eq[char[A187479(n+1)], A000038(n)]`
-/

namespace A187478.P8839217039492458789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187479 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187478.P8839217039492458789

/-! ## A187478.P17663880361748676774

`lt[char[A187479(n+1)], A057427(n)]`
-/

namespace A187478.P17663880361748676774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187479 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A187478.P17663880361748676774

/-! ## A187478.P11685426639139990894

`eq[char[A187479(n+1)], A151933(n)]`
-/

namespace A187478.P11685426639139990894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187479 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187478.P11685426639139990894

/-!
# A187479: Complement of A187478.

The programs for A187479, there is no canonical definition to state claims against.
-/

/-! ## A187479.P12711726773126228681

`A004396(A187478(n+1))+3+n`
-/

namespace A187479.P12711726773126228681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A187478 (n + 1)).toNat + 3 + (n : ℤ)

end

end A187479.P12711726773126228681

/-! ## A187479.P5155492691395649243

`eq[char[A187478(n+1)], A000007(n)]`
-/

namespace A187479.P5155492691395649243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187478 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187479.P5155492691395649243

/-! ## A187479.P16667760319622409699

`eq[char[A187478(n+1)], A000038(n)]`
-/

namespace A187479.P16667760319622409699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187478 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187479.P16667760319622409699

/-! ## A187479.P18342895056282551693

`eq[char[A187478(n+1)], A151933(n)]`
-/

namespace A187479.P18342895056282551693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187478 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187479.P18342895056282551693

/-! ## A187479.P8848606700238537320

`A103451(A173787(5*n+3))+A007095(2*n+3)`
-/

namespace A187479.P8848606700238537320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A173787 (5 * n + 3)).toNat + A007095 (2 * n + 3)

end

end A187479.P8848606700238537320

/-!
# A187480: Rank transform of the sequence round(n/2); complement of A187481.

The programs for A187480, there is no canonical definition to state claims against.
-/

/-! ## A187480.P4178010231709696047

`comp[A187481(n+1)-1]+1`
-/

namespace A187480.P4178010231709696047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187481 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A187480.P4178010231709696047

/-! ## A187480.P17148097265157790256

`comp[A187481(A008619(n))%A187481(n+1)]`
-/

namespace A187480.P17148097265157790256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187481 (A008619 n).toNat) (A187481 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187480.P17148097265157790256

/-! ## A187480.P17172196353346990700

`comp[A187481(A065033(n))%A187481(n+1)]`
-/

namespace A187480.P17172196353346990700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187481 (A065033 n).toNat) (A187481 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187480.P17172196353346990700

/-! ## A187480.P1426177732540094373

`A004525(A187481(n+1)-(n+2))`
-/

namespace A187480.P1426177732540094373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A187481 (n + 1) - (n + 2 : ℤ)).toNat

end

end A187480.P1426177732540094373

/-! ## A187480.P10210344568955440866

`A004524(A187481(n+1)-n)`
-/

namespace A187480.P10210344568955440866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A187481 (n + 1) - (n : ℤ)).toNat

end

end A187480.P10210344568955440866

/-! ## A187480.P2209705236497693022

`A004526(A187481(n+1)-(n+1))`
-/

namespace A187480.P2209705236497693022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187481 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187480.P2209705236497693022

/-! ## A187480.P10728483762044167218

`A106249(A187481(n+1)-(n+1))`
-/

namespace A187480.P10728483762044167218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A187481 (n + 1) - (n + 1 : ℤ)).toNat

end

end A187480.P10728483762044167218

/-!
# A187481: Complement of A187480.

The programs for A187481, there is no canonical definition to state claims against.
-/

/-! ## A187481.P16783758491883615347

`A042948(A187480(n+1))+2+n`
-/

namespace A187481.P16783758491883615347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A187480 (n + 1)).toNat + 2 + (n : ℤ)

end

end A187481.P16783758491883615347

/-! ## A187481.P292319262864491769

`A264120(A187480(n+1)+2)+1+n`
-/

namespace A187481.P292319262864491769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264120 (A187480 (n + 1) + 2).toNat + 1 + (n : ℤ)

end

end A187481.P292319262864491769

/-! ## A187481.P10116711143460971891

`comp[A187480(A122196(n+1))*A368914(n+1)]`
-/

namespace A187481.P10116711143460971891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187480 (A122196 (n + 1)).toNat * A368914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187481.P10116711143460971891

/-! ## A187481.P11665745519136933320

`eq[char[A187480(n+1)], A151933(n)]`
-/

namespace A187481.P11665745519136933320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187480 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187481.P11665745519136933320

/-! ## A187481.P11069880249670090742

`eq[char[A187480(n+1)], A151622(n)]`
-/

namespace A187481.P11069880249670090742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187480 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A187481.P11069880249670090742

/-!
# A187484: Rank transform of the sequence A004526=(0,0,1,1,2,2,3,3,4,4,...); complement of A187475.

The programs for A187484, the canonical program `A187484.P10915625614734529071` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187484 has offset 1).

The definition of A187484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187484.P10915625614734529071

`floor(a(n-1)+n/(a(a(n-1)-n)+1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187484

/-- `floor(a(n-1)+n/(a(a(n-1)-n)+1))` -/
def P10915625614734529071.Spec : Prop :=
  ∀ n, P10915625614734529071.a n = A187484 (n + 1)

theorem P10915625614734529071.correct : P10915625614734529071.Spec := by
  intro n
  simp only [A187484, Nat.add_sub_cancel]

end A187484

/-! ## A187484.P13385845481600995043

`comp[A026364(n+1)-2]`
-/

namespace A187484.P13385845481600995043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026364 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187484.P13385845481600995043

namespace A187484

/-- `comp[A026364(n+1)-2]` -/
def P13385845481600995043.Spec : Prop :=
  ∀ n, (P13385845481600995043.a n : ℤ) = A187484 (n + 1)

end A187484

/-! ## A187484.P16619951438945480425

`∑[A285301(n+1)]+n`
-/

namespace A187484.P16619951438945480425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187484.P16619951438945480425

namespace A187484

/-- `∑[A285301(n+1)]+n` -/
def P16619951438945480425.Spec : Prop :=
  ∀ n, P16619951438945480425.a n = A187484 (n + 1)

end A187484

/-! ## A187484.P531788437885637836

`A026363(n+1)+A285301(n+1)-1`
-/

namespace A187484.P531788437885637836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (n + 1) + (A285301 (n + 1) - 1)

end

end A187484.P531788437885637836

namespace A187484

/-- `A026363(n+1)+A285301(n+1)-1` -/
def P531788437885637836.Spec : Prop :=
  ∀ n, P531788437885637836.a n = A187484 (n + 1)

end A187484

/-! ## A187484.P8337803974164225799

`A026363(n+2)-2`
-/

namespace A187484.P8337803974164225799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (n + 2) - 2

end

end A187484.P8337803974164225799

namespace A187484

/-- `A026363(n+2)-2` -/
def P8337803974164225799.Spec : Prop :=
  ∀ n, P8337803974164225799.a n = A187484 (n + 1)

end A187484

/-! ## A187484.P13670296800661199498

`∑[A284751(n+2)]+n`
-/

namespace A187484.P13670296800661199498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284751 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A187484.P13670296800661199498

namespace A187484

/-- `∑[A284751(n+2)]+n` -/
def P13670296800661199498.Spec : Prop :=
  ∀ n, P13670296800661199498.a n = A187484 (n + 1)

end A187484

/-! ## A187484.P3936171332950905173

`A284753(n+2)/2-2`
-/

namespace A187484.P3936171332950905173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284753 (n + 2) : ℚ) / 2 - 2

end

end A187484.P3936171332950905173

namespace A187484

/-- `A284753(n+2)/2-2` -/
def P3936171332950905173.Spec : Prop :=
  ∀ n, P3936171332950905173.a n = (A187484 (n + 1) : ℚ)

end A187484

/-! ## A187484.P16950278002136218562

`lt[0, A285430(n+2)]`
-/

namespace A187484.P16950278002136218562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285430 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A187484.P16950278002136218562

namespace A187484

/-- `lt[0, A285430(n+2)]` -/
def P16950278002136218562.Spec : Prop :=
  ∀ n, (P16950278002136218562.a n : ℤ) = A187484 (n + 1)

end A187484

/-! ## A187484.P4848782785796142918

`eq[3, A080428(n+2)]`
-/

namespace A187484.P4848782785796142918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080428 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A187484.P4848782785796142918

namespace A187484

/-- `eq[3, A080428(n+2)]` -/
def P4848782785796142918.Spec : Prop :=
  ∀ n, (P4848782785796142918.a n : ℤ) = A187484 (n + 1)

end A187484

/-! ## A187484.P16539583341089378543

`A023444(A026363(n+2))`
-/

namespace A187484.P16539583341089378543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A026363 (n + 2)).toNat

end

end A187484.P16539583341089378543

namespace A187484

/-- `A023444(A026363(n+2))` -/
def P16539583341089378543.Spec : Prop :=
  ∀ n, P16539583341089378543.a n = A187484 (n + 1)

end A187484

/-! ## A187484.P17646946549498488362

`A097065(A086398(n+2))`
-/

namespace A187484.P17646946549498488362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A086398 (n + 2)).toNat

end

end A187484.P17646946549498488362

namespace A187484

/-- `A097065(A086398(n+2))` -/
def P17646946549498488362.Spec : Prop :=
  ∀ n, P17646946549498488362.a n = A187484 (n + 1)

end A187484

/-! ## A187484.P9282634411337261396

`A063277(A284753(n+2))`
-/

namespace A187484.P9282634411337261396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063277 (A284753 (n + 2)).toNat

end

end A187484.P9282634411337261396

namespace A187484

/-- `A063277(A284753(n+2))` -/
def P9282634411337261396.Spec : Prop :=
  ∀ n, P9282634411337261396.a n = A187484 (n + 1)

end A187484

/-!
# A187485: Positions of 0's in A123740; complement of A003623.

The programs for A187485, the canonical program `A187485.P14033398015965512919` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187485 has offset 1).

The definition of A187485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187485.P14033398015965512919

`floor(ceil((n+1)/2)*ϕ)+floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187485

/-- `floor(ceil((n+1)/2)*ϕ)+floor((n+1)/2)` -/
def P14033398015965512919.Spec : Prop :=
  ∀ n, P14033398015965512919.a n = A187485 (n + 1)

theorem P14033398015965512919.correct : P14033398015965512919.Spec := by
  intro n
  simp only [A187485, Nat.add_sub_cancel]

end A187485

/-! ## A187485.P2520980770290408981

`floor(∑[gcd(2, n)^log2(ϕ)])`
-/

namespace A187485.P2520980770290408981
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℝ) ^ (Real.logb 2 Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187485.P2520980770290408981

namespace A187485

/-- `floor(∑[gcd(2, n)^log2(ϕ)])` -/
def P2520980770290408981.Spec : Prop :=
  ∀ n, P2520980770290408981.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P16916376798216948097

`floor(∑[∏[ϕ-n%2]])`
-/

namespace A187485.P16916376798216948097
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - ((n % 2 : ℕ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187485.P16916376798216948097

namespace A187485

/-- `floor(∑[∏[ϕ-n%2]])` -/
def P16916376798216948097.Spec : Prop :=
  ∀ n, P16916376798216948097.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P1646817113494306497

`floor(∑[∏[ϕ-and(1, n)]])`
-/

namespace A187485.P1646817113494306497
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (Nat.land 1 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187485.P1646817113494306497

namespace A187485

/-- `floor(∑[∏[ϕ-and(1, n)]])` -/
def P1646817113494306497.Spec : Prop :=
  ∀ n, P1646817113494306497.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P8066191330783157900

`floor(∑[ϕ^((n+1)%2)])`
-/

namespace A187485.P8066191330783157900
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187485.P8066191330783157900

namespace A187485

/-- `floor(∑[ϕ^((n+1)%2)])` -/
def P8066191330783157900.Spec : Prop :=
  ∀ n, P8066191330783157900.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P8336261101961775285

`ceil(∑[ϕ^((n-1)%2)])`
-/

namespace A187485.P8336261101961775285
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A187485.P8336261101961775285

namespace A187485

/-- `ceil(∑[ϕ^((n-1)%2)])` -/
def P8336261101961775285.Spec : Prop :=
  ∀ n, P8336261101961775285.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P3858941155557921213

`floor(∑[ϕ^and(1, n+1)])`
-/

namespace A187485.P3858941155557921213
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187485.P3858941155557921213

namespace A187485

/-- `floor(∑[ϕ^and(1, n+1)])` -/
def P3858941155557921213.Spec : Prop :=
  ∀ n, P3858941155557921213.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P10016099725026377027

`floor(∑[ϕ-and(1, n)/ϕ])`
-/

namespace A187485.P10016099725026377027
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (Nat.land 1 n : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187485.P10016099725026377027

namespace A187485

/-- `floor(∑[ϕ-and(1, n)/ϕ])` -/
def P10016099725026377027.Spec : Prop :=
  ∀ n, P10016099725026377027.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P3748710140219005454

`floor(∑[and(1, n+1)/ϕ+1])`
-/

namespace A187485.P3748710140219005454
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℝ) / Real.goldenRatio + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A187485.P3748710140219005454

namespace A187485

/-- `floor(∑[and(1, n+1)/ϕ+1])` -/
def P3748710140219005454.Spec : Prop :=
  ∀ n, P3748710140219005454.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P2634482053179628799

`floor(ϕ*∑[ϕ-a(n-1)])` with `a(0)=1`
-/

namespace A187485.P2634482053179628799
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f1 j)⌋

end

end A187485.P2634482053179628799

namespace A187485

/-- `floor(ϕ*∑[ϕ-a(n-1)])` -/
def P2634482053179628799.Spec : Prop :=
  ∀ n, P2634482053179628799.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P3159793700782572157

`floor(∑[ϕ/a(n-1)]+ϕ)` with `a(0)=0, a(1)=1`
-/

namespace A187485.P3159793700782572157
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + Real.goldenRatio⌋

end

end A187485.P3159793700782572157

namespace A187485

/-- `floor(∑[ϕ/a(n-1)]+ϕ)` -/
def P3159793700782572157.Spec : Prop :=
  ∀ n, P3159793700782572157.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P18386402890021568870

`∑[A363057(n+1)]`
-/

namespace A187485.P18386402890021568870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187485.P18386402890021568870

namespace A187485

/-- `∑[A363057(n+1)]` -/
def P18386402890021568870.Spec : Prop :=
  ∀ n, P18386402890021568870.a n = A187485 (n + 1)

end A187485

/-! ## A187485.P13470794040101092159

`comp[A047924(n)-3]`
-/

namespace A187485.P13470794040101092159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187485.P13470794040101092159

namespace A187485

/-- `comp[A047924(n)-3]` -/
def P13470794040101092159.Spec : Prop :=
  ∀ n, (P13470794040101092159.a n : ℤ) = A187485 (n + 1)

end A187485

/-! ## A187485.P3936741611430048710

`comp[A002251(n)+n]`
-/

namespace A187485.P3936741611430048710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187485.P3936741611430048710

namespace A187485

/-- `comp[A002251(n)+n]` -/
def P3936741611430048710.Spec : Prop :=
  ∀ n, (P3936741611430048710.a n : ℤ) = A187485 (n + 1)

end A187485

/-! ## A187485.P13087206178024562829

`∑[A284620(n+1)!]`
-/

namespace A187485.P13087206178024562829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A284620 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A187485.P13087206178024562829

namespace A187485

/-- `∑[A284620(n+1)!]` -/
def P13087206178024562829.Spec : Prop :=
  ∀ n, (P13087206178024562829.a n : ℤ) = A187485 (n + 1)

end A187485

/-! ## A187485.P11059244624551027460

`comp[A276885(n+1)-1]`
-/

namespace A187485.P11059244624551027460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A187485.P11059244624551027460

namespace A187485

/-- `comp[A276885(n+1)-1]` -/
def P11059244624551027460.Spec : Prop :=
  ∀ n, (P11059244624551027460.a n : ℤ) = A187485 (n + 1)

end A187485

/-! ## A187485.P9284507549048682172

`(A137708(n+1)+n+1)/2`
-/

namespace A187485.P9284507549048682172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137708 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A187485.P9284507549048682172

namespace A187485

/-- `(A137708(n+1)+n+1)/2` -/
def P9284507549048682172.Spec : Prop :=
  ∀ n, P9284507549048682172.a n = (A187485 (n + 1) : ℚ)

end A187485

/-! ## A187485.P9422324613777431014

`∪[A003622(n+1), A026351(n)]`
-/

namespace A187485.P9422324613777431014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187485.P9422324613777431014

namespace A187485

/-- `∪[A003622(n+1), A026351(n)]` -/
def P9422324613777431014.Spec : Prop :=
  ∀ n, (P9422324613777431014.a n : ℤ) = A187485 (n + 1)

end A187485

/-! ## A187485.P14145611374704781180

`∪[A026273(n+1), A026351(n)]`
-/

namespace A187485.P14145611374704781180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A187485.P14145611374704781180

namespace A187485

/-- `∪[A026273(n+1), A026351(n)]` -/
def P14145611374704781180.Spec : Prop :=
  ∀ n, (P14145611374704781180.a n : ℤ) = A187485 (n + 1)

end A187485

/-!
# A187486: Distance between first and second positions of A181762(n).

The programs for A187486, there is no canonical definition to state claims against.
-/

/-! ## A187486.P4521112732414928565

`5*C(n+2, n^a(n-1))` with `a(0)=0`
-/

namespace A187486.P4521112732414928565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  5 * Nat.choose (n + 2) (n ^ a (n - 1))

end

end A187486.P4521112732414928565

/-! ## A187486.P4036361392070685177

`5*and(1, n)*A007967((n+2)²)`
-/

namespace A187486.P4036361392070685177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.land 1 n : ℤ) * A007967 ((n + 2) ^ 2)

end

end A187486.P4036361392070685177

/-! ## A187486.P1447648490343654078

`val(A020639(n+1)^(5*(n+2)), 2)`
-/

namespace A187486.P1447648490343654078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (n + 1) ^ (5 * (n + 2))).toNat 2

end

end A187486.P1447648490343654078

/-! ## A187486.P8049755996343387711

`5*Δ[A353376(A000079(n))²]`
-/

namespace A187486.P8049755996343387711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (A000079 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A187486.P8049755996343387711

/-! ## A187486.P18273747535823853288

`(n+2)*A111912(A272007(3*(n+1)))`
-/

namespace A187486.P18273747535823853288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A111912 (A272007 (3 * (n + 1))).toNat

end

end A187486.P18273747535823853288

/-!
# A187487: Numerator of n minus n-th harmonic number.

The programs for A187487, the canonical program `A187487.P4860417623296774577` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187487 has offset 1).

The definition of A187487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A187487.P6642452553910504673

`∑[n/(n+1)]*A002805(n+1)`
-/

namespace A187487.P6642452553910504673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A002805 (n + 1) : ℚ)

end

end A187487.P6642452553910504673

namespace A187487

/-- `∑[n/(n+1)]*A002805(n+1)` -/
def P6642452553910504673.Spec : Prop :=
  ∀ n, P6642452553910504673.a n = (A187487 (n + 1) : ℚ)

end A187487

/-! ## A187487.P4860417623296774577

`n*A002805(n+1)-A064169(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A187487

/-- `n*A002805(n+1)-A064169(n+1)` -/
def P4860417623296774577.Spec : Prop :=
  ∀ n, P4860417623296774577.a n = A187487 (n + 1)

theorem P4860417623296774577.correct : P4860417623296774577.Spec := by
  intro n
  simp only [A187487, Nat.add_sub_cancel]

end A187487

/-! ## A187487.P15898614262648640199

`(n+1)*A002805(n+1)-A001008(n+1)`
-/

namespace A187487.P15898614262648640199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002805 (n + 1) - A001008 (n + 1)

end

end A187487.P15898614262648640199

namespace A187487

/-- `(n+1)*A002805(n+1)-A001008(n+1)` -/
def P15898614262648640199.Spec : Prop :=
  ∀ n, P15898614262648640199.a n = A187487 (n + 1)

theorem P15898614262648640199.correct : P15898614262648640199.Spec := by
  intro n
  simp only [A187487, Nat.add_sub_cancel, A187487.P15898614262648640199.a, A187487.P4860417623296774577.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064169, A064169.P16990074960060079416.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187487

/-! ## A187487.P12575236905509049382

`(A001008(n+1)-A064169(n+1))*(n+1)-A001008(n+1)`
-/

namespace A187487.P12575236905509049382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) - A064169 (n + 1)) * (n + 1 : ℤ) - A001008 (n + 1)

end

end A187487.P12575236905509049382

namespace A187487

/-- `(A001008(n+1)-A064169(n+1))*(n+1)-A001008(n+1)` -/
def P12575236905509049382.Spec : Prop :=
  ∀ n, P12575236905509049382.a n = A187487 (n + 1)

theorem P12575236905509049382.correct : P12575236905509049382.Spec := by
  intro n
  simp only [A187487, Nat.add_sub_cancel, A187487.P12575236905509049382.a, A187487.P4860417623296774577.a, A001008, A001008.P14452720140578332173.a, A002805, A002805.P15380155363923936140.a, A064169, A064169.P16990074960060079416.a, A000254, A000254.P9428527937712228311.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A187487

/-! ## A187487.P7922761043796950161

`A003418(n+1)/A110566(n+1)*(n+1)-A001008(n+1)`
-/

namespace A187487.P7922761043796950161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ) * (n + 1 : ℚ) - (A001008 (n + 1) : ℚ)

end

end A187487.P7922761043796950161

namespace A187487

/-- `A003418(n+1)/A110566(n+1)*(n+1)-A001008(n+1)` -/
def P7922761043796950161.Spec : Prop :=
  ∀ n, P7922761043796950161.a n = (A187487 (n + 1) : ℚ)

end A187487

/-! ## A187487.P10745902277069509931

`(n+1)*A213999(∑[n+2]-1)-A001008(n+1)`
-/

namespace A187487.P10745902277069509931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A001008 (n + 1)

end

end A187487.P10745902277069509931

namespace A187487

/-- `(n+1)*A213999(∑[n+2]-1)-A001008(n+1)` -/
def P10745902277069509931.Spec : Prop :=
  ∀ n, P10745902277069509931.a n = A187487 (n + 1)

end A187487

/-! ## A187487.P16263689223368365303

`A067318(n+1)/A056612(n+1)`
-/

namespace A187487.P16263689223368365303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067318 (n + 1) : ℚ) / (A056612 (n + 1) : ℚ)

end

end A187487.P16263689223368365303

namespace A187487

/-- `A067318(n+1)/A056612(n+1)` -/
def P16263689223368365303.Spec : Prop :=
  ∀ n, P16263689223368365303.a n = (A187487 (n + 1) : ℚ)

end A187487

/-!
# A187489: Irregular triangle T(n,k), n>=0, 0<=k<=A068063(n), read by rows: T(n,k) is the number of k-element nondividing subsets of {1, 2, ..., n}.

The programs for A187489, there is no canonical definition to state claims against.
-/

/-! ## A187489.P8671325180566805967

`or(A089178(n), A102683(A089204(n+1)))`
-/

namespace A187489.P8671325180566805967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089178 n) (A102683 (A089204 (n + 1)).toNat)

end

end A187489.P8671325180566805967

/-! ## A187489.P10674971191418508962

`or(A089178(n), A121262(A185544(n)))`
-/

namespace A187489.P10674971191418508962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089178 n) (A121262 (A185544 n).toNat)

end

end A187489.P10674971191418508962

/-! ## A187489.P8276541345385483558

`A260394(A147279(n+1))+A089178(n)`
-/

namespace A187489.P8276541345385483558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260394 (A147279 (n + 1)).toNat + A089178 n

end

end A187489.P8276541345385483558

/-! ## A187489.P10768018441745913835

`or(A089178(n), A188967(A172020(n+1)))`
-/

namespace A187489.P10768018441745913835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089178 n) (A188967 (A172020 (n + 1)).toNat)

end

end A187489.P10768018441745913835

/-! ## A187489.P3332272019033218812

`or(A089178(n), A189632(A201361(n+1)))`
-/

namespace A187489.P3332272019033218812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089178 n) (A189632 (A201361 (n + 1)).toNat)

end

end A187489.P3332272019033218812

/-!
# A187495: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-3,0,1,2}, n=3*r+p_i, and define a(-3)=1. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,1,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(2*cos(Pi/9)).

The programs for A187495, the canonical program `A187495.P8801733900190864514` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187495 has offset 0).

The definition of A187495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187495.P8801733900190864514

`ogf((x^3-x^6+x^7-x^9-x^10+x^11)/(1-x^3-3x^6+2x^9+x^12))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187495

/-- `ogf((x^3-x^6+x^7-x^9-x^10+x^11)/(1-x^3-3x^6+2x^9+x^12))` -/
def P8801733900190864514.Spec : Prop :=
  ∀ n, P8801733900190864514.a n = A187495 n

theorem P8801733900190864514.correct : P8801733900190864514.Spec := by
  intro n
  simp only [A187495]

end A187495

/-! ## A187495.P5887122948775580473

`A187496(abs(3-n))`
-/

namespace A187495.P5887122948775580473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 |3 - (n : ℤ)|.toNat

end

end A187495.P5887122948775580473

namespace A187495

/-- `A187496(abs(3-n))` -/
def P5887122948775580473.Spec : Prop :=
  ∀ n, P5887122948775580473.a n = A187495 n

end A187495

/-! ## A187495.P17116392863545074817

`A057078(n)+A187498(n)-A187496(n)`
-/

namespace A187495.P17116392863545074817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n + (A187498 n - A187496 n)

end

end A187495.P17116392863545074817

namespace A187495

/-- `A057078(n)+A187498(n)-A187496(n)` -/
def P17116392863545074817.Spec : Prop :=
  ∀ n, P17116392863545074817.a n = A187495 n

end A187495

/-! ## A187495.P1428624921727122974

`A010892(2*n)+A187498(n)-A187496(n)`
-/

namespace A187495.P1428624921727122974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) + (A187498 n - A187496 n)

end

end A187495.P1428624921727122974

namespace A187495

/-- `A010892(2*n)+A187498(n)-A187496(n)` -/
def P1428624921727122974.Spec : Prop :=
  ∀ n, P1428624921727122974.a n = A187495 n

end A187495

/-! ## A187495.P12353995769972078986

`A187498(n)-A187496(n)-round(A049347(n+1)/2)`
-/

namespace A187495.P12353995769972078986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 n - A187496 n - SequenceMachineLib.roundAway ((A049347 (n + 1) : ℚ) / 2)

end

end A187495.P12353995769972078986

namespace A187495

/-- `A187498(n)-A187496(n)-round(A049347(n+1)/2)` -/
def P12353995769972078986.Spec : Prop :=
  ∀ n, P12353995769972078986.a n = A187495 n

end A187495

/-! ## A187495.P8153893409943757433

`A187496(n+3)-A187497(n)`
-/

namespace A187495.P8153893409943757433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (n + 3) - A187497 n

end

end A187495.P8153893409943757433

namespace A187495

/-- `A187496(n+3)-A187497(n)` -/
def P8153893409943757433.Spec : Prop :=
  ∀ n, P8153893409943757433.a n = A187495 n

end A187495

/-!
# A187496: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-3,0,1,2}, n=3*r+p_i, and define a(-3)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,2,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(2*cos(Pi/9)).

The programs for A187496, the canonical program `A187496.P846918191889463809` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187496 has offset 0).

The definition of A187496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187496.P846918191889463809

`ogf((1-x^3+x^4-x^6-x^7+x^8)/(1-x^3-3x^6+2x^9+x^12))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187496

/-- `ogf((1-x^3+x^4-x^6-x^7+x^8)/(1-x^3-3x^6+2x^9+x^12))` -/
def P846918191889463809.Spec : Prop :=
  ∀ n, P846918191889463809.a n = A187496 n

theorem P846918191889463809.correct : P846918191889463809.Spec := by
  intro n
  simp only [A187496]

end A187496

/-! ## A187496.P9306077472437418493

`A187495(n+3)`
-/

namespace A187496.P9306077472437418493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (n + 3)

end

end A187496.P9306077472437418493

namespace A187496

/-- `A187495(n+3)` -/
def P9306077472437418493.Spec : Prop :=
  ∀ n, P9306077472437418493.a n = A187496 n

end A187496

/-! ## A187496.P16592472266519102330

`A057078(n)-(A187495(n)-A187498(n))`
-/

namespace A187496.P16592472266519102330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n - (A187495 n - A187498 n)

end

end A187496.P16592472266519102330

namespace A187496

/-- `A057078(n)-(A187495(n)-A187498(n))` -/
def P16592472266519102330.Spec : Prop :=
  ∀ n, P16592472266519102330.a n = A187496 n

end A187496

/-! ## A187496.P7987438431639129855

`A010892(2*n)-(A187495(n)-A187498(n))`
-/

namespace A187496.P7987438431639129855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n) - (A187495 n - A187498 n)

end

end A187496.P7987438431639129855

namespace A187496

/-- `A010892(2*n)-(A187495(n)-A187498(n))` -/
def P7987438431639129855.Spec : Prop :=
  ∀ n, P7987438431639129855.a n = A187496 n

end A187496

/-! ## A187496.P7576073021776413102

`A187497(n+3)-A187498(n)`
-/

namespace A187496.P7576073021776413102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (n + 3) - A187498 n

end

end A187496.P7576073021776413102

namespace A187496

/-- `A187497(n+3)-A187498(n)` -/
def P7576073021776413102.Spec : Prop :=
  ∀ n, P7576073021776413102.a n = A187496 n

end A187496

/-! ## A187496.P3409505227798421136

`A187498(n+6)-(A187498(n+3)+A187498(n))`
-/

namespace A187496.P3409505227798421136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (n + 6) - (A187498 (n + 3) + A187498 n)

end

end A187496.P3409505227798421136

namespace A187496

/-- `A187498(n+6)-(A187498(n+3)+A187498(n))` -/
def P3409505227798421136.Spec : Prop :=
  ∀ n, P3409505227798421136.a n = A187496 n

end A187496

/-!
# A187497: Let i be in {1,2,3,4} and r>=0 an integer. Let p ={p_1,p_2,p_3,p_4} = {-3,0,1,2}, n=3*r+p_i and define a(-3)=0. Then a(n)=a(3*r+p_i) gives the number of H_(9,3,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(2*cos(Pi/9)).

The programs for A187497, the canonical program `A187497.P5167370357762348075` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187497 has offset 0).

The definition of A187497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187497.P5167370357762348075

`3*a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=0, a(7)=2, a(8)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187497

/-- `3*a(n-6)+a(n-9)` -/
def P5167370357762348075.Spec : Prop :=
  ∀ n, (P5167370357762348075.a n : ℤ) = A187497 n

theorem P5167370357762348075.correct : P5167370357762348075.Spec := by
  intro n
  simp only [A187497]

end A187497

/-! ## A187497.P1028219012011616838

`ogf((x+x^3-x^4+x^5-x^6-x^7+x^10-x^11)/(1-x^3-3x^6+2x^9+x^12))`
-/

namespace A187497.P1028219012011616838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1, -1, 1, -1, -1, 0, 0, 1, -1] [1, 0, 0, -1, 0, 0, -3, 0, 0, 2, 0, 0, 1] n

end

end A187497.P1028219012011616838

namespace A187497

/-- `ogf((x+x^3-x^4+x^5-x^6-x^7+x^10-x^11)/(1-x^3-3x^6+2x^9+x^12))` -/
def P1028219012011616838.Spec : Prop :=
  ∀ n, P1028219012011616838.a n = A187497 n

end A187497

/-! ## A187497.P2824644933333962353

`A187496(n+3)-A187495(n)`
-/

namespace A187497.P2824644933333962353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (n + 3) - A187495 n

end

end A187497.P2824644933333962353

namespace A187497

/-- `A187496(n+3)-A187495(n)` -/
def P2824644933333962353.Spec : Prop :=
  ∀ n, P2824644933333962353.a n = A187497 n

end A187497

/-! ## A187497.P18433251239073330517

`A187495(n+6)-A187495(n)`
-/

namespace A187497.P18433251239073330517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (n + 6) - A187495 n

end

end A187497.P18433251239073330517

namespace A187497

/-- `A187495(n+6)-A187495(n)` -/
def P18433251239073330517.Spec : Prop :=
  ∀ n, P18433251239073330517.a n = A187497 n

end A187497

/-! ## A187497.P1700013465868049946

`A187498(n+3)-A187498(n)`
-/

namespace A187497.P1700013465868049946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 (n + 3) - A187498 n

end

end A187497.P1700013465868049946

namespace A187497

/-- `A187498(n+3)-A187498(n)` -/
def P1700013465868049946.Spec : Prop :=
  ∀ n, P1700013465868049946.a n = A187497 n

end A187497

/-!
# A187498: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p={p_1, p_2, p_3, p_4} = {-3,0,1,2}, n=3*r+p_i, and define a(-3)=0. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,4,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(2*cos(Pi/9)).

The programs for A187498, the canonical program `A187498.P2547254439826637731` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187498 has offset 0).

The definition of A187498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187498.P2547254439826637731

`ogf((x^2+x^3+2x^4+2x^5+3x^6+3x^7+x^8+x^9)/(1+x+x^2-3x^6-3x^7-3x^8-x^9-x^10-x^11))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187498

/-- `ogf((x^2+x^3+2x^4+2x^5+3x^6+3x^7+x^8+x^9)/(1+x+x^2-3x^6-3x^7-3x^8-x^9-x^10-x^11))` -/
def P2547254439826637731.Spec : Prop :=
  ∀ n, P2547254439826637731.a n = A187498 n

theorem P2547254439826637731.correct : P2547254439826637731.Spec := by
  intro n
  simp only [A187498]

end A187498

/-! ## A187498.P6364026235964659879

`A187495(n)+A187496(n)-A057078(n)`
-/

namespace A187498.P6364026235964659879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 n + (A187496 n - A057078 n)

end

end A187498.P6364026235964659879

namespace A187498

/-- `A187495(n)+A187496(n)-A057078(n)` -/
def P6364026235964659879.Spec : Prop :=
  ∀ n, P6364026235964659879.a n = A187498 n

end A187498

/-! ## A187498.P2841700846547928500

`A187497(n+3)-A187496(n)`
-/

namespace A187498.P2841700846547928500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (n + 3) - A187496 n

end

end A187498.P2841700846547928500

namespace A187498

/-- `A187497(n+3)-A187496(n)` -/
def P2841700846547928500.Spec : Prop :=
  ∀ n, P2841700846547928500.a n = A187498 n

end A187498

/-! ## A187498.P10483092197534784549

`A187497(n+3)-A187495(n+3)`
-/

namespace A187498.P10483092197534784549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187497 (n + 3) - A187495 (n + 3)

end

end A187498.P10483092197534784549

namespace A187498

/-- `A187497(n+3)-A187495(n+3)` -/
def P10483092197534784549.Spec : Prop :=
  ∀ n, P10483092197534784549.a n = A187498 n

end A187498

/-! ## A187498.P11877046712339784434

`A187496(n+6)-2*A187496(n)`
-/

namespace A187498.P11877046712339784434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 (n + 6) - 2 * A187496 n

end

end A187498.P11877046712339784434

namespace A187498

/-- `A187496(n+6)-2*A187496(n)` -/
def P11877046712339784434.Spec : Prop :=
  ∀ n, P11877046712339784434.a n = A187498 n

end A187498

/-! ## A187498.P13822742353570330942

`A187495(n+9)-2*A187495(n+3)`
-/

namespace A187498.P13822742353570330942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (n + 9) - 2 * A187495 (n + 3)

end

end A187498.P13822742353570330942

namespace A187498

/-- `A187495(n+9)-2*A187495(n+3)` -/
def P13822742353570330942.Spec : Prop :=
  ∀ n, P13822742353570330942.a n = A187498 n

end A187498

/-! ## A187498.P7703084516022367317

`A187495(n+9)-A005843(A187495(n+3))`
-/

namespace A187498.P7703084516022367317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (n + 9) - A005843 (A187495 (n + 3)).toNat

end

end A187498.P7703084516022367317

namespace A187498

/-- `A187495(n+9)-A005843(A187495(n+3))` -/
def P7703084516022367317.Spec : Prop :=
  ∀ n, P7703084516022367317.a n = A187498 n

end A187498

/-!
# A187499: Let i be in {1,2,3,4} and let r >= 0 be an integer. Let p = {p_1, p_2, p_3, p_4} = {-2,0,1,2}, n=3*r+p_i, and define a(-2)=1. Then a(n)=a(3*r+p_i) gives the quantity of H_(9,1,0) tiles in a subdivided H_(9,i,r) tile after linear scaling by the factor Q^r, where Q=sqrt(x^2-1) with x=2*cos(Pi/9).

The programs for A187499, the canonical program `A187499.P15799987445950008237` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A187499 has offset 0).

The definition of A187499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A187499.P15799987445950008237

`ogf((x^4-2x^7+x^8+x^9-x^11)/(1-3x^3+3x^9))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A187499

/-- `ogf((x^4-2x^7+x^8+x^9-x^11)/(1-3x^3+3x^9))` -/
def P15799987445950008237.Spec : Prop :=
  ∀ n, P15799987445950008237.a n = A187499 n

theorem P15799987445950008237.correct : P15799987445950008237.Spec := by
  intro n
  simp only [A187499]

end A187499

/-! ## A187499.P9877960000477458818

`A187501(n-3%(n+1))`
-/

namespace A187499.P9877960000477458818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187501 (n - 3 % (n + 1))

end

end A187499.P9877960000477458818

namespace A187499

/-- `A187501(n-3%(n+1))` -/
def P9877960000477458818.Spec : Prop :=
  ∀ n, P9877960000477458818.a n = A187499 n

end A187499

/-! ## A187499.P8615849510304747976

`A187501(comp[2*(n+2)]-n)`
-/

namespace A187499.P8615849510304747976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187501 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A187499.P8615849510304747976

namespace A187499

/-- `A187501(comp[2*(n+2)]-n)` -/
def P8615849510304747976.Spec : Prop :=
  ∀ n, P8615849510304747976.a n = A187499 n

end A187499

/-! ## A187499.P5972199949613040298

`3*a(n-3)-3*a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=0, a(6)=0, a(7)=1, a(8)=1, a(9)=1, a(10)=3, a(11)=2`
-/

namespace A187499.P5972199949613040298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 3, 2] fun n a =>
  3 * a (n - 3) - 3 * a (n - 9)

end

end A187499.P5972199949613040298

namespace A187499

/-- `3*a(n-3)-3*a(n-9)` -/
def P5972199949613040298.Spec : Prop :=
  ∀ n, P5972199949613040298.a n = A187499 n

end A187499

/-! ## A187499.P11462673998653763057

`(A187502(n)-A187500(n))%A000213(n)`
-/

namespace A187499.P11462673998653763057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187502 n - A187500 n) (A000213 n)

end

end A187499.P11462673998653763057

namespace A187499

/-- `(A187502(n)-A187500(n))%A000213(n)` -/
def P11462673998653763057.Spec : Prop :=
  ∀ n, P11462673998653763057.a n = A187499 n

end A187499

/-! ## A187499.P582498102098509002

`(A187500(n+3)-A187500(n)-A187500(n))%A000213(n)`
-/

namespace A187499.P582498102098509002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187500 (n + 3) - A187500 n - A187500 n) (A000213 n)

end

end A187499.P582498102098509002

namespace A187499

/-- `(A187500(n+3)-A187500(n)-A187500(n))%A000213(n)` -/
def P582498102098509002.Spec : Prop :=
  ∀ n, P582498102098509002.a n = A187499 n

end A187499

