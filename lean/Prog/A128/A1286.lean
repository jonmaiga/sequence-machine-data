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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A128600: a(n) = the denominator of the continued fraction [[n/1];[n/2],[n/3],..,[n/n]], where [x] is floor(x).

The programs for A128600, there is no canonical definition to state claims against.
-/

/-! ## A128600.P3259902096470107456

`A003056(A001764(n)-A119284(n))`
-/

namespace A128600.P3259902096470107456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001764 n - A119284 n).toNat

end

end A128600.P3259902096470107456

/-!
# A128601: a(n) = the denominator of the continued fraction [1;floor(n/(n-1)),floor(n/(n-2)),...,floor(n/1)].

The programs for A128601, there is no canonical definition to state claims against.
-/

/-! ## A128601.P6899148604877912931

`A298538(∑[ceil(n/sqrt(2))!])`
-/

namespace A128601.P6899148604877912931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128601.P6899148604877912931

/-! ## A128601.P9157799734589133213

`A085180(A103142(n))`
-/

namespace A128601.P9157799734589133213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085180 (A103142 n).toNat

end

end A128601.P9157799734589133213

/-!
# A128602: Row sums of triangle A128567.

The programs for A128602, there is no canonical definition to state claims against.
-/

/-! ## A128602.P17184448336785263278

`∑[n+1]*A023193(A005500(n))`
-/

namespace A128602.P17184448336785263278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A023193 (A005500 n).toNat

end

end A128602.P17184448336785263278

/-! ## A128602.P10575305176520020826

`A289322(n)+A108804(A000400(n))`
-/

namespace A128602.P10575305176520020826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289322 n + A108804 (A000400 n).toNat

end

end A128602.P10575305176520020826

/-!
# A128603: Numbers dividing p^6 for p a prime.

The programs for A128603, the canonical program `A128603.P8202884258575162178` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128603 has offset 1).

The definition of A128603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128603.P16601322833511286039

`eq[A001221(n+1), A290669(A000005(n+1))]+1`
-/

namespace A128603.P16601322833511286039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290669 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A128603.P16601322833511286039

namespace A128603

/-- `eq[A001221(n+1), A290669(A000005(n+1))]+1` -/
def P16601322833511286039.Spec : Prop :=
  ∀ n, (P16601322833511286039.a n : ℤ) = A128603 (n + 1)

end A128603

/-! ## A128603.P8202884258575162178

`eq[A000005(n+2), A037143(A001222(n+2)+1)]+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A128603

/-- `eq[A000005(n+2), A037143(A001222(n+2)+1)]+2` -/
def P8202884258575162178.Spec : Prop :=
  ∀ n, (P8202884258575162178.a n : ℤ) = A128603 (n + 1)

theorem P8202884258575162178.correct : P8202884258575162178.Spec := by
  intro n
  simp only [A128603, Nat.add_sub_cancel]

end A128603

/-! ## A128603.P16615904410692507440

`record[(n+2)%(A014963(n+2)^7)]`
-/

namespace A128603.P16615904410692507440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (n + 2) ^ 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128603.P16615904410692507440

namespace A128603

/-- `record[(n+2)%(A014963(n+2)^7)]` -/
def P16615904410692507440.Spec : Prop :=
  ∀ n, P16615904410692507440.a n = A128603 (n + 1)

end A128603

/-! ## A128603.P14374239740631435745

`lt[n+1, A014963(n+1)^7]+1`
-/

namespace A128603.P14374239740631435745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A128603.P14374239740631435745

namespace A128603

/-- `lt[n+1, A014963(n+1)^7]+1` -/
def P14374239740631435745.Spec : Prop :=
  ∀ n, (P14374239740631435745.a n : ℤ) = A128603 (n + 1)

end A128603

/-! ## A128603.P3557114603705259799

`eq[1, A001222(A015053(n+1))]+1`
-/

namespace A128603.P3557114603705259799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A015053 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A128603.P3557114603705259799

namespace A128603

/-- `eq[1, A001222(A015053(n+1))]+1` -/
def P3557114603705259799.Spec : Prop :=
  ∀ n, (P3557114603705259799.a n : ℤ) = A128603 (n + 1)

end A128603

/-! ## A128603.P3024233474949704812

`record[A217434(n+2)/A295657(A295657(n+2))]`
-/

namespace A128603.P3024233474949704812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (n + 2) : ℚ) / (A295657 (A295657 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128603.P3024233474949704812

namespace A128603

/-- `record[A217434(n+2)/A295657(A295657(n+2))]` -/
def P3024233474949704812.Spec : Prop :=
  ∀ n, P3024233474949704812.a n = (A128603 (n + 1) : ℚ)

end A128603

/-! ## A128603.P1509842695472516783

`eq[A045778(n+2), A292886(A001055(n+2)+1)]+2`
-/

namespace A128603.P1509842695472516783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292886 (A001055 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A128603.P1509842695472516783

namespace A128603

/-- `eq[A045778(n+2), A292886(A001055(n+2)+1)]+2` -/
def P1509842695472516783.Spec : Prop :=
  ∀ n, (P1509842695472516783.a n : ℤ) = A128603 (n + 1)

end A128603

/-! ## A128603.P13998522276167843811

`∩[A286926(n+1), A337935(n+1)]`
-/

namespace A128603.P13998522276167843811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128603.P13998522276167843811

namespace A128603

/-- `∩[A286926(n+1), A337935(n+1)]` -/
def P13998522276167843811.Spec : Prop :=
  ∀ n, (P13998522276167843811.a n : ℤ) = A128603 (n + 1)

end A128603

/-! ## A128603.P7914440289799873934

`lt[A344590(A059268(n)+1), A014963(n+1)]+1`
-/

namespace A128603.P7914440289799873934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A059268 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A128603.P7914440289799873934

namespace A128603

/-- `lt[A344590(A059268(n)+1), A014963(n+1)]+1` -/
def P7914440289799873934.Spec : Prop :=
  ∀ n, (P7914440289799873934.a n : ℤ) = A128603 (n + 1)

end A128603

/-!
# A128604: Number of groups of order A128603(n).

The programs for A128604, there is no canonical definition to state claims against.
-/

/-! ## A128604.P5495331175796871130

`A000001(A128603(n+1))`
-/

namespace A128604.P5495331175796871130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A128603 (n + 1)).toNat

end

end A128604.P5495331175796871130

/-! ## A128604.P5447677318065065373

`A066060(A128603(n+1)+A000007(n))`
-/

namespace A128604.P5447677318065065373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A128603 (n + 1) + A000007 n).toNat

end

end A128604.P5447677318065065373

/-! ## A128604.P8185759610996832025

`gcd(A000038(n), A066060(A128603(n+1)))`
-/

namespace A128604.P8185759610996832025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A066060 (A128603 (n + 1)).toNat)

end

end A128604.P8185759610996832025

/-! ## A128604.P1277004469841259572

`A066060(or(A000038(n), A128603(n+1)))`
-/

namespace A128604.P1277004469841259572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.lor (A000038 n) (A128603 (n + 1))).toNat

end

end A128604.P1277004469841259572

/-! ## A128604.P90407314541258824

`A066060(A128603(n+1)%A019507(n+1))`
-/

namespace A128604.P90407314541258824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.tmod (A128603 (n + 1)) (A019507 (n + 1))).toNat

end

end A128604.P90407314541258824

/-! ## A128604.P7789481542289133611

`A066060(lcm(2, A128603(n+1)))`
-/

namespace A128604.P7789481542289133611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.lcm 2 (A128603 (n + 1)))

end

end A128604.P7789481542289133611

/-! ## A128604.P1490101726953221897

`filter[A098885(n+2), A008966(#)]`
-/

namespace A128604.P1490101726953221897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A128604.P1490101726953221897

/-! ## A128604.P7695901185052045414

`filter[A098885(n+2), A123927(#)]`
-/

namespace A128604.P7695901185052045414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A128604.P7695901185052045414

/-! ## A128604.P3011532422719304766

`filter[A098885(n+2), A166486(#)]`
-/

namespace A128604.P3011532422719304766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A128604.P3011532422719304766

/-! ## A128604.P6040934625070350898

`filter[A098885(n+2), A323154(#)]`
-/

namespace A128604.P6040934625070350898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098885 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A128604.P6040934625070350898

/-! ## A128604.P11605114024573742136

`A201733(or(A000038(n), A128603(n+1)))`
-/

namespace A128604.P11605114024573742136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.lor (A000038 n) (A128603 (n + 1))).toNat

end

end A128604.P11605114024573742136

/-! ## A128604.P299456309923457289

`A201733(A128603(n+1)+A000038(n)/2)`
-/

namespace A128604.P299456309923457289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.roundAway ((A128603 (n + 1) : ℚ) + (A000038 n : ℚ) / 2)).toNat

end

end A128604.P299456309923457289

/-! ## A128604.P1313522955372582811

`A201733(A128603(n+1)+n*A000038(n))`
-/

namespace A128604.P1313522955372582811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A128603 (n + 1) + (n : ℤ) * A000038 n).toNat

end

end A128604.P1313522955372582811

/-! ## A128604.P6395964542689098458

`A201733(2*A128603(n+1)-A128603(n+1))`
-/

namespace A128604.P6395964542689098458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (2 * A128603 (n + 1) - A128603 (n + 1)).toNat

end

end A128604.P6395964542689098458

/-! ## A128604.P6983316447633110529

`A201733(A128603(n+1))%A128603(3*n+1)`
-/

namespace A128604.P6983316447633110529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201733 (A128603 (n + 1)).toNat) (A128603 (3 * n + 1))

end

end A128604.P6983316447633110529

/-! ## A128604.P11520304835579365727

`A201733(A128603(n+1))+A000038(A201733(n+1))`
-/

namespace A128604.P11520304835579365727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A128603 (n + 1)).toNat + A000038 (A201733 (n + 1)).toNat

end

end A128604.P11520304835579365727

/-!
# A128605: Smallest number m having exactly n divisors d with sqrt(m/2) <= d < sqrt(2*m).

The programs for A128605, there is no canonical definition to state claims against.
-/

/-! ## A128605.P17523775516999012463

`A320051(∑[n+1])`
-/

namespace A128605.P17523775516999012463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128605.P17523775516999012463

/-! ## A128605.P8579976555462763131

`A303694(n)*A320051(A000217(n+1))`
-/

namespace A128605.P8579976555462763131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 n * A320051 (A000217 (n + 1)).toNat

end

end A128605.P8579976555462763131

/-! ## A128605.P8314302776972222131

`A353472(n+1)+A320051(A000217(n+1))`
-/

namespace A128605.P8314302776972222131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (n + 1) + A320051 (A000217 (n + 1)).toNat

end

end A128605.P8314302776972222131

/-! ## A128605.P7238773276295888791

`A320051(A000217(n+1))%A139286(n+1)`
-/

namespace A128605.P7238773276295888791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320051 (A000217 (n + 1)).toNat) (A139286 (n + 1))

end

end A128605.P7238773276295888791

/-! ## A128605.P1634568441715553118

`A320051(A000217(n+1))-A326456(n)-A326457(n)`
-/

namespace A128605.P1634568441715553118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320051 (A000217 (n + 1)).toNat - A326456 n - A326457 n

end

end A128605.P1634568441715553118

/-!
# A128606: Numbers n such that the product of the squares of digits of n is nonzero and divisible by n.

The programs for A128606, there is no canonical definition to state claims against.
-/

/-! ## A128606.P9430168104434706801

`record[gcd(n, A253909(A007954(n)))]`
-/

namespace A128606.P9430168104434706801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A253909 (A007954 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128606.P9430168104434706801

/-! ## A128606.P11394955090978933934

`record[gcd(A004719(n+1), A352598(n+1))]`
-/

namespace A128606.P11394955090978933934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004719 (n + 1)) (A352598 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128606.P11394955090978933934

/-! ## A128606.P5848471189149199381

`∩[A334828(n+1), A108652(n)]`
-/

namespace A128606.P5848471189149199381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128606.P5848471189149199381

/-! ## A128606.P7738439373158916963

`∩[A140665(n+1), A334828(n+1)]`
-/

namespace A128606.P7738439373158916963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128606.P7738439373158916963

/-! ## A128606.P13045691845158999013

`record[A033930(A249422(n+1))*A033930(n)]`
-/

namespace A128606.P13045691845158999013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A249422 (n + 1)).toNat * A033930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128606.P13045691845158999013

/-!
# A128607: Perfect (or pure) powers pp such that sigma(pp) is also a perfect (pure) power.

The programs for A128607, there is no canonical definition to state claims against.
-/

/-! ## A128607.P4438552576411122775

`A337044(eq[A004525(n), A007318(n)])`
-/

namespace A128607.P4438552576411122775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337044 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A128607.P4438552576411122775

/-!
# A128608: a(n)=sigma(A128607(n)), where A128607(n) is the sequence of perfect (or pure) powers such that a(n) is a perfect power.

The programs for A128608, there is no canonical definition to state claims against.
-/

/-! ## A128608.P11865887464371042985

`A000203(A128607(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A128608.P11865887464371042985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A128607 (n + 1)).toNat

end

end A128608.P11865887464371042985

/-!
# A128609: a(1)=a(2)=1; a(n) = a(n-2) + a(n-1) + (number of terms from among {a(1), a(2), ..., a(n-1)} which are prime).

The programs for A128609, there is no canonical definition to state claims against.
-/

/-! ## A128609.P628040887932103760

`A001462(A050342(comp[2*(n+1)]))`
-/

namespace A128609.P628040887932103760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A050342 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A128609.P628040887932103760

/-! ## A128609.P1163658730856487617

`A083544(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A128609.P1163658730856487617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A083544 (a (n - 1)).toNat + a (n - 1)

end

end A128609.P1163658730856487617

/-! ## A128609.P9829580730447481906

`A067086(A336875(n)+1)`
-/

namespace A128609.P9829580730447481906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A336875 n + 1).toNat

end

end A128609.P9829580730447481906

/-! ## A128609.P1915043238301425708

`A067086(or(1, A336875(n)))`
-/

namespace A128609.P1915043238301425708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (Int.lor 1 (A336875 n)).toNat

end

end A128609.P1915043238301425708

/-! ## A128609.P16323713397048401728

`A003056(A202207(n)-n)`
-/

namespace A128609.P16323713397048401728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A202207 n - (n : ℤ)).toNat

end

end A128609.P16323713397048401728

/-!
# A128610: a(0)=a(1)=1. For n >= 2, a(n) = a(n-2) + a(n-1) + (number of terms from among {a(0),a(1),a(2),...a(n-1)} which are <= n).

The programs for A128610, there is no canonical definition to state claims against.
-/

/-! ## A128610.P14093405862990775334

`A005041(A382845(n+1))`
-/

namespace A128610.P14093405862990775334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A382845 (n + 1)).toNat

end

end A128610.P14093405862990775334

/-! ## A128610.P16044244510670419396

`A005041(8*A115730(n))`
-/

namespace A128610.P16044244510670419396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (8 * A115730 n).toNat

end

end A128610.P16044244510670419396

/-! ## A128610.P14010995733826871456

`A005041(A175395(n+1)-1)`
-/

namespace A128610.P14010995733826871456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A175395 (n + 1) - 1).toNat

end

end A128610.P14010995733826871456

/-! ## A128610.P1620699943274558338

`A067086(floor(sqrt(Δ[n*4^(n-1)])))`
-/

namespace A128610.P1620699943274558338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 ⌊Real.sqrt (f1 (n + 1) - f1 n : ℝ)⌋.toNat

end

end A128610.P1620699943274558338

/-! ## A128610.P17290470802371317008

`A003056(A088210(n))-A000045(n)`
-/

namespace A128610.P17290470802371317008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A088210 n).toNat - A000045 n

end

end A128610.P17290470802371317008

/-!
# A128611: Number of Z-convex polyominoes with semiperimeter n.

The programs for A128611, there is no canonical definition to state claims against.
-/

/-! ## A128611.P13631405120207212983

`A008616(A363061(n)-A057163(n))`
-/

namespace A128611.P13631405120207212983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A363061 n - A057163 n).toNat

end

end A128611.P13631405120207212983

/-! ## A128611.P9395604896964212013

`A054899(A356942(n)+A000203(n+4))`
-/

namespace A128611.P9395604896964212013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A356942 n + A000203 (n + 4)).toNat

end

end A128611.P9395604896964212013

/-! ## A128611.P6671682132819561817

`A008615(or(A149288(n), A331565(n+1)))`
-/

namespace A128611.P6671682132819561817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (Int.lor (A149288 n) (A331565 (n + 1))).toNat

end

end A128611.P6671682132819561817

/-! ## A128611.P6246161531699650341

`A054899(A356942(n)+A138100(n+3)+1)`
-/

namespace A128611.P6246161531699650341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A356942 n + A138100 (n + 3) + 1).toNat

end

end A128611.P6246161531699650341

/-!
# A128612: Triangle T(n,k) read by rows: number of permutations in [n] with exactly k ascents that have an even number of inversions.

The programs for A128612, there is no canonical definition to state claims against.
-/

/-! ## A128612.P5804407751344173602

`A141689(n+1)+A290448(n)-A128613(n+1)`
-/

namespace A128612.P5804407751344173602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141689 (n + 1) + (A290448 n - A128613 (n + 1))

end

end A128612.P5804407751344173602

/-! ## A128612.P6093773967257825886

`A008292(n+1)-A128613(n+1)`
-/

namespace A128612.P6093773967257825886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A128613 (n + 1)

end

end A128612.P6093773967257825886

/-! ## A128612.P8471945830979075498

`A123125(comp[∑[n]])-A128613(n+1)`
-/

namespace A128612.P8471945830979075498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A128613 (n + 1)

end

end A128612.P8471945830979075498

/-! ## A128612.P3496313792873880995

`A173018(comp[A000096(n)])-A128613(n+1)`
-/

namespace A128612.P3496313792873880995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A128613 (n + 1)

end

end A128612.P3496313792873880995

/-! ## A128612.P6781958298485812919

`A173018(A007401(n+1))-A128613(n+1)`
-/

namespace A128612.P6781958298485812919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A007401 (n + 1)).toNat - A128613 (n + 1)

end

end A128612.P6781958298485812919

/-! ## A128612.P2756249949758215118

`A173018(lt[0, A173787(n)])-A128613(n+1)`
-/

namespace A128612.P2756249949758215118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A128613 (n + 1)

end

end A128612.P2756249949758215118

/-! ## A128612.P1163778026803727235

`A173018(lt[1, A130321(n)])-A128613(n+1)`
-/

namespace A128612.P1163778026803727235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A128613 (n + 1)

end

end A128612.P1163778026803727235

/-! ## A128612.P414223999138221587

`A173018(lt[0, A048993(n+1)])-A128613(n+1)`
-/

namespace A128612.P414223999138221587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A128613 (n + 1)

end

end A128612.P414223999138221587

/-! ## A128612.P15487515692592405439

`A065826(n+1)/A002260(n+1)-A128613(n+1)`
-/

namespace A128612.P15487515692592405439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065826 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) - (A128613 (n + 1) : ℚ)

end

end A128612.P15487515692592405439

/-! ## A128612.P15682501891861343319

`A142075(n+1)/A059268(n)-A128613(n+1)`
-/

namespace A128612.P15682501891861343319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142075 (n + 1) : ℚ) / (A059268 n : ℚ) - (A128613 (n + 1) : ℚ)

end

end A128612.P15682501891861343319

/-!
# A128613: Triangle T(n,k) read by rows: number of permutations in [n] with exactly k ascents that have an odd number of inversions.

The programs for A128613, there is no canonical definition to state claims against.
-/

/-! ## A128613.P7611893269355444192

`A008292(n+1)-A128612(n+1)`
-/

namespace A128613.P7611893269355444192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A128612 (n + 1)

end

end A128613.P7611893269355444192

/-! ## A128613.P2298528216590484935

`A123125(comp[∑[n]])-A128612(n+1)`
-/

namespace A128613.P2298528216590484935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A128612 (n + 1)

end

end A128613.P2298528216590484935

/-! ## A128613.P8768458629652046962

`A173018(comp[A000096(n)])-A128612(n+1)`
-/

namespace A128613.P8768458629652046962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A128612 (n + 1)

end

end A128613.P8768458629652046962

/-! ## A128613.P2792451176736051868

`A173018(A007401(n+1))-A128612(n+1)`
-/

namespace A128613.P2792451176736051868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A007401 (n + 1)).toNat - A128612 (n + 1)

end

end A128613.P2792451176736051868

/-! ## A128613.P3913414105551816644

`A173018(lt[0, A173787(n)])-A128612(n+1)`
-/

namespace A128613.P3913414105551816644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A128612 (n + 1)

end

end A128613.P3913414105551816644

/-! ## A128613.P10299398556594080547

`A173018(lt[1, A130321(n)])-A128612(n+1)`
-/

namespace A128613.P10299398556594080547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A128612 (n + 1)

end

end A128613.P10299398556594080547

/-! ## A128613.P6829986279105698355

`A173018(lt[0, A048993(n+1)])-A128612(n+1)`
-/

namespace A128613.P6829986279105698355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A128612 (n + 1)

end

end A128613.P6829986279105698355

/-! ## A128613.P14112508801049600411

`A065826(n+1)/A002260(n+1)-A128612(n+1)`
-/

namespace A128613.P14112508801049600411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065826 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) - (A128612 (n + 1) : ℚ)

end

end A128613.P14112508801049600411

/-! ## A128613.P10656056812424167739

`A142075(n+1)/A059268(n)-A128612(n+1)`
-/

namespace A128613.P10656056812424167739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142075 (n + 1) : ℚ) / (A059268 n : ℚ) - (A128612 (n + 1) : ℚ)

end

end A128613.P10656056812424167739

/-!
# A128614: Number of labeled plane trees with n edges in which no vertex has outdegree one.

The programs for A128614, the canonical program `A128614.P4000369767337592701` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128614 has offset 1).

The definition of A128614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128614.P4000369767337592701

`(n+2)!*A005043(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128614

/-- `(n+2)!*A005043(n+1)` -/
def P4000369767337592701.Spec : Prop :=
  ∀ n, P4000369767337592701.a n = A128614 (n + 1)

theorem P4000369767337592701.correct : P4000369767337592701.Spec := by
  intro n
  simp only [A128614, Nat.add_sub_cancel]

end A128614

/-! ## A128614.P3292167751832802928

`abs(A099323(n+2))*(n+2)!`
-/

namespace A128614.P3292167751832802928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099323 (n + 2)| * (Nat.factorial (n + 2) : ℤ)

end

end A128614.P3292167751832802928

namespace A128614

/-- `abs(A099323(n+2))*(n+2)!` -/
def P3292167751832802928.Spec : Prop :=
  ∀ n, P3292167751832802928.a n = A128614 (n + 1)

end A128614

/-! ## A128614.P17124654141711696831

`(n+2)!*Δ[A082395(n+1)]`
-/

namespace A128614.P17124654141711696831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 2) : ℤ) * (f1 (n + 1) - f1 n)

end

end A128614.P17124654141711696831

namespace A128614

/-- `(n+2)!*Δ[A082395(n+1)]` -/
def P17124654141711696831.Spec : Prop :=
  ∀ n, P17124654141711696831.a n = A128614 (n + 1)

end A128614

/-! ## A128614.P12912830589661563504

`∏[n+2]*A091867(∑[n+1])`
-/

namespace A128614.P12912830589661563504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A091867 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A128614.P12912830589661563504

namespace A128614

/-- `∏[n+2]*A091867(∑[n+1])` -/
def P12912830589661563504.Spec : Prop :=
  ∀ n, P12912830589661563504.a n = A128614 (n + 1)

end A128614

/-! ## A128614.P2929785062199716305

`record[A092582(n+1)]*A103872(n)`
-/

namespace A128614.P2929785062199716305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A103872 n

end

end A128614.P2929785062199716305

namespace A128614

/-- `record[A092582(n+1)]*A103872(n)` -/
def P2929785062199716305.Spec : Prop :=
  ∀ n, P2929785062199716305.a n = A128614 (n + 1)

end A128614

/-!
# A128615: Expansion of x/(1 + x + x^2 - x^3 - x^4 - x^5).

The programs for A128615, the canonical program `A128615.P1956345310954684566` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128615 has offset 0).

The definition of A128615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x/(1+x+x^2-x^3-x^4-x^5))` (program `A128615.P1956345310954684566`, by `A128615.P1956345310954684566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128615.P1956345310954684566

`ogf(x/(1+x+x^2-x^3-x^4-x^5))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A128615

/-- `ogf(x/(1+x+x^2-x^3-x^4-x^5))` -/
def P1956345310954684566.Spec : Prop :=
  ∀ n, P1956345310954684566.a n = A128615 n

theorem P1956345310954684566.correct : P1956345310954684566.Spec := by
  intro n
  simp only [A128615]

end A128615

/-! ## A128615.P2246467353800260885

`floor((n+3)/3)*((n+1)%3-1)`
-/

namespace A128615.P2246467353800260885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 3⌋ * ((((n + 1) % 3 : ℕ) : ℤ) - 1)

end

end A128615.P2246467353800260885

namespace A128615

/-- `floor((n+3)/3)*((n+1)%3-1)` -/
def P2246467353800260885.Spec : Prop :=
  ∀ n, P2246467353800260885.a n = A128615 n

end A128615

/-! ## A128615.P11457295584601275430

`floor((n+3)/3)*A049347(n+2)`
-/

namespace A128615.P11457295584601275430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 3⌋ * A049347 (n + 2)

end

end A128615.P11457295584601275430

namespace A128615

/-- `floor((n+3)/3)*A049347(n+2)` -/
def P11457295584601275430.Spec : Prop :=
  ∀ n, P11457295584601275430.a n = A128615 n

end A128615

/-! ## A128615.P1604904646385097086

`Δ[C(n², 3)%(n+1)]`
-/

namespace A128615.P1604904646385097086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2) 3 % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A128615.P1604904646385097086

namespace A128615

/-- `Δ[C(n², 3)%(n+1)]` -/
def P1604904646385097086.Spec : Prop :=
  ∀ n, P1604904646385097086.a n = A128615 n

end A128615

/-! ## A128615.P17389336586959052139

`(3-Δ[lcm(3, n+1)])/6`
-/

namespace A128615.P17389336586959052139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 6

end

end A128615.P17389336586959052139

namespace A128615

/-- `(3-Δ[lcm(3, n+1)])/6` -/
def P17389336586959052139.Spec : Prop :=
  ∀ n, P17389336586959052139.a n = (A128615 n : ℚ)

end A128615

/-! ## A128615.P3763769465744876089

`∑[floor(Δ[n*n%3]/3)]`
-/

namespace A128615.P3763769465744876089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128615.P3763769465744876089

namespace A128615

/-- `∑[floor(Δ[n*n%3]/3)]` -/
def P3763769465744876089.Spec : Prop :=
  ∀ n, P3763769465744876089.a n = A128615 n

end A128615

/-! ## A128615.P15542887214893265868

`Δ[(n+1)/(n-2)*a(n-3)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A128615.P15542887214893265868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  (n + 1 : ℚ) / ((n : ℤ) - 2 : ℚ) * f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128615.P15542887214893265868

namespace A128615

/-- `Δ[(n+1)/(n-2)*a(n-3)]` -/
def P15542887214893265868.Spec : Prop :=
  ∀ n, P15542887214893265868.a n = (A128615 n : ℚ)

end A128615

/-! ## A128615.P17059406477937839407

`∑[n]%3-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A128615.P17059406477937839407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ) - (a (n - 1) + a (n - 2))

end

end A128615.P17059406477937839407

namespace A128615

/-- `∑[n]%3-(a(n-1)+a(n-2))` -/
def P17059406477937839407.Spec : Prop :=
  ∀ n, P17059406477937839407.a n = A128615 n

end A128615

/-! ## A128615.P10967693497167281792

`((2-n)*a(n-2)-a(n-1))%n` with `a(0)=0, a(1)=1`
-/

namespace A128615.P10967693497167281792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.tmod ((2 - (n : ℤ)) * a (n - 2) - a (n - 1)) (n : ℤ)

end

end A128615.P10967693497167281792

namespace A128615

/-- `((2-n)*a(n-2)-a(n-1))%n` -/
def P10967693497167281792.Spec : Prop :=
  ∀ n, P10967693497167281792.a n = A128615 n

end A128615

/-! ## A128615.P18395757203943996204

`∑[floor(a(n-3))]-(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A128615.P18395757203943996204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 1) + a (n - 2))

end

end A128615.P18395757203943996204

namespace A128615

/-- `∑[floor(a(n-3))]-(a(n-1)+a(n-2))` -/
def P18395757203943996204.Spec : Prop :=
  ∀ n, P18395757203943996204.a n = A128615 n

end A128615

/-! ## A128615.P1298119564619948803

`∑[floor(a(n-3))]-a(n-1)-a(n-2)` with `a(0)=0, a(1)=1, a(2)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A128615.P1298119564619948803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - a (n - 2)

end

end A128615.P1298119564619948803

namespace A128615

/-- `∑[floor(a(n-3))]-a(n-1)-a(n-2)` -/
def P1298119564619948803.Spec : Prop :=
  ∀ n, P1298119564619948803.a n = A128615 n

end A128615

/-! ## A128615.P6254881489826122950

`Δ[A058281(n+2)/4]`
-/

namespace A128615.P6254881489826122950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058281 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128615.P6254881489826122950

namespace A128615

/-- `Δ[A058281(n+2)/4]` -/
def P6254881489826122950.Spec : Prop :=
  ∀ n, P6254881489826122950.a n = (A128615 n : ℚ)

end A128615

/-! ## A128615.P15270053151912955805

`∑[A188146(n)-(n+1)]`
-/

namespace A128615.P15270053151912955805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188146 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128615.P15270053151912955805

namespace A128615

/-- `∑[A188146(n)-(n+1)]` -/
def P15270053151912955805.Spec : Prop :=
  ∀ n, P15270053151912955805.a n = A128615 n

end A128615

/-! ## A128615.P2699181984947781251

`A008620(n)*A102283(n)`
-/

namespace A128615.P2699181984947781251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A102283 n

end

end A128615.P2699181984947781251

namespace A128615

/-- `A008620(n)*A102283(n)` -/
def P2699181984947781251.Spec : Prop :=
  ∀ n, P2699181984947781251.a n = A128615 n

end A128615

/-! ## A128615.P11986577400187357231

`A087507(n)*A102283(n)`
-/

namespace A128615.P11986577400187357231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 n * A102283 n

end

end A128615.P11986577400187357231

namespace A128615

/-- `A087507(n)*A102283(n)` -/
def P11986577400187357231.Spec : Prop :=
  ∀ n, P11986577400187357231.a n = A128615 n

end A128615

/-! ## A128615.P3017660201937125360

`A087508(n)*A102283(n)`
-/

namespace A128615.P3017660201937125360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n * A102283 n

end

end A128615.P3017660201937125360

namespace A128615

/-- `A087508(n)*A102283(n)` -/
def P3017660201937125360.Spec : Prop :=
  ∀ n, P3017660201937125360.a n = A128615 n

end A128615

/-! ## A128615.P7989694773820065468

`A087508(n)*A106510(n)`
-/

namespace A128615.P7989694773820065468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n * A106510 n

end

end A128615.P7989694773820065468

namespace A128615

/-- `A087508(n)*A106510(n)` -/
def P7989694773820065468.Spec : Prop :=
  ∀ n, P7989694773820065468.a n = A128615 n

end A128615

/-! ## A128615.P16557206561470468906

`A087508(n)*A131561(n)`
-/

namespace A128615.P16557206561470468906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 n * A131561 n

end

end A128615.P16557206561470468906

namespace A128615

/-- `A087508(n)*A131561(n)` -/
def P16557206561470468906.Spec : Prop :=
  ∀ n, P16557206561470468906.a n = A128615 n

end A128615

/-! ## A128615.P8634798742274370333

`A068626(n+1)-A007980(n)`
-/

namespace A128615.P8634798742274370333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (n + 1) - A007980 n

end

end A128615.P8634798742274370333

namespace A128615

/-- `A068626(n+1)-A007980(n)` -/
def P8634798742274370333.Spec : Prop :=
  ∀ n, P8634798742274370333.a n = A128615 n

end A128615

/-! ## A128615.P16779216110010335715

`A092092(n+1)-A089598(n)`
-/

namespace A128615.P16779216110010335715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (n + 1) - A089598 n

end

end A128615.P16779216110010335715

namespace A128615

/-- `A092092(n+1)-A089598(n)` -/
def P16779216110010335715.Spec : Prop :=
  ∀ n, P16779216110010335715.a n = A128615 n

end A128615

/-!
# A128616: Expansion of q * psi(q^3) * psi(q^5) in powers of q where psi() is a Ramanujan theta function.

The programs for A128616, the canonical program `A128616.P5791470407128350833` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128616 has offset 1).

The definition of A128616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128616.P2397396632336908191

`(A082451(n+1)+A121362(n+1))/2`
-/

namespace A128616.P2397396632336908191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082451 (n + 1) + A121362 (n + 1) : ℚ) / 2

end

end A128616.P2397396632336908191

namespace A128616

/-- `(A082451(n+1)+A121362(n+1))/2` -/
def P2397396632336908191.Spec : Prop :=
  ∀ n, P2397396632336908191.a n = (A128616 (n + 1) : ℚ)

theorem P2397396632336908191.correct : P2397396632336908191.Spec := by
  intro n
  simp only [A128616, Nat.add_sub_cancel, A128616.P2397396632336908191.a, A128616.P5791470407128350833.a, A082451, A082451.P7121663205053929701.a, A121362, A121362.P4931692809741161158.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A081603, A081603.P9418366050176887204.a, A128617, A128617.P2599063269449293282.a, A003602, A003602.P7612175048291952394.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, A316569, A316569.P8191093053662298645.a, A054861, A054861.P6137810495506521191.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128616

/-! ## A128616.P12037611207004147405

`A128617(n+1)+A121362(n+1)`
-/

namespace A128616.P12037611207004147405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (n + 1) + A121362 (n + 1)

end

end A128616.P12037611207004147405

namespace A128616

/-- `A128617(n+1)+A121362(n+1)` -/
def P12037611207004147405.Spec : Prop :=
  ∀ n, P12037611207004147405.a n = A128616 (n + 1)

theorem P12037611207004147405.correct : P12037611207004147405.Spec := by
  intro n
  simp only [A128616, Nat.add_sub_cancel, A128616.P12037611207004147405.a, A128616.P5791470407128350833.a, A082451, A082451.P7121663205053929701.a, A121362, A121362.P4931692809741161158.a, A128617, A128617.P2599063269449293282.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A081603, A081603.P9418366050176887204.a, A003602, A003602.P7612175048291952394.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, A316569, A316569.P8191093053662298645.a, A054861, A054861.P6137810495506521191.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128616

/-! ## A128616.P13835739789073021173

`A082451(n+1)-A128617(n+1)`
-/

namespace A128616.P13835739789073021173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082451 (n + 1) - A128617 (n + 1)

end

end A128616.P13835739789073021173

namespace A128616

/-- `A082451(n+1)-A128617(n+1)` -/
def P13835739789073021173.Spec : Prop :=
  ∀ n, P13835739789073021173.a n = A128616 (n + 1)

theorem P13835739789073021173.correct : P13835739789073021173.Spec := by
  intro n
  simp only [A128616, Nat.add_sub_cancel, A128616.P13835739789073021173.a, A128616.P5791470407128350833.a, A082451, A082451.P7121663205053929701.a, A128617, A128617.P2599063269449293282.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A081603, A081603.P9418366050176887204.a, A003602, A003602.P7612175048291952394.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, A316569, A316569.P8191093053662298645.a, A054861, A054861.P6137810495506521191.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128616

/-! ## A128616.P5791470407128350833

`(1-A156595(n))*A082451(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128616

/-- `(1-A156595(n))*A082451(n+1)` -/
def P5791470407128350833.Spec : Prop :=
  ∀ n, P5791470407128350833.a n = A128616 (n + 1)

theorem P5791470407128350833.correct : P5791470407128350833.Spec := by
  intro n
  simp only [A128616, Nat.add_sub_cancel]

end A128616

/-! ## A128616.P5305488183504231999

`and(A030220(n+1), A082451(n+1))`
-/

namespace A128616.P5305488183504231999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030220 (n + 1)) (A082451 (n + 1))

end

end A128616.P5305488183504231999

namespace A128616

/-- `and(A030220(n+1), A082451(n+1))` -/
def P5305488183504231999.Spec : Prop :=
  ∀ n, P5305488183504231999.a n = A128616 (n + 1)

end A128616

/-! ## A128616.P8553621292540036882

`and(A030220(n+1), A121362(n+1))`
-/

namespace A128616.P8553621292540036882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030220 (n + 1)) (A121362 (n + 1))

end

end A128616.P8553621292540036882

namespace A128616

/-- `and(A030220(n+1), A121362(n+1))` -/
def P8553621292540036882.Spec : Prop :=
  ∀ n, P8553621292540036882.a n = A128616 (n + 1)

end A128616

/-! ## A128616.P688314636723535197

`A128617(2*(n+1))`
-/

namespace A128616.P688314636723535197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128617 (2 * (n + 1))

end

end A128616.P688314636723535197

namespace A128616

/-- `A128617(2*(n+1))` -/
def P688314636723535197.Spec : Prop :=
  ∀ n, P688314636723535197.a n = A128616 (n + 1)

end A128616

/-! ## A128616.P18299888002350469449

`A082451(2*(n+1))*A156595(2*n+1)`
-/

namespace A128616.P18299888002350469449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082451 (2 * (n + 1)) * A156595 (2 * n + 1)

end

end A128616.P18299888002350469449

namespace A128616

/-- `A082451(2*(n+1))*A156595(2*n+1)` -/
def P18299888002350469449.Spec : Prop :=
  ∀ n, P18299888002350469449.a n = A128616 (n + 1)

end A128616

/-! ## A128616.P1433195409046414446

`and(A030220(n+1), A109216(n))`
-/

namespace A128616.P1433195409046414446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030220 (n + 1)) (A109216 n)

end

end A128616.P1433195409046414446

namespace A128616

/-- `and(A030220(n+1), A109216(n))` -/
def P1433195409046414446.Spec : Prop :=
  ∀ n, P1433195409046414446.a n = A128616 (n + 1)

end A128616

/-!
# A128617: Expansion of q^2 * psi(q) * psi(q^15) in powers of q where psi() is a Ramanujan theta function.

The programs for A128617, the canonical program `A128617.P2599063269449293282` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128617 has offset 1).

The definition of A128617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128617.P5884430584021315407

`(A082451(n+1)-A121362(n+1))/2`
-/

namespace A128617.P5884430584021315407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082451 (n + 1) - A121362 (n + 1) : ℚ) / 2

end

end A128617.P5884430584021315407

namespace A128617

/-- `(A082451(n+1)-A121362(n+1))/2` -/
def P5884430584021315407.Spec : Prop :=
  ∀ n, P5884430584021315407.a n = (A128617 (n + 1) : ℚ)

theorem P5884430584021315407.correct : P5884430584021315407.Spec := by
  intro n
  simp only [A128617, Nat.add_sub_cancel, A128617.P5884430584021315407.a, A128617.P2599063269449293282.a, A082451, A082451.P7121663205053929701.a, A121362, A121362.P4931692809741161158.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A081603, A081603.P9418366050176887204.a, A128616, A128616.P5791470407128350833.a, A003602, A003602.P7612175048291952394.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, A316569, A316569.P8191093053662298645.a, A054861, A054861.P6137810495506521191.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128617

/-! ## A128617.P2599063269449293282

`A082451(n+1)*A156595(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A128617

/-- `A082451(n+1)*A156595(n)` -/
def P2599063269449293282.Spec : Prop :=
  ∀ n, P2599063269449293282.a n = A128617 (n + 1)

theorem P2599063269449293282.correct : P2599063269449293282.Spec := by
  intro n
  simp only [A128617, Nat.add_sub_cancel]

end A128617

/-! ## A128617.P11653904466729714755

`A082451(n+1)-A128616(n+1)`
-/

namespace A128617.P11653904466729714755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082451 (n + 1) - A128616 (n + 1)

end

end A128617.P11653904466729714755

namespace A128617

/-- `A082451(n+1)-A128616(n+1)` -/
def P11653904466729714755.Spec : Prop :=
  ∀ n, P11653904466729714755.a n = A128617 (n + 1)

theorem P11653904466729714755.correct : P11653904466729714755.Spec := by
  intro n
  simp only [A128617, Nat.add_sub_cancel, A128617.P11653904466729714755.a, A128617.P2599063269449293282.a, A082451, A082451.P7121663205053929701.a, A128616, A128616.P5791470407128350833.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A081603, A081603.P9418366050176887204.a, A003602, A003602.P7612175048291952394.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, A316569, A316569.P8191093053662298645.a, A054861, A054861.P6137810495506521191.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128617

/-! ## A128617.P11232376641922402526

`A128616(n+1)-A121362(n+1)`
-/

namespace A128617.P11232376641922402526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (n + 1) - A121362 (n + 1)

end

end A128617.P11232376641922402526

namespace A128617

/-- `A128616(n+1)-A121362(n+1)` -/
def P11232376641922402526.Spec : Prop :=
  ∀ n, P11232376641922402526.a n = A128617 (n + 1)

theorem P11232376641922402526.correct : P11232376641922402526.Spec := by
  intro n
  simp only [A128617, Nat.add_sub_cancel, A128617.P11232376641922402526.a, A128617.P2599063269449293282.a, A082451, A082451.P7121663205053929701.a, A121362, A121362.P4931692809741161158.a, A128616, A128616.P5791470407128350833.a, A156595, A156595.P4549591963331449160.f1, A156595.P4549591963331449160.a, A000265, A000265.P2772582252347773295.a, A035175, A035175.P2871059185806058886.f1, A035175.P2871059185806058886.a, A081603, A081603.P9418366050176887204.a, A003602, A003602.P7612175048291952394.a, A053735, A053735.P3640341592284089632.a, A062756, A062756.P3953090966624310992.a, A316569, A316569.P8191093053662298645.a, A054861, A054861.P6137810495506521191.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128617

/-! ## A128617.P312840916021752501

`A128616(2*(n+1))`
-/

namespace A128617.P312840916021752501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128616 (2 * (n + 1))

end

end A128617.P312840916021752501

namespace A128617

/-- `A128616(2*(n+1))` -/
def P312840916021752501.Spec : Prop :=
  ∀ n, P312840916021752501.a n = A128617 (n + 1)

end A128617

/-! ## A128617.P5342567234052185459

`and(A030220(2*(n+1)), A082451(n+1))`
-/

namespace A128617.P5342567234052185459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030220 (2 * (n + 1))) (A082451 (n + 1))

end

end A128617.P5342567234052185459

namespace A128617

/-- `and(A030220(2*(n+1)), A082451(n+1))` -/
def P5342567234052185459.Spec : Prop :=
  ∀ n, P5342567234052185459.a n = A128617 (n + 1)

end A128617

/-! ## A128617.P7264174615245777068

`and(A030220(2*(n+1)), A121362(2*(n+1)))`
-/

namespace A128617.P7264174615245777068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030220 (2 * (n + 1))) (A121362 (2 * (n + 1)))

end

end A128617.P7264174615245777068

namespace A128617

/-- `and(A030220(2*(n+1)), A121362(2*(n+1)))` -/
def P7264174615245777068.Spec : Prop :=
  ∀ n, P7264174615245777068.a n = A128617 (n + 1)

end A128617

/-! ## A128617.P16142497674695895400

`and(A030220(2*(n+1)), A109216(n+1))`
-/

namespace A128617.P16142497674695895400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030220 (2 * (n + 1))) (A109216 (n + 1))

end

end A128617.P16142497674695895400

namespace A128617

/-- `and(A030220(2*(n+1)), A109216(n+1))` -/
def P16142497674695895400.Spec : Prop :=
  ∀ n, P16142497674695895400.a n = A128617 (n + 1)

end A128617

/-!
# A128618: Triangle read by rows: A128174 * A127647 as infinite lower triangular matrices.

The programs for A128618, the canonical program `A128618.P684338942941651446` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128618 has offset 1).

The definition of A128618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128618.P6524833455842280403

`and(1, comp[∑[4*n]])*A104763(n+1)`
-/

namespace A128618.P6524833455842280403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * A104763 (n + 1)

end

end A128618.P6524833455842280403

namespace A128618

/-- `and(1, comp[∑[4*n]])*A104763(n+1)` -/
def P6524833455842280403.Spec : Prop :=
  ∀ n, P6524833455842280403.a n = A128618 (n + 1)

end A128618

/-! ## A128618.P684338942941651446

`A000045(A128179(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A128618

/-- `A000045(A128179(n+1))` -/
def P684338942941651446.Spec : Prop :=
  ∀ n, P684338942941651446.a n = A128618 (n + 1)

theorem P684338942941651446.correct : P684338942941651446.Spec := by
  intro n
  simp only [A128618, Nat.add_sub_cancel]

end A128618

/-! ## A128618.P16977386369531329681

`lcm(A104763(n+1), A369736(n))`
-/

namespace A128618.P16977386369531329681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104763 (n + 1)) (A369736 n)

end

end A128618.P16977386369531329681

namespace A128618

/-- `lcm(A104763(n+1), A369736(n))` -/
def P16977386369531329681.Spec : Prop :=
  ∀ n, (P16977386369531329681.a n : ℤ) = A128618 (n + 1)

end A128618

/-! ## A128618.P3287208653867509496

`A104763(n+1)*A128174(n+1)`
-/

namespace A128618.P3287208653867509496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A128174 (n + 1)

end

end A128618.P3287208653867509496

namespace A128618

/-- `A104763(n+1)*A128174(n+1)` -/
def P3287208653867509496.Spec : Prop :=
  ∀ n, P3287208653867509496.a n = A128618 (n + 1)

end A128618

/-! ## A128618.P2652160621181301319

`A202452(A057028(n+1))`
-/

namespace A128618.P2652160621181301319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202452 (A057028 (n + 1)).toNat

end

end A128618.P2652160621181301319

namespace A128618

/-- `A202452(A057028(n+1))` -/
def P2652160621181301319.Spec : Prop :=
  ∀ n, P2652160621181301319.a n = A128618 (n + 1)

end A128618

/-! ## A128618.P2248615546301968904

`A202451(A209293(n+1))`
-/

namespace A128618.P2248615546301968904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202451 (A209293 (n + 1)).toNat

end

end A128618.P2248615546301968904

namespace A128618

/-- `A202451(A209293(n+1))` -/
def P2248615546301968904.Spec : Prop :=
  ∀ n, P2248615546301968904.a n = A128618 (n + 1)

end A128618

/-! ## A128618.P14151340720889792502

`A104763(n+1)%A225750(n)`
-/

namespace A128618.P14151340720889792502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104763 (n + 1)) (A225750 n)

end

end A128618.P14151340720889792502

namespace A128618

/-- `A104763(n+1)%A225750(n)` -/
def P14151340720889792502.Spec : Prop :=
  ∀ n, P14151340720889792502.a n = A128618 (n + 1)

end A128618

/-! ## A128618.P14639145741376310676

`A022290(A123641(n+1))`
-/

namespace A128618.P14639145741376310676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A123641 (n + 1)).toNat

end

end A128618.P14639145741376310676

namespace A128618

/-- `A022290(A123641(n+1))` -/
def P14639145741376310676.Spec : Prop :=
  ∀ n, P14639145741376310676.a n = A128618 (n + 1)

end A128618

/-! ## A128618.P1709313155940907944

`A230871(A130125(n))`
-/

namespace A128618.P1709313155940907944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230871 (A130125 n).toNat

end

end A128618.P1709313155940907944

namespace A128618

/-- `A230871(A130125(n))` -/
def P1709313155940907944.Spec : Prop :=
  ∀ n, P1709313155940907944.a n = A128618 (n + 1)

end A128618

/-! ## A128618.P6843477922329707109

`A324965(2*A130125(n))`
-/

namespace A128618.P6843477922329707109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (2 * A130125 n).toNat

end

end A128618.P6843477922329707109

namespace A128618

/-- `A324965(2*A130125(n))` -/
def P6843477922329707109.Spec : Prop :=
  ∀ n, P6843477922329707109.a n = A128618 (n + 1)

end A128618

/-!
# A128619: Triangle T(n, k) = A127647(n,k) * A128174(n,k), read by rows.

The programs for A128619, the canonical program `A128619.P9969041913449071840` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128619 has offset 1).

The definition of A128619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128619.P11529565738664733817

`and(1, comp[∑[4*n]])*A131410(n+1)`
-/

namespace A128619.P11529565738664733817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * A131410 (n + 1)

end

end A128619.P11529565738664733817

namespace A128619

/-- `and(1, comp[∑[4*n]])*A131410(n+1)` -/
def P11529565738664733817.Spec : Prop :=
  ∀ n, P11529565738664733817.a n = A128619 (n + 1)

end A128619

/-! ## A128619.P13420685363236286693

`A000045((2-gcd(2, comp[∑[4*n]]))*∑[char[∑[n]]])`
-/

namespace A128619.P13420685363236286693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)).toNat

end

end A128619.P13420685363236286693

namespace A128619

/-- `A000045((2-gcd(2, comp[∑[4*n]]))*∑[char[∑[n]]])` -/
def P13420685363236286693.Spec : Prop :=
  ∀ n, P13420685363236286693.a n = A128619 (n + 1)

end A128619

/-! ## A128619.P9969041913449071840

`A000045(A128621(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A128619

/-- `A000045(A128621(n+1))` -/
def P9969041913449071840.Spec : Prop :=
  ∀ n, P9969041913449071840.a n = A128619 (n + 1)

theorem P9969041913449071840.correct : P9969041913449071840.Spec := by
  intro n
  simp only [A128619, Nat.add_sub_cancel]

end A128619

/-! ## A128619.P15958693459829890844

`A212804(A128621(n+1)+1)`
-/

namespace A128619.P15958693459829890844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A128621 (n + 1) + 1).toNat

end

end A128619.P15958693459829890844

namespace A128619

/-- `A212804(A128621(n+1)+1)` -/
def P15958693459829890844.Spec : Prop :=
  ∀ n, P15958693459829890844.a n = A128619 (n + 1)

end A128619

/-! ## A128619.P13678593890052107009

`A053602(2*A128621(n+1))`
-/

namespace A128619.P13678593890052107009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A128621 (n + 1)).toNat

end

end A128619.P13678593890052107009

namespace A128619

/-- `A053602(2*A128621(n+1))` -/
def P13678593890052107009.Spec : Prop :=
  ∀ n, P13678593890052107009.a n = A128619 (n + 1)

end A128619

/-! ## A128619.P15225570894041641131

`lcm(A131410(n+1), A369736(n))`
-/

namespace A128619.P15225570894041641131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131410 (n + 1)) (A369736 n)

end

end A128619.P15225570894041641131

namespace A128619

/-- `lcm(A131410(n+1), A369736(n))` -/
def P15225570894041641131.Spec : Prop :=
  ∀ n, (P15225570894041641131.a n : ℤ) = A128619 (n + 1)

end A128619

/-! ## A128619.P17693480362989311262

`A128174(n+1)*A131410(n+1)`
-/

namespace A128619.P17693480362989311262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A131410 (n + 1)

end

end A128619.P17693480362989311262

namespace A128619

/-- `A128174(n+1)*A131410(n+1)` -/
def P17693480362989311262.Spec : Prop :=
  ∀ n, P17693480362989311262.a n = A128619 (n + 1)

end A128619

/-! ## A128619.P17347775520549506166

`A000045(∑[char[∑[n]]]*A128174(n+1))`
-/

namespace A128619.P17347775520549506166
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A128174 (n + 1)).toNat

end

end A128619.P17347775520549506166

namespace A128619

/-- `A000045(∑[char[∑[n]]]*A128174(n+1))` -/
def P17347775520549506166.Spec : Prop :=
  ∀ n, P17347775520549506166.a n = A128619 (n + 1)

end A128619

/-! ## A128619.P7921445866064088218

`A000045(comp[∑[4*n]]%2*A002024(n+1))`
-/

namespace A128619.P7921445866064088218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A002024 (n + 1)).toNat

end

end A128619.P7921445866064088218

namespace A128619

/-- `A000045(comp[∑[4*n]]%2*A002024(n+1))` -/
def P7921445866064088218.Spec : Prop :=
  ∀ n, P7921445866064088218.a n = A128619 (n + 1)

end A128619

/-! ## A128619.P1987542347460710477

`A000045(∑{d}[A134352(n), A000120(#)])`
-/

namespace A128619.P1987542347460710477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000120 d).toNat

end

end A128619.P1987542347460710477

namespace A128619

/-- `A000045(∑{d}[A134352(n), A000120(#)])` -/
def P1987542347460710477.Spec : Prop :=
  ∀ n, P1987542347460710477.a n = A128619 (n + 1)

end A128619

/-!
# A128620: Row sums of A128619.

The programs for A128620, the canonical program `A128620.P10363236734572737689` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128620 has offset 0).

The definition of A128620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128620.P10363236734572737689

`floor((n+2)/2)*A000045(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A128620

/-- `floor((n+2)/2)*A000045(n+1)` -/
def P10363236734572737689.Spec : Prop :=
  ∀ n, P10363236734572737689.a n = A128620 n

theorem P10363236734572737689.correct : P10363236734572737689.Spec := by
  intro n
  simp only [A128620]

end A128620

/-! ## A128620.P13144480032263235460

`∑[a(n-1)+a(n-2)]*∑[a(n-2)²]` with `a(0)=1, a(1)=0`
-/

namespace A128620.P13144480032263235460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A128620.P13144480032263235460

namespace A128620

/-- `∑[a(n-1)+a(n-2)]*∑[a(n-2)²]` -/
def P13144480032263235460.Spec : Prop :=
  ∀ n, (P13144480032263235460.a n : ℤ) = A128620 n

end A128620

/-! ## A128620.P8801564891357095543

`∑[a(n-1)+a(n-2)]*∑[floor(a(n-2))]` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A128620.P8801564891357095543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A128620.P8801564891357095543

namespace A128620

/-- `∑[a(n-1)+a(n-2)]*∑[floor(a(n-2))]` -/
def P8801564891357095543.Spec : Prop :=
  ∀ n, (P8801564891357095543.a n : ℤ) = A128620 n

end A128620

/-! ## A128620.P792723710250287897

`A000045(n+1)*∑[log2(gcd(2, n))]`
-/

namespace A128620.P792723710250287897
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128620.P792723710250287897

namespace A128620

/-- `A000045(n+1)*∑[log2(gcd(2, n))]` -/
def P792723710250287897.Spec : Prop :=
  ∀ n, P792723710250287897.a n = (A128620 n : ℝ)

end A128620

/-! ## A128620.P2872080530216106331

`A134512(n)+A001629(n)`
-/

namespace A128620.P2872080530216106331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134512 n + A001629 n

end

end A128620.P2872080530216106331

namespace A128620

/-- `A134512(n)+A001629(n)` -/
def P2872080530216106331.Spec : Prop :=
  ∀ n, P2872080530216106331.a n = A128620 n

end A128620

/-! ## A128620.P14459131336041652275

`A129722(n)+A010049(n+1)`
-/

namespace A128620.P14459131336041652275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 n + A010049 (n + 1)

end

end A128620.P14459131336041652275

namespace A128620

/-- `A129722(n)+A010049(n+1)` -/
def P14459131336041652275.Spec : Prop :=
  ∀ n, P14459131336041652275.a n = A128620 n

end A128620

/-! ## A128620.P2655188218111856980

`A000045(n+1)*A008619(n)`
-/

namespace A128620.P2655188218111856980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A008619 n

end

end A128620.P2655188218111856980

namespace A128620

/-- `A000045(n+1)*A008619(n)` -/
def P2655188218111856980.Spec : Prop :=
  ∀ n, P2655188218111856980.a n = A128620 n

end A128620

/-! ## A128620.P5254821744669175948

`A001629(n+2)-A129720(n)`
-/

namespace A128620.P5254821744669175948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 2) - A129720 n

end

end A128620.P5254821744669175948

namespace A128620

/-- `A001629(n+2)-A129720(n)` -/
def P5254821744669175948.Spec : Prop :=
  ∀ n, P5254821744669175948.a n = A128620 n

end A128620

/-! ## A128620.P16409868832025913819

`Δ[Δ[A018910(n)]]*A008619(n)`
-/

namespace A128620.P16409868832025913819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 n

end

end A128620.P16409868832025913819

namespace A128620

/-- `Δ[Δ[A018910(n)]]*A008619(n)` -/
def P16409868832025913819.Spec : Prop :=
  ∀ n, P16409868832025913819.a n = A128620 n

end A128620

/-! ## A128620.P4215888356994468471

`A000045(n+1)*∑[A059841(n)]`
-/

namespace A128620.P4215888356994468471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128620.P4215888356994468471

namespace A128620

/-- `A000045(n+1)*∑[A059841(n)]` -/
def P4215888356994468471.Spec : Prop :=
  ∀ n, P4215888356994468471.a n = A128620 n

end A128620

/-! ## A128620.P13293965555825771262

`A000045(n+1)*(A004526(n)+1)`
-/

namespace A128620.P13293965555825771262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (A004526 n + 1)

end

end A128620.P13293965555825771262

namespace A128620

/-- `A000045(n+1)*(A004526(n)+1)` -/
def P13293965555825771262.Spec : Prop :=
  ∀ n, P13293965555825771262.a n = A128620 n

end A128620

/-! ## A128620.P14046194673521169829

`(A000071(n+1)+1)*A008619(n)`
-/

namespace A128620.P14046194673521169829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A008619 n

end

end A128620.P14046194673521169829

namespace A128620

/-- `(A000071(n+1)+1)*A008619(n)` -/
def P14046194673521169829.Spec : Prop :=
  ∀ n, P14046194673521169829.a n = A128620 n

end A128620

/-! ## A128620.P15993020292712929199

`A000045(n+1)*A065033(n+1)`
-/

namespace A128620.P15993020292712929199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A065033 (n + 1)

end

end A128620.P15993020292712929199

namespace A128620

/-- `A000045(n+1)*A065033(n+1)` -/
def P15993020292712929199.Spec : Prop :=
  ∀ n, P15993020292712929199.a n = A128620 n

end A128620

/-! ## A128620.P1378457079284422234

`A000045(n+1)*A110654(n+1)`
-/

namespace A128620.P1378457079284422234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A110654 (n + 1)

end

end A128620.P1378457079284422234

namespace A128620

/-- `A000045(n+1)*A110654(n+1)` -/
def P1378457079284422234.Spec : Prop :=
  ∀ n, P1378457079284422234.a n = A128620 n

end A128620

/-! ## A128620.P12072234687532885571

`A065033(n+1)*A212804(n+2)`
-/

namespace A128620.P12072234687532885571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) * A212804 (n + 2)

end

end A128620.P12072234687532885571

namespace A128620

/-- `A065033(n+1)*A212804(n+2)` -/
def P12072234687532885571.Spec : Prop :=
  ∀ n, P12072234687532885571.a n = A128620 n

end A128620

/-! ## A128620.P10309766658360848595

`A065033(n+1)*A324969(n+2)`
-/

namespace A128620.P10309766658360848595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) * A324969 (n + 2)

end

end A128620.P10309766658360848595

namespace A128620

/-- `A065033(n+1)*A324969(n+2)` -/
def P10309766658360848595.Spec : Prop :=
  ∀ n, P10309766658360848595.a n = A128620 n

end A128620

/-! ## A128620.P13972644464601452183

`A000045(n+1)*A008621(2*n)`
-/

namespace A128620.P13972644464601452183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A008621 (2 * n)

end

end A128620.P13972644464601452183

namespace A128620

/-- `A000045(n+1)*A008621(2*n)` -/
def P13972644464601452183.Spec : Prop :=
  ∀ n, P13972644464601452183.a n = A128620 n

end A128620

/-! ## A128620.P3909803222532459617

`A000045(n+1)*A008624(2*n)`
-/

namespace A128620.P3909803222532459617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A008624 (2 * n)

end

end A128620.P3909803222532459617

namespace A128620

/-- `A000045(n+1)*A008624(2*n)` -/
def P3909803222532459617.Spec : Prop :=
  ∀ n, P3909803222532459617.a n = A128620 n

end A128620

/-!
# A128621: A127648 * A128174 as an infinite lower triangular matrix.

The programs for A128621, the canonical program `A128621.P10653779951619394494` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128621 has offset 1).

The definition of A128621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128621.P17723479061589674646

`(2-gcd(2, comp[∑[4*n]]))*∑[char[∑[n]]]`
-/

namespace A128621.P17723479061589674646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.gcd 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A128621.P17723479061589674646

namespace A128621

/-- `(2-gcd(2, comp[∑[4*n]]))*∑[char[∑[n]]]` -/
def P17723479061589674646.Spec : Prop :=
  ∀ n, P17723479061589674646.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P5549908406469118628

`comp[2*(n²+n)]%2*∑[char[∑[n]]]`
-/

namespace A128621.P5549908406469118628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ 2 + n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A128621.P5549908406469118628

namespace A128621

/-- `comp[2*(n²+n)]%2*∑[char[∑[n]]]` -/
def P5549908406469118628.Spec : Prop :=
  ∀ n, (P5549908406469118628.a n : ℤ) = A128621 (n + 1)

end A128621

/-! ## A128621.P10385695171162837710

`round(sqrt(2*n+1)*comp[∑[4*n]]%2)`
-/

namespace A128621.P10385695171162837710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ) * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℝ))

end

end A128621.P10385695171162837710

namespace A128621

/-- `round(sqrt(2*n+1)*comp[∑[4*n]]%2)` -/
def P10385695171162837710.Spec : Prop :=
  ∀ n, P10385695171162837710.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P4658185201956357690

`floor(∑[char[∑[n]]]^(and(2, comp[∑[n]]+n)-1))`
-/

namespace A128621.P4658185201956357690
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1 : ℤ)⌋

end

end A128621.P4658185201956357690

namespace A128621

/-- `floor(∑[char[∑[n]]]^(and(2, comp[∑[n]]+n)-1))` -/
def P4658185201956357690.Spec : Prop :=
  ∀ n, P4658185201956357690.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P8501765431071527846

`floor(root(∑[char[∑[n]]], and(2, comp[∑[n]]+n)-1))`
-/

namespace A128621.P8501765431071527846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + n) : ℤ) - 1 : ℝ))⌋

end

end A128621.P8501765431071527846

namespace A128621

/-- `floor(root(∑[char[∑[n]]], and(2, comp[∑[n]]+n)-1))` -/
def P8501765431071527846.Spec : Prop :=
  ∀ n, P8501765431071527846.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P6160375838033562153

`val(∏[char[∑[n]]+1], A020639(n-C(∑[char[∑[n+1]]], 2)+2))`
-/

namespace A128621.P6160375838033562153
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j) (A020639 ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + 2).toNat).toNat

end

end A128621.P6160375838033562153

namespace A128621

/-- `val(∏[char[∑[n]]+1], A020639(n-C(∑[char[∑[n+1]]], 2)+2))` -/
def P6160375838033562153.Spec : Prop :=
  ∀ n, (P6160375838033562153.a n : ℤ) = A128621 (n + 1)

end A128621

/-! ## A128621.P5633101534675374717

`lcm(A002024(n+1), A369736(n))`
-/

namespace A128621.P5633101534675374717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002024 (n + 1)) (A369736 n)

end

end A128621.P5633101534675374717

namespace A128621

/-- `lcm(A002024(n+1), A369736(n))` -/
def P5633101534675374717.Spec : Prop :=
  ∀ n, (P5633101534675374717.a n : ℤ) = A128621 (n + 1)

end A128621

/-! ## A128621.P10653779951619394494

`∑[A010054(n)]*A128174(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128621

/-- `∑[A010054(n)]*A128174(n+1)` -/
def P10653779951619394494.Spec : Prop :=
  ∀ n, P10653779951619394494.a n = A128621 (n + 1)

theorem P10653779951619394494.correct : P10653779951619394494.Spec := by
  intro n
  simp only [A128621, Nat.add_sub_cancel]

end A128621

/-! ## A128621.P1944433989865796205

`A002024(n+1)*A128174(n+1)`
-/

namespace A128621.P1944433989865796205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A128174 (n + 1)

end

end A128621.P1944433989865796205

namespace A128621

/-- `A002024(n+1)*A128174(n+1)` -/
def P1944433989865796205.Spec : Prop :=
  ∀ n, P1944433989865796205.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P17550493527201544227

`(A003056(n)+1)*A128174(n+1)`
-/

namespace A128621.P17550493527201544227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A128174 (n + 1)

end

end A128621.P17550493527201544227

namespace A128621

/-- `(A003056(n)+1)*A128174(n+1)` -/
def P17550493527201544227.Spec : Prop :=
  ∀ n, P17550493527201544227.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P6881658116659202370

`A128174(n+1)*A128222(n+1)`
-/

namespace A128621.P6881658116659202370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A128222 (n + 1)

end

end A128621.P6881658116659202370

namespace A128621

/-- `A128174(n+1)*A128222(n+1)` -/
def P6881658116659202370.Spec : Prop :=
  ∀ n, P6881658116659202370.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P14622395039788719028

`A095833(n+1)%A111650(n+1)`
-/

namespace A128621.P14622395039788719028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095833 (n + 1)) (A111650 (n + 1))

end

end A128621.P14622395039788719028

namespace A128621

/-- `A095833(n+1)%A111650(n+1)` -/
def P14622395039788719028.Spec : Prop :=
  ∀ n, P14622395039788719028.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P5078643539457007920

`A325516(n+1)%A111650(n+1)`
-/

namespace A128621.P5078643539457007920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325516 (n + 1)) (A111650 (n + 1))

end

end A128621.P5078643539457007920

namespace A128621

/-- `A325516(n+1)%A111650(n+1)` -/
def P5078643539457007920.Spec : Prop :=
  ∀ n, P5078643539457007920.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P4613264131136377304

`A000035(A004736(n+1))*A002024(n+1)`
-/

namespace A128621.P4613264131136377304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004736 (n + 1)).toNat * A002024 (n + 1)

end

end A128621.P4613264131136377304

namespace A128621

/-- `A000035(A004736(n+1))*A002024(n+1)` -/
def P4613264131136377304.Spec : Prop :=
  ∀ n, P4613264131136377304.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P7091399067876281964

`A128222(n+1)+A007318(n)-A134521(n)`
-/

namespace A128621.P7091399067876281964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128222 (n + 1) + (A007318 n - A134521 n)

end

end A128621.P7091399067876281964

namespace A128621

/-- `A128222(n+1)+A007318(n)-A134521(n)` -/
def P7091399067876281964.Spec : Prop :=
  ∀ n, P7091399067876281964.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P15005952357389637199

`A128222(n+1)+A134520(n)-A007318(n)`
-/

namespace A128621.P15005952357389637199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128222 (n + 1) + (A134520 n - A007318 n)

end

end A128621.P15005952357389637199

namespace A128621

/-- `A128222(n+1)+A134520(n)-A007318(n)` -/
def P15005952357389637199.Spec : Prop :=
  ∀ n, P15005952357389637199.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P17574665605302572847

`A128180(n+1)+A209279(n+1)-A128179(n+1)`
-/

namespace A128621.P17574665605302572847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128180 (n + 1) + (A209279 (n + 1) - A128179 (n + 1))

end

end A128621.P17574665605302572847

namespace A128621

/-- `A128180(n+1)+A209279(n+1)-A128179(n+1)` -/
def P17574665605302572847.Spec : Prop :=
  ∀ n, P17574665605302572847.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P11209711138573887175

`A025581(A134444(n)+n)`
-/

namespace A128621.P11209711138573887175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A134444 n + (n : ℤ)).toNat

end

end A128621.P11209711138573887175

namespace A128621

/-- `A025581(A134444(n)+n)` -/
def P11209711138573887175.Spec : Prop :=
  ∀ n, P11209711138573887175.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P8521445860024437809

`A025581(or(1, log2(A130321(n)))+n)`
-/

namespace A128621.P8521445860024437809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.lor 1 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))) + (n : ℤ)).toNat

end

end A128621.P8521445860024437809

namespace A128621

/-- `A025581(or(1, log2(A130321(n)))+n)` -/
def P8521445860024437809.Spec : Prop :=
  ∀ n, P8521445860024437809.a n = A128621 (n + 1)

end A128621

/-! ## A128621.P3282578292205714698

`A025581(or(1, A004736(n+1)-1)+n)`
-/

namespace A128621.P3282578292205714698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.lor 1 (A004736 (n + 1) - 1) + (n : ℤ)).toNat

end

end A128621.P3282578292205714698

namespace A128621

/-- `A025581(or(1, A004736(n+1)-1)+n)` -/
def P3282578292205714698.Spec : Prop :=
  ∀ n, P3282578292205714698.a n = A128621 (n + 1)

end A128621

/-!
# A128622: Triangle T(n, k) = A128064(unsigned) * A128174, read by rows.

The programs for A128622, the canonical program `A128622.P9167240911132179240` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128622 has offset 1).

The definition of A128622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128622.P945380680084356061

`A116939(A183300(n+1))`
-/

namespace A128622.P945380680084356061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A183300 (n + 1)).toNat

end

end A128622.P945380680084356061

namespace A128622

/-- `A116939(A183300(n+1))` -/
def P945380680084356061.Spec : Prop :=
  ∀ n, P945380680084356061.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P5927197824717693448

`A103128(A209293(n+1))`
-/

namespace A128622.P5927197824717693448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A209293 (n + 1)).toNat

end

end A128622.P5927197824717693448

namespace A128622

/-- `A103128(A209293(n+1))` -/
def P5927197824717693448.Spec : Prop :=
  ∀ n, P5927197824717693448.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P2727871369089609481

`A003056(A130266(n)+n)`
-/

namespace A128622.P2727871369089609481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A130266 n + (n : ℤ)).toNat

end

end A128622.P2727871369089609481

namespace A128622

/-- `A003056(A130266(n)+n)` -/
def P2727871369089609481.Spec : Prop :=
  ∀ n, P2727871369089609481.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P7269104773639354268

`A134444(n)+A002262(n)`
-/

namespace A128622.P7269104773639354268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134444 n + A002262 n

end

end A128622.P7269104773639354268

namespace A128622

/-- `A134444(n)+A002262(n)` -/
def P7269104773639354268.Spec : Prop :=
  ∀ n, P7269104773639354268.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P1789298699426234163

`A134446(A134444(n)+n)`
-/

namespace A128622.P1789298699426234163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134446 (A134444 n + (n : ℤ)).toNat

end

end A128622.P1789298699426234163

namespace A128622

/-- `A134446(A134444(n)+n)` -/
def P1789298699426234163.Spec : Prop :=
  ∀ n, P1789298699426234163.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P2873122115362765669

`A134447(A134444(n)+n)`
-/

namespace A128622.P2873122115362765669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134447 (A134444 n + (n : ℤ)).toNat

end

end A128622.P2873122115362765669

namespace A128622

/-- `A134447(A134444(n)+n)` -/
def P2873122115362765669.Spec : Prop :=
  ∀ n, P2873122115362765669.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P9167240911132179240

`A128174(n+1)+A003056(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A128622

/-- `A128174(n+1)+A003056(n)` -/
def P9167240911132179240.Spec : Prop :=
  ∀ n, P9167240911132179240.a n = A128622 (n + 1)

theorem P9167240911132179240.correct : P9167240911132179240.Spec := by
  intro n
  simp only [A128622, Nat.add_sub_cancel]

end A128622

/-! ## A128622.P16926529267123402132

`A002262(n)+or(1, A025581(n))`
-/

namespace A128622.P16926529267123402132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + Int.lor 1 (A025581 n)

end

end A128622.P16926529267123402132

namespace A128622

/-- `A002262(n)+or(1, A025581(n))` -/
def P16926529267123402132.Spec : Prop :=
  ∀ n, P16926529267123402132.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P4369651925669936357

`A003057(n+2)-A131406(n+1)`
-/

namespace A128622.P4369651925669936357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A131406 (n + 1)

end

end A128622.P4369651925669936357

namespace A128622

/-- `A003057(n+2)-A131406(n+1)` -/
def P4369651925669936357.Spec : Prop :=
  ∀ n, P4369651925669936357.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P7564597980962665938

`A128222(n+2-A128221(n+2))`
-/

namespace A128622.P7564597980962665938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128222 ((n + 2 : ℤ) - A128221 (n + 2)).toNat

end

end A128622.P7564597980962665938

namespace A128622

/-- `A128222(n+2-A128221(n+2))` -/
def P7564597980962665938.Spec : Prop :=
  ∀ n, P7564597980962665938.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P14933713650615581075

`A002024(n+1)+A128174(n+1)-1`
-/

namespace A128622.P14933713650615581075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A128174 (n + 1) - 1)

end

end A128622.P14933713650615581075

namespace A128622

/-- `A002024(n+1)+A128174(n+1)-1` -/
def P14933713650615581075.Spec : Prop :=
  ∀ n, P14933713650615581075.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P112876075240927438

`A003057(n+2)-gcd(2, A004736(n+1))`
-/

namespace A128622.P112876075240927438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - (Int.gcd 2 (A004736 (n + 1)) : ℤ)

end

end A128622.P112876075240927438

namespace A128622

/-- `A003057(n+2)-gcd(2, A004736(n+1))` -/
def P112876075240927438.Spec : Prop :=
  ∀ n, P112876075240927438.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P6872046044738215646

`A003056(A194959(A209293(n+1))+n)`
-/

namespace A128622.P6872046044738215646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A194959 (A209293 (n + 1)).toNat + (n : ℤ)).toNat

end

end A128622.P6872046044738215646

namespace A128622

/-- `A003056(A194959(A209293(n+1))+n)` -/
def P6872046044738215646.Spec : Prop :=
  ∀ n, P6872046044738215646.a n = A128622 (n + 1)

end A128622

/-! ## A128622.P11461964666130846734

`A340134(A063657(n+1))`
-/

namespace A128622.P11461964666130846734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340134 (A063657 (n + 1)).toNat

end

end A128622.P11461964666130846734

namespace A128622

/-- `A340134(A063657(n+1))` -/
def P11461964666130846734.Spec : Prop :=
  ∀ n, P11461964666130846734.a n = A128622 (n + 1)

end A128622

/-!
# A128623: Triangle read by rows: A128621 * A000012 as infinite lower triangular matrices.

The programs for A128623, the canonical program `A128623.P6058663164886740131` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128623 has offset 1).

The definition of A128623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128623.P14115993506762070691

`1/4*(row(n)+1)*(1-(-1)^(row(n)+1-col(n))+2*(row(n)+1-col(n)))`
-/

namespace A128623.P14115993506762070691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (SequenceMachineLib.triRow n + 1 : ℚ) * (1 - (-1 : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + (2 * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) : ℚ))

end

end A128623.P14115993506762070691

namespace A128623

/-- `1/4*(row(n)+1)*(1-(-1)^(row(n)+1-col(n))+2*(row(n)+1-col(n)))` -/
def P14115993506762070691.Spec : Prop :=
  ∀ n, P14115993506762070691.a n = (A128623 (n + 1) : ℚ)

end A128623

/-! ## A128623.P6058663164886740131

`A002024(n+1)*A115514(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A128623

/-- `A002024(n+1)*A115514(n+1)` -/
def P6058663164886740131.Spec : Prop :=
  ∀ n, P6058663164886740131.a n = A128623 (n + 1)

theorem P6058663164886740131.correct : P6058663164886740131.Spec := by
  intro n
  simp only [A128623, Nat.add_sub_cancel]

end A128623

/-! ## A128623.P372889903998081104

`∑[A010054(n)]*A110655(A104571(n))`
-/

namespace A128623.P372889903998081104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A110655 (A104571 n).toNat

end

end A128623.P372889903998081104

namespace A128623

/-- `∑[A010054(n)]*A110655(A104571(n))` -/
def P372889903998081104.Spec : Prop :=
  ∀ n, P372889903998081104.a n = A128623 (n + 1)

end A128623

/-! ## A128623.P15913653952041681137

`A002024(n+1)*A110655(A104571(n))`
-/

namespace A128623.P15913653952041681137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A110655 (A104571 n).toNat

end

end A128623.P15913653952041681137

namespace A128623

/-- `A002024(n+1)*A110655(A104571(n))` -/
def P15913653952041681137.Spec : Prop :=
  ∀ n, P15913653952041681137.a n = A128623 (n + 1)

end A128623

/-! ## A128623.P7882575598784560674

`A002024(n+1)*A065033(A004736(n+1))`
-/

namespace A128623.P7882575598784560674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A065033 (A004736 (n + 1)).toNat

end

end A128623.P7882575598784560674

namespace A128623

/-- `A002024(n+1)*A065033(A004736(n+1))` -/
def P7882575598784560674.Spec : Prop :=
  ∀ n, P7882575598784560674.a n = A128623 (n + 1)

end A128623

/-! ## A128623.P13287950238701779379

`A008619(A193592(n+1))*A123578(n+1)`
-/

namespace A128623.P13287950238701779379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A193592 (n + 1)).toNat * A123578 (n + 1)

end

end A128623.P13287950238701779379

namespace A128623

/-- `A008619(A193592(n+1))*A123578(n+1)` -/
def P13287950238701779379.Spec : Prop :=
  ∀ n, P13287950238701779379.a n = A128623 (n + 1)

end A128623

/-! ## A128623.P7492798428175697563

`A000005(A137688(n))*A110655(A104571(n))`
-/

namespace A128623.P7492798428175697563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137688 n).toNat * A110655 (A104571 n).toNat

end

end A128623.P7492798428175697563

namespace A128623

/-- `A000005(A137688(n))*A110655(A104571(n))` -/
def P7492798428175697563.Spec : Prop :=
  ∀ n, P7492798428175697563.a n = A128623 (n + 1)

end A128623

/-!
# A128624: Row sums of A128623.

The programs for A128624, the canonical program `A128624.P9707345135143608287` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128624 has offset 1).

The definition of A128624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128624.P9707345135143608287

`(n+1)*((n+2)²-1+(n+1)%2)/4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A128624

/-- `(n+1)*((n+2)²-1+(n+1)%2)/4` -/
def P9707345135143608287.Spec : Prop :=
  ∀ n, P9707345135143608287.a n = (A128624 (n + 1) : ℚ)

end A128624

/-! ## A128624.P6948347968900038146

`(n+1)*(2*(n+1)²+4*(n+1)+1-(-1)^(n+1))/8`
-/

namespace A128624.P6948347968900038146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) ^ 2 + 4 * (n + 1) + 1 : ℤ) - (-1) ^ (n + 1)) : ℚ) / 8

end

end A128624.P6948347968900038146

namespace A128624

/-- `(n+1)*(2*(n+1)²+4*(n+1)+1-(-1)^(n+1))/8` -/
def P6948347968900038146.Spec : Prop :=
  ∀ n, P6948347968900038146.a n = (A128624 (n + 1) : ℚ)

end A128624

/-! ## A128624.P5239339132966041854

`∑[∑[n*gcd(2, n)+1]]`
-/

namespace A128624.P5239339132966041854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P5239339132966041854

namespace A128624

/-- `∑[∑[n*gcd(2, n)+1]]` -/
def P5239339132966041854.Spec : Prop :=
  ∀ n, (P5239339132966041854.a n : ℤ) = A128624 (n + 1)

end A128624

/-! ## A128624.P5801058691854296798

`∑[∑[3*n+1-lcm(2, n)]]`
-/

namespace A128624.P5801058691854296798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (1 - (Nat.lcm 2 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P5801058691854296798

namespace A128624

/-- `∑[∑[3*n+1-lcm(2, n)]]` -/
def P5801058691854296798.Spec : Prop :=
  ∀ n, P5801058691854296798.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P5572416281336580716

`∑[∑[gcd(n+1, n%2)+n]]`
-/

namespace A128624.P5572416281336580716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (n % 2) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P5572416281336580716

namespace A128624

/-- `∑[∑[gcd(n+1, n%2)+n]]` -/
def P5572416281336580716.Spec : Prop :=
  ∀ n, (P5572416281336580716.a n : ℤ) = A128624 (n + 1)

end A128624

/-! ## A128624.P1369374400174798562

`∑[(n+1)²-∑[and(1, n)]²]`
-/

namespace A128624.P1369374400174798562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P1369374400174798562

namespace A128624

/-- `∑[(n+1)²-∑[and(1, n)]²]` -/
def P1369374400174798562.Spec : Prop :=
  ∀ n, P1369374400174798562.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P10898694709080416615

`∑[∑[∑[∑[ogf((1+2x+3x^2)/(1+2x+x^2))]]]]`
-/

namespace A128624.P10898694709080416615
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3] [1, 2, 1] n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P10898694709080416615

namespace A128624

/-- `∑[∑[∑[∑[ogf((1+2x+3x^2)/(1+2x+x^2))]]]]` -/
def P10898694709080416615.Spec : Prop :=
  ∀ n, P10898694709080416615.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P17634474650633438422

`∑[∑[n*(and(1, n+1)+1)+1]]`
-/

namespace A128624.P17634474650633438422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 (n + 1) + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P17634474650633438422

namespace A128624

/-- `∑[∑[n*(and(1, n+1)+1)+1]]` -/
def P17634474650633438422.Spec : Prop :=
  ∀ n, (P17634474650633438422.a n : ℤ) = A128624 (n + 1)

end A128624

/-! ## A128624.P3050601914821429061

`∑[floor(∑[3-a(n-1)]²/3)]` with `a(0)=2`
-/

namespace A128624.P3050601914821429061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P3050601914821429061

namespace A128624

/-- `∑[floor(∑[3-a(n-1)]²/3)]` -/
def P3050601914821429061.Spec : Prop :=
  ∀ n, P3050601914821429061.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P9401682850350921837

`floor((n+1)*∑[a(n-2)+1])` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A128624.P9401682850350921837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128624.P9401682850350921837

namespace A128624

/-- `floor((n+1)*∑[a(n-2)+1])` -/
def P9401682850350921837.Spec : Prop :=
  ∀ n, (P9401682850350921837.a n : ℤ) = A128624 (n + 1)

end A128624

/-! ## A128624.P15435544667338003730

`∑[∑[n*((3*n+1)%2+1)+1]]`
-/

namespace A128624.P15435544667338003730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((3 * n + 1) % 2 + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P15435544667338003730

namespace A128624

/-- `∑[∑[n*((3*n+1)%2+1)+1]]` -/
def P15435544667338003730.Spec : Prop :=
  ∀ n, (P15435544667338003730.a n : ℤ) = A128624 (n + 1)

end A128624

/-! ## A128624.P1612778610383753573

`∑[∑[a(n-2)+6]-a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A128624.P1612778610383753573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 2) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P1612778610383753573

namespace A128624

/-- `∑[∑[a(n-2)+6]-a(n-1)]` -/
def P1612778610383753573.Spec : Prop :=
  ∀ n, P1612778610383753573.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P10108687742605610757

`lcm(n+1, (n+1)*floor(((n+2)/2)²))`
-/

namespace A128624.P10108687742605610757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) * ⌊((n + 2 : ℚ) / 2) ^ 2⌋)

end

end A128624.P10108687742605610757

namespace A128624

/-- `lcm(n+1, (n+1)*floor(((n+2)/2)²))` -/
def P10108687742605610757.Spec : Prop :=
  ∀ n, (P10108687742605610757.a n : ℤ) = A128624 (n + 1)

end A128624

/-! ## A128624.P8215325496952003439

`∑[A014255(n)]`
-/

namespace A128624.P8215325496952003439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P8215325496952003439

namespace A128624

/-- `∑[A014255(n)]` -/
def P8215325496952003439.Spec : Prop :=
  ∀ n, P8215325496952003439.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P3780931838609210663

`A246695(n)+∑[n]`
-/

namespace A128624.P3780931838609210663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128624.P3780931838609210663

namespace A128624

/-- `A246695(n)+∑[n]` -/
def P3780931838609210663.Spec : Prop :=
  ∀ n, P3780931838609210663.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P11488941748606944798

`∑[A257083(n)+n]`
-/

namespace A128624.P11488941748606944798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P11488941748606944798

namespace A128624

/-- `∑[A257083(n)+n]` -/
def P11488941748606944798.Spec : Prop :=
  ∀ n, P11488941748606944798.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P15398545146429985766

`∑[∑[A022998(n)+1]]`
-/

namespace A128624.P15398545146429985766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P15398545146429985766

namespace A128624

/-- `∑[∑[A022998(n)+1]]` -/
def P15398545146429985766.Spec : Prop :=
  ∀ n, P15398545146429985766.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P11469268583241773051

`∑[∑[A114752(n+1)]]`
-/

namespace A128624.P11469268583241773051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114752 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P11469268583241773051

namespace A128624

/-- `∑[∑[A114752(n+1)]]` -/
def P11469268583241773051.Spec : Prop :=
  ∀ n, P11469268583241773051.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P17348454118134379358

`∑[A212965(n)-n²]`
-/

namespace A128624.P17348454118134379358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212965 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128624.P17348454118134379358

namespace A128624

/-- `∑[A212965(n)-n²]` -/
def P17348454118134379358.Spec : Prop :=
  ∀ n, P17348454118134379358.a n = A128624 (n + 1)

end A128624

/-! ## A128624.P15405240834196126904

`A212968(n)-∑[n²]`
-/

namespace A128624.P15405240834196126904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212968 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A128624.P15405240834196126904

namespace A128624

/-- `A212968(n)-∑[n²]` -/
def P15405240834196126904.Spec : Prop :=
  ∀ n, P15405240834196126904.a n = A128624 (n + 1)

end A128624

/-!
# A128625: Expansion of (1+3*x)/(1-5*x).

The programs for A128625, the canonical program `A128625.P3204564842961815429` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128625 has offset 0).

The definition of A128625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-5x))` (program `A128625.P3204564842961815429`, by `A128625.P3204564842961815429.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A128625.P3204564842961815429

`ogf((1+3x)/(1-5x))`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A128625

/-- `ogf((1+3x)/(1-5x))` -/
def P3204564842961815429.Spec : Prop :=
  ∀ n, P3204564842961815429.a n = A128625 n

theorem P3204564842961815429.correct : P3204564842961815429.Spec := by
  intro n
  simp only [A128625]

end A128625

/-! ## A128625.P3311666627411955611

`5*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A128625.P3311666627411955611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  5 * a (n - 1)

end

end A128625.P3311666627411955611

namespace A128625

/-- `5*a(n-1)` -/
def P3311666627411955611.Spec : Prop :=
  ∀ n, (P3311666627411955611.a n : ℤ) = A128625 n

end A128625

/-! ## A128625.P7870842745662196077

`floor(8*5^(n-1))`
-/

namespace A128625.P7870842745662196077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A128625.P7870842745662196077

namespace A128625

/-- `floor(8*5^(n-1))` -/
def P7870842745662196077.Spec : Prop :=
  ∀ n, P7870842745662196077.a n = A128625 n

end A128625

/-! ## A128625.P17422631678554352853

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=8, a(2)=5`
-/

namespace A128625.P17422631678554352853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A128625.P17422631678554352853

namespace A128625

/-- `abs(∏[-a(n-1)])` -/
def P17422631678554352853.Spec : Prop :=
  ∀ n, P17422631678554352853.a n = A128625 n

end A128625

/-! ## A128625.P17705900707743019244

`a(n-1)/(1-4/5)` with `a(0)=1, a(1)=8`
-/

namespace A128625.P17705900707743019244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A128625.P17705900707743019244

namespace A128625

/-- `a(n-1)/(1-4/5)` -/
def P17705900707743019244.Spec : Prop :=
  ∀ n, P17705900707743019244.a n = (A128625 n : ℚ)

end A128625

/-! ## A128625.P4325559429964308595

`lcm(5^(n-1), a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A128625.P4325559429964308595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A128625.P4325559429964308595

namespace A128625

/-- `lcm(5^(n-1), a(n-1))` -/
def P4325559429964308595.Spec : Prop :=
  ∀ n, (P4325559429964308595.a n : ℤ) = A128625 n

end A128625

/-! ## A128625.P16357665083314783213

`xor(6, lcm(5, a(n-1)+1)+1)` with `a(0)=1, a(1)=8`
-/

namespace A128625.P16357665083314783213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.xor 6 (Nat.lcm 5 (a (n - 1) + 1) + 1)

end

end A128625.P16357665083314783213

namespace A128625

/-- `xor(6, lcm(5, a(n-1)+1)+1)` -/
def P16357665083314783213.Spec : Prop :=
  ∀ n, (P16357665083314783213.a n : ℤ) = A128625 n

end A128625

/-! ## A128625.P1783954446501219039

`Δ[A020699(n)]`
-/

namespace A128625.P1783954446501219039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128625.P1783954446501219039

namespace A128625

/-- `Δ[A020699(n)]` -/
def P1783954446501219039.Spec : Prop :=
  ∀ n, P1783954446501219039.a n = A128625 n

end A128625

/-! ## A128625.P14822736523304215374

`A138278(3*n)`
-/

namespace A128625.P14822736523304215374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138278 (3 * n)

end

end A128625.P14822736523304215374

namespace A128625

/-- `A138278(3*n)` -/
def P14822736523304215374.Spec : Prop :=
  ∀ n, P14822736523304215374.a n = A128625 n

end A128625

/-! ## A128625.P7763290684837721635

`ceil(A235702(n+1)/3)`
-/

namespace A128625.P7763290684837721635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A235702 (n + 1) : ℚ) / 3⌉

end

end A128625.P7763290684837721635

namespace A128625

/-- `ceil(A235702(n+1)/3)` -/
def P7763290684837721635.Spec : Prop :=
  ∀ n, P7763290684837721635.a n = A128625 n

end A128625

/-! ## A128625.P14411416008151256807

`A020729(n)-A020699(n)`
-/

namespace A128625.P14411416008151256807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020729 n - A020699 n

end

end A128625.P14411416008151256807

namespace A128625

/-- `A020729(n)-A020699(n)` -/
def P14411416008151256807.Spec : Prop :=
  ∀ n, P14411416008151256807.a n = A128625 n

end A128625

/-! ## A128625.P1186919258075811185

`A020699(n+1)-A020699(n)`
-/

namespace A128625.P1186919258075811185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 (n + 1) - A020699 n

end

end A128625.P1186919258075811185

namespace A128625

/-- `A020699(n+1)-A020699(n)` -/
def P1186919258075811185.Spec : Prop :=
  ∀ n, P1186919258075811185.a n = A128625 n

end A128625

/-! ## A128625.P217881184952269812

`(2-A000007(n))*A005054(n)`
-/

namespace A128625.P217881184952269812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A005054 n

end

end A128625.P217881184952269812

namespace A128625

/-- `(2-A000007(n))*A005054(n)` -/
def P217881184952269812.Spec : Prop :=
  ∀ n, P217881184952269812.a n = A128625 n

end A128625

/-! ## A128625.P613574347278949764

`2*A003948(n)-A005054(n)`
-/

namespace A128625.P613574347278949764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003948 n - A005054 n

end

end A128625.P613574347278949764

namespace A128625

/-- `2*A003948(n)-A005054(n)` -/
def P613574347278949764.Spec : Prop :=
  ∀ n, P613574347278949764.a n = A128625 n

end A128625

/-! ## A128625.P6521914960960855625

`A005054(n)*A280560(2*n)`
-/

namespace A128625.P6521914960960855625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n * A280560 (2 * n)

end

end A128625.P6521914960960855625

namespace A128625

/-- `A005054(n)*A280560(2*n)` -/
def P6521914960960855625.Spec : Prop :=
  ∀ n, P6521914960960855625.a n = A128625 n

end A128625

/-! ## A128625.P10300921433586491352

`∩[A025623(n+1), A138278(n)]`
-/

namespace A128625.P10300921433586491352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138278 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128625.P10300921433586491352

namespace A128625

/-- `∩[A025623(n+1), A138278(n)]` -/
def P10300921433586491352.Spec : Prop :=
  ∀ n, (P10300921433586491352.a n : ℤ) = A128625 n

end A128625

/-! ## A128625.P15303452029036284511

`(A062157(n)²+1)*A005054(n)`
-/

namespace A128625.P15303452029036284511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062157 n ^ 2 + 1) * A005054 n

end

end A128625.P15303452029036284511

namespace A128625

/-- `(A062157(n)²+1)*A005054(n)` -/
def P15303452029036284511.Spec : Prop :=
  ∀ n, P15303452029036284511.a n = A128625 n

end A128625

/-! ## A128625.P13175028038722043165

`∑[A055842(n)]*A280560(2*n)`
-/

namespace A128625.P13175028038722043165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A280560 (2 * n)

end

end A128625.P13175028038722043165

namespace A128625

/-- `∑[A055842(n)]*A280560(2*n)` -/
def P13175028038722043165.Spec : Prop :=
  ∀ n, P13175028038722043165.a n = A128625 n

end A128625

/-! ## A128625.P10064598911706741555

`A055842(n+1)-2*A005054(n)`
-/

namespace A128625.P10064598911706741555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 (n + 1) - 2 * A005054 n

end

end A128625.P10064598911706741555

namespace A128625

/-- `A055842(n+1)-2*A005054(n)` -/
def P10064598911706741555.Spec : Prop :=
  ∀ n, P10064598911706741555.a n = A128625 n

end A128625

/-! ## A128625.P5140828712168717901

`A026395(2*n)*A040001(2*n)`
-/

namespace A128625.P5140828712168717901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 (2 * n) * A040001 (2 * n)

end

end A128625.P5140828712168717901

namespace A128625

/-- `A026395(2*n)*A040001(2*n)` -/
def P5140828712168717901.Spec : Prop :=
  ∀ n, P5140828712168717901.a n = A128625 n

end A128625

/-!
# A128626: A triangular array distributing the values of sequence A072213 (cf. A115994).

The programs for A128626, there is no canonical definition to state claims against.
-/

/-! ## A128626.P2061104572646375223

`A193963(lcm(n, A104862(n)))`
-/

namespace A128626.P2061104572646375223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193963 (Int.lcm (n : ℤ) (A104862 n))

end

end A128626.P2061104572646375223

/-!
# A128627: Triangle read by rows. Convolution triangle based on A002865.

The programs for A128627, there is no canonical definition to state claims against.
-/

/-! ## A128627.P11124061671982783723

`A105422(n)-A016389(A119502(n))`
-/

namespace A128627.P11124061671982783723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n - A016389 (A119502 n).toNat

end

end A128627.P11124061671982783723

/-! ## A128627.P17825338864179327800

`A105422(n)-A055641(A089413(n))`
-/

namespace A128627.P17825338864179327800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n - A055641 (A089413 n).toNat

end

end A128627.P17825338864179327800

/-! ## A128627.P7417067767571082215

`A105422(n)-A016389(A152656(n))`
-/

namespace A128627.P7417067767571082215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n - A016389 (A152656 n).toNat

end

end A128627.P7417067767571082215

/-! ## A128627.P5423452277935857550

`A105422(n)-A044938(A264772(n))`
-/

namespace A128627.P5423452277935857550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n - A044938 (A264772 n).toNat

end

end A128627.P5423452277935857550

/-! ## A128627.P9362711174307930202

`A105422(n)-A185238(A130321(n))`
-/

namespace A128627.P9362711174307930202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n - A185238 (A130321 n).toNat

end

end A128627.P9362711174307930202

/-!
# A128628: An irregular triangular array read by rows, with shape sequence A000041(n) related to sequence A060850.

The programs for A128628, there is no canonical definition to state claims against.
-/

/-! ## A128628.P4100675859225413120

`val(A062515(n+1), 2)`
-/

namespace A128628.P4100675859225413120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062515 (n + 1)).toNat 2

end

end A128628.P4100675859225413120

/-! ## A128628.P2918246848648581925

`A238966(n+1)`
-/

namespace A128628.P2918246848648581925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 (n + 1)

end

end A128628.P2918246848648581925

/-! ## A128628.P6435578588084243634

`∑[1-Δ[n-A238966(n)]]`
-/

namespace A128628.P6435578588084243634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A238966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128628.P6435578588084243634

/-! ## A128628.P15352293592266928587

`∑{e}[A129129(n+1), #]`
-/

namespace A128628.P15352293592266928587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A128628.P15352293592266928587

/-! ## A128628.P11899907439292671972

`A308355(n+2)-1`
-/

namespace A128628.P11899907439292671972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308355 (n + 2) - 1

end

end A128628.P11899907439292671972

/-! ## A128628.P13065399400499004645

`A001222(A129129(n+1))`
-/

namespace A128628.P13065399400499004645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A129129 (n + 1)).toNat

end

end A128628.P13065399400499004645

/-! ## A128628.P12467069352980629142

`val(A001316(A114994(n+1)), 2)`
-/

namespace A128628.P12467069352980629142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A114994 (n + 1)).toNat).toNat 2

end

end A128628.P12467069352980629142

/-! ## A128628.P2156090645075870803

`A000120(A114994(n+1))`
-/

namespace A128628.P2156090645075870803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A114994 (n + 1)).toNat

end

end A128628.P2156090645075870803

/-! ## A128628.P5347441581798968127

`A000120(eq[1, A124765(n)])`
-/

namespace A128628.P5347441581798968127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A128628.P5347441581798968127

/-! ## A128628.P17640418307519741340

`A005811(A229120(n+1))`
-/

namespace A128628.P17640418307519741340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A229120 (n + 1)).toNat

end

end A128628.P17640418307519741340

/-!
# A128629: A triangular array generated by moving Pascal sequences to prime positions and embedding new sequences at the nonprime locations. (cf. A007318 and A000040).

The programs for A128629, there is no canonical definition to state claims against.
-/

/-! ## A128629.P3195516815709141651

`A016424(A078121(n))+A007318(n)`
-/

namespace A128629.P3195516815709141651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016424 (A078121 n).toNat + A007318 n

end

end A128629.P3195516815709141651

/-! ## A128629.P14209822485741389713

`A334946(A078812(n))+A327031(n)`
-/

namespace A128629.P14209822485741389713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334946 (A078812 n).toNat + A327031 n

end

end A128629.P14209822485741389713

/-! ## A128629.P9690699064226146431

`A007318(n)-A054907(A026769(n))`
-/

namespace A128629.P9690699064226146431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A054907 (A026769 n).toNat

end

end A128629.P9690699064226146431

/-! ## A128629.P9818392365241833909

`A007318(n)-A080225(A023361(n))`
-/

namespace A128629.P9818392365241833909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A080225 (A023361 n).toNat

end

end A128629.P9818392365241833909

/-! ## A128629.P14074400609416677637

`A007318(n)-A214411(A111123(n))`
-/

namespace A128629.P14074400609416677637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A214411 (A111123 n).toNat

end

end A128629.P14074400609416677637

/-!
# A128630: Let gpf(1)=1 and gpf(n)=greatest prime factor of n, n>1. Then a(n)=minimum sum of gpf of the parts of a partition of n.

The programs for A128630, there is no canonical definition to state claims against.
-/

/-! ## A128630.P391374917719475980

`A323022(A058357(n))+A000120(n)`
-/

namespace A128630.P391374917719475980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A058357 n).toNat + A000120 n

end

end A128630.P391374917719475980

/-! ## A128630.P9565339225052463709

`A323022(A058357(n))+A151902(A008458(n))`
-/

namespace A128630.P9565339225052463709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A058357 n).toNat + A151902 (A008458 n).toNat

end

end A128630.P9565339225052463709

/-! ## A128630.P8977771668535545895

`A000120(n)+A001222(A000120(A133044(n+1)))`
-/

namespace A128630.P8977771668535545895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + A001222 (A000120 (A133044 (n + 1)).toNat).toNat

end

end A128630.P8977771668535545895

/-!
# A128634: Number of parallel permutations of length n.

The programs for A128634, the canonical program `A128634.P17403284823669775696` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128634 has offset 1).

The definition of A128634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128634.P6549855317849032724

`2*(A000108(n+1)-1)`
-/

namespace A128634.P6549855317849032724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000108 (n + 1) - 1)

end

end A128634.P6549855317849032724

namespace A128634

/-- `2*(A000108(n+1)-1)` -/
def P6549855317849032724.Spec : Prop :=
  ∀ n, P6549855317849032724.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P17403284823669775696

`2*(C(2*(n+1), n+1)/(n+2)-1)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A128634

/-- `2*(C(2*(n+1), n+1)/(n+2)-1)` -/
def P17403284823669775696.Spec : Prop :=
  ∀ n, P17403284823669775696.a n = (A128634 (n + 1) : ℚ)

end A128634

/-! ## A128634.P16902043832305416203

`∑[abs(Δ[(4-6/(n+1))*a(n-1)])]` with `a(0)=2`
-/

namespace A128634.P16902043832305416203
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P16902043832305416203

namespace A128634

/-- `∑[abs(Δ[(4-6/(n+1))*a(n-1)])]` -/
def P16902043832305416203.Spec : Prop :=
  ∀ n, P16902043832305416203.a n = (A128634 (n + 1) : ℚ)

end A128634

/-! ## A128634.P14895499785382824922

`∑[floor(Δ[(4-6/(n+1))*a(n-1)])]` with `a(0)=2`
-/

namespace A128634.P14895499785382824922
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P14895499785382824922

namespace A128634

/-- `∑[floor(Δ[(4-6/(n+1))*a(n-1)])]` -/
def P14895499785382824922.Spec : Prop :=
  ∀ n, P14895499785382824922.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P2008459347378242095

`∑[ceil(Δ[(4-6/(n+1))*a(n-1)])]` with `a(0)=2`
-/

namespace A128634.P2008459347378242095
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P2008459347378242095

namespace A128634

/-- `∑[ceil(Δ[(4-6/(n+1))*a(n-1)])]` -/
def P2008459347378242095.Spec : Prop :=
  ∀ n, P2008459347378242095.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P12640476935409673566

`∑[round(Δ[(4-6/(n+1))*a(n-1)])]` with `a(0)=2`
-/

namespace A128634.P12640476935409673566
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P12640476935409673566

namespace A128634

/-- `∑[round(Δ[(4-6/(n+1))*a(n-1)])]` -/
def P12640476935409673566.Spec : Prop :=
  ∀ n, P12640476935409673566.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P16998897078879744620

`∑[-Δ[(4-6/(n+1))*a(n-1)]]` with `a(0)=-2`
-/

namespace A128634.P16998897078879744620
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [-2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P16998897078879744620

namespace A128634

/-- `∑[-Δ[(4-6/(n+1))*a(n-1)]]` -/
def P16998897078879744620.Spec : Prop :=
  ∀ n, P16998897078879744620.a n = (A128634 (n + 1) : ℚ)

end A128634

/-! ## A128634.P336024189607110434

`∑[2*Δ[(4-6/(n+1))*a(n-1)]]` with `a(0)=1`
-/

namespace A128634.P336024189607110434
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P336024189607110434

namespace A128634

/-- `∑[2*Δ[(4-6/(n+1))*a(n-1)]]` -/
def P336024189607110434.Spec : Prop :=
  ∀ n, P336024189607110434.a n = (A128634 (n + 1) : ℚ)

end A128634

/-! ## A128634.P18228664728551254035

`∑[A071721(n)]-1`
-/

namespace A128634.P18228664728551254035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A128634.P18228664728551254035

namespace A128634

/-- `∑[A071721(n)]-1` -/
def P18228664728551254035.Spec : Prop :=
  ∀ n, P18228664728551254035.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P9854620647732502221

`∑[2*A000245(n)]`
-/

namespace A128634.P9854620647732502221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P9854620647732502221

namespace A128634

/-- `∑[2*A000245(n)]` -/
def P9854620647732502221.Spec : Prop :=
  ∀ n, P9854620647732502221.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P10748998365274523526

`∑[n*A007054(n)]`
-/

namespace A128634.P10748998365274523526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P10748998365274523526

namespace A128634

/-- `∑[n*A007054(n)]` -/
def P10748998365274523526.Spec : Prop :=
  ∀ n, P10748998365274523526.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P3753706764324178616

`A131428(n+1)-1`
-/

namespace A128634.P3753706764324178616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131428 (n + 1) - 1

end

end A128634.P3753706764324178616

namespace A128634

/-- `A131428(n+1)-1` -/
def P3753706764324178616.Spec : Prop :=
  ∀ n, P3753706764324178616.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P7329776764628221330

`A068875(n+1)-2`
-/

namespace A128634.P7329776764628221330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 (n + 1) - 2

end

end A128634.P7329776764628221330

namespace A128634

/-- `A068875(n+1)-2` -/
def P7329776764628221330.Spec : Prop :=
  ∀ n, P7329776764628221330.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P15710156515555754944

`2*A141364(n+1)`
-/

namespace A128634.P15710156515555754944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141364 (n + 1)

end

end A128634.P15710156515555754944

namespace A128634

/-- `2*A141364(n+1)` -/
def P15710156515555754944.Spec : Prop :=
  ∀ n, P15710156515555754944.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P5168093538578224665

`A262543(n+2)-2`
-/

namespace A128634.P5168093538578224665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262543 (n + 2) - 2

end

end A128634.P5168093538578224665

namespace A128634

/-- `A262543(n+2)-2` -/
def P5168093538578224665.Spec : Prop :=
  ∀ n, P5168093538578224665.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P6802478270646120315

`A383251(n+1)-3`
-/

namespace A128634.P6802478270646120315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383251 (n + 1) - 3

end

end A128634.P6802478270646120315

namespace A128634

/-- `A383251(n+1)-3` -/
def P6802478270646120315.Spec : Prop :=
  ∀ n, P6802478270646120315.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P4181603763838053478

`A104722(Δ[n²])-2`
-/

namespace A128634.P4181603763838053478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A128634.P4181603763838053478

namespace A128634

/-- `A104722(Δ[n²])-2` -/
def P4181603763838053478.Spec : Prop :=
  ∀ n, P4181603763838053478.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P13282223028151186893

`∑[2*Δ[A000108(n)]]`
-/

namespace A128634.P13282223028151186893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P13282223028151186893

namespace A128634

/-- `∑[2*Δ[A000108(n)]]` -/
def P13282223028151186893.Spec : Prop :=
  ∀ n, P13282223028151186893.a n = A128634 (n + 1)

end A128634

/-! ## A128634.P15142875972543581619

`∑[2*Δ[A120304(n)]]`
-/

namespace A128634.P15142875972543581619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128634.P15142875972543581619

namespace A128634

/-- `∑[2*Δ[A120304(n)]]` -/
def P15142875972543581619.Spec : Prop :=
  ∀ n, P15142875972543581619.a n = A128634 (n + 1)

end A128634

/-!
# A128635: Number of numbers not greater than n and divisible by all digits in decimal representation.

The programs for A128635, there is no canonical definition to state claims against.
-/

/-! ## A128635.P5656850754311032977

`∑[char[A034838(n+1)-1]]`
-/

namespace A128635.P5656850754311032977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128635.P5656850754311032977

/-! ## A128635.P7460908322946160082

`a(n-1)+floor((n+1)/A034838(a(n-1)+1))` with `a(0)=1`
-/

namespace A128635.P7460908322946160082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌊(n + 1 : ℚ) / (A034838 (a (n - 1) + 1).toNat : ℚ)⌋

end

end A128635.P7460908322946160082

/-! ## A128635.P11336130089651479923

`∑[C(A004719(n+1), A132378(n+1))]`
-/

namespace A128635.P11336130089651479923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004719 (n + 1)).toNat (A132378 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128635.P11336130089651479923

/-! ## A128635.P12568911192933061947

`comp[A034838(n+1)+A023443(n)]-n`
-/

namespace A128635.P12568911192933061947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1) + A023443 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A128635.P12568911192933061947

/-! ## A128635.P12812144531283430499

`A028310(a(n-1))+char[A034838(n+1)-1]` with `a(0)=1`
-/

namespace A128635.P12812144531283430499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A128635.P12812144531283430499

/-! ## A128635.P8423298840723365563

`∑[char[A023443(A034838(n+1))]]`
-/

namespace A128635.P8423298840723365563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034838 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128635.P8423298840723365563

/-! ## A128635.P9993608963406714374

`∑[A000007(A132378(n+1)-A004719(n+1))]`
-/

namespace A128635.P9993608963406714374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A132378 (n + 1) - A004719 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128635.P9993608963406714374

/-! ## A128635.P16435573827815202331

`∑[floor(A000005(n+1)/A169819(n+1))]`
-/

namespace A128635.P16435573827815202331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) / (A169819 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128635.P16435573827815202331

/-! ## A128635.P7400465022894470646

`∑[A025923(A169819(n+1)-A000005(n+1))]`
-/

namespace A128635.P7400465022894470646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025923 (A169819 (n + 1) - A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128635.P7400465022894470646

/-!
# A128636: Expansion of 3 * (b(q^2)^2 / b(q)) / (c(q)^2 / c(q^2)) in powers of q where b(), c() are cubic AGM theta functions.

The programs for A128636, there is no canonical definition to state claims against.
-/

/-! ## A128636.P16257021399514458030

`A123633(or(n, (n%2)^n))`
-/

namespace A128636.P16257021399514458030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123633 (Nat.lor n ((n % 2) ^ n))

end

end A128636.P16257021399514458030

/-! ## A128636.P10170816815127033496

`A123633(1-(1-n)%(n+1))`
-/

namespace A128636.P10170816815127033496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123633 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A128636.P10170816815127033496

/-! ## A128636.P2455217229496115526

`A123633(A028310(n))`
-/

namespace A128636.P2455217229496115526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123633 (A028310 n).toNat

end

end A128636.P2455217229496115526

/-! ## A128636.P8632572410541543359

`A123633(A000007(n)+n)`
-/

namespace A128636.P8632572410541543359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123633 (A000007 n + (n : ℤ)).toNat

end

end A128636.P8632572410541543359

/-! ## A128636.P12714914076170581806

`A123633(A074038(2*(n+1))+n)`
-/

namespace A128636.P12714914076170581806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123633 (A074038 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A128636.P12714914076170581806

/-! ## A128636.P12910018015368202973

`a(A066922(A014963(n)))*A123633(n)` with `a(0)=1`
-/

namespace A128636.P12910018015368202973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A066922 (A014963 n).toNat).toNat * A123633 n

end

end A128636.P12910018015368202973

/-! ## A128636.P13907125265289199604

`A187153(A004277(n))`
-/

namespace A128636.P13907125265289199604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A004277 n).toNat

end

end A128636.P13907125265289199604

/-! ## A128636.P4976772869008965257

`A187153(A004275(n+1))`
-/

namespace A128636.P4976772869008965257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A004275 (n + 1)).toNat

end

end A128636.P4976772869008965257

/-! ## A128636.P15680326107773087654

`A187153(A300576(n+2))`
-/

namespace A128636.P15680326107773087654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A300576 (n + 2)).toNat

end

end A128636.P15680326107773087654

/-! ## A128636.P1364893358166924989

`A187153(A028310(2*n))`
-/

namespace A128636.P1364893358166924989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A028310 (2 * n)).toNat

end

end A128636.P1364893358166924989

/-! ## A128636.P12300147710030604039

`A187153(A028310(n)+n)`
-/

namespace A128636.P12300147710030604039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A028310 n + (n : ℤ)).toNat

end

end A128636.P12300147710030604039

/-! ## A128636.P15217371138337250912

`A187153(2*(A000007(n)+n))`
-/

namespace A128636.P15217371138337250912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (2 * (A000007 n + (n : ℤ))).toNat

end

end A128636.P15217371138337250912

/-! ## A128636.P4925904872124288036

`A187153(A000007(n)+n+n)`
-/

namespace A128636.P4925904872124288036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A128636.P4925904872124288036

/-! ## A128636.P13384094427179806605

`A213265(2*n)`
-/

namespace A128636.P13384094427179806605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213265 (2 * n)

end

end A128636.P13384094427179806605

/-! ## A128636.P8314127610001474151

`A261321(2*n)/A123932(n)`
-/

namespace A128636.P8314127610001474151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 (2 * n) : ℚ) / (A123932 n : ℚ)

end

end A128636.P8314127610001474151

/-! ## A128636.P13668347392712167848

`A187153(lt[A187153(3*(n+1)), A187149(n+1)])`
-/

namespace A128636.P13668347392712167848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128636.P13668347392712167848

/-!
# A128637: Expansion of 3 * (b(q)^2/b(q^2)) / (c(q)^2/c(q^2)) in powers of q where b(), c() are cubic AGM theta functions.

The programs for A128637, there is no canonical definition to state claims against.
-/

/-! ## A128637.P8743657820802597154

`(2-A123932(n))*A261321(2*n)`
-/

namespace A128637.P8743657820802597154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A123932 n) * A261321 (2 * n)

end

end A128637.P8743657820802597154

/-!
# A128638: Expansion of q * (psi(q^3)^3 / psi(q)) / (phi(-q)^3 / phi(-q^3)) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A128638, there is no canonical definition to state claims against.
-/

/-! ## A128638.P15322651378777923071

`A261992(3*n+1)`
-/

namespace A128638.P15322651378777923071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261992 (3 * n + 1)

end

end A128638.P15322651378777923071

/-! ## A128638.P12889766272539851958

`A187100(2*(n+1))/3`
-/

namespace A128638.P12889766272539851958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187100 (2 * (n + 1)) : ℚ) / 3

end

end A128638.P12889766272539851958

/-! ## A128638.P13281819717399871860

`A128129(3*(n+1))/4`
-/

namespace A128638.P13281819717399871860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128129 (3 * (n + 1)) : ℚ) / 4

end

end A128638.P13281819717399871860

/-! ## A128638.P3759390846855127562

`A123633(3*(n+1))/3`
-/

namespace A128638.P3759390846855127562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123633 (3 * (n + 1)) : ℚ) / 3

end

end A128638.P3759390846855127562

/-! ## A128638.P14518148716554355123

`A128639(n+1)/8`
-/

namespace A128638.P14518148716554355123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128639 (n + 1) : ℚ) / 8

end

end A128638.P14518148716554355123

/-! ## A128638.P16119874355558721570

`A128643(n+1)/9`
-/

namespace A128638.P16119874355558721570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128643 (n + 1) : ℚ) / 9

end

end A128638.P16119874355558721570

/-! ## A128638.P17667059761240080463

`A128643(n+1)-A128639(n+1)`
-/

namespace A128638.P17667059761240080463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128643 (n + 1) - A128639 (n + 1)

end

end A128638.P17667059761240080463

/-! ## A128638.P6362767877880554248

`lcm(A010684(n+1), A228447(2*(n+1)))/3`
-/

namespace A128638.P6362767877880554248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A010684 (n + 1)) (A228447 (2 * (n + 1))) : ℚ) / 3

end

end A128638.P6362767877880554248

/-! ## A128638.P1311853427164907309

`A228447(2*(n+1))/(A033999(2*n+1)-2)`
-/

namespace A128638.P1311853427164907309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228447 (2 * (n + 1)) : ℚ) / (A033999 (2 * n + 1) - 2 : ℚ)

end

end A128638.P1311853427164907309

/-! ## A128638.P13833194530689284584

`A128636(3*(n+1))/3`
-/

namespace A128638.P13833194530689284584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128636 (3 * (n + 1)) : ℚ) / 3

end

end A128638.P13833194530689284584

/-!
# A128639: Expansion of (1/3) * (c(q)^2 / c(q^2)) / (b(q)^2 / b(q^2)) in powers of q where b(), c() are cubic AGM theta functions.

The programs for A128639, there is no canonical definition to state claims against.
-/

/-! ## A128639.P15570596769119401965

`A128770(3*n)`
-/

namespace A128639.P15570596769119401965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128770 (3 * n)

end

end A128639.P15570596769119401965

/-! ## A128639.P8189263035815805938

`(A019426(2*n)+1)*A128641(2*n)`
-/

namespace A128639.P8189263035815805938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A019426 (2 * n) + 1) * A128641 (2 * n)

end

end A128639.P8189263035815805938

/-! ## A128639.P9950136122272970155

`abs(A261988(3*n))`
-/

namespace A128639.P9950136122272970155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261988 (3 * n)|

end

end A128639.P9950136122272970155

/-! ## A128639.P2379089242366940334

`lcm(A001285(n), A261988(3*n))`
-/

namespace A128639.P2379089242366940334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A261988 (3 * n))

end

end A128639.P2379089242366940334

/-! ## A128639.P5439171341940717905

`gcd(A261988(3*n)*A261988(n+1), A261988(3*n))`
-/

namespace A128639.P5439171341940717905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A261988 (3 * n) * A261988 (n + 1)) (A261988 (3 * n))

end

end A128639.P5439171341940717905

/-!
# A128640: Expansion of (1/3) * (c(q^2)^2 / c(q)) / (b(q^2)^2 / b(q)) in powers of q where b(), c() are cubic AGM theta functions.

The programs for A128640, there is no canonical definition to state claims against.
-/

/-! ## A128640.P4916469852165816735

`-A128641(n+1)`
-/

namespace A128640.P4916469852165816735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A128641 (n + 1)

end

end A128640.P4916469852165816735

/-! ## A128640.P1087341229357372139

`A033999(n)*A164617(n+1)`
-/

namespace A128640.P1087341229357372139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A164617 (n + 1)

end

end A128640.P1087341229357372139

/-! ## A128640.P9799311296829753212

`A164617(n+1)/A132974(n)*A132979(n)`
-/

namespace A128640.P9799311296829753212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164617 (n + 1) : ℚ) / (A132974 n : ℚ) * (A132979 n : ℚ)

end

end A128640.P9799311296829753212

/-! ## A128640.P8719445730291002325

`A164617(n+1)/A128641(n)*A164617(n)`
-/

namespace A128640.P8719445730291002325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164617 (n + 1) : ℚ) / (A128641 n : ℚ) * (A164617 n : ℚ)

end

end A128640.P8719445730291002325

/-! ## A128640.P12893882253005733620

`Δ[a(n-1)-A128641(n)]` with `a(0)=1`
-/

namespace A128640.P12893882253005733620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A128641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128640.P12893882253005733620

/-! ## A128640.P10926279983186616010

`A000038(n+1)-A128641(n+1)`
-/

namespace A128640.P10926279983186616010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A128641 (n + 1)

end

end A128640.P10926279983186616010

/-! ## A128640.P11656055324755018114

`1-(A128641(n+1)+A033999(2*n))`
-/

namespace A128640.P11656055324755018114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A128641 (n + 1) + A033999 (2 * n))

end

end A128640.P11656055324755018114

/-! ## A128640.P9889271355223585213

`(2-A122553(n+1))*A128641(n+1)`
-/

namespace A128640.P9889271355223585213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A122553 (n + 1)) * A128641 (n + 1)

end

end A128640.P9889271355223585213

/-! ## A128640.P6971596676793656372

`A033999(2*n+1)*A128641(n+1)`
-/

namespace A128640.P6971596676793656372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A128641 (n + 1)

end

end A128640.P6971596676793656372

/-! ## A128640.P14965421020324889287

`A082024(gcd(n, n+1))-A128641(n+1)`
-/

namespace A128640.P14965421020324889287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 (Nat.gcd n (n + 1)) - A128641 (n + 1)

end

end A128640.P14965421020324889287

/-! ## A128640.P16959353670324609760

`A291092(2*(n+1))-(9+A128641(n+1))`
-/

namespace A128640.P16959353670324609760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (2 * (n + 1)) - (9 + A128641 (n + 1))

end

end A128640.P16959353670324609760

/-! ## A128640.P10448240481809411679

`A123633(n+1)-(A128641(n+1)+A128636(n+1))`
-/

namespace A128640.P10448240481809411679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123633 (n + 1) - (A128641 (n + 1) + A128636 (n + 1))

end

end A128640.P10448240481809411679

/-! ## A128640.P11862208724577263843

`(A008486(2*n)-A019426(2*n+1))*A128641(n+1)`
-/

namespace A128640.P11862208724577263843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 (2 * n) - A019426 (2 * n + 1)) * A128641 (n + 1)

end

end A128640.P11862208724577263843

/-! ## A128640.P4244798712410804983

`Δ[A128641(n+1)]-A128641(n+2)`
-/

namespace A128640.P4244798712410804983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128641 (n + 2)

end

end A128640.P4244798712410804983

/-! ## A128640.P9419996614367813787

`A124243(3*(n+1))`
-/

namespace A128640.P9419996614367813787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124243 (3 * (n + 1))

end

end A128640.P9419996614367813787

/-! ## A128640.P16797010613431352328

`A128641(2*n)-(A164617(2*n)+A128641(n+1))`
-/

namespace A128640.P16797010613431352328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128641 (2 * n) - (A164617 (2 * n) + A128641 (n + 1))

end

end A128640.P16797010613431352328

/-!
# A128641: Expansion of (1/3) * (c(q)^2 / c(q^2)) / (b(q^2)^2 / b(q)) in powers of q where b(), c() are cubic AGM theta functions.

The programs for A128641, there is no canonical definition to state claims against.
-/

/-! ## A128641.P13013319276828761551

`(-1)^n*A164617(n)`
-/

namespace A128641.P13013319276828761551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164617 n

end

end A128641.P13013319276828761551

/-! ## A128641.P2995795536905695434

`A164617(n)/A033999(n)`
-/

namespace A128641.P2995795536905695434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164617 n : ℚ) / (A033999 n : ℚ)

end

end A128641.P2995795536905695434

/-! ## A128641.P452525989017219003

`A164617(n)*A345007(and(1, n)^(n+1))`
-/

namespace A128641.P452525989017219003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164617 n * A345007 (Nat.land 1 n ^ (n + 1))

end

end A128641.P452525989017219003

/-! ## A128641.P11300777497664121333

`A128642(n)/A291092(n+1)`
-/

namespace A128641.P11300777497664121333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128642 n : ℚ) / (A291092 (n + 1) : ℚ)

end

end A128641.P11300777497664121333

/-! ## A128641.P5543911589754651907

`A145977(3*n)`
-/

namespace A128641.P5543911589754651907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145977 (3 * n)

end

end A128641.P5543911589754651907

/-! ## A128641.P12278064398664945416

`A258100(3*n)`
-/

namespace A128641.P12278064398664945416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258100 (3 * n)

end

end A128641.P12278064398664945416

/-! ## A128641.P13162622213870712586

`A141094(abs(1-2*n)+n+1)/3`
-/

namespace A128641.P13162622213870712586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141094 (|1 - (2 * n : ℤ)| + (n + 1 : ℤ)).toNat : ℚ) / 3

end

end A128641.P13162622213870712586

/-! ## A128641.P13502977381440571241

`A132974(n)*A164617(n)/A132979(n)`
-/

namespace A128641.P13502977381440571241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132974 n * A164617 n : ℚ) / (A132979 n : ℚ)

end

end A128641.P13502977381440571241

/-! ## A128641.P5646985216800367930

`A128640(n+1)*A164617(n)/A164617(n+1)`
-/

namespace A128641.P5646985216800367930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128640 (n + 1) * A164617 n : ℚ) / (A164617 (n + 1) : ℚ)

end

end A128641.P5646985216800367930

/-!
# A128642: Expansion of (b(q) / b(q^2))^3 in powers of q where b() is a cubic AGM theta function.

The programs for A128642, there is no canonical definition to state claims against.
-/

/-! ## A128642.P11371041431710765863

`A122553(n)²*A128641(n)`
-/

namespace A128642.P11371041431710765863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n ^ 2 * A128641 n

end

end A128642.P11371041431710765863

/-! ## A128642.P11675690629358277303

`A128641(n)*A291092(n+1)`
-/

namespace A128642.P11675690629358277303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128641 n * A291092 (n + 1)

end

end A128642.P11675690629358277303

/-! ## A128642.P11071253191082467031

`A008486(A019426(2*n))²*A128641(n)`
-/

namespace A128642.P11071253191082467031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A019426 (2 * n)).toNat ^ 2 * A128641 n

end

end A128642.P11071253191082467031

/-! ## A128642.P2442333910391414660

`A122553(n)*A141094(3*n)`
-/

namespace A128642.P2442333910391414660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A141094 (3 * n)

end

end A128642.P2442333910391414660

/-! ## A128642.P10623154909314849156

`A048250(A001316(n))*A141094(3*n)`
-/

namespace A128642.P10623154909314849156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A001316 n).toNat * A141094 (3 * n)

end

end A128642.P10623154909314849156

/-! ## A128642.P10428295001595702657

`A008486(A019426(2*n))*A141094(3*n)`
-/

namespace A128642.P10428295001595702657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A019426 (2 * n)).toNat * A141094 (3 * n)

end

end A128642.P10428295001595702657

/-! ## A128642.P14971793634684217115

`A014963(A165824(n+1))*A141094(3*n)`
-/

namespace A128642.P14971793634684217115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A165824 (n + 1)).toNat * A141094 (3 * n)

end

end A128642.P14971793634684217115

/-! ## A128642.P1646364303966947057

`gcd(3, A000244(n))²*A128641(n)`
-/

namespace A128642.P1646364303966947057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A000244 n) ^ 2 : ℤ) * A128641 n

end

end A128642.P1646364303966947057

/-!
# A128643: Expansion of (b(q^2) / b(q))^3 in powers of q where b() is a cubic AGM function.

The programs for A128643, there is no canonical definition to state claims against.
-/

/-! ## A128643.P2969358659911082432

`record[A010684(n)*A187100(n+1)]`
-/

namespace A128643.P2969358659911082432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A187100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128643.P2969358659911082432

/-! ## A128643.P11145864328936682095

`record[A010882(n)*A123633(n+1)]`
-/

namespace A128643.P11145864328936682095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 n * A123633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128643.P11145864328936682095

/-! ## A128643.P7020295329311350267

`A260058(A004277(n))-A228447(A004277(n))`
-/

namespace A128643.P7020295329311350267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260058 (A004277 n).toNat - A228447 (A004277 n).toNat

end

end A128643.P7020295329311350267

/-!
# A128644: Number of groups of order A037144(n).

The programs for A128644, there is no canonical definition to state claims against.
-/

/-! ## A128644.P793454412428356874

`A000001(A037144(n+1))`
-/

namespace A128644.P793454412428356874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A037144 (n + 1)).toNat

end

end A128644.P793454412428356874

/-! ## A128644.P13914416248386340123

`A201733(A037144(n+1)+A000038(n))`
-/

namespace A128644.P13914416248386340123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A037144 (n + 1) + A000038 n).toNat

end

end A128644.P13914416248386340123

/-! ## A128644.P10759421088782696953

`A201733(lcm(A020985(n), A037144(n+1)))`
-/

namespace A128644.P10759421088782696953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.lcm (A020985 n) (A037144 (n + 1)))

end

end A128644.P10759421088782696953

/-! ## A128644.P2518531467348801421

`A201733(A037144(n+1)%A128603(n+1))`
-/

namespace A128644.P2518531467348801421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.tmod (A037144 (n + 1)) (A128603 (n + 1))).toNat

end

end A128644.P2518531467348801421

/-! ## A128644.P12832785893373144591

`A201733(A037144(n+1))%A139082(n+1)`
-/

namespace A128644.P12832785893373144591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201733 (A037144 (n + 1)).toNat) (A139082 (n + 1))

end

end A128644.P12832785893373144591

/-! ## A128644.P10239283326939812971

`A000001(record[A285731(A167614(n+1))])`
-/

namespace A128644.P10239283326939812971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285731 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A128644.P10239283326939812971

/-!
# A128645: Number of groups of order A128691(n).

The programs for A128645, there is no canonical definition to state claims against.
-/

/-! ## A128645.P17746190631379993147

`A201733(A100368(n+1))`
-/

namespace A128645.P17746190631379993147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A100368 (n + 1)).toNat

end

end A128645.P17746190631379993147

/-! ## A128645.P2909073371256921273

`A201733(2*A038550(n+1))`
-/

namespace A128645.P2909073371256921273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (2 * A038550 (n + 1)).toNat

end

end A128645.P2909073371256921273

/-!
# A128646: a(n) = denominator(Sum_{k=1..n} 1/(prime(k)-1)).

The programs for A128646, there is no canonical definition to state claims against.
-/

/-! ## A128646.P5654051130639545972

`A005867(n+1)/A135212(n+1)`
-/

namespace A128646.P5654051130639545972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) : ℚ) / (A135212 (n + 1) : ℚ)

end

end A128646.P5654051130639545972

/-! ## A128646.P9107226281103563390

`∏[A006093(n+1)]/A135212(n+1)`
-/

namespace A128646.P9107226281103563390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A135212 (n + 1) : ℚ)

end

end A128646.P9107226281103563390

/-! ## A128646.P4613813465246053621

`∏[record[A000010(n+1)]]/A135212(n+1)`
-/

namespace A128646.P4613813465246053621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A135212 (n + 1) : ℚ)

end

end A128646.P4613813465246053621

/-! ## A128646.P2356793973222115680

`∏[A000040(n+1)-1]/A135212(n+1)`
-/

namespace A128646.P2356793973222115680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A135212 (n + 1) : ℚ)

end

end A128646.P2356793973222115680

/-! ## A128646.P14250446318854649598

`A005867(n+1)/A078456(n+1)*A120271(n+1)`
-/

namespace A128646.P14250446318854649598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005867 (n + 1) : ℚ) / (A078456 (n + 1) : ℚ) * (A120271 (n + 1) : ℚ)

end

end A128646.P14250446318854649598

/-!
# A128648: a(n) = denominator(Sum_{k=1..n} (-1)^(k+1)/(prime(k)-1)).

The programs for A128648, there is no canonical definition to state claims against.
-/

/-! ## A128648.P14899091725247659037

`A128646(n+1)/A212171(A054750(n+1))`
-/

namespace A128648.P14899091725247659037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128646 (n + 1) : ℚ) / (A212171 (A054750 (n + 1)).toNat : ℚ)

end

end A128648.P14899091725247659037

/-! ## A128648.P16477609558950090299

`A128646(n+1)/A003289(A326698(n+1))`
-/

namespace A128648.P16477609558950090299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128646 (n + 1) : ℚ) / (A003289 (A326698 (n + 1)).toNat : ℚ)

end

end A128648.P16477609558950090299

/-! ## A128648.P10615693880791421117

`A128646(n+1)/A030600(A331679(n+1))`
-/

namespace A128648.P10615693880791421117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128646 (n + 1) : ℚ) / (A030600 (A331679 (n + 1)).toNat : ℚ)

end

end A128648.P10615693880791421117

/-! ## A128648.P15366493306449872431

`A128646(n+1)/A327103(A167614(n+1))`
-/

namespace A128648.P15366493306449872431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128646 (n + 1) : ℚ) / (A327103 (A167614 (n + 1)).toNat : ℚ)

end

end A128648.P15366493306449872431

/-! ## A128648.P9852516588870988416

`A128646(n+1)/A326976(n²+2)`
-/

namespace A128648.P9852516588870988416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128646 (n + 1) : ℚ) / (A326976 (n ^ 2 + 2) : ℚ)

end

end A128648.P9852516588870988416

/-!
# A128649: Numbers m such that A128646(m) = A128648(m).

The programs for A128649, there is no canonical definition to state claims against.
-/

/-! ## A128649.P12418822553071700200

`∑[gcd(A019208(n+3), A029739(n+1))]`
-/

namespace A128649.P12418822553071700200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019208 (n + 3)) (A029739 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128649.P12418822553071700200

/-! ## A128649.P1259293508175251389

`lt[A171591(n)-A130487(n), A171596(n)]`
-/

namespace A128649.P1259293508175251389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171591 n - A130487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128649.P1259293508175251389

/-! ## A128649.P15732782942377974035

`lt[A036621(A024635(n)), A036621(3*n+1)]`
-/

namespace A128649.P15732782942377974035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036621 (A024635 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036621 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128649.P15732782942377974035

/-!
# A128650: Number of polygons on n vertices with exactly three faces.

The programs for A128650, the canonical program `A128650.P16731929856799845103` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128650 has offset 2).

The definition of A128650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A128650.P16731929856799845103

`4*A001791(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A128650

/-- `4*A001791(n)` -/
def P16731929856799845103.Spec : Prop :=
  ∀ n, P16731929856799845103.a n = A128650 (n + 2)

theorem P16731929856799845103.correct : P16731929856799845103.Spec := by
  intro n
  simp only [A128650, Nat.add_sub_cancel]

end A128650

/-! ## A128650.P15678954764049901300

`4*n/(n+1)*C(2*(n+2)-4, n)`
-/

namespace A128650.P15678954764049901300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) / (n + 1 : ℚ) * (Nat.choose ((2 * (n + 2) : ℤ) - 4).toNat n : ℚ)

end

end A128650.P15678954764049901300

namespace A128650

/-- `4*n/(n+1)*C(2*(n+2)-4, n)` -/
def P15678954764049901300.Spec : Prop :=
  ∀ n, P15678954764049901300.a n = (A128650 (n + 2) : ℚ)

end A128650

/-! ## A128650.P16556664893887078898

`Δ[(4-6/(n+1))*a(n-1)]+n*∏[2*(2*n+1)/(n+2)]` with `a(0)=2`
-/

namespace A128650.P16556664893887078898
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A128650.P16556664893887078898

namespace A128650

/-- `Δ[(4-6/(n+1))*a(n-1)]+n*∏[2*(2*n+1)/(n+2)]` -/
def P16556664893887078898.Spec : Prop :=
  ∀ n, P16556664893887078898.a n = (A128650 (n + 2) : ℚ)

end A128650

/-! ## A128650.P1373130844347926258

`2*A162551(n)`
-/

namespace A128650.P1373130844347926258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162551 n

end

end A128650.P1373130844347926258

namespace A128650

/-- `2*A162551(n)` -/
def P1373130844347926258.Spec : Prop :=
  ∀ n, P1373130844347926258.a n = A128650 (n + 2)

theorem P1373130844347926258.correct : P1373130844347926258.Spec := by
  intro n
  simp only [A128650, Nat.add_sub_cancel, A128650.P1373130844347926258.a, A128650.P16731929856799845103.a, A001791, A001791.P9713013280951293137.a, A162551, A162551.P10524967716150044895.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128650

/-! ## A128650.P15444775475652378972

`Δ[2*A281593(n)]`
-/

namespace A128650.P15444775475652378972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128650.P15444775475652378972

namespace A128650

/-- `Δ[2*A281593(n)]` -/
def P15444775475652378972.Spec : Prop :=
  ∀ n, P15444775475652378972.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P5690955683910476582

`Δ[4*A279561(n)]`
-/

namespace A128650.P5690955683910476582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A128650.P5690955683910476582

namespace A128650

/-- `Δ[4*A279561(n)]` -/
def P5690955683910476582.Spec : Prop :=
  ∀ n, P5690955683910476582.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P11970801375505461107

`2*A238452(2*n)`
-/

namespace A128650.P11970801375505461107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238452 (2 * n)

end

end A128650.P11970801375505461107

namespace A128650

/-- `2*A238452(2*n)` -/
def P11970801375505461107.Spec : Prop :=
  ∀ n, P11970801375505461107.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P14364021621043331148

`4*(A323229(n)-1)`
-/

namespace A128650.P14364021621043331148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A323229 n - 1)

end

end A128650.P14364021621043331148

namespace A128650

/-- `4*(A323229(n)-1)` -/
def P14364021621043331148.Spec : Prop :=
  ∀ n, P14364021621043331148.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P2498987317571742160

`4*A037952(2*n)`
-/

namespace A128650.P2498987317571742160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037952 (2 * n)

end

end A128650.P2498987317571742160

namespace A128650

/-- `4*A037952(2*n)` -/
def P2498987317571742160.Spec : Prop :=
  ∀ n, P2498987317571742160.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P14499417431518689875

`4*A037955(2*n)`
-/

namespace A128650.P14499417431518689875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037955 (2 * n)

end

end A128650.P14499417431518689875

namespace A128650

/-- `4*A037955(2*n)` -/
def P14499417431518689875.Spec : Prop :=
  ∀ n, P14499417431518689875.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P10976640019952749598

`4/3*A062561(n)`
-/

namespace A128650.P10976640019952749598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A062561 n : ℚ)

end

end A128650.P10976640019952749598

namespace A128650

/-- `4/3*A062561(n)` -/
def P10976640019952749598.Spec : Prop :=
  ∀ n, P10976640019952749598.a n = (A128650 (n + 2) : ℚ)

theorem P10976640019952749598.correct : P10976640019952749598.Spec := by
  intro n
  simp only [A128650, Nat.add_sub_cancel, A128650.P10976640019952749598.a, A128650.P16731929856799845103.a, A001791, A001791.P9713013280951293137.a, A062561, A062561.P8999694222887573335.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A128650

/-! ## A128650.P14165537590515551779

`2*n*A068875(n)`
-/

namespace A128650.P14165537590515551779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A068875 n)

end

end A128650.P14165537590515551779

namespace A128650

/-- `2*n*A068875(n)` -/
def P14165537590515551779.Spec : Prop :=
  ∀ n, P14165537590515551779.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P17542900939120388063

`4*n*A000108(n)`
-/

namespace A128650.P17542900939120388063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) * A000108 n)

end

end A128650.P17542900939120388063

namespace A128650

/-- `4*n*A000108(n)` -/
def P17542900939120388063.Spec : Prop :=
  ∀ n, P17542900939120388063.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P3783905590893877294

`record[Δ[A241543(n+2)]]`
-/

namespace A128650.P3783905590893877294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241543 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128650.P3783905590893877294

namespace A128650

/-- `record[Δ[A241543(n+2)]]` -/
def P3783905590893877294.Spec : Prop :=
  ∀ n, P3783905590893877294.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P9069447985550159808

`record[Δ[2*A057977(n)]]`
-/

namespace A128650.P9069447985550159808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057977 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128650.P9069447985550159808

namespace A128650

/-- `record[Δ[2*A057977(n)]]` -/
def P9069447985550159808.Spec : Prop :=
  ∀ n, P9069447985550159808.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P4635194834543812740

`record[2*n*A099363(n)]`
-/

namespace A128650.P4635194834543812740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A099363 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128650.P4635194834543812740

namespace A128650

/-- `record[2*n*A099363(n)]` -/
def P4635194834543812740.Spec : Prop :=
  ∀ n, P4635194834543812740.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P9900418568462683515

`record[2*n*A126120(n)]`
-/

namespace A128650.P9900418568462683515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A126120 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128650.P9900418568462683515

namespace A128650

/-- `record[2*n*A126120(n)]` -/
def P9900418568462683515.Spec : Prop :=
  ∀ n, P9900418568462683515.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P17518517695431950491

`record[n*A329686(2*n)]`
-/

namespace A128650.P17518517695431950491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A329686 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128650.P17518517695431950491

namespace A128650

/-- `record[n*A329686(2*n)]` -/
def P17518517695431950491.Spec : Prop :=
  ∀ n, P17518517695431950491.a n = A128650 (n + 2)

end A128650

/-! ## A128650.P2096084851845233034

`2*n*A262543(n+1)`
-/

namespace A128650.P2096084851845233034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A262543 (n + 1))

end

end A128650.P2096084851845233034

namespace A128650

/-- `2*n*A262543(n+1)` -/
def P2096084851845233034.Spec : Prop :=
  ∀ n, P2096084851845233034.a n = A128650 (n + 2)

end A128650

/-!
# A128651: In the sequence of natural numbers, replace the nonsquarefree numbers with their minimal factorization into squarefree numbers.

The programs for A128651, there is no canonical definition to state claims against.
-/

/-! ## A128651.P11493569552138995619

`A261969(A284318(n+1)%A189556(n+1))`
-/

namespace A128651.P11493569552138995619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (Int.tmod (A284318 (n + 1)) (A189556 (n + 1))).toNat

end

end A128651.P11493569552138995619

/-! ## A128651.P16049779561966336825

`A261969(∏{d}[A284318(n+1), A261969(#)])`
-/

namespace A128651.P16049779561966336825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (∏ d ∈ Nat.divisors (f1 n).natAbs, A261969 d).toNat

end

end A128651.P16049779561966336825

/-! ## A128651.P10516189246272641038

`A261969(∏{d}[A284318(n+1), #])`
-/

namespace A128651.P10516189246272641038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A128651.P10516189246272641038

/-! ## A128651.P13238323138211642929

`A261969(A284318(n+1)^A071773(n+4))`
-/

namespace A128651.P13238323138211642929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (SequenceMachineLib.roundAway ((A284318 (n + 1) : ℚ) ^ (A071773 (n + 4) : ℤ))).toNat

end

end A128651.P13238323138211642929

/-! ## A128651.P5038692636174695816

`A261969(A284318(n+1)^3)`
-/

namespace A128651.P5038692636174695816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (A284318 (n + 1) ^ 3).toNat

end

end A128651.P5038692636174695816

/-!
# A128652: Number of square permutations of length n.

The programs for A128652, there is no canonical definition to state claims against.
-/

/-! ## A128652.P14988988400871320866

`A005436(n+2)-A002620(A011782(n))`
-/

namespace A128652.P14988988400871320866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005436 (n + 2) - A002620 (A011782 n).toNat

end

end A128652.P14988988400871320866

/-! ## A128652.P17596918498915117069

`A005436(n+2)-A002620(A131577(n))`
-/

namespace A128652.P17596918498915117069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005436 (n + 2) - A002620 (A131577 n).toNat

end

end A128652.P17596918498915117069

/-! ## A128652.P3614081323027527969

`A065033(A216318(n)+A151023(n))`
-/

namespace A128652.P3614081323027527969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A216318 n + A151023 n).toNat

end

end A128652.P3614081323027527969

/-!
# A128653: Primes occurring in A084704 exactly twice.

The programs for A128653, there is no canonical definition to state claims against.
-/

/-! ## A128653.P678701735478862627

`A369863(A102139(n+1)-A022818(n+1))`
-/

namespace A128653.P678701735478862627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369863 (A102139 (n + 1) - A022818 (n + 1)).toNat

end

end A128653.P678701735478862627

/-!
# A128656: Number of polygons on n vertices with four faces such that the source of the polygon lies on exactly two faces.

The programs for A128656, there is no canonical definition to state claims against.
-/

/-! ## A128656.P37525054751361577

`A128652(n+3)-A128650(n+3)`
-/

namespace A128656.P37525054751361577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128652 (n + 3) - A128650 (n + 3)

end

end A128656.P37525054751361577

/-!
# A128658: Numbers k such that p(k+1)# - p(k)# + 1 is prime where p(i)# = product of first i primes = A002110(i).

The programs for A128658, there is no canonical definition to state claims against.
-/

/-! ## A128658.P14375290686668960842

`A245898(comp[3*n])+ceil(4*n/3)`
-/

namespace A128658.P14375290686668960842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ⌈4 * ((n : ℚ) / 3)⌉

end

end A128658.P14375290686668960842

/-! ## A128658.P16615639916505862251

`A392635(A069153(n+2))`
-/

namespace A128658.P16615639916505862251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392635 (A069153 (n + 2)).toNat

end

end A128658.P16615639916505862251

/-!
# A128664: Rounded first term of asymptotic approximation to A003823.

The programs for A128664, there is no canonical definition to state claims against.
-/

/-! ## A128664.P14667113340614428386

`A003823(xor(n, A010054((n+1)*∑[n+1])))`
-/

namespace A128664.P14667113340614428386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 (Int.xor (n : ℤ) (A010054 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)))).toNat

end

end A128664.P14667113340614428386

/-! ## A128664.P10929343245538148388

`A003823(n)-A299334(A137795(n+1))`
-/

namespace A128664.P10929343245538148388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 n - A299334 (A137795 (n + 1)).toNat

end

end A128664.P10929343245538148388

/-! ## A128664.P12146017584571032615

`A003823(n)-A189668(A006530(A087727(n)))`
-/

namespace A128664.P12146017584571032615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003823 n - A189668 (A006530 (A087727 n).toNat).toNat

end

end A128664.P12146017584571032615

/-!
# A128665: Least n-almost prime of the form semiprime + 1.

The programs for A128665, there is no canonical definition to state claims against.
-/

/-! ## A128665.P15562816579717927641

`A000005(∏{p}[n+1, #]*A208685(n+1))`
-/

namespace A128665.P15562816579717927641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A208685 (n + 1)).toNat

end

end A128665.P15562816579717927641

/-!
# A128671: Least number k > 0 such that k^p does not divide the denominator of generalized harmonic number H(k,p) nor the denominator of alternating generalized harmonic number H'(k,p), where p = prime(n).

The programs for A128671, there is no canonical definition to state claims against.
-/

/-! ## A128671.P16513121590417093681

`A128670(A000040(n+1))`
-/

namespace A128671.P16513121590417093681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128670 (A000040 (n + 1)).toNat

end

end A128671.P16513121590417093681

/-! ## A128671.P15160198185664616008

`A128670(p?[record[∏{p}[n, #]]])`
-/

namespace A128671.P15160198185664616008
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A128671.P15160198185664616008

/-! ## A128671.P6701568814063505750

`A128670(eq[2, 2^∑{e}[n+1, #]]+1)`
-/

namespace A128671.P6701568814063505750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128670 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A128671.P6701568814063505750

/-! ## A128671.P4130049187823782166

`A128670(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A128671.P4130049187823782166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128670 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A128671.P4130049187823782166

/-! ## A128671.P12224096802235023265

`A128670(A390240(n))`
-/

namespace A128671.P12224096802235023265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128670 (A390240 n).toNat

end

end A128671.P12224096802235023265

/-!
# A128672: Numbers m such that m^k does not divide the denominator of the m-th generalized harmonic number H(m,k) nor the denominator of the m-th alternating generalized harmonic number H'(m,k), for k = 2.

The programs for A128672, there is no canonical definition to state claims against.
-/

/-! ## A128672.P11021508840956313975

`∩[A035166(n+1), A347190(n+1)]`
-/

namespace A128672.P11021508840956313975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128672.P11021508840956313975

/-! ## A128672.P5327954162356008310

`∩[A342256(n+1), A347190(n+1)]`
-/

namespace A128672.P5327954162356008310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128672.P5327954162356008310

/-!
# A128674: Numbers m such that m^k does not divide the denominator of the m-th generalized harmonic number H(m,k) nor the denominator of the m-th alternating generalized harmonic number H'(m,k), for k = 4.

The programs for A128674, there is no canonical definition to state claims against.
-/

/-! ## A128674.P15104248208340641197

`A128672(lt[A096143(3*(n+2)), A307419(3*n+1)])`
-/

namespace A128674.P15104248208340641197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096143 (3 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307419 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128672 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A128674.P15104248208340641197

/-! ## A128674.P294197285945744709

`A093819(A374290(n+2))`
-/

namespace A128674.P294197285945744709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (A374290 (n + 2)).toNat

end

end A128674.P294197285945744709

/-! ## A128674.P10351723409048041893

`record[A002322(A339842(n+4))]`
-/

namespace A128674.P10351723409048041893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A339842 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128674.P10351723409048041893

/-!
# A128678: Numbers k such that k^3 divides 4^(k^2) + 1.

The programs for A128678, there is no canonical definition to state claims against.
-/

/-! ## A128678.P9294682755002209591

`record[∏{p}[A015950(A175342(n+1)), #]]`
-/

namespace A128678.P9294682755002209591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015950 (A175342 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128678.P9294682755002209591

/-!
# A128679: Numbers k such that k^3 divides 5^(k^2) + 1.

The programs for A128679, there is no canonical definition to state claims against.
-/

/-! ## A128679.P17325194602928667123

`A292331(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A128679.P17325194602928667123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292331 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A128679.P17325194602928667123

/-! ## A128679.P14030200923985385149

`A000026(A292331(n+1))`
-/

namespace A128679.P14030200923985385149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A292331 (n + 1)).toNat

end

end A128679.P14030200923985385149

/-! ## A128679.P14117343920933160569

`A292331(A037334(n+1))`
-/

namespace A128679.P14117343920933160569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292331 (A037334 (n + 1)).toNat

end

end A128679.P14117343920933160569

/-!
# A128680: Numbers k such that k^3 divides 6^(k^2) + 1.

The programs for A128680, there is no canonical definition to state claims against.
-/

/-! ## A128680.P16729275669696370924

`record[∏{p}[A015953(n+1), #]]`
-/

namespace A128680.P16729275669696370924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015953 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128680.P16729275669696370924

/-!
# A128681: Numbers k such that k^3 divides 8^(k^2) + 1.

The programs for A128681, there is no canonical definition to state claims against.
-/

/-! ## A128681.P11270017818727616658

`filter[A093665(n+1), A371087(#)]`
-/

namespace A128681.P11270017818727616658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A128681.P11270017818727616658

/-! ## A128681.P12499653030030330679

`record[A019554(A015955(n+1))]`
-/

namespace A128681.P12499653030030330679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A015955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128681.P12499653030030330679

/-!
# A128683: Numbers k such that k^3 divides 10^(k^2) + 1.

The programs for A128683, there is no canonical definition to state claims against.
-/

/-! ## A128683.P2643851582251148255

`A292335(A100793(n))`
-/

namespace A128683.P2643851582251148255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292335 (A100793 n).toNat

end

end A128683.P2643851582251148255

/-! ## A128683.P7215097907966214370

`A292335(∑[A293588(n)])`
-/

namespace A128683.P7215097907966214370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292335 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A128683.P7215097907966214370

/-!
# A128686: Least number of the form semiprime - 1 which is the product of exactly n primes.

The programs for A128686, there is no canonical definition to state claims against.
-/

/-! ## A128686.P9346142628170745943

`A355467(2*a(n-2))` with `a(0)=3, a(1)=9`
-/

namespace A128686.P9346142628170745943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  A355467 (2 * a (n - 2)).toNat

end

end A128686.P9346142628170745943

/-! ## A128686.P8503382625899334957

`A115060(A081547(n+1))-1`
-/

namespace A128686.P8503382625899334957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A081547 (n + 1)).toNat - 1

end

end A128686.P8503382625899334957

/-! ## A128686.P14046378147055477962

`A158821(C(A081547(n+1), 2))`
-/

namespace A128686.P14046378147055477962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 (Nat.choose (A081547 (n + 1)).toNat 2)

end

end A128686.P14046378147055477962

/-!
# A128687: Smallest odd nonprime such that every subset of a(1), ..., a(n) adds to a nonprime.

The programs for A128687, there is no canonical definition to state claims against.
-/

/-! ## A128687.P12711225669070517321

`A359408(A072279(n))`
-/

namespace A128687.P12711225669070517321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359408 (A072279 n).toNat

end

end A128687.P12711225669070517321

/-!
# A128689: Numbers k such that A000118(k) is a record.

The programs for A128689, there is no canonical definition to state claims against.
-/

/-! ## A128689.P16306453745418842201

`lt[A109389(A236926(n+1)), A000040(n+1)]`
-/

namespace A128689.P16306453745418842201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (A236926 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128689.P16306453745418842201

/-! ## A128689.P14253267273336571163

`lt[A109389(A236926(n+1)), A186285(n+1)]`
-/

namespace A128689.P14253267273336571163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (A236926 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128689.P14253267273336571163

/-! ## A128689.P641421933550595633

`lt[A182182(n), A177002(n)²]`
-/

namespace A128689.P641421933550595633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177002 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A128689.P641421933550595633

/-!
# A128690: Records in A000118.

The programs for A128690, there is no canonical definition to state claims against.
-/

/-! ## A128690.P14558433167470881121

`A000118(A128689(n+1))`
-/

namespace A128690.P14558433167470881121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A128689 (n + 1)).toNat

end

end A128690.P14558433167470881121

/-! ## A128690.P8108195918997579049

`record[A000118(n)]`
-/

namespace A128690.P8108195918997579049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P8108195918997579049

/-! ## A128690.P5220497422038078205

`record[abs(A096727(n))]`
-/

namespace A128690.P5220497422038078205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096727 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P5220497422038078205

/-! ## A128690.P7258798255119101721

`record[A004011(n)/3^and(1, n)]`
-/

namespace A128690.P7258798255119101721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (3 ^ Nat.land 1 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P7258798255119101721

/-! ## A128690.P8964260590589358335

`record[A033999(n)*A096727(n)]`
-/

namespace A128690.P8964260590589358335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A096727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P8964260590589358335

/-! ## A128690.P3458513758433969470

`record[A068073(n)*A097057(n)]`
-/

namespace A128690.P3458513758433969470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n * A097057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P3458513758433969470

/-! ## A128690.P15523671645259935906

`record[A004011(n)/A010684(n)]`
-/

namespace A128690.P15523671645259935906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004011 n : ℚ) / (A010684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P15523671645259935906

/-! ## A128690.P14976286295310348280

`record[abs(A133690(n))*A068073(n)]`
-/

namespace A128690.P14976286295310348280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133690 n| * A068073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P14976286295310348280

/-! ## A128690.P9253763539188828084

`record[A033999(n)*A133690(n)*A068073(n)]`
-/

namespace A128690.P9253763539188828084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A133690 n * A068073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P9253763539188828084

/-! ## A128690.P15943789508172182906

`record[A133690(n)]`
-/

namespace A128690.P15943789508172182906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A128690.P15943789508172182906

/-!
# A128692: Expansion of (theta_4(q) / theta_3(q))^4 in powers of q.

The programs for A128692, there is no canonical definition to state claims against.
-/

/-! ## A128692.P8376199802439864447

`A014972(n)*A033999(n)`
-/

namespace A128692.P8376199802439864447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014972 n * A033999 n

end

end A128692.P8376199802439864447

/-! ## A128692.P6251529589219345425

`A097243(n)/A280560(n)`
-/

namespace A128692.P6251529589219345425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097243 n : ℚ) / (A280560 n : ℚ)

end

end A128692.P6251529589219345425

/-! ## A128692.P17052292582669629166

`A033999(n)*A131126(2*n)`
-/

namespace A128692.P17052292582669629166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131126 (2 * n)

end

end A128692.P17052292582669629166

/-! ## A128692.P12378244477005188860

`A014969(2*n)/A280560(n)`
-/

namespace A128692.P12378244477005188860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 (2 * n) : ℚ) / (A280560 n : ℚ)

end

end A128692.P12378244477005188860

/-! ## A128692.P6542946431289667132

`(A004442(n)-n)*A014972(n)`
-/

namespace A128692.P6542946431289667132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A014972 n

end

end A128692.P6542946431289667132

/-! ## A128692.P14487979674694341463

`A014972(n)/(n+1-A004442(n+1))`
-/

namespace A128692.P14487979674694341463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014972 n : ℚ) / ((n + 1 : ℤ) - A004442 (n + 1) : ℚ)

end

end A128692.P14487979674694341463

/-! ## A128692.P15485036852642846866

`(1-6/2)/A280560(n+1)*A131126(2*n)`
-/

namespace A128692.P15485036852642846866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ) * (A131126 (2 * n) : ℚ)

end

end A128692.P15485036852642846866

/-! ## A128692.P5274965913771334190

`A097243(n)/A139820(n)*A131126(n)`
-/

namespace A128692.P5274965913771334190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097243 n : ℚ) / (A139820 n : ℚ) * (A131126 n : ℚ)

end

end A128692.P5274965913771334190

/-! ## A128692.P2969766126334693506

`A005798(n+1)/A092877(n+1)*A014972(n)`
-/

namespace A128692.P2969766126334693506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005798 (n + 1) : ℚ) / (A092877 (n + 1) : ℚ) * (A014972 n : ℚ)

end

end A128692.P2969766126334693506

/-! ## A128692.P4972853743224734105

`A014972(n+1)/A115977(n+1)*A014972(n)`
-/

namespace A128692.P4972853743224734105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014972 (n + 1) : ℚ) / (A115977 (n + 1) : ℚ) * (A014972 n : ℚ)

end

end A128692.P4972853743224734105

/-! ## A128692.P18118024722837034989

`A112128(3*n)/A007096(3*n)*A007096(4*n)`
-/

namespace A128692.P18118024722837034989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112128 (3 * n) : ℚ) / (A007096 (3 * n) : ℚ) * (A007096 (4 * n) : ℚ)

end

end A128692.P18118024722837034989

/-! ## A128692.P2596522839600444758

`A131126(2*n)*A280560(2*n+1)/A280560(n+1)`
-/

namespace A128692.P2596522839600444758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131126 (2 * n) * A280560 (2 * n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A128692.P2596522839600444758

/-! ## A128692.P17735017586285432130

`A033999(n)*A210066(2*n)`
-/

namespace A128692.P17735017586285432130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A210066 (2 * n)

end

end A128692.P17735017586285432130

/-! ## A128692.P16654954011568376837

`(1-6/2)/A280560(n+1)*A210066(2*n)`
-/

namespace A128692.P16654954011568376837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (6 : ℚ) / 2) / (A280560 (n + 1) : ℚ) * (A210066 (2 * n) : ℚ)

end

end A128692.P16654954011568376837

/-! ## A128692.P8195162129032460794

`A210066(2*n)*A280560(2*n+1)/A280560(n+1)`
-/

namespace A128692.P8195162129032460794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210066 (2 * n) * A280560 (2 * n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A128692.P8195162129032460794

/-! ## A128692.P12004534500827620310

`A139820(2*n)/A280560(n)`
-/

namespace A128692.P12004534500827620310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139820 (2 * n) : ℚ) / (A280560 n : ℚ)

end

end A128692.P12004534500827620310

/-! ## A128692.P10046784635386346047

`A014969(2*n)/A014969(3*n)*A210066(3*n)`
-/

namespace A128692.P10046784635386346047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014969 (2 * n) : ℚ) / (A014969 (3 * n) : ℚ) * (A210066 (3 * n) : ℚ)

end

end A128692.P10046784635386346047

/-! ## A128692.P6425586967949959088

`A001936(3*n)/A079006(3*n)*A208933(4*n)`
-/

namespace A128692.P6425586967949959088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 (3 * n) : ℚ) / (A079006 (3 * n) : ℚ) * (A208933 (4 * n) : ℚ)

end

end A128692.P6425586967949959088

/-!
# A128693: Numbers of the form 3^k*p, where 1 <= k <= 6 and p is a prime different from 3.

The programs for A128693, the canonical program `A128693.P540367086758786083` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A128693 has offset 1).

The definition of A128693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A128693.P9132669701250661914

`eq[A050320(A008486(n)), A321090(n)]`
-/

namespace A128693.P9132669701250661914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128693.P9132669701250661914

namespace A128693

/-- `eq[A050320(A008486(n)), A321090(n)]` -/
def P9132669701250661914.Spec : Prop :=
  ∀ n, (P9132669701250661914.a n : ℤ) = A128693 (n + 1)

end A128693

/-! ## A128693.P540367086758786083

`∩[A106843(n+1), A231877(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A128693

/-- `∩[A106843(n+1), A231877(n+1)]` -/
def P540367086758786083.Spec : Prop :=
  ∀ n, (P540367086758786083.a n : ℤ) = A128693 (n + 1)

theorem P540367086758786083.correct : P540367086758786083.Spec := by
  intro n
  simp only [A128693, Nat.add_sub_cancel]

end A128693

/-! ## A128693.P3789921974837622671

`3*eq[1, A069283(A234747(n))]`
-/

namespace A128693.P3789921974837622671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A234747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A128693.P3789921974837622671

namespace A128693

/-- `3*eq[1, A069283(A234747(n))]` -/
def P3789921974837622671.Spec : Prop :=
  ∀ n, (P3789921974837622671.a n : ℤ) = A128693 (n + 1)

end A128693

/-! ## A128693.P6736235955873845663

`∩[A106843(n+1), A324455(n+1)]`
-/

namespace A128693.P6736235955873845663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A128693.P6736235955873845663

namespace A128693

/-- `∩[A106843(n+1), A324455(n+1)]` -/
def P6736235955873845663.Spec : Prop :=
  ∀ n, (P6736235955873845663.a n : ℤ) = A128693 (n + 1)

end A128693

/-! ## A128693.P5133839337613684884

`eq[A049347(n), A069283(A234747(n))]`
-/

namespace A128693.P5133839337613684884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A234747 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128693.P5133839337613684884

namespace A128693

/-- `eq[A049347(n), A069283(A234747(n))]` -/
def P5133839337613684884.Spec : Prop :=
  ∀ n, (P5133839337613684884.a n : ℤ) = A128693 (n + 1)

end A128693

/-! ## A128693.P17861505016602900626

`eq[A069283(A234747(n))², A130784(n)]`
-/

namespace A128693.P17861505016602900626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A234747 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A128693.P17861505016602900626

namespace A128693

/-- `eq[A069283(A234747(n))², A130784(n)]` -/
def P17861505016602900626.Spec : Prop :=
  ∀ n, (P17861505016602900626.a n : ℤ) = A128693 (n + 1)

end A128693

/-!
# A128694: Number of groups of order A128693(n).

The programs for A128694, there is no canonical definition to state claims against.
-/

/-! ## A128694.P12320457082328513603

`A000001(A128693(n+1))`
-/

namespace A128694.P12320457082328513603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A128693 (n + 1)).toNat

end

end A128694.P12320457082328513603

/-! ## A128694.P14035731541422384986

`A063756(A128693(n+1))-A063756(A128693(n+1)-1)`
-/

namespace A128694.P14035731541422384986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063756 (A128693 (n + 1)).toNat - A063756 (A128693 (n + 1) - 1).toNat

end

end A128694.P14035731541422384986

/-! ## A128694.P2887891019649282254

`A000001(∩[A106843(n+1), A231877(n+1)])`
-/

namespace A128694.P2887891019649282254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231877 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A128694.P2887891019649282254

/-! ## A128694.P5395921214967339821

`A201733(lcm(3, A128693(n+1)))`
-/

namespace A128694.P5395921214967339821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.lcm 3 (A128693 (n + 1)))

end

end A128694.P5395921214967339821

/-! ## A128694.P8031742505484985431

`A201733(root(A128693(n+1), 2)²)`
-/

namespace A128694.P8031742505484985431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.roundAway (((A128693 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A128694.P8031742505484985431

/-! ## A128694.P18053470588063356475

`A201733(A128693(n+1)-A000038(n))`
-/

namespace A128694.P18053470588063356475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A128693 (n + 1) - A000038 n).toNat

end

end A128694.P18053470588063356475

/-! ## A128694.P3355767256698464625

`A201733(A128693(n+1))%A017137(n)`
-/

namespace A128694.P3355767256698464625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201733 (A128693 (n + 1)).toNat) (A017137 n)

end

end A128694.P3355767256698464625

/-! ## A128694.P4296284261376783269

`A201733(A128693(n+1)%A002476(n+1))`
-/

namespace A128694.P4296284261376783269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (Int.tmod (A128693 (n + 1)) (A002476 (n + 1))).toNat

end

end A128694.P4296284261376783269

/-! ## A128694.P16372144991976642336

`A007318(A033685(n))*A201733(A128693(n+1))`
-/

namespace A128694.P16372144991976642336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A033685 n).toNat * A201733 (A128693 (n + 1)).toNat

end

end A128694.P16372144991976642336

/-!
# A128695: Number of compositions of n with parts in N which avoid the adjacent pattern 111.

The programs for A128695, there is no canonical definition to state claims against.
-/

/-! ## A128695.P7316251318107674990

`A232435(A022856(n+2))`
-/

namespace A128695.P7316251318107674990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232435 (A022856 (n + 2)).toNat

end

end A128695.P7316251318107674990

/-! ## A128695.P15308572519582277608

`A232435(A000124(n)-A004275(n))`
-/

namespace A128695.P15308572519582277608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232435 (A000124 n - A004275 n).toNat

end

end A128695.P15308572519582277608

/-! ## A128695.P12787316658362531204

`A232435(A014206(n)%A046691(n))`
-/

namespace A128695.P12787316658362531204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232435 (Int.tmod (A014206 n) (A046691 n)).toNat

end

end A128695.P12787316658362531204

/-! ## A128695.P12820359803425566846

`A232435(A238531(n)-A289207(n+1))`
-/

namespace A128695.P12820359803425566846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232435 (A238531 n - A289207 (n + 1)).toNat

end

end A128695.P12820359803425566846

/-! ## A128695.P8684659456337507120

`A232435(A152947(n+2)-A004275(n))`
-/

namespace A128695.P8684659456337507120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232435 (A152947 (n + 2) - A004275 n).toNat

end

end A128695.P8684659456337507120

/-! ## A128695.P6948828488441354838

`A232435(A238531(n)-1-A289207(n))`
-/

namespace A128695.P6948828488441354838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232435 (A238531 n - 1 - A289207 n).toNat

end

end A128695.P6948828488441354838

/-!
# A128696: Alternating sum of the seventh powers of the first n Fibonacci numbers.

The programs for A128696, there is no canonical definition to state claims against.
-/

/-! ## A128696.P7294521553684320738

`∑[(-1)^n*A056574(n)]`
-/

namespace A128696.P7294521553684320738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A056574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128696.P7294521553684320738

/-! ## A128696.P175304213256438481

`∑[Δ[A051792(2*(n+1))]^7]`
-/

namespace A128696.P175304213256438481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128696.P175304213256438481

/-! ## A128696.P10211386134610999693

`∑[((-1)^n*A000045(n))^7]`
-/

namespace A128696.P10211386134610999693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A000045 n) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128696.P10211386134610999693

/-! ## A128696.P17283328049509756416

`∑[(A001611(n)-1)^7*A057077(2*n)]`
-/

namespace A128696.P17283328049509756416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) ^ 7 * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128696.P17283328049509756416

/-!
# A128697: Sum of the eighth powers of the first n Fibonacci numbers.

The programs for A128697, there is no canonical definition to state claims against.
-/

/-! ## A128697.P17028110930397122610

`∑[round(ϕ^n/sqrt(5))^8]`
-/

namespace A128697.P17028110930397122610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128697.P17028110930397122610

/-! ## A128697.P17802218809461057777

`A056585(n)+a(n-1)` with `a(0)=0`
-/

namespace A128697.P17802218809461057777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A056585 n + a (n - 1)

end

end A128697.P17802218809461057777

/-! ## A128697.P10362173241450521138

`A063524(n+4)+∑[A056585(n)]`
-/

namespace A128697.P10362173241450521138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128697.P10362173241450521138

/-! ## A128697.P10592575018180655283

`A007318(C(2, n))*∑[A056585(n)]`
-/

namespace A128697.P10592575018180655283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A128697.P10592575018180655283

/-! ## A128697.P9047031391792538375

`∑[A056585(n+1)]-A056585(n+1)`
-/

namespace A128697.P9047031391792538375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056585 (n + 1)

end

end A128697.P9047031391792538375

/-!
# A128698: Alternating sum of the eighth powers of the first n Fibonacci numbers.

The programs for A128698, there is no canonical definition to state claims against.
-/

/-! ## A128698.P5214910171219702016

`∑[A000045(n)^8/(-1)^n]`
-/

namespace A128698.P5214910171219702016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n ^ 8 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128698.P5214910171219702016

/-! ## A128698.P4229793588820322492

`∑[A033999(n)*A056585(n)]`
-/

namespace A128698.P4229793588820322492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A056585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128698.P4229793588820322492

/-! ## A128698.P11099661309407953404

`∑[A056571(n)²*A033999(n)]`
-/

namespace A128698.P11099661309407953404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056571 n ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128698.P11099661309407953404

/-! ## A128698.P9294306866975878982

`∑[A056585(n)*A105812(n+1)]`
-/

namespace A128698.P9294306866975878982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056585 n * A105812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128698.P9294306866975878982

/-! ## A128698.P11107307990197895587

`∑[A000045(n)^8*A033999(n)]`
-/

namespace A128698.P11107307990197895587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 8 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128698.P11107307990197895587

/-! ## A128698.P17102391889349815561

`∑[A007598(n)²²*A033999(n)]`
-/

namespace A128698.P17102391889349815561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007598 n ^ 2) ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128698.P17102391889349815561

/-! ## A128698.P8836050193587247460

`∑[A000045(n)^8*A009001(2*n)]`
-/

namespace A128698.P8836050193587247460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 8 * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A128698.P8836050193587247460

