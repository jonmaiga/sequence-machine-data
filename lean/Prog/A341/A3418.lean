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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A341800: Irregular table read by rows: Take a 2 by 1 ellipse with all diagonals drawn, as in A341688. Then T(n,k) = number of k-sided polygons in the figure containing 2n vertices, for k >= 3.

The programs for A341800, there is no canonical definition to state claims against.
-/

/-! ## A341800.P12689597364575839147

`A342153(∑[A287022(n)])`
-/

namespace A341800.P12689597364575839147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342153 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341800.P12689597364575839147

/-! ## A341800.P5233630074027900259

`A342153(A024655(n+1))`
-/

namespace A341800.P5233630074027900259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342153 (A024655 (n + 1)).toNat

end

end A341800.P5233630074027900259

/-! ## A341800.P3770148276932821700

`A342153(A024656(n+1))`
-/

namespace A341800.P3770148276932821700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342153 (A024656 (n + 1)).toNat

end

end A341800.P3770148276932821700

/-! ## A341800.P7830404663939926629

`A342153(A028430(n+1))`
-/

namespace A341800.P7830404663939926629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342153 (A028430 (n + 1)).toNat

end

end A341800.P7830404663939926629

/-!
# A341803: a(n) is the least k such that A076620(k) = n.

The programs for A341803, there is no canonical definition to state claims against.
-/

/-! ## A341803.P5513986446296799986

`A309237(n+1)-A157928(n)`
-/

namespace A341803.P5513986446296799986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309237 (n + 1) - A157928 n

end

end A341803.P5513986446296799986

/-! ## A341803.P13916156952202407452

`A309237(n+1)-A076620(A076634(n+1))`
-/

namespace A341803.P13916156952202407452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309237 (n + 1) - A076620 (A076634 (n + 1)).toNat

end

end A341803.P13916156952202407452

/-! ## A341803.P17413816690283976088

`A309237(n+1)-A000523(A000523(n+2))`
-/

namespace A341803.P17413816690283976088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309237 (n + 1) - A000523 (A000523 (n + 2)).toNat

end

end A341803.P17413816690283976088

/-! ## A341803.P16608599215505984651

`A309237(n+1)-A006141(A000720(n+5))`
-/

namespace A341803.P16608599215505984651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309237 (n + 1) - A006141 (A000720 (n + 5)).toNat

end

end A341803.P16608599215505984651

/-!
# A341806: Number of ways to write n as an ordered sum of 7 nonzero tetrahedral numbers.

The programs for A341806, there is no canonical definition to state claims against.
-/

/-! ## A341806.P13180308058422149481

`A010060(A301462(n))*A341484(n+7)`
-/

namespace A341806.P13180308058422149481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A301462 n).toNat * A341484 (n + 7)

end

end A341806.P13180308058422149481

/-! ## A341806.P9343027082031697143

`lcm(A050370(A290816(n+3)), A341484(n+7))`
-/

namespace A341806.P9343027082031697143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A050370 (A290816 (n + 3)).toNat) (A341484 (n + 7))

end

end A341806.P9343027082031697143

/-! ## A341806.P659059474318883306

`C(A341484(n+7), A324638(A106619(n+3)))`
-/

namespace A341806.P659059474318883306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341484 (n + 7)).toNat (A324638 (A106619 (n + 3)).toNat).toNat

end

end A341806.P659059474318883306

/-! ## A341806.P457702010144324720

`C(A341484(n+7), A343431(A007864(2*(n+1))))`
-/

namespace A341806.P457702010144324720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341484 (n + 7)).toNat (A343431 (A007864 (2 * (n + 1))).toNat).toNat

end

end A341806.P457702010144324720

/-! ## A341806.P14289453853213671163

`C(A341484(n+7), A095688(A109128(2*n+3)))`
-/

namespace A341806.P14289453853213671163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341484 (n + 7)).toNat (A095688 (A109128 (2 * n + 3)).toNat).toNat

end

end A341806.P14289453853213671163

/-!
# A341807: Number of ways to write n as an ordered sum of 8 nonzero tetrahedral numbers.

The programs for A341807, there is no canonical definition to state claims against.
-/

/-! ## A341807.P11627995944134076426

`A007331(A060144(n)+1)*A025455(A000051(n))`
-/

namespace A341807.P11627995944134076426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (A060144 n + 1).toNat * A025455 (A000051 n).toNat

end

end A341807.P11627995944134076426

/-! ## A341807.P5517017229450611300

`and(A337856(n+5), A341485(n+8))`
-/

namespace A341807.P5517017229450611300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337856 (n + 5)) (A341485 (n + 8))

end

end A341807.P5517017229450611300

/-! ## A341807.P1376964897509952911

`A000005(A017942(n))*A025854(n)`
-/

namespace A341807.P1376964897509952911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017942 n).toNat * A025854 n

end

end A341807.P1376964897509952911

/-! ## A341807.P360090655893256642

`A007212(n+1)*A048272(A005592(n))`
-/

namespace A341807.P360090655893256642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007212 (n + 1) * A048272 (A005592 n).toNat

end

end A341807.P360090655893256642

/-! ## A341807.P464242423761433795

`A000035(A110391(n))*A341485(n+8)`
-/

namespace A341807.P464242423761433795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A110391 n).toNat * A341485 (n + 8)

end

end A341807.P464242423761433795

/-!
# A341808: Number of ways to write n as an ordered sum of 9 nonzero tetrahedral numbers.

The programs for A341808, there is no canonical definition to state claims against.
-/

/-! ## A341808.P2393813908510983062

`A138885(A158804(n+3))*A341486(n+9)`
-/

namespace A341808.P2393813908510983062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138885 (A158804 (n + 3)).toNat * A341486 (n + 9)

end

end A341808.P2393813908510983062

/-! ## A341808.P10282499684195936339

`A341486(n+9)%A317073(A144925(3*n+2))`
-/

namespace A341808.P10282499684195936339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341486 (n + 9)) (A317073 (A144925 (3 * n + 2)).toNat)

end

end A341808.P10282499684195936339

/-! ## A341808.P3032763579914969910

`C(A341486(n+9), A049106(A008292(2*(n+2))))`
-/

namespace A341808.P3032763579914969910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341486 (n + 9)).toNat (A049106 (A008292 (2 * (n + 2))).toNat).toNat

end

end A341808.P3032763579914969910

/-! ## A341808.P12986544736106979176

`lcm(A108731(A289697(3*n+4)), A341486(n+9))`
-/

namespace A341808.P12986544736106979176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108731 (A289697 (3 * n + 4)).toNat) (A341486 (n + 9))

end

end A341808.P12986544736106979176

/-!
# A341809: Number of ways to write n as an ordered sum of 10 nonzero tetrahedral numbers.

The programs for A341809, there is no canonical definition to state claims against.
-/

/-! ## A341809.P5017165780446924096

`and(A341504(n), A341512(A341533(2*n+5)))`
-/

namespace A341809.P5017165780446924096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A341504 (n + 10)) (A341512 (A341533 (2 * n + 5)).toNat)

end

end A341809.P5017165780446924096

/-!
# A341811: a(n) = 1/(Sum_{k=1..n} 1/phi(A341810(n)*k)).

The programs for A341811, there is no canonical definition to state claims against.
-/

/-! ## A341811.P15158548325838063152

`1/∑{#}[n, 1/A000010(A341810(n+1)*(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341811.P15158548325838063152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (∑ k ∈ Finset.range (f1 n + 1), 1 / (A000010 (A341810 (n + 1) * (k + 1 : ℤ)).toNat : ℚ))

end

end A341811.P15158548325838063152

/-!
# A341814: a(n) = n/(Sum_{k=1..n} 1/phi(A341813(n)*k)).

The programs for A341814, there is no canonical definition to state claims against.
-/

/-! ## A341814.P14915642797887876680

`(n+1)/∑{#}[n, 1/A000010(A341813(n+1)*(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341814.P14915642797887876680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∑ k ∈ Finset.range (f1 n + 1), 1 / (A000010 (A341813 (n + 1) * (k + 1 : ℤ)).toNat : ℚ))

end

end A341814.P14915642797887876680

/-!
# A341815: a(n) = Sum_{k=0..n} binomial(n,k)^3 * k^n.

The programs for A341815, the canonical program `A341815.P548812027038600720` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341815 has offset 0).

The definition of A341815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^3*#^n]` (program `A341815.P548812027038600720`, by `A341815.P548812027038600720.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341815.P548812027038600720

`∑{#}[n, C(n, #)^3*#^n]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341815

/-- `∑{#}[n, C(n, #)^3*#^n]` -/
def P548812027038600720.Spec : Prop :=
  ∀ n, (P548812027038600720.a n : ℤ) = A341815 n

theorem P548812027038600720.correct : P548812027038600720.Spec := by
  intro n
  simp only [A341815]

end A341815

/-! ## A341815.P1052051052129077467

`A000312(n)*A003056(A084096(n))`
-/

namespace A341815.P1052051052129077467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A003056 (A084096 n).toNat

end

end A341815.P1052051052129077467

namespace A341815

/-- `A000312(n)*A003056(A084096(n))` -/
def P1052051052129077467.Spec : Prop :=
  ∀ n, P1052051052129077467.a n = A341815 n

end A341815

/-!
# A341817: If a(n) is odd, add to a(n) its odd digits and iterate; if a(n) is even, add to a(n) its even digits and iterate; if an iteration reproduces a term already in the sequence, don't do this iteration and extend the sequence with the smallest integer not yet present in the sequence.

The programs for A341817, there is no canonical definition to state claims against.
-/

/-! ## A341817.P7706144846428324454

`eq[A183063(n+1), A261836(A255517(n))]`
-/

namespace A341817.P7706144846428324454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (A255517 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341817.P7706144846428324454

/-! ## A341817.P16827391407732688864

`∑[dr(A129143(A148196(n)))]`
-/

namespace A341817.P16827391407732688864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A129143 (A148196 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341817.P16827391407732688864

/-! ## A341817.P322948826136664105

`eq[A344612(A255517(n)), A353461(3*n+4)]`
-/

namespace A341817.P322948826136664105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A255517 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341817.P322948826136664105

/-!
# A341819: Lexicographically earliest sequence of distinct terms > 0 such that the n-th digit of the sequence is present in the absolute difference |a(n) - a(n+1)|.

The programs for A341819, there is no canonical definition to state claims against.
-/

/-! ## A341819.P11775529089065586929

`A352387(n+1)%A097624(A097624(3*n+2))`
-/

namespace A341819.P11775529089065586929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352387 (n + 1)) (A097624 (A097624 (3 * n + 2)).toNat)

end

end A341819.P11775529089065586929

/-!
# A341822: Length of the longest 2-increasing sequence of positive integer triples with entries <= n.

The programs for A341822, there is no canonical definition to state claims against.
-/

/-! ## A341822.P6554983060526948932

`floor(A004118(n+1)/8)`
-/

namespace A341822.P6554983060526948932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004118 (n + 1) : ℚ) / 8⌋

end

end A341822.P6554983060526948932

/-! ## A341822.P8300362977734466915

`A154115(n+1)+A116449(n)`
-/

namespace A341822.P8300362977734466915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 1) + A116449 n

end

end A341822.P8300362977734466915

/-! ## A341822.P10948664187668758656

`A241089(n)+A129259(n+1)`
-/

namespace A341822.P10948664187668758656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241089 n + A129259 (n + 1)

end

end A341822.P10948664187668758656

/-! ## A341822.P4684871759070536436

`A084515(n)+A059780(n+2)`
-/

namespace A341822.P4684871759070536436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084515 n + A059780 (n + 2)

end

end A341822.P4684871759070536436

/-! ## A341822.P15699481266381402055

`A084525(n)+A059780(n+2)`
-/

namespace A341822.P15699481266381402055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084525 n + A059780 (n + 2)

end

end A341822.P15699481266381402055

/-!
# A341827: a(n) is the distance from n to its more distant neighboring prime.

The programs for A341827, there is no canonical definition to state claims against.
-/

/-! ## A341827.P9392920236807201135

`A013633(n+3)-A051700(n+3)`
-/

namespace A341827.P9392920236807201135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (n + 3) - A051700 (n + 3)

end

end A341827.P9392920236807201135

/-! ## A341827.P1123054290497703932

`A109007(record[A333716(2*n)])+(n+1)%2`
-/

namespace A341827.P1123054290497703932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333716 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (((n + 1) % 2 : ℕ) : ℤ)

end

end A341827.P1123054290497703932

/-! ## A341827.P7269569924428646020

`A059711(A048329(n))-char[A004280(n+1)]`
-/

namespace A341827.P7269569924428646020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 (A048329 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A341827.P7269569924428646020

/-! ## A341827.P1038828000608404953

`A109007(record[A333716(2*n)])+A059841(n)`
-/

namespace A341827.P1038828000608404953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333716 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A059841 n

end

end A341827.P1038828000608404953

/-! ## A341827.P6923364514826377518

`A109007(record[A333716(2*n)])+A000035(n+1)`
-/

namespace A341827.P6923364514826377518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333716 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109007 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000035 (n + 1)

end

end A341827.P6923364514826377518

/-!
# A341828: Difference of consecutive odd squarefree semiprimes.

The programs for A341828, there is no canonical definition to state claims against.
-/

/-! ## A341828.P16382933211928049013

`Δ[A046388(n+1)]`
-/

namespace A341828.P16382933211928049013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341828.P16382933211928049013

/-! ## A341828.P11959584731081130306

`Δ[A056913(n+2)]`
-/

namespace A341828.P11959584731081130306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341828.P11959584731081130306

/-! ## A341828.P15418223344144768313

`Δ[2*A234093(n+1)]`
-/

namespace A341828.P15418223344144768313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341828.P15418223344144768313

/-! ## A341828.P7905580722266233651

`2*Δ[A234096(n+1)]`
-/

namespace A341828.P7905580722266233651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A341828.P7905580722266233651

/-! ## A341828.P17202872977946017730

`Δ[A053858(n+1)/2]`
-/

namespace A341828.P17202872977946017730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053858 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341828.P17202872977946017730

/-! ## A341828.P11639628399291164981

`Δ[eq[3, A345182(n+1)]]`
-/

namespace A341828.P11639628399291164981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341828.P11639628399291164981

/-! ## A341828.P13485527669346144848

`Δ[eq[0, A008683(2*(n+2))+1]]`
-/

namespace A341828.P13485527669346144848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 2)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341828.P13485527669346144848

/-! ## A341828.P17831341702203024597

`2*Δ[lt[acot(n), A008683(2*n+1)]]`
-/

namespace A341828.P17831341702203024597
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℝ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A341828.P17831341702203024597

/-! ## A341828.P13198299193913564398

`Δ[eq[2/a(n-1), A008683(n+2)]]` with `a(0)=2`
-/

namespace A341828.P13198299193913564398
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  2 / f2 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (f3 j : ℚ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A341828.P13198299193913564398

/-!
# A341829: Irregular triangle read by rows: the n-th row gives the x-values of the solutions of the equation x*(y - 1) + (2*x - y - 1)*(x mod 2) = 2*n for 0 < x <= y.

The programs for A341829, there is no canonical definition to state claims against.
-/

/-! ## A341829.P10898139982692642876

`p?[A245163(3*(n+1))]%5`
-/

namespace A341829.P10898139982692642876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 5

end

end A341829.P10898139982692642876

/-! ## A341829.P13799228953537876101

`A047726(p?[A245163(3*(n+1))])+1`
-/

namespace A341829.P13799228953537876101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A341829.P13799228953537876101

/-! ## A341829.P15255088335310606500

`A053188(p?[A245163(3*(n+1))])+1`
-/

namespace A341829.P15255088335310606500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A341829.P15255088335310606500

/-! ## A341829.P2565481334245725766

`A128630(∑{digits}[p?[A245163(3*(n+1))], #])`
-/

namespace A341829.P2565481334245725766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245163 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128630 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A341829.P2565481334245725766

/-! ## A341829.P2420947547877084016

`A252229(A151517(n+1))`
-/

namespace A341829.P2420947547877084016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 (A151517 (n + 1)).toNat

end

end A341829.P2420947547877084016

/-!
# A341830: Irregular triangle read by rows: the n-th row gives the y-values of the solutions of the equation x*(y - 1) + (2*x - y - 1)*(x mod 2) = 2*n for 0 < x <= y.

The programs for A341830, there is no canonical definition to state claims against.
-/

/-! ## A341830.P13891445672589135323

`A043555(A006827(2*(n+1))+A000160(n+4))`
-/

namespace A341830.P13891445672589135323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043555 (A006827 (2 * (n + 1)) + A000160 (n + 4)).toNat

end

end A341830.P13891445672589135323

/-! ## A341830.P1463172213934074727

`A249616(A249616(3*n+2)+A061030(n+3))`
-/

namespace A341830.P1463172213934074727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249616 (A249616 (3 * n + 2) + A061030 (n + 3)).toNat

end

end A341830.P1463172213934074727

/-! ## A341830.P18268557613319890387

`A001222(A056514(n+4)*A128363(2*n+1))`
-/

namespace A341830.P18268557613319890387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056514 (n + 4) * A128363 (2 * n + 1)).toNat

end

end A341830.P18268557613319890387

/-!
# A341831: Dirichlet g.f.: 1 / zeta(s)^5.

The programs for A341831, the canonical program `A341831.P2337335291110956279` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341831 has offset 1).

The definition of A341831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341831.P2337335291110956279

`∑{d}[n+1, A341832(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341831

/-- `∑{d}[n+1, A341832(#)]` -/
def P2337335291110956279.Spec : Prop :=
  ∀ n, P2337335291110956279.a n = A341831 (n + 1)

theorem P2337335291110956279.correct : P2337335291110956279.Spec := by
  intro n
  simp only [A341831, Nat.add_sub_cancel]

end A341831

/-! ## A341831.P12104639564545897379

`∑{d}[n+1, A007427(#)*A007428((n+1)/#)]`
-/

namespace A341831.P12104639564545897379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341831.P12104639564545897379

namespace A341831

/-- `∑{d}[n+1, A007427(#)*A007428((n+1)/#)]` -/
def P12104639564545897379.Spec : Prop :=
  ∀ n, P12104639564545897379.a n = A341831 (n + 1)

end A341831

/-! ## A341831.P8899230614747314703

`∑{d}[n+1, A008683(#)*A247343((n+1)/#)]`
-/

namespace A341831.P8899230614747314703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341831.P8899230614747314703

namespace A341831

/-- `∑{d}[n+1, A008683(#)*A247343((n+1)/#)]` -/
def P8899230614747314703.Spec : Prop :=
  ∀ n, P8899230614747314703.a n = A341831 (n + 1)

end A341831

/-! ## A341831.P4945052826151052720

`∑{d}[n+1, A000005(#)*A341833((n+1)/#)]`
-/

namespace A341831.P4945052826151052720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A341833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341831.P4945052826151052720

namespace A341831

/-- `∑{d}[n+1, A000005(#)*A341833((n+1)/#)]` -/
def P4945052826151052720.Spec : Prop :=
  ∀ n, P4945052826151052720.a n = A341831 (n + 1)

end A341831

/-! ## A341831.P15094773781363396562

`∑{d}[n+1, A007425(#)*A341834((n+1)/#)]`
-/

namespace A341831.P15094773781363396562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341831.P15094773781363396562

namespace A341831

/-- `∑{d}[n+1, A007425(#)*A341834((n+1)/#)]` -/
def P15094773781363396562.Spec : Prop :=
  ∀ n, P15094773781363396562.a n = A341831 (n + 1)

end A341831

/-! ## A341831.P5050959568450731339

`∑{d}[n+1, A007426(#)*A341835((n+1)/#)]`
-/

namespace A341831.P5050959568450731339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A341835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341831.P5050959568450731339

namespace A341831

/-- `∑{d}[n+1, A007426(#)*A341835((n+1)/#)]` -/
def P5050959568450731339.Spec : Prop :=
  ∀ n, P5050959568450731339.a n = A341831 (n + 1)

end A341831

/-! ## A341831.P1078534176890962827

`∑{d}[n+1, A061200(#)*A341836((n+1)/#)]`
-/

namespace A341831.P1078534176890962827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A341836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341831.P1078534176890962827

namespace A341831

/-- `∑{d}[n+1, A061200(#)*A341836((n+1)/#)]` -/
def P1078534176890962827.Spec : Prop :=
  ∀ n, P1078534176890962827.a n = A341831 (n + 1)

end A341831

/-!
# A341832: Dirichlet g.f.: 1 / zeta(s)^6.

The programs for A341832, the canonical program `A341832.P3740722404065052856` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341832 has offset 1).

The definition of A341832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341832.P8245403911575508324

`∑{d}[n+1, A341833(#)]`
-/

namespace A341832.P8245403911575508324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341833 d

end

end A341832.P8245403911575508324

namespace A341832

/-- `∑{d}[n+1, A341833(#)]` -/
def P8245403911575508324.Spec : Prop :=
  ∀ n, P8245403911575508324.a n = A341832 (n + 1)

end A341832

/-! ## A341832.P12041742389488727192

`∑{d}[n+1, A007428(#)*A007428((n+1)/#)]`
-/

namespace A341832.P12041742389488727192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A007428 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341832.P12041742389488727192

namespace A341832

/-- `∑{d}[n+1, A007428(#)*A007428((n+1)/#)]` -/
def P12041742389488727192.Spec : Prop :=
  ∀ n, P12041742389488727192.a n = A341832 (n + 1)

end A341832

/-! ## A341832.P3740722404065052856

`∑{d}[n+1, A007427(#)*A247343((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341832

/-- `∑{d}[n+1, A007427(#)*A247343((n+1)/#)]` -/
def P3740722404065052856.Spec : Prop :=
  ∀ n, P3740722404065052856.a n = A341832 (n + 1)

theorem P3740722404065052856.correct : P3740722404065052856.Spec := by
  intro n
  simp only [A341832, Nat.add_sub_cancel]

end A341832

/-! ## A341832.P14186908770539877234

`∑{d}[n+1, A000005(#)*A341834((n+1)/#)]`
-/

namespace A341832.P14186908770539877234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341832.P14186908770539877234

namespace A341832

/-- `∑{d}[n+1, A000005(#)*A341834((n+1)/#)]` -/
def P14186908770539877234.Spec : Prop :=
  ∀ n, P14186908770539877234.a n = A341832 (n + 1)

end A341832

/-! ## A341832.P6048669434390154972

`∑{d}[n+1, A007425(#)*A341835((n+1)/#)]`
-/

namespace A341832.P6048669434390154972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A341835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341832.P6048669434390154972

namespace A341832

/-- `∑{d}[n+1, A007425(#)*A341835((n+1)/#)]` -/
def P6048669434390154972.Spec : Prop :=
  ∀ n, P6048669434390154972.a n = A341832 (n + 1)

end A341832

/-! ## A341832.P15701828834964901506

`∑{d}[n+1, A007426(#)*A341836((n+1)/#)]`
-/

namespace A341832.P15701828834964901506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A341836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341832.P15701828834964901506

namespace A341832

/-- `∑{d}[n+1, A007426(#)*A341836((n+1)/#)]` -/
def P15701828834964901506.Spec : Prop :=
  ∀ n, P15701828834964901506.a n = A341832 (n + 1)

end A341832

/-! ## A341832.P17450781775413304413

`∑{d}[n+1, A008683(#)*A341831((n+1)/#)]`
-/

namespace A341832.P17450781775413304413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341832.P17450781775413304413

namespace A341832

/-- `∑{d}[n+1, A008683(#)*A341831((n+1)/#)]` -/
def P17450781775413304413.Spec : Prop :=
  ∀ n, P17450781775413304413.a n = A341832 (n + 1)

end A341832

/-!
# A341833: Dirichlet g.f.: 1 / zeta(s)^7.

The programs for A341833, the canonical program `A341833.P7490125277756735496` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341833 has offset 1).

The definition of A341833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341833.P7490125277756735496

`∑{d}[n+1, A341834(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A341833

/-- `∑{d}[n+1, A341834(#)]` -/
def P7490125277756735496.Spec : Prop :=
  ∀ n, P7490125277756735496.a n = A341833 (n + 1)

theorem P7490125277756735496.correct : P7490125277756735496.Spec := by
  intro n
  simp only [A341833, Nat.add_sub_cancel]

end A341833

/-! ## A341833.P9024943055202369009

`∑{d}[n+1, A007428(#)*A247343((n+1)/#)]`
-/

namespace A341833.P9024943055202369009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341833.P9024943055202369009

namespace A341833

/-- `∑{d}[n+1, A007428(#)*A247343((n+1)/#)]` -/
def P9024943055202369009.Spec : Prop :=
  ∀ n, P9024943055202369009.a n = A341833 (n + 1)

end A341833

/-! ## A341833.P7648700247280997189

`∑{d}[n+1, A000005(#)*A341835((n+1)/#)]`
-/

namespace A341833.P7648700247280997189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A341835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341833.P7648700247280997189

namespace A341833

/-- `∑{d}[n+1, A000005(#)*A341835((n+1)/#)]` -/
def P7648700247280997189.Spec : Prop :=
  ∀ n, P7648700247280997189.a n = A341833 (n + 1)

end A341833

/-! ## A341833.P16381569779494257510

`∑{d}[n+1, A007427(#)*A341831((n+1)/#)]`
-/

namespace A341833.P16381569779494257510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341833.P16381569779494257510

namespace A341833

/-- `∑{d}[n+1, A007427(#)*A341831((n+1)/#)]` -/
def P16381569779494257510.Spec : Prop :=
  ∀ n, P16381569779494257510.a n = A341833 (n + 1)

end A341833

/-! ## A341833.P8246410430024630216

`∑{d}[n+1, A007425(#)*A341836((n+1)/#)]`
-/

namespace A341833.P8246410430024630216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A341836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341833.P8246410430024630216

namespace A341833

/-- `∑{d}[n+1, A007425(#)*A341836((n+1)/#)]` -/
def P8246410430024630216.Spec : Prop :=
  ∀ n, P8246410430024630216.a n = A341833 (n + 1)

end A341833

/-! ## A341833.P641244807877016668

`∑{d}[n+1, A008683(#)*A341832((n+1)/#)]`
-/

namespace A341833.P641244807877016668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341833.P641244807877016668

namespace A341833

/-- `∑{d}[n+1, A008683(#)*A341832((n+1)/#)]` -/
def P641244807877016668.Spec : Prop :=
  ∀ n, P641244807877016668.a n = A341833 (n + 1)

end A341833

/-!
# A341834: Dirichlet g.f.: 1 / zeta(s)^8.

The programs for A341834, the canonical program `A341834.P10769813872850527674` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341834 has offset 1).

The definition of A341834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341834.P13000045275461332275

`∑{d}[n+1, A341835(#)]`
-/

namespace A341834.P13000045275461332275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341835 d

end

end A341834.P13000045275461332275

namespace A341834

/-- `∑{d}[n+1, A341835(#)]` -/
def P13000045275461332275.Spec : Prop :=
  ∀ n, P13000045275461332275.a n = A341834 (n + 1)

end A341834

/-! ## A341834.P14255524317926103222

`∑{d}[n+1, A000005(#)*A341836((n+1)/#)]`
-/

namespace A341834.P14255524317926103222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A341836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341834.P14255524317926103222

namespace A341834

/-- `∑{d}[n+1, A000005(#)*A341836((n+1)/#)]` -/
def P14255524317926103222.Spec : Prop :=
  ∀ n, P14255524317926103222.a n = A341834 (n + 1)

end A341834

/-! ## A341834.P10769813872850527674

`∑{d}[n+1, A007427(#)*A341832((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A341834

/-- `∑{d}[n+1, A007427(#)*A341832((n+1)/#)]` -/
def P10769813872850527674.Spec : Prop :=
  ∀ n, P10769813872850527674.a n = A341834 (n + 1)

theorem P10769813872850527674.correct : P10769813872850527674.Spec := by
  intro n
  simp only [A341834, Nat.add_sub_cancel]

end A341834

/-! ## A341834.P2086056631408569005

`∑{d}[n+1, A007428(#)*A341831((n+1)/#)]`
-/

namespace A341834.P2086056631408569005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341834.P2086056631408569005

namespace A341834

/-- `∑{d}[n+1, A007428(#)*A341831((n+1)/#)]` -/
def P2086056631408569005.Spec : Prop :=
  ∀ n, P2086056631408569005.a n = A341834 (n + 1)

end A341834

/-! ## A341834.P1788654679012316328

`∑{d}[n+1, A008683(#)*A341833((n+1)/#)]`
-/

namespace A341834.P1788654679012316328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341834.P1788654679012316328

namespace A341834

/-- `∑{d}[n+1, A008683(#)*A341833((n+1)/#)]` -/
def P1788654679012316328.Spec : Prop :=
  ∀ n, P1788654679012316328.a n = A341834 (n + 1)

end A341834

/-! ## A341834.P9535138557569374326

`∑{d}[n+1, A247343(#)*A247343((n+1)/#)]`
-/

namespace A341834.P9535138557569374326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A247343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341834.P9535138557569374326

namespace A341834

/-- `∑{d}[n+1, A247343(#)*A247343((n+1)/#)]` -/
def P9535138557569374326.Spec : Prop :=
  ∀ n, P9535138557569374326.a n = A341834 (n + 1)

end A341834

/-!
# A341835: Dirichlet g.f.: 1 / zeta(s)^9.

The programs for A341835, the canonical program `A341835.P7023220512797998449` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341835 has offset 1).

The definition of A341835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341835.P7023220512797998449

`∑{d}[n+1, A341836(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A341835

/-- `∑{d}[n+1, A341836(#)]` -/
def P7023220512797998449.Spec : Prop :=
  ∀ n, P7023220512797998449.a n = A341835 (n + 1)

theorem P7023220512797998449.correct : P7023220512797998449.Spec := by
  intro n
  simp only [A341835, Nat.add_sub_cancel]

end A341835

/-! ## A341835.P4023053007297192711

`∑{d}[n+1, A007427(#)*A341833((n+1)/#)]`
-/

namespace A341835.P4023053007297192711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A341833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341835.P4023053007297192711

namespace A341835

/-- `∑{d}[n+1, A007427(#)*A341833((n+1)/#)]` -/
def P4023053007297192711.Spec : Prop :=
  ∀ n, P4023053007297192711.a n = A341835 (n + 1)

end A341835

/-! ## A341835.P7426893430090962703

`∑{d}[n+1, A007428(#)*A341832((n+1)/#)]`
-/

namespace A341835.P7426893430090962703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341835.P7426893430090962703

namespace A341835

/-- `∑{d}[n+1, A007428(#)*A341832((n+1)/#)]` -/
def P7426893430090962703.Spec : Prop :=
  ∀ n, P7426893430090962703.a n = A341835 (n + 1)

end A341835

/-! ## A341835.P15029760636052283283

`∑{d}[n+1, A008683(#)*A341834((n+1)/#)]`
-/

namespace A341835.P15029760636052283283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341834 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341835.P15029760636052283283

namespace A341835

/-- `∑{d}[n+1, A008683(#)*A341834((n+1)/#)]` -/
def P15029760636052283283.Spec : Prop :=
  ∀ n, P15029760636052283283.a n = A341835 (n + 1)

end A341835

/-! ## A341835.P17616221900135733987

`∑{d}[n+1, A247343(#)*A341831((n+1)/#)]`
-/

namespace A341835.P17616221900135733987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341835.P17616221900135733987

namespace A341835

/-- `∑{d}[n+1, A247343(#)*A341831((n+1)/#)]` -/
def P17616221900135733987.Spec : Prop :=
  ∀ n, P17616221900135733987.a n = A341835 (n + 1)

end A341835

/-!
# A341836: Dirichlet g.f.: 1 / zeta(s)^10.

The programs for A341836, the canonical program `A341836.P13945260103919537689` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341836 has offset 1).

The definition of A341836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341836.P13945260103919537689

`∑{d}[n+1, A007427(#)*A341834((n+1)/#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A341836

/-- `∑{d}[n+1, A007427(#)*A341834((n+1)/#)]` -/
def P13945260103919537689.Spec : Prop :=
  ∀ n, P13945260103919537689.a n = A341836 (n + 1)

theorem P13945260103919537689.correct : P13945260103919537689.Spec := by
  intro n
  simp only [A341836, Nat.add_sub_cancel]

end A341836

/-! ## A341836.P9268969727716066799

`∑{d}[n+1, A007428(#)*A341833((n+1)/#)]`
-/

namespace A341836.P9268969727716066799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A341833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341836.P9268969727716066799

namespace A341836

/-- `∑{d}[n+1, A007428(#)*A341833((n+1)/#)]` -/
def P9268969727716066799.Spec : Prop :=
  ∀ n, P9268969727716066799.a n = A341836 (n + 1)

end A341836

/-! ## A341836.P11074499782052412181

`∑{d}[n+1, A008683(#)*A341835((n+1)/#)]`
-/

namespace A341836.P11074499782052412181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341835 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341836.P11074499782052412181

namespace A341836

/-- `∑{d}[n+1, A008683(#)*A341835((n+1)/#)]` -/
def P11074499782052412181.Spec : Prop :=
  ∀ n, P11074499782052412181.a n = A341836 (n + 1)

end A341836

/-! ## A341836.P4226692121479382473

`∑{d}[n+1, A247343(#)*A341832((n+1)/#)]`
-/

namespace A341836.P4226692121479382473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A247343 d * A341832 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341836.P4226692121479382473

namespace A341836

/-- `∑{d}[n+1, A247343(#)*A341832((n+1)/#)]` -/
def P4226692121479382473.Spec : Prop :=
  ∀ n, P4226692121479382473.a n = A341836 (n + 1)

end A341836

/-! ## A341836.P5230797651870175390

`∑{d}[n+1, A341831(#)*A341831((n+1)/#)]`
-/

namespace A341836.P5230797651870175390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341831 d * A341831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341836.P5230797651870175390

namespace A341836

/-- `∑{d}[n+1, A341831(#)*A341831((n+1)/#)]` -/
def P5230797651870175390.Spec : Prop :=
  ∀ n, P5230797651870175390.a n = A341836 (n + 1)

end A341836

/-!
# A341837: If n = Product (p_j^k_j) then a(n) = Product ((-1)^k_j * binomial(n, k_j)).

The programs for A341837, there is no canonical definition to state claims against.
-/

/-! ## A341837.P1036178337045598998

`A346148(∑[4*n]+1)`
-/

namespace A341837.P1036178337045598998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346148 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A341837.P1036178337045598998

/-! ## A341837.P15225701011879069751

`and(-1, A346148(A001844(n)))`
-/

namespace A341837.P15225701011879069751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A346148 (A001844 n).toNat)

end

end A341837.P15225701011879069751

/-! ## A341837.P11432924819060482636

`A346148(∑[A008574(n)])+2-4/2`
-/

namespace A341837.P11432924819060482636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346148 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A341837.P11432924819060482636

/-! ## A341837.P6362682055451550979

`A346148(A001844(n))^A178334(n)`
-/

namespace A341837.P6362682055451550979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346148 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A341837.P6362682055451550979

/-! ## A341837.P16757426743471024700

`A346148(A001844(n))%A016794(n)`
-/

namespace A341837.P16757426743471024700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346148 (A001844 n).toNat) (A016794 n)

end

end A341837.P16757426743471024700

/-! ## A341837.P16128770497789672530

`A346148(A001844(n))^(A000040(n+1)%2)`
-/

namespace A341837.P16128770497789672530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346148 (A001844 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A341837.P16128770497789672530

/-! ## A341837.P924943903170073913

`A007318(C(2, n+2))*A346148(A001844(n))`
-/

namespace A341837.P924943903170073913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A346148 (A001844 n).toNat

end

end A341837.P924943903170073913

/-!
# A341839: Square array T(n, k), n, k >= 0, read by antidiagonals; for any number m with runs in binary expansion (r_1, ..., r_j), let R(m) = {r_1 + ... + r_j, r_2 + ... + r_j, ..., r_j}; T(n, k) is the unique number t such that R(t) is the union of R(n) and of R(k).

The programs for A341839, there is no canonical definition to state claims against.
-/

/-! ## A341839.P10622956051698448736

`xor(A002262(n), A341841(n))`
-/

namespace A341839.P10622956051698448736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A341841 n)

end

end A341839.P10622956051698448736

/-! ## A341839.P1269864919831330380

`xor(A003987(n), A341840(n))`
-/

namespace A341839.P1269864919831330380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A341840 n)

end

end A341839.P1269864919831330380

/-! ## A341839.P8845931391833423283

`xor(A049581(A286098(n)), A341840(n))`
-/

namespace A341839.P8845931391833423283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A049581 (A286098 n).toNat) (A341840 n)

end

end A341839.P8845931391833423283

/-! ## A341839.P8544965939696579950

`xor(A003986(n)-A004198(n), A341840(n))`
-/

namespace A341839.P8544965939696579950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003986 n - A004198 n) (A341840 n)

end

end A341839.P8544965939696579950

/-! ## A341839.P9384872630254467743

`xor(A286109(n)-A057944(n), A341840(n))`
-/

namespace A341839.P9384872630254467743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A286109 n - A057944 n) (A341840 n)

end

end A341839.P9384872630254467743

/-! ## A341839.P7632841336334455790

`xor(A002260(A286109(n)+1)-1, A341840(n))`
-/

namespace A341839.P7632841336334455790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002260 (A286109 n + 1).toNat - 1) (A341840 n)

end

end A341839.P7632841336334455790

/-! ## A341839.P3310433420587395208

`xor(A130517(A286098(n)+1)-1, A341840(n))`
-/

namespace A341839.P3310433420587395208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130517 (A286098 n + 1).toNat - 1) (A341840 n)

end

end A341839.P3310433420587395208

/-! ## A341839.P7723658342214707656

`xor(2*A003986(n)-A003056(n), A341840(n))`
-/

namespace A341839.P7723658342214707656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A003986 n - A003056 n) (A341840 n)

end

end A341839.P7723658342214707656

/-! ## A341839.P3678129178147528609

`xor(A025581(n)+n-A286108(n), A341840(n))`
-/

namespace A341839.P3678129178147528609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025581 n + ((n : ℤ) - A286108 n)) (A341840 n)

end

end A341839.P3678129178147528609

/-! ## A341839.P7140593380625373167

`xor(A127739(n+1)-(A286108(n)+1), A341840(n))`
-/

namespace A341839.P7140593380625373167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A127739 (n + 1) - (A286108 n + 1)) (A341840 n)

end

end A341839.P7140593380625373167

/-! ## A341839.P6248128104650967748

`xor(A025581(A286108(n)), A341840(n))`
-/

namespace A341839.P6248128104650967748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025581 (A286108 n).toNat) (A341840 n)

end

end A341839.P6248128104650967748

/-!
# A341840: Square array T(n, k), n, k >= 0, read by antidiagonals; for any number m with runs in binary expansion (r_1, ..., r_j), let R(m) = {r_1 + ... + r_j, r_2 + ... + r_j, ..., r_j}; T(n, k) is the unique number t such that R(t) is the intersection of R(n) and of R(k).

The programs for A341840, there is no canonical definition to state claims against.
-/

/-! ## A341840.P15192518861356135067

`xor(A003987(n), A341839(n))`
-/

namespace A341840.P15192518861356135067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A341839 n)

end

end A341840.P15192518861356135067

/-! ## A341840.P8077220539237603065

`xor(A025581(n), A341841(n))`
-/

namespace A341840.P8077220539237603065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025581 n) (A341841 n)

end

end A341840.P8077220539237603065

/-! ## A341840.P9431860239481861033

`A341841(A286150(n))`
-/

namespace A341840.P9431860239481861033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341841 (A286150 n).toNat

end

end A341840.P9431860239481861033

/-! ## A341840.P12883943049569792626

`A341841(A286147(n))`
-/

namespace A341840.P12883943049569792626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341841 (A286147 n).toNat

end

end A341840.P12883943049569792626

/-! ## A341840.P15288020432685092971

`A341841(A286145(n))`
-/

namespace A341840.P15288020432685092971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341841 (A286145 n).toNat

end

end A341840.P15288020432685092971

/-!
# A341841: Square array T(n, k), n, k >= 0, read by antidiagonals upwards; for any number m with runs in binary expansion (r_1, ..., r_j), let R(m) = {r_1 + ... + r_j, r_2 + ... + r_j, ..., r_j}; T(n, k) is the unique number t such that R(t) equals R(n) minus R(k).

The programs for A341841, there is no canonical definition to state claims against.
-/

/-! ## A341841.P15191598527957043492

`xor(A002262(n), A341839(n))`
-/

namespace A341841.P15191598527957043492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A341839 n)

end

end A341841.P15191598527957043492

/-! ## A341841.P17128684136009142602

`xor(A025581(n), A341840(n))`
-/

namespace A341841.P17128684136009142602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025581 n) (A341840 n)

end

end A341841.P17128684136009142602

/-! ## A341841.P17136349769322683184

`xor(log2(A130321(n)), A341840(n))`
-/

namespace A341841.P17136349769322683184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))) (A341840 n)

end

end A341841.P17136349769322683184

/-! ## A341841.P12427217597668521612

`xor(A086520(A055461(n+1)), A341840(n))`
-/

namespace A341841.P12427217597668521612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086520 (A055461 (n + 1)).toNat) (A341840 n)

end

end A341841.P12427217597668521612

/-! ## A341841.P10090050273071572763

`A341840(A286145(n))`
-/

namespace A341841.P10090050273071572763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A286145 n).toNat

end

end A341841.P10090050273071572763

/-!
# A341843: Number of sexy consecutive prime pairs below 2^n.

The programs for A341843, there is no canonical definition to state claims against.
-/

/-! ## A341843.P14876242364483119542

`A100617(A075864(n)+2)-2`
-/

namespace A341843.P14876242364483119542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A075864 n + 2).toNat - 2

end

end A341843.P14876242364483119542

/-! ## A341843.P13215250019212597328

`A000194(A211289(n)-A211300(n))`
-/

namespace A341843.P13215250019212597328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A211289 n - A211300 n).toNat

end

end A341843.P13215250019212597328

/-! ## A341843.P3969431418880755391

`A000194(A211289(n)%A211300(n))`
-/

namespace A341843.P3969431418880755391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A211289 n) (A211300 n)).toNat

end

end A341843.P3969431418880755391

/-! ## A341843.P2808826445002195586

`A000196(A000669(n+1)-A059529(n))`
-/

namespace A341843.P2808826445002195586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000669 (n + 1) - A059529 n).toNat

end

end A341843.P2808826445002195586

/-! ## A341843.P12648882360110577198

`A000196(A264228(n+1))-A284559(n)`
-/

namespace A341843.P12648882360110577198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A264228 (n + 1)).toNat - A284559 n

end

end A341843.P12648882360110577198

/-!
# A341845: a(n) = A061026(2n): smallest k such that 2n divides phi(k), phi = A000010.

The programs for A341845, there is no canonical definition to state claims against.
-/

/-! ## A341845.P7043179064173027772

`A061026(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341845.P7043179064173027772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (2 * (n + 1))

end

end A341845.P7043179064173027772

/-! ## A341845.P11533397429726420360

`or(1, A061026(n+2+n))`
-/

namespace A341845.P11533397429726420360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A061026 (n + 2 + n))

end

end A341845.P11533397429726420360

/-! ## A341845.P7799819895498302429

`A061026(n+2+n)%A000041(n+5)`
-/

namespace A341845.P7799819895498302429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061026 (n + 2 + n)) (A000041 (n + 5))

end

end A341845.P7799819895498302429

/-! ## A341845.P15700726071535619773

`A049283(A066678(2*(n+1)))`
-/

namespace A341845.P15700726071535619773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A066678 (2 * (n + 1))).toNat

end

end A341845.P15700726071535619773

/-! ## A341845.P281327605680362172

`A086799(A061026(n+2+n))`
-/

namespace A341845.P281327605680362172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (A061026 (n + 2 + n)).toNat

end

end A341845.P281327605680362172

/-! ## A341845.P8784038148974945795

`A179831(A179834(n+1))+A061026(n+2+n)`
-/

namespace A341845.P8784038148974945795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179831 (A179834 (n + 1)).toNat + A061026 (n + 2 + n)

end

end A341845.P8784038148974945795

/-!
# A341846: a(1) = 0; thereafter, if a(n) has not appeared before, a(n+1) = number of existing terms which are greater than a(n); otherwise, a(n) = n-m where a(m) is the most recent copy of a(n).

The programs for A341846, there is no canonical definition to state claims against.
-/

/-! ## A341846.P15794532993706434637

`A181391(n+1)+A098852(A000009(n))`
-/

namespace A341846.P15794532993706434637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) + A098852 (A000009 n).toNat

end

end A341846.P15794532993706434637

/-! ## A341846.P2835244854844168060

`A181391(n+1)+A003987(A185213(n))`
-/

namespace A341846.P2835244854844168060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) + A003987 (A185213 n).toNat

end

end A341846.P2835244854844168060

/-! ## A341846.P7755958149272602881

`A181391(n+1)+A151755(A306443(n))`
-/

namespace A341846.P7755958149272602881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (n + 1) + A151755 (A306443 n).toNat

end

end A341846.P7755958149272602881

/-! ## A341846.P2111779825039552499

`A269244(A192317(n))+A181391(n+1)`
-/

namespace A341846.P2111779825039552499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269244 (A192317 n).toNat + A181391 (n + 1)

end

end A341846.P2111779825039552499

/-! ## A341846.P15720004883199842745

`A333359(n+1)+A151755(A306443(n))`
-/

namespace A341846.P15720004883199842745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333359 (n + 1) + A151755 (A306443 n).toNat

end

end A341846.P15720004883199842745

/-!
# A341848: Number of maximal matchings in the 3 X n rook graph.

The programs for A341848, there is no canonical definition to state claims against.
-/

/-! ## A341848.P5971632437010249218

`A341847(∑[n+3]+n+3)`
-/

namespace A341848.P5971632437010249218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A341848.P5971632437010249218

/-! ## A341848.P552833891579762120

`record[A341847(eq[1, A341847(n+3)])]`
-/

namespace A341848.P552833891579762120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341848.P552833891579762120

/-! ## A341848.P2553329977587811671

`record[A341847(lt[A341847(n+3), 2])]`
-/

namespace A341848.P2553329977587811671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341848.P2553329977587811671

/-! ## A341848.P4984426627164275951

`record[A341847(n)/A341847(n+3)]`
-/

namespace A341848.P4984426627164275951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341847 n : ℚ) / (A341847 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341848.P4984426627164275951

/-! ## A341848.P3462289160822773041

`record[gcd(A341847(n), A341856(n+4))]`
-/

namespace A341848.P3462289160822773041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341847 n) (A341856 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341848.P3462289160822773041

/-!
# A341849: Number of maximal matchings in the 4 X n rook graph.

The programs for A341849, there is no canonical definition to state claims against.
-/

/-! ## A341849.P15020343927978637290

`A341847(A052905(n+2))`
-/

namespace A341849.P15020343927978637290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (A052905 (n + 2)).toNat

end

end A341849.P15020343927978637290

/-! ## A341849.P5329323788816017172

`A341847(eq[5, A004736(n+1)])`
-/

namespace A341849.P5329323788816017172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341849.P5329323788816017172

/-! ## A341849.P2450035954583744258

`record[A341847(A052905(A022290(n)))]`
-/

namespace A341849.P2450035954583744258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (A052905 (A022290 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341849.P2450035954583744258

/-! ## A341849.P1012718623064249525

`record[A341847(A052905(A103823(n)))]`
-/

namespace A341849.P1012718623064249525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (A052905 (A103823 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341849.P1012718623064249525

/-! ## A341849.P10514391900843289117

`record[A341847(A052905(A142150(n)))]`
-/

namespace A341849.P10514391900843289117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341847 (A052905 (A142150 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341849.P10514391900843289117

/-!
# A341851: Number of maximum matchings in the 3 X n rook graph.

The programs for A341851, there is no canonical definition to state claims against.
-/

/-! ## A341851.P16114463938504947613

`A341850(A167614(n+2))`
-/

namespace A341851.P16114463938504947613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (A167614 (n + 2)).toNat

end

end A341851.P16114463938504947613

/-! ## A341851.P3812108420507326206

`A341850(A141214(n)+6)`
-/

namespace A341851.P3812108420507326206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (A141214 n + 6).toNat

end

end A341851.P3812108420507326206

/-! ## A341851.P11946019678466516385

`A341850(eq[3, A002262(n)])`
-/

namespace A341851.P11946019678466516385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341851.P11946019678466516385

/-! ## A341851.P11170910749679531783

`A341850(A166136(n+2)-3)`
-/

namespace A341851.P11170910749679531783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (A166136 (n + 2) - 3).toNat

end

end A341851.P11170910749679531783

/-! ## A341851.P1909781309008152762

`A341850(eq[2, A002260(n+1)-2])`
-/

namespace A341851.P1909781309008152762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341851.P1909781309008152762

/-!
# A341852: Number of perfect matchings in the 4 X n rook graph.

The programs for A341852, there is no canonical definition to state claims against.
-/

/-! ## A341852.P18371100549921835203

`A341850(A155212(n)+12)`
-/

namespace A341852.P18371100549921835203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (A155212 n + 12).toNat

end

end A341852.P18371100549921835203

/-! ## A341852.P7717646794573374846

`A341850(eq[4, A002262(n)])`
-/

namespace A341852.P7717646794573374846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341852.P7717646794573374846

/-! ## A341852.P15129132598744369773

`A341850(eq[5, A002260(n+1)])`
-/

namespace A341852.P15129132598744369773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341852.P15129132598744369773

/-! ## A341852.P17133578497652185913

`A341850(eq[9, A158405(n+1)])`
-/

namespace A341852.P17133578497652185913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341852.P17133578497652185913

/-! ## A341852.P10458393010253514347

`A341850(A056115(n)+10)`
-/

namespace A341852.P10458393010253514347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341850 (A056115 n + 10).toNat

end

end A341852.P10458393010253514347

/-!
# A341853: Number of triangulations of a fixed pentagon with n internal nodes.

The programs for A341853, the canonical program `A341853.P5883001244505126993` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341853 has offset 0).

The definition of A341853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341853.P5883001244505126993

`210*C(4*n+5, n)/((3*n+6)*(3*n+7))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341853

/-- `210*C(4*n+5, n)/((3*n+6)*(3*n+7))` -/
def P5883001244505126993.Spec : Prop :=
  ∀ n, P5883001244505126993.a n = (A341853 n : ℚ)

end A341853

/-! ## A341853.P10702341777508706342

`A146305(∑[n+2]+3)`
-/

namespace A341853.P10702341777508706342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A341853.P10702341777508706342

namespace A341853

/-- `A146305(∑[n+2]+3)` -/
def P10702341777508706342.Spec : Prop :=
  ∀ n, P10702341777508706342.a n = A341853 n

end A341853

/-! ## A341853.P3042884104796796640

`A146305(A340266(n+1))/A071935(n+1)²`
-/

namespace A341853.P3042884104796796640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146305 (A340266 (n + 1)).toNat : ℚ) / (A071935 (n + 1) ^ 2 : ℚ)

end

end A341853.P3042884104796796640

namespace A341853

/-- `A146305(A340266(n+1))/A071935(n+1)²` -/
def P3042884104796796640.Spec : Prop :=
  ∀ n, P3042884104796796640.a n = (A341853 n : ℚ)

end A341853

/-! ## A341853.P8364134581036660535

`A146305(A340266(n+1))%A257633(n+3)`
-/

namespace A341853.P8364134581036660535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146305 (A340266 (n + 1)).toNat) (A257633 (n + 3))

end

end A341853.P8364134581036660535

namespace A341853

/-- `A146305(A340266(n+1))%A257633(n+3)` -/
def P8364134581036660535.Spec : Prop :=
  ∀ n, P8364134581036660535.a n = A341853 n

end A341853

/-! ## A341853.P10296335189397079410

`record[A146305(lt[1, A341856(n)])]`
-/

namespace A341853.P10296335189397079410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341856 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341853.P10296335189397079410

namespace A341853

/-- `record[A146305(lt[1, A341856(n)])]` -/
def P10296335189397079410.Spec : Prop :=
  ∀ n, P10296335189397079410.a n = A341853 n

end A341853

/-!
# A341854: Number of triangulations of a fixed hexagon with n internal nodes.

The programs for A341854, the canonical program `A341854.P9553177481002635697` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341854 has offset 0).

The definition of A341854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341854.P9553177481002635697

`14*A242136(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341854

/-- `14*A242136(n+1)` -/
def P9553177481002635697.Spec : Prop :=
  ∀ n, P9553177481002635697.a n = A341854 n

theorem P9553177481002635697.correct : P9553177481002635697.Spec := by
  intro n
  simp only [A341854]

end A341854

/-! ## A341854.P3167346478944278613

`A146305(A167614(n+2))`
-/

namespace A341854.P3167346478944278613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A167614 (n + 2)).toNat

end

end A341854.P3167346478944278613

namespace A341854

/-- `A146305(A167614(n+2))` -/
def P3167346478944278613.Spec : Prop :=
  ∀ n, P3167346478944278613.a n = A341854 n

end A341854

/-! ## A341854.P16188030499154139791

`A146305(A052905(n)+8)`
-/

namespace A341854.P16188030499154139791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A052905 n + 8).toNat

end

end A341854.P16188030499154139791

namespace A341854

/-- `A146305(A052905(n)+8)` -/
def P16188030499154139791.Spec : Prop :=
  ∀ n, P16188030499154139791.a n = A341854 n

end A341854

/-! ## A341854.P17012196821510793268

`A146305(A055999(n)+9)`
-/

namespace A341854.P17012196821510793268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A055999 n + 9).toNat

end

end A341854.P17012196821510793268

namespace A341854

/-- `A146305(A055999(n)+9)` -/
def P17012196821510793268.Spec : Prop :=
  ∀ n, P17012196821510793268.a n = A341854 n

end A341854

/-! ## A341854.P14733829511751181181

`A146305(eq[3, A002262(n)])`
-/

namespace A341854.P14733829511751181181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341854.P14733829511751181181

namespace A341854

/-- `A146305(eq[3, A002262(n)])` -/
def P14733829511751181181.Spec : Prop :=
  ∀ n, P14733829511751181181.a n = A341854 n

end A341854

/-! ## A341854.P8026036785476059990

`A146305(eq[3, A140207(n)])`
-/

namespace A341854.P8026036785476059990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341854.P8026036785476059990

namespace A341854

/-- `A146305(eq[3, A140207(n)])` -/
def P8026036785476059990.Spec : Prop :=
  ∀ n, P8026036785476059990.a n = A341854 n

end A341854

/-! ## A341854.P13533208049419767363

`A146305(A340266(n+2)+1)`
-/

namespace A341854.P13533208049419767363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A340266 (n + 2) + 1).toNat

end

end A341854.P13533208049419767363

namespace A341854

/-- `A146305(A340266(n+2)+1)` -/
def P13533208049419767363.Spec : Prop :=
  ∀ n, P13533208049419767363.a n = A341854 n

end A341854

/-! ## A341854.P16829230063031286981

`A146305(A000096(n+2)+4)`
-/

namespace A341854.P16829230063031286981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A000096 (n + 2) + 4).toNat

end

end A341854.P16829230063031286981

namespace A341854

/-- `A146305(A000096(n+2)+4)` -/
def P16829230063031286981.Spec : Prop :=
  ∀ n, P16829230063031286981.a n = A341854 n

end A341854

/-! ## A341854.P14004203499318253659

`A146305(eq[4, A002260(n+1)])`
-/

namespace A341854.P14004203499318253659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A341854.P14004203499318253659

namespace A341854

/-- `A146305(eq[4, A002260(n+1)])` -/
def P14004203499318253659.Spec : Prop :=
  ∀ n, P14004203499318253659.a n = A341854 n

end A341854

/-! ## A341854.P10989664110424248514

`A146305(A167499(n+1)+n+1)`
-/

namespace A341854.P10989664110424248514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A167499 (n + 1) + (n + 1 : ℤ)).toNat

end

end A341854.P10989664110424248514

namespace A341854

/-- `A146305(A167499(n+1)+n+1)` -/
def P10989664110424248514.Spec : Prop :=
  ∀ n, P10989664110424248514.a n = A341854 n

end A341854

/-! ## A341854.P8788464502701832440

`A146305(A000217(n+4)-(n+1))`
-/

namespace A341854.P8788464502701832440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146305 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A341854.P8788464502701832440

namespace A341854

/-- `A146305(A000217(n+4)-(n+1))` -/
def P8788464502701832440.Spec : Prop :=
  ∀ n, P8788464502701832440.a n = A341854 n

end A341854

/-!
# A341855: Number of nonseparable trivalent maps with n nodes up to orientation preserving automorphisms.

The programs for A341855, there is no canonical definition to state claims against.
-/

/-! ## A341855.P8352456635466842853

`2*A005027(n+3)-A005028(n+3)`
-/

namespace A341855.P8352456635466842853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005027 (n + 3) - A005028 (n + 3)

end

end A341855.P8352456635466842853

/-! ## A341855.P8878474572648087864

`A004277(A005027(n+3))-A005028(n+3)`
-/

namespace A341855.P8878474572648087864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005027 (n + 3)).toNat - A005028 (n + 3)

end

end A341855.P8878474572648087864

/-! ## A341855.P10477897743685213350

`2*A005027(n+3)-A335380(A150220(n))`
-/

namespace A341855.P10477897743685213350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005027 (n + 3) - A335380 (A150220 n).toNat

end

end A341855.P10477897743685213350

/-!
# A341856: Array read by antidiagonals: T(n,k) is the number of rooted strong triangulations of a disk with n interior nodes and 3+k nodes on the boundary.

The programs for A341856, there is no canonical definition to state claims against.
-/

/-! ## A341856.P7028415749764582160

`∑{d}[A264954(n+1), A276837(#)]`
-/

namespace A341856.P7028415749764582160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276837 d

end

end A341856.P7028415749764582160

/-! ## A341856.P925002271591628263

`A159918(A349780(n)+A303535(n))`
-/

namespace A341856.P925002271591628263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A349780 n + A303535 n).toNat

end

end A341856.P925002271591628263

/-! ## A341856.P12643029524808812765

`A000196(C(A046899(n), A122857(n)))`
-/

namespace A341856.P12643029524808812765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose (A046899 n).toNat (A122857 n).toNat)

end

end A341856.P12643029524808812765

/-! ## A341856.P8064396087758730705

`ceil(A168485(A319501(n))/A309049(n))`
-/

namespace A341856.P8064396087758730705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168485 (A319501 n).toNat : ℚ) / (A309049 n : ℚ)⌉

end

end A341856.P8064396087758730705

/-! ## A341856.P3219625577793761978

`A168485(A135313(n))`
-/

namespace A341856.P3219625577793761978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168485 (A135313 n).toNat

end

end A341856.P3219625577793761978

/-!
# A341857: a(n) = psi(n^2)/n, psi = A002322.

The programs for A341857, there is no canonical definition to state claims against.
-/

/-! ## A341857.P13495672931405157414

`A002322((n+1)²)/(n+1)`
-/

namespace A341857.P13495672931405157414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A341857.P13495672931405157414

/-! ## A341857.P17623187254847884583

`A000010(n+1)/A034380(A342768(n+1))`
-/

namespace A341857.P17623187254847884583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A034380 (A342768 (n + 1)).toNat : ℚ)

end

end A341857.P17623187254847884583

/-! ## A341857.P11953048525970177944

`A002322(A342768(n+1))/(n+1)*A006530(n+1)`
-/

namespace A341857.P11953048525970177944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (A342768 (n + 1)).toNat : ℚ) / (n + 1 : ℚ) * (A006530 (n + 1) : ℚ)

end

end A341857.P11953048525970177944

/-! ## A341857.P17948068892477253381

`A000010(n+1)/A034380((n+1)²)`
-/

namespace A341857.P17948068892477253381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A034380 ((n + 1) ^ 2) : ℚ)

end

end A341857.P17948068892477253381

/-! ## A341857.P5523295125748493462

`A277030(A233583(n+2)²)/A233583(n+2)`
-/

namespace A341857.P5523295125748493462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277030 (A233583 (n + 2) ^ 2).toNat : ℚ) / (A233583 (n + 2) : ℚ)

end

end A341857.P5523295125748493462

/-!
# A341858: Numbers k such that psi(k^2) = k, psi = A002322; indices of 1 in A341857.

The programs for A341858, there is no canonical definition to state claims against.
-/

/-! ## A341858.P3881052077424513752

`A036453(n+1)*A106741(A028310(n))`
-/

namespace A341858.P3881052077424513752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A106741 (A028310 n).toNat

end

end A341858.P3881052077424513752

/-! ## A341858.P13103033170655506080

`(A000217(ceil(n/(n+1)))+1)*A106741(A028310(n))`
-/

namespace A341858.P13103033170655506080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat + 1) * A106741 (A028310 n).toNat

end

end A341858.P13103033170655506080

/-! ## A341858.P1479315715224499248

`A014963(A001316(n))*A106741(A028310(n))`
-/

namespace A341858.P1479315715224499248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A106741 (A028310 n).toNat

end

end A341858.P1479315715224499248

/-! ## A341858.P7520706663847104021

`A020639(A000118(n))*A106741(A028310(n))`
-/

namespace A341858.P7520706663847104021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A106741 (A028310 n).toNat

end

end A341858.P7520706663847104021

/-! ## A341858.P6243892047956328583

`A020639(A004277(n))*A106741(A028310(n))`
-/

namespace A341858.P6243892047956328583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A106741 (A028310 n).toNat

end

end A341858.P6243892047956328583

/-! ## A341858.P8447128394787667047

`A014963(A277561(n))*A106741(A028310(n))`
-/

namespace A341858.P8447128394787667047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A277561 n).toNat * A106741 (A028310 n).toNat

end

end A341858.P8447128394787667047

/-! ## A341858.P14337807171782985550

`A020639(A006093(n+1))*A106741(A028310(n))`
-/

namespace A341858.P14337807171782985550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1)).toNat * A106741 (A028310 n).toNat

end

end A341858.P14337807171782985550

/-! ## A341858.P10554672431058046093

`A072491(A008864(n+1))*A106741(A028310(n))`
-/

namespace A341858.P10554672431058046093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A008864 (n + 1)).toNat * A106741 (A028310 n).toNat

end

end A341858.P10554672431058046093

/-! ## A341858.P10221712139226574563

`A001227(A080165(n+1))*A106741(A028310(n))`
-/

namespace A341858.P10221712139226574563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A080165 (n + 1)).toNat * A106741 (A028310 n).toNat

end

end A341858.P10221712139226574563

/-! ## A341858.P5927225116838921771

`A020639(A000010(n+2))*A106741(A028310(n))`
-/

namespace A341858.P5927225116838921771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A106741 (A028310 n).toNat

end

end A341858.P5927225116838921771

/-! ## A341858.P13877761906214653492

`A001221(2*A000040(n+1))*A106741(A028310(n))`
-/

namespace A341858.P13877761906214653492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1)).toNat * A106741 (A028310 n).toNat

end

end A341858.P13877761906214653492

/-! ## A341858.P3936024783832729743

`(A052409(n²+1)+1)*A106741(A028310(n))`
-/

namespace A341858.P3936024783832729743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052409 (n ^ 2 + 1) + 1) * A106741 (A028310 n).toNat

end

end A341858.P3936024783832729743

/-! ## A341858.P10322770719441361081

`A020639(A087784(n+1))*A106741(A028310(n))`
-/

namespace A341858.P10322770719441361081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A087784 (n + 1)).toNat * A106741 (A028310 n).toNat

end

end A341858.P10322770719441361081

/-! ## A341858.P4560826200019482339

`A007947(A137688(n))*A106741(A028310(n))`
-/

namespace A341858.P4560826200019482339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A137688 n).toNat * A106741 (A028310 n).toNat

end

end A341858.P4560826200019482339

/-! ## A341858.P17107546408488519782

`A014963(A102376(n))*A106741(A028310(n))`
-/

namespace A341858.P17107546408488519782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102376 n).toNat * A106741 (A028310 n).toNat

end

end A341858.P17107546408488519782

/-!
# A341860: a(n) is the least k such that A341857(k) = psi(k^2)/k = n, or 0 if no such k exists.

The programs for A341860, there is no canonical definition to state claims against.
-/

/-! ## A341860.P249898834479451142

`A061026(n+1)*A123317(A247594(n))`
-/

namespace A341860.P249898834479451142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (n + 1) * A123317 (A247594 n).toNat

end

end A341860.P249898834479451142

/-! ## A341860.P14001876228537575750

`A050412(A008776(n)-1)*A061026(n+1)`
-/

namespace A341860.P14001876228537575750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A008776 n - 1).toNat * A061026 (n + 1)

end

end A341860.P14001876228537575750

/-! ## A341860.P10005222462367266425

`A064234(n+1)/A334948(A191717(n+1))`
-/

namespace A341860.P10005222462367266425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064234 (n + 1) : ℚ) / (A334948 (A191717 (n + 1)).toNat : ℚ)

end

end A341860.P10005222462367266425

/-!
# A341861: Number of primes among the (p-1)/2 numbers {2*p+1, 4*p+1, ..., (p-1)*p+1}, p = prime(n).

The programs for A341861, there is no canonical definition to state claims against.
-/

/-! ## A341861.P15820372269343012088

`A085053(p?[record[xor(1, n)]])`
-/

namespace A341861.P15820372269343012088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A341861.P15820372269343012088

/-! ## A341861.P1777388876534513636

`A085053(p?[2*n+1])`
-/

namespace A341861.P1777388876534513636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A341861.P1777388876534513636

/-! ## A341861.P15579507511965050664

`A086685(p?[2*n+1])`
-/

namespace A341861.P15579507511965050664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086685 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A341861.P15579507511965050664

/-! ## A341861.P14602877486732566719

`A086685(A045319(n+1))`
-/

namespace A341861.P14602877486732566719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086685 (A045319 (n + 1)).toNat

end

end A341861.P14602877486732566719

/-! ## A341861.P4965154823616903445

`A086685(A045344(n+1))`
-/

namespace A341861.P4965154823616903445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086685 (A045344 (n + 1)).toNat

end

end A341861.P4965154823616903445

/-! ## A341861.P241150754489666522

`A085053(A065091(n+1))`
-/

namespace A341861.P241150754489666522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (A065091 (n + 1)).toNat

end

end A341861.P241150754489666522

/-! ## A341861.P7693638194647314402

`A085053(A140475(n+1))`
-/

namespace A341861.P7693638194647314402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (A140475 (n + 1)).toNat

end

end A341861.P7693638194647314402

/-! ## A341861.P1702171879435647295

`A085053(A000040(n+2))`
-/

namespace A341861.P1702171879435647295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (A000040 (n + 2)).toNat

end

end A341861.P1702171879435647295

/-! ## A341861.P13915733129985884258

`A085053(A006005(n+2))`
-/

namespace A341861.P13915733129985884258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (A006005 (n + 2)).toNat

end

end A341861.P13915733129985884258

/-! ## A341861.P6420118688409797264

`A085053(A161847(n+2))`
-/

namespace A341861.P6420118688409797264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (A161847 (n + 2)).toNat

end

end A341861.P6420118688409797264

/-! ## A341861.P18312389325990114944

`A085053(A171577(n+2))`
-/

namespace A341861.P18312389325990114944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (A171577 (n + 2)).toNat

end

end A341861.P18312389325990114944

/-! ## A341861.P2771010453949301876

`A085053(record[A006530(n+3)])`
-/

namespace A341861.P2771010453949301876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341861.P2771010453949301876

/-! ## A341861.P11491918724119651270

`A085053(record[A014963(n+3)])`
-/

namespace A341861.P11491918724119651270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341861.P11491918724119651270

/-! ## A341861.P10322332630712585983

`A085053(record[A020639(n+3)])`
-/

namespace A341861.P10322332630712585983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341861.P10322332630712585983

/-!
# A341864: Least increasing sequence of primes a(n) == A020652(n) (mod A038567(n)).

The programs for A341864, there is no canonical definition to state claims against.
-/

/-! ## A341864.P2387297008961167518

`p?[∑[A260449(A260482(2*n+1))]]`
-/

namespace A341864.P2387297008961167518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A260482 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341864.P2387297008961167518

/-! ## A341864.P1564466812921785972

`∩[A163422(n+1), A377463(n+1)]`
-/

namespace A341864.P1564466812921785972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341864.P1564466812921785972

/-! ## A341864.P5635333268005967212

`p?[A122313(comp[A082325(3*n+2)])]`
-/

namespace A341864.P5635333268005967212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082325 (3 * n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A341864.P5635333268005967212

/-! ## A341864.P2941089373520778131

`or(A087501(A195160(n)), A136087(n+1))`
-/

namespace A341864.P2941089373520778131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087501 (A195160 n).toNat) (A136087 (n + 1))

end

end A341864.P2941089373520778131

/-! ## A341864.P595269700439022548

`filter[A163422(n+1), A153490(#)]`
-/

namespace A341864.P595269700439022548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A153490 (f1 j).toNat = 1) n)

end

end A341864.P595269700439022548

/-!
# A341865: The cardinality of the largest multiset of positive integers whose product and sum equals n.

The programs for A341865, the canonical program `A341865.P3043601699386979277` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341865 has offset 1).

The definition of A341865 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341865.P3043601699386979277

`n+1-A059975(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A341865

/-- `n+1-A059975(n+1)` -/
def P3043601699386979277.Spec : Prop :=
  ∀ n, P3043601699386979277.a n = A341865 (n + 1)

theorem P3043601699386979277.correct : P3043601699386979277.Spec := by
  intro n
  simp only [A341865, Nat.add_sub_cancel]

end A341865

/-! ## A341865.P11070173647516753688

`∑{e}[n+1, #]+1-∑{p}[n+1, #*val(n+1, #)]+n`
-/

namespace A341865.P11070173647516753688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) + (1 - ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + (n : ℤ))

end

end A341865.P11070173647516753688

namespace A341865

/-- `∑{e}[n+1, #]+1-∑{p}[n+1, #*val(n+1, #)]+n` -/
def P11070173647516753688.Spec : Prop :=
  ∀ n, P11070173647516753688.a n = A341865 (n + 1)

theorem P11070173647516753688.correct : P11070173647516753688.Spec := by
  intro n
  simp only [A341865, Nat.add_sub_cancel, A341865.P11070173647516753688.f1, A341865.P11070173647516753688.f2, A341865.P11070173647516753688.a, A341865.P3043601699386979277.a, A059975, A059975.P3594971538098503590.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341865

/-! ## A341865.P16569254345900007268

`val(∏{e}[n+1, 2^#], 2)+1-∑{p}[n+1, #*val(n+1, #)]+n`
-/

namespace A341865.P16569254345900007268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2 : ℤ) + (1 - ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + (n : ℤ))

end

end A341865.P16569254345900007268

namespace A341865

/-- `val(∏{e}[n+1, 2^#], 2)+1-∑{p}[n+1, #*val(n+1, #)]+n` -/
def P16569254345900007268.Spec : Prop :=
  ∀ n, P16569254345900007268.a n = A341865 (n + 1)

end A341865

/-! ## A341865.P8876122630625565310

`∑{p}[n+1, val(n+1, #)]+1-∑{p}[n+1, #*val(n+1, #)]+n`
-/

namespace A341865.P8876122630625565310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + (1 - ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + (n : ℤ))

end

end A341865.P8876122630625565310

namespace A341865

/-- `∑{p}[n+1, val(n+1, #)]+1-∑{p}[n+1, #*val(n+1, #)]+n` -/
def P8876122630625565310.Spec : Prop :=
  ∀ n, P8876122630625565310.a n = A341865 (n + 1)

end A341865

/-! ## A341865.P3844708297964724954

`2-A275314(n+1)+n`
-/

namespace A341865.P3844708297964724954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A275314 (n + 1) + (n : ℤ)

end

end A341865.P3844708297964724954

namespace A341865

/-- `2-A275314(n+1)+n` -/
def P3844708297964724954.Spec : Prop :=
  ∀ n, P3844708297964724954.a n = A341865 (n + 1)

theorem P3844708297964724954.correct : P3844708297964724954.Spec := by
  intro n
  simp only [A341865, Nat.add_sub_cancel, A341865.P3844708297964724954.a, A341865.P3043601699386979277.a, A059975, A059975.P3594971538098503590.a, A275314, A275314.P16603517016269577307.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341865

/-! ## A341865.P10287306261343102708

`2*n+3-A397106(n+1)`
-/

namespace A341865.P10287306261343102708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A397106 (n + 1)

end

end A341865.P10287306261343102708

namespace A341865

/-- `2*n+3-A397106(n+1)` -/
def P10287306261343102708.Spec : Prop :=
  ∀ n, P10287306261343102708.a n = A341865 (n + 1)

theorem P10287306261343102708.correct : P10287306261343102708.Spec := by
  intro n
  simp only [A341865, Nat.add_sub_cancel, A341865.P10287306261343102708.a, A341865.P3043601699386979277.a, A059975, A059975.P3594971538098503590.a, A397106, A397106.P13058087477262254909.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A275314, A275314.P16603517016269577307.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341865

/-! ## A341865.P7929127642013343453

`A001222(n+1)+1-∑{p}[n+1, #*val(n+1, #)]+n`
-/

namespace A341865.P7929127642013343453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (1 - ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + (n : ℤ))

end

end A341865.P7929127642013343453

namespace A341865

/-- `A001222(n+1)+1-∑{p}[n+1, #*val(n+1, #)]+n` -/
def P7929127642013343453.Spec : Prop :=
  ∀ n, P7929127642013343453.a n = A341865 (n + 1)

theorem P7929127642013343453.correct : P7929127642013343453.Spec := by
  intro n
  simp only [A341865, Nat.add_sub_cancel, A341865.P7929127642013343453.f1, A341865.P7929127642013343453.a, A341865.P3043601699386979277.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A059975, A059975.P3594971538098503590.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341865

/-! ## A341865.P10431828256595294375

`A075255(n+1)+A001222(n+1)`
-/

namespace A341865.P10431828256595294375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) + A001222 (n + 1)

end

end A341865.P10431828256595294375

namespace A341865

/-- `A075255(n+1)+A001222(n+1)` -/
def P10431828256595294375.Spec : Prop :=
  ∀ n, P10431828256595294375.a n = A341865 (n + 1)

theorem P10431828256595294375.correct : P10431828256595294375.Spec := by
  intro n
  simp only [A341865, Nat.add_sub_cancel, A341865.P10431828256595294375.a, A341865.P3043601699386979277.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A059975, A059975.P3594971538098503590.a, A075255, A075255.P12137973761347593222.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341865

/-! ## A341865.P8514054796734846470

`A064800(n+1)-A001414(n+1)`
-/

namespace A341865.P8514054796734846470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A001414 (n + 1)

end

end A341865.P8514054796734846470

namespace A341865

/-- `A064800(n+1)-A001414(n+1)` -/
def P8514054796734846470.Spec : Prop :=
  ∀ n, P8514054796734846470.a n = A341865 (n + 1)

theorem P8514054796734846470.correct : P8514054796734846470.Spec := by
  intro n
  simp only [A341865, Nat.add_sub_cancel, A341865.P8514054796734846470.a, A341865.P3043601699386979277.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A059975, A059975.P3594971538098503590.a, A064800, A064800.P9178262813478475092.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341865

/-! ## A341865.P7620646620517338923

`A062249(n+1)-A140255(n+1)`
-/

namespace A341865.P7620646620517338923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A140255 (n + 1)

end

end A341865.P7620646620517338923

namespace A341865

/-- `A062249(n+1)-A140255(n+1)` -/
def P7620646620517338923.Spec : Prop :=
  ∀ n, P7620646620517338923.a n = A341865 (n + 1)

end A341865

/-! ## A341865.P13520725985865798098

`A144396(n+1)%A397106(n+1)`
-/

namespace A341865.P13520725985865798098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A397106 (n + 1))

end

end A341865.P13520725985865798098

namespace A341865

/-- `A144396(n+1)%A397106(n+1)` -/
def P13520725985865798098.Spec : Prop :=
  ∀ n, P13520725985865798098.a n = A341865 (n + 1)

end A341865

/-! ## A341865.P10278193330968832446

`∑{d}[n+1, A000010(#)+1-A014963(#)]`
-/

namespace A341865.P10278193330968832446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d + (1 - A014963 d))

end

end A341865.P10278193330968832446

namespace A341865

/-- `∑{d}[n+1, A000010(#)+1-A014963(#)]` -/
def P10278193330968832446.Spec : Prop :=
  ∀ n, P10278193330968832446.a n = A341865 (n + 1)

end A341865

/-! ## A341865.P1052456965849922349

`A001222(n+1)+1-A001414(n+1)+n`
-/

namespace A341865.P1052456965849922349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + 1 - A001414 (n + 1) + (n : ℤ)

end

end A341865.P1052456965849922349

namespace A341865

/-- `A001222(n+1)+1-A001414(n+1)+n` -/
def P1052456965849922349.Spec : Prop :=
  ∀ n, P1052456965849922349.a n = A341865 (n + 1)

theorem P1052456965849922349.correct : P1052456965849922349.Spec := by
  intro n
  simp only [A341865, Nat.add_sub_cancel, A341865.P1052456965849922349.a, A341865.P3043601699386979277.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A059975, A059975.P3594971538098503590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341865

/-! ## A341865.P5986894159604248976

`A325036(A064988(n+1))+log2(∏{e}[n+1, 2^#])`
-/

namespace A341865.P5986894159604248976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325036 (A064988 (n + 1)).toNat : ℝ) + Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A341865.P5986894159604248976

namespace A341865

/-- `A325036(A064988(n+1))+log2(∏{e}[n+1, 2^#])` -/
def P5986894159604248976.Spec : Prop :=
  ∀ n, P5986894159604248976.a n = (A341865 (n + 1) : ℝ)

end A341865

/-! ## A341865.P3008953376227471433

`A325036(A064988(n+1))+A252736(2*(n+1))`
-/

namespace A341865.P3008953376227471433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A064988 (n + 1)).toNat + A252736 (2 * (n + 1))

end

end A341865.P3008953376227471433

namespace A341865

/-- `A325036(A064988(n+1))+A252736(2*(n+1))` -/
def P3008953376227471433.Spec : Prop :=
  ∀ n, P3008953376227471433.a n = A341865 (n + 1)

end A341865

/-! ## A341865.P822319846060268800

`A325036(A064988(n+1))+val(A124508(n+1), 2)`
-/

namespace A341865.P822319846060268800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A064988 (n + 1)).toNat + (SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2 : ℤ)

end

end A341865.P822319846060268800

namespace A341865

/-- `A325036(A064988(n+1))+val(A124508(n+1), 2)` -/
def P822319846060268800.Spec : Prop :=
  ∀ n, P822319846060268800.a n = A341865 (n + 1)

end A341865

/-! ## A341865.P15255006036766246361

`A325036(A064988(n+1))+A000005(∏{e}[n+1, 2^#])-1`
-/

namespace A341865.P15255006036766246361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A064988 (n + 1)).toNat + (A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1)

end

end A341865.P15255006036766246361

namespace A341865

/-- `A325036(A064988(n+1))+A000005(∏{e}[n+1, 2^#])-1` -/
def P15255006036766246361.Spec : Prop :=
  ∀ n, P15255006036766246361.a n = A341865 (n + 1)

end A341865

/-! ## A341865.P11884219232384810660

`n+1-A392781((n+1)²)`
-/

namespace A341865.P11884219232384810660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A392781 ((n + 1) ^ 2)

end

end A341865.P11884219232384810660

namespace A341865

/-- `n+1-A392781((n+1)²)` -/
def P11884219232384810660.Spec : Prop :=
  ∀ n, P11884219232384810660.a n = A341865 (n + 1)

end A341865

/-!
# A341866: The cardinality of the smallest (nontrivial, except for prime n) multiset of positive integers whose product and sum equal n.

The programs for A341866, there is no canonical definition to state claims against.
-/

/-! ## A341866.P6512876549204043499

`3-A111234(n+1)+n`
-/

namespace A341866.P6512876549204043499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A111234 (n + 1) + (n : ℤ)

end

end A341866.P6512876549204043499

/-! ## A341866.P324054693554620961

`A330492(abs(1-n)+2)+1`
-/

namespace A341866.P324054693554620961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (|1 - (n : ℤ)| + 2).toNat + 1

end

end A341866.P324054693554620961

/-! ## A341866.P15178984487423130407

`abs(Δ[A101505(abs(1-n)+2)])`
-/

namespace A341866.P15178984487423130407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101505 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A341866.P15178984487423130407

/-! ## A341866.P7705031205091636920

`Δ[floor(A101505(n+1)+acot(n))]`
-/

namespace A341866.P7705031205091636920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101505 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341866.P7705031205091636920

/-! ## A341866.P10620409261967149645

`(n+3-A089389(n+1))%(n+2)`
-/

namespace A341866.P10620409261967149645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 3 : ℤ) - A089389 (n + 1)) (n + 2 : ℤ)

end

end A341866.P10620409261967149645

/-! ## A341866.P14740458381859006977

`A060681(n+1)+2-A020639(n+1)`
-/

namespace A341866.P14740458381859006977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + (2 - A020639 (n + 1))

end

end A341866.P14740458381859006977

/-! ## A341866.P8025781506641203185

`n+3-(A032742(n+1)+A020639(n+1))`
-/

namespace A341866.P8025781506641203185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (A032742 (n + 1) + A020639 (n + 1))

end

end A341866.P8025781506641203185

/-! ## A341866.P6708410021302772184

`A275257(A020639(n+1)+A000217(n))`
-/

namespace A341866.P6708410021302772184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275257 (A020639 (n + 1) + A000217 n).toNat

end

end A341866.P6708410021302772184

/-!
# A341867: Square array read by downward antidiagonals: T(m,n) = Sum_{i=0..m, j=0..n} binomial(m,i)*binomial(n,j)*binomial(i+j,i).

The programs for A341867, the canonical program `A341867.P589385899074323264` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341867 has offset 0).

The definition of A341867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341867.P589385899074323264

`2*(T(n-1,k)+T(n-1,k-1))-3*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341867

/-- `2*(T(n-1,k)+T(n-1,k-1))-3*T(n-2,k-1)` -/
def P589385899074323264.Spec : Prop :=
  ∀ n, P589385899074323264.a n = A341867 n

theorem P589385899074323264.correct : P589385899074323264.Spec := by
  intro n
  simp only [A341867]

end A341867

/-! ## A341867.P13956819301437996456

`∑{d}[A036561(n), A050363(#)]`
-/

namespace A341867.P13956819301437996456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050363 d

end

end A341867.P13956819301437996456

namespace A341867

/-- `∑{d}[A036561(n), A050363(#)]` -/
def P13956819301437996456.Spec : Prop :=
  ∀ n, P13956819301437996456.a n = A341867 n

end A341867

/-! ## A341867.P1316097988275047801

`∑{d}[A036561(n), A308063(#)]`
-/

namespace A341867.P1316097988275047801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A308063 d

end

end A341867.P1316097988275047801

namespace A341867

/-- `∑{d}[A036561(n), A308063(#)]` -/
def P1316097988275047801.Spec : Prop :=
  ∀ n, P1316097988275047801.a n = A341867 n

end A341867

/-! ## A341867.P9932055542182307268

`∑{d}[A175840(n), A050363(#)]`
-/

namespace A341867.P9932055542182307268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050363 d

end

end A341867.P9932055542182307268

namespace A341867

/-- `∑{d}[A175840(n), A050363(#)]` -/
def P9932055542182307268.Spec : Prop :=
  ∀ n, P9932055542182307268.a n = A341867 n

end A341867

/-! ## A341867.P8585646221898754131

`∑{d}[A175840(n), A308063(#)]`
-/

namespace A341867.P8585646221898754131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A308063 d

end

end A341867.P8585646221898754131

namespace A341867

/-- `∑{d}[A175840(n), A308063(#)]` -/
def P8585646221898754131.Spec : Prop :=
  ∀ n, P8585646221898754131.a n = A341867 n

end A341867

/-!
# A341868: Number of partitions of n into 4 distinct and relatively prime parts.

The programs for A341868, there is no canonical definition to state claims against.
-/

/-! ## A341868.P8381371598972872698

`A178779(A163233(n))+A001400(n)`
-/

namespace A341868.P8381371598972872698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (A163233 n).toNat + A001400 n

end

end A341868.P8381371598972872698

/-! ## A341868.P8851818010661131765

`A177151(A090631(n)-A069905(n))`
-/

namespace A341868.P8851818010661131765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A090631 n - A069905 n).toNat

end

end A341868.P8851818010661131765

/-! ## A341868.P11201016207209736574

`A001400(n)-A305821(A073371(n))`
-/

namespace A341868.P11201016207209736574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A305821 (A073371 n).toNat

end

end A341868.P11201016207209736574

/-! ## A341868.P17022844198360992235

`A001400(n)-A185284(A068780(n+1))`
-/

namespace A341868.P17022844198360992235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n - A185284 (A068780 (n + 1)).toNat

end

end A341868.P17022844198360992235

/-!
# A341869: For any k, the cumulative sum of the terms a(1) + a(2) + a(3) + ... + a(k) and the cumulative sum of their digits so far are odd. This is the lexicographically earliest sequence of distinct terms > 0 with this property.

The programs for A341869, there is no canonical definition to state claims against.
-/

/-! ## A341869.P14788390821580425731

`round(1/acot(A179082(n+1)))`
-/

namespace A341869.P14788390821580425731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A179082 (n + 1) : ℝ))

end

end A341869.P14788390821580425731

/-! ## A341869.P9948403033747180180

`ceil(abs(ϕ-A179085(n+1)))`
-/

namespace A341869.P9948403033747180180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.goldenRatio - (A179085 (n + 1) : ℝ)|⌉

end

end A341869.P9948403033747180180

/-! ## A341869.P14113583209674436792

`A179082(C(n+1, n))+C(2, n+2)`
-/

namespace A341869.P14113583209674436792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (Nat.choose (n + 1) n) + (Nat.choose 2 (n + 2) : ℤ)

end

end A341869.P14113583209674436792

/-! ## A341869.P870399516798790890

`A179082(comp[2*(n+1)]-n+2)^ceil(sin(n)²)`
-/

namespace A341869.P870399516798790890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179082 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 2).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A341869.P870399516798790890

/-! ## A341869.P4783762017832210533

`A028310(A179082(n+1))`
-/

namespace A341869.P4783762017832210533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A179082 (n + 1)).toNat

end

end A341869.P4783762017832210533

/-! ## A341869.P7668040021968175584

`A055456(A179085(n+1))`
-/

namespace A341869.P7668040021968175584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A179085 (n + 1)).toNat

end

end A341869.P7668040021968175584

/-! ## A341869.P13753471680670056685

`eq[A090192(n), A179081(n)]`
-/

namespace A341869.P13753471680670056685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341869.P13753471680670056685

/-! ## A341869.P10148622000909528592

`eq[A131575(n), A179081(n)]`
-/

namespace A341869.P10148622000909528592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341869.P10148622000909528592

/-! ## A341869.P15243046665476969782

`eq[A179081(n), A245928(n)]`
-/

namespace A341869.P15243046665476969782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341869.P15243046665476969782

/-! ## A341869.P7109488745269474364

`eq[A179081(n), A277929(n)]`
-/

namespace A341869.P7109488745269474364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341869.P7109488745269474364

/-!
# A341870: Number of partitions of n into 6 distinct and relatively prime parts.

The programs for A341870, there is no canonical definition to state claims against.
-/

/-! ## A341870.P11655567593635677630

`A001402(n)-A102683(A058498(n+1))`
-/

namespace A341870.P11655567593635677630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A102683 (A058498 (n + 1)).toNat

end

end A341870.P11655567593635677630

/-! ## A341870.P1639614318568503961

`A234666(n)-A102683(A058498(n+1))`
-/

namespace A341870.P1639614318568503961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234666 (n + 21) - A102683 (A058498 (n + 1)).toNat

end

end A341870.P1639614318568503961

/-! ## A341870.P1031722287323025432

`A001402(n)-A185284(A007298(n+1))`
-/

namespace A341870.P1031722287323025432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A185284 (A007298 (n + 1)).toNat

end

end A341870.P1031722287323025432

/-! ## A341870.P2010354962152214057

`A234666(n)-A185284(A007298(n+1))`
-/

namespace A341870.P2010354962152214057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234666 (n + 21) - A185284 (A007298 (n + 1)).toNat

end

end A341870.P2010354962152214057

/-! ## A341870.P10810988637629571474

`A001402(n)-A373266(A061033(n+3))`
-/

namespace A341870.P10810988637629571474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n - A373266 (A061033 (n + 3)).toNat

end

end A341870.P10810988637629571474

/-!
# A341876: E.g.f.: Product_{i>=1, j>=1} (1 + x^(i*j)/(i*j)!) / (1 - x^(i*j)/(i*j)!).

The programs for A341876, there is no canonical definition to state claims against.
-/

/-! ## A341876.P3343384260909960819

`∑{#}[n, C(n, #)*A341505(#)*A341506(n-#)]`
-/

namespace A341876.P3343384260909960819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A341505 k * A341506 (n - k)

end

end A341876.P3343384260909960819

/-! ## A341876.P987138507554052520

`A047263((∑[n+1]+1)/2*n!+1)`
-/

namespace A341876.P987138507554052520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ) + 1)).toNat

end

end A341876.P987138507554052520

/-!
# A341877: The number of regions inside a vesica piscis formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A341877, there is no canonical definition to state claims against.
-/

/-! ## A341877.P14392886789485447975

`A342152(n+1)+1-A341878(n+1)`
-/

namespace A341877.P14392886789485447975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342152 (n + 1) + (1 - A341878 (n + 1))

end

end A341877.P14392886789485447975

/-! ## A341877.P14080125207088859049

`A342152(n+1)-A185048(A341878(n+1))`
-/

namespace A341877.P14080125207088859049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342152 (n + 1) - A185048 (A341878 (n + 1)).toNat

end

end A341877.P14080125207088859049

/-!
# A341878: The number of vertices on a vesica piscis formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A341878, there is no canonical definition to state claims against.
-/

/-! ## A341878.P13357952035899754084

`A342152(n+1)+1-A341877(n+1)`
-/

namespace A341878.P13357952035899754084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342152 (n + 1) + (1 - A341877 (n + 1))

end

end A341878.P13357952035899754084

/-! ## A341878.P14355913049897701334

`A020725(A342152(n+1)-A341877(n+1))`
-/

namespace A341878.P14355913049897701334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A342152 (n + 1) - A341877 (n + 1)).toNat

end

end A341878.P14355913049897701334

/-!
# A341879: a(n) is the largest d(k) such that sigma(k) = n, where d is the number of divisor function and sigma is the sum of divisors function.

The programs for A341879, there is no canonical definition to state claims against.
-/

/-! ## A341879.P11728884699673714226

`∑{d}[A051444(n+1), A007913(#²)]`
-/

namespace A341879.P11728884699673714226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007913 (d ^ 2)

end

end A341879.P11728884699673714226

/-! ## A341879.P17908395405206036252

`∑{d}[A051444(n+1), A005171(#²)]`
-/

namespace A341879.P17908395405206036252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005171 (d ^ 2)

end

end A341879.P17908395405206036252

/-! ## A341879.P7030868534989322016

`∑{d}[A051444(n+1), A001222(A142847(#))]`
-/

namespace A341879.P7030868534989322016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 (A142847 d).toNat

end

end A341879.P7030868534989322016

/-! ## A341879.P735878533295139593

`∑{d}[A051444(n+1), A007318(A000217(#))]`
-/

namespace A341879.P735878533295139593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (A000217 d).toNat

end

end A341879.P735878533295139593

/-! ## A341879.P10731478117094332050

`∑{d}[A051444(n+1), A272901(A014132(#))]`
-/

namespace A341879.P10731478117094332050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A272901 (A014132 d).toNat

end

end A341879.P10731478117094332050

/-! ## A341879.P16667008821075932555

`∑{d}[A051444(n+1), A000593(A034444(#²))]`
-/

namespace A341879.P16667008821075932555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000593 (A034444 (d ^ 2)).toNat

end

end A341879.P16667008821075932555

/-! ## A341879.P11002870171240927605

`∑{d}[A051444(n+1), A001221(A105888(#²))]`
-/

namespace A341879.P11002870171240927605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A105888 (d ^ 2)).toNat

end

end A341879.P11002870171240927605

/-! ## A341879.P12940344964451919679

`∑{d}[A051444(n+1), A285384(A000010(#²))]`
-/

namespace A341879.P12940344964451919679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A285384 (A000010 (d ^ 2)).toNat

end

end A341879.P12940344964451919679

/-! ## A341879.P499639488733059693

`∑{d}[A051444(n+1), A001222(A002313(#²))]`
-/

namespace A341879.P499639488733059693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 (A002313 (d ^ 2)).toNat

end

end A341879.P499639488733059693

/-!
# A341880: Number of ordered factorizations of n into 4 factors > 1.

The programs for A341880, the canonical program `A341880.P3597837637879415614` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341880 has offset 16).

The definition of A341880 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007426, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341880.P3597837637879415614

`6*A000005(n+16)-4*A007425(n+16)+A007426(n+16)-4`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341880

/-- `6*A000005(n+16)-4*A007425(n+16)+A007426(n+16)-4` -/
def P3597837637879415614.Spec : Prop :=
  ∀ n, P3597837637879415614.a n = A341880 (n + 16)

theorem P3597837637879415614.correct : P3597837637879415614.Spec := by
  intro n
  simp only [A341880, Nat.add_sub_cancel]

end A341880

/-! ## A341880.P3472061901398609512

`and(A028712(n), A227739(A127118(n+1)))`
-/

namespace A341880.P3472061901398609512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028712 n) (A227739 (A127118 (n + 1)).toNat)

end

end A341880.P3472061901398609512

namespace A341880

/-- `and(A028712(n), A227739(A127118(n+1)))` -/
def P3472061901398609512.Spec : Prop :=
  ∀ n, P3472061901398609512.a n = A341880 (n + 16)

end A341880

/-! ## A341880.P8992019030539859077

`A028706(A048766(n)^A028715(n))`
-/

namespace A341880.P8992019030539859077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028706 (SequenceMachineLib.roundAway ((A048766 n : ℚ) ^ (A028715 n : ℤ))).toNat

end

end A341880.P8992019030539859077

namespace A341880

/-- `A028706(A048766(n)^A028715(n))` -/
def P8992019030539859077.Spec : Prop :=
  ∀ n, P8992019030539859077.a n = A341880 (n + 16)

end A341880

/-! ## A341880.P13886609836127343642

`A285340(A347705(3*n+4)%A000124(n))`
-/

namespace A341880.P13886609836127343642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285340 (Int.tmod (A347705 (3 * n + 4)) (A000124 n)).toNat

end

end A341880.P13886609836127343642

namespace A341880

/-- `A285340(A347705(3*n+4)%A000124(n))` -/
def P13886609836127343642.Spec : Prop :=
  ∀ n, P13886609836127343642.a n = A341880 (n + 16)

end A341880

/-! ## A341880.P3971380597065425238

`and(A000010(3*n+2), A038155(A323436(3*n+4)))`
-/

namespace A341880.P3971380597065425238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (3 * n + 2)) (A038155 (A323436 (3 * n + 4)).toNat)

end

end A341880.P3971380597065425238

namespace A341880

/-- `and(A000010(3*n+2), A038155(A323436(3*n+4)))` -/
def P3971380597065425238.Spec : Prop :=
  ∀ n, P3971380597065425238.a n = A341880 (n + 16)

end A341880

/-!
# A341881: Number of ordered factorizations of n into 5 factors > 1.

The programs for A341881, there is no canonical definition to state claims against.
-/

/-! ## A341881.P13852264368876091624

`C(A296658(n+1), A327331(2*n+1))`
-/

namespace A341881.P13852264368876091624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A296658 (n + 1)).toNat (A327331 (2 * n + 1)).toNat

end

end A341881.P13852264368876091624

/-! ## A341881.P8686433980028373893

`C(A212300(n+5), A334299(2*n+1))`
-/

namespace A341881.P8686433980028373893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212300 (n + 5)).toNat (A334299 (2 * n + 1)).toNat

end

end A341881.P8686433980028373893

/-! ## A341881.P17279393091653293228

`A153152(and(A137734(n), A268554(n)))`
-/

namespace A341881.P17279393091653293228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (Int.land (A137734 n) (A268554 n)).toNat

end

end A341881.P17279393091653293228

/-! ## A341881.P5253559340829347

`val(A332989(n+1), A007491(A016727(n)))`
-/

namespace A341881.P5253559340829347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A332989 (n + 1)).toNat (A007491 (A016727 n).toNat).toNat

end

end A341881.P5253559340829347

/-! ## A341881.P18146367956091403702

`C(A120037(A066328(n+1)), A305989(n))`
-/

namespace A341881.P18146367956091403702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A120037 (A066328 (n + 1)).toNat).toNat (A305989 n).toNat

end

end A341881.P18146367956091403702

/-!
# A341882: Number of ordered factorizations of n into 6 factors > 1.

The programs for A341882, the canonical program `A341882.P15214908650408016804` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341882 has offset 64).

The definition of A341882 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007426, A034695, A061200, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341882.P15214908650408016804

`15*A000005(n+64)-20*A007425(n+64)+15*A007426(n+64)-6*A061200(n+64)+A034695(n+64)-6`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341882

/-- `15*A000005(n+64)-20*A007425(n+64)+15*A007426(n+64)-6*A061200(n+64)+A034695(n+64)-6` -/
def P15214908650408016804.Spec : Prop :=
  ∀ n, P15214908650408016804.a n = A341882 (n + 64)

theorem P15214908650408016804.correct : P15214908650408016804.Spec := by
  intro n
  simp only [A341882, Nat.add_sub_cancel]

end A341882

/-! ## A341882.P11584631731304362359

`C(A225638(A017666(n+3)), A072272(n))`
-/

namespace A341882.P11584631731304362359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A225638 (A017666 (n + 3)).toNat).toNat (A072272 n).toNat

end

end A341882.P11584631731304362359

namespace A341882

/-- `C(A225638(A017666(n+3)), A072272(n))` -/
def P11584631731304362359.Spec : Prop :=
  ∀ n, (P11584631731304362359.a n : ℤ) = A341882 (n + 64)

end A341882

/-! ## A341882.P8053681129098515535

`A010879(C(A240021(2*(n+2)), A065458(n)))`
-/

namespace A341882.P8053681129098515535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (Nat.choose (A240021 (2 * (n + 2))).toNat (A065458 n).toNat)

end

end A341882.P8053681129098515535

namespace A341882

/-- `A010879(C(A240021(2*(n+2)), A065458(n)))` -/
def P8053681129098515535.Spec : Prop :=
  ∀ n, P8053681129098515535.a n = A341882 (n + 64)

end A341882

/-! ## A341882.P7639173453094184771

`A057163(C(A240021(2*(n+2)), A065458(n)))`
-/

namespace A341882.P7639173453094184771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (Nat.choose (A240021 (2 * (n + 2))).toNat (A065458 n).toNat)

end

end A341882.P7639173453094184771

namespace A341882

/-- `A057163(C(A240021(2*(n+2)), A065458(n)))` -/
def P7639173453094184771.Spec : Prop :=
  ∀ n, P7639173453094184771.a n = A341882 (n + 64)

end A341882

/-! ## A341882.P16980695778538920436

`C(A290103(A124773(n)), A072272(n))`
-/

namespace A341882.P16980695778538920436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A290103 (A124773 n).toNat).toNat (A072272 n).toNat

end

end A341882.P16980695778538920436

namespace A341882

/-- `C(A290103(A124773(n)), A072272(n))` -/
def P16980695778538920436.Spec : Prop :=
  ∀ n, (P16980695778538920436.a n : ℤ) = A341882 (n + 64)

end A341882

/-! ## A341882.P11703590122078221016

`C(A046523(n+1), A005491(A333627(n)))`
-/

namespace A341882.P11703590122078221016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046523 (n + 1)).toNat (A005491 (A333627 n).toNat).toNat

end

end A341882.P11703590122078221016

namespace A341882

/-- `C(A046523(n+1), A005491(A333627(n)))` -/
def P11703590122078221016.Spec : Prop :=
  ∀ n, (P11703590122078221016.a n : ℤ) = A341882 (n + 64)

end A341882

/-! ## A341882.P13027187024030900812

`C(A046523(n+1), A325242(A000118(n)))`
-/

namespace A341882.P13027187024030900812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046523 (n + 1)).toNat (A325242 (A000118 n).toNat).toNat

end

end A341882.P13027187024030900812

namespace A341882

/-- `C(A046523(n+1), A325242(A000118(n)))` -/
def P13027187024030900812.Spec : Prop :=
  ∀ n, (P13027187024030900812.a n : ℤ) = A341882 (n + 64)

end A341882

/-! ## A341882.P3358549037678716010

`C(A342530(n+1), A107265(A000120(n)))`
-/

namespace A341882.P3358549037678716010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A342530 (n + 1)).toNat (A107265 (A000120 n).toNat).toNat

end

end A341882.P3358549037678716010

namespace A341882

/-- `C(A342530(n+1), A107265(A000120(n)))` -/
def P3358549037678716010.Spec : Prop :=
  ∀ n, (P3358549037678716010.a n : ℤ) = A341882 (n + 64)

end A341882

/-! ## A341882.P5082057008487317807

`C(A001222(A131909(n)), A151705(n))`
-/

namespace A341882.P5082057008487317807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A131909 n).toNat).toNat (A151705 n).toNat

end

end A341882.P5082057008487317807

namespace A341882

/-- `C(A001222(A131909(n)), A151705(n))` -/
def P5082057008487317807.Spec : Prop :=
  ∀ n, (P5082057008487317807.a n : ℤ) = A341882 (n + 64)

end A341882

/-! ## A341882.P8425285228661947426

`A333072(n+1)%A040446(n)`
-/

namespace A341882.P8425285228661947426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333072 (n + 1)) (A040446 n)

end

end A341882.P8425285228661947426

namespace A341882

/-- `A333072(n+1)%A040446(n)` -/
def P8425285228661947426.Spec : Prop :=
  ∀ n, P8425285228661947426.a n = A341882 (n + 64)

end A341882

/-!
# A341883: Number of partitions of 2*n+1 into three parts from A339506.

The programs for A341883, there is no canonical definition to state claims against.
-/

/-! ## A341883.P12543743661572354414

`A325678(A008810(n))-A309685(n)`
-/

namespace A341883.P12543743661572354414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A008810 n).toNat - A309685 n

end

end A341883.P12543743661572354414

/-! ## A341883.P16937304908260199253

`A001221(lcm(A279938(n), A298847(n+1)))`
-/

namespace A341883.P16937304908260199253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A279938 n) (A298847 (n + 1)))

end

end A341883.P16937304908260199253

/-!
# A341884: Number of fundamentally different graceful labelings of digraphs with n arcs.

The programs for A341884, there is no canonical definition to state claims against.
-/

/-! ## A341884.P9954578198314114353

`filter[A150245(n), A070887(#)]`
-/

namespace A341884.P9954578198314114353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070887 (f1 j).toNat = 1) n)

end

end A341884.P9954578198314114353

/-! ## A341884.P4335579230531390803

`∩[A008726(n), A150245(n)]`
-/

namespace A341884.P4335579230531390803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150245 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341884.P4335579230531390803

/-!
# A341885: a(n) is the sum of A000217(p) over the prime factors p of n, counted with multiplicity.

The programs for A341885, the canonical program `A341885.P6226405287911743613` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341885 has offset 1).

The definition of A341885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341885.P6226405287911743613

`∑{p}[n+1, val(n+1, #)*A000217(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A341885

/-- `∑{p}[n+1, val(n+1, #)*A000217(#)]` -/
def P6226405287911743613.Spec : Prop :=
  ∀ n, P6226405287911743613.a n = A341885 (n + 1)

theorem P6226405287911743613.correct : P6226405287911743613.Spec := by
  intro n
  simp only [A341885, Nat.add_sub_cancel]

end A341885

/-! ## A341885.P12283897042663301052

`∑{d}[n+1, A074374(A014963(#))]`
-/

namespace A341885.P12283897042663301052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074374 (A014963 d).toNat

end

end A341885.P12283897042663301052

namespace A341885

/-- `∑{d}[n+1, A074374(A014963(#))]` -/
def P12283897042663301052.Spec : Prop :=
  ∀ n, P12283897042663301052.a n = A341885 (n + 1)

end A341885

/-! ## A341885.P7208421306613771147

`∑{d}[n+1, A000217(A120007(#))]`
-/

namespace A341885.P7208421306613771147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 (A120007 d).toNat

end

end A341885.P7208421306613771147

namespace A341885

/-- `∑{d}[n+1, A000217(A120007(#))]` -/
def P7208421306613771147.Spec : Prop :=
  ∀ n, P7208421306613771147.a n = A341885 (n + 1)

end A341885

/-! ## A341885.P3496932446821270445

`(A067666(n+1)+A001414(n+1))/2`
-/

namespace A341885.P3496932446821270445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067666 (n + 1) + A001414 (n + 1) : ℚ) / 2

end

end A341885.P3496932446821270445

namespace A341885

/-- `(A067666(n+1)+A001414(n+1))/2` -/
def P3496932446821270445.Spec : Prop :=
  ∀ n, P3496932446821270445.a n = (A341885 (n + 1) : ℚ)

end A341885

/-! ## A341885.P16974725900514911286

`A014682(A067666(n+1)+A001414(n+1))`
-/

namespace A341885.P16974725900514911286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A067666 (n + 1) + A001414 (n + 1)).toNat

end

end A341885.P16974725900514911286

namespace A341885

/-- `A014682(A067666(n+1)+A001414(n+1))` -/
def P16974725900514911286.Spec : Prop :=
  ∀ n, P16974725900514911286.a n = A341885 (n + 1)

end A341885

/-! ## A341885.P15434756231368473851

`A004525(A067666(n+1)+A001414(n+1))`
-/

namespace A341885.P15434756231368473851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A067666 (n + 1) + A001414 (n + 1)).toNat

end

end A341885.P15434756231368473851

namespace A341885

/-- `A004525(A067666(n+1)+A001414(n+1))` -/
def P15434756231368473851.Spec : Prop :=
  ∀ n, P15434756231368473851.a n = A341885 (n + 1)

end A341885

/-! ## A341885.P12523218439391038244

`A025480(A067666(n+1)+A001414(n+1))`
-/

namespace A341885.P12523218439391038244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A067666 (n + 1) + A001414 (n + 1)).toNat

end

end A341885.P12523218439391038244

namespace A341885

/-- `A025480(A067666(n+1)+A001414(n+1))` -/
def P12523218439391038244.Spec : Prop :=
  ∀ n, P12523218439391038244.a n = A341885 (n + 1)

end A341885

/-! ## A341885.P1108051657979121723

`A029578(A067666(n+1)+A001414(n+1))`
-/

namespace A341885.P1108051657979121723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A067666 (n + 1) + A001414 (n + 1)).toNat

end

end A341885.P1108051657979121723

namespace A341885

/-- `A029578(A067666(n+1)+A001414(n+1))` -/
def P1108051657979121723.Spec : Prop :=
  ∀ n, P1108051657979121723.a n = A341885 (n + 1)

end A341885

/-! ## A341885.P16787080766240747873

`A110654(A067666(n+1)+A001414(n+1))`
-/

namespace A341885.P16787080766240747873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A067666 (n + 1) + A001414 (n + 1)).toNat

end

end A341885.P16787080766240747873

namespace A341885

/-- `A110654(A067666(n+1)+A001414(n+1))` -/
def P16787080766240747873.Spec : Prop :=
  ∀ n, P16787080766240747873.a n = A341885 (n + 1)

end A341885

/-!
# A341886: Numbers k such that the smallest m such that k | psi(m) is even, psi = A002322.

The programs for A341886, there is no canonical definition to state claims against.
-/

/-! ## A341886.P11297435221419608215

`A341887(n+1)*2`
-/

namespace A341886.P11297435221419608215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (n + 1) * 2

end

end A341886.P11297435221419608215

/-! ## A341886.P16157884366510865467

`2*A341887(n+1)`
-/

namespace A341886.P16157884366510865467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341887 (n + 1)

end

end A341886.P16157884366510865467

/-! ## A341886.P10345521282414204032

`A341887(A000027(n+1))/sin(atan(1))²`
-/

namespace A341886.P10345521282414204032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A341887 (A000027 (n + 1)).toNat : ℝ) / Real.sin (Real.arctan (1 : ℝ)) ^ 2

end

end A341886.P10345521282414204032

/-! ## A341886.P15247027059928232650

`A341887(C(n+1, n))+A341887(n+1)`
-/

namespace A341886.P15247027059928232650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (Nat.choose (n + 1) n) + A341887 (n + 1)

end

end A341886.P15247027059928232650

/-! ## A341886.P7825162116483293678

`A341887(-xor(n, -1))+A341887(n+1)`
-/

namespace A341886.P7825162116483293678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (-Int.xor (n : ℤ) (-1)).toNat + A341887 (n + 1)

end

end A341886.P7825162116483293678

/-! ## A341886.P3218623564989048531

`A341887(floor(acot(n+1))+n+1)+A341887(n+1)`
-/

namespace A341886.P3218623564989048531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (⌊SequenceMachineLib.acot (n + 1 : ℝ)⌋ + (n + 1 : ℤ)).toNat + A341887 (n + 1)

end

end A341886.P3218623564989048531

/-! ## A341886.P6338315157580799161

`A341887(A000027(n+1))+A341887(n+1)`
-/

namespace A341886.P6338315157580799161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (A000027 (n + 1)).toNat + A341887 (n + 1)

end

end A341886.P6338315157580799161

/-! ## A341886.P6831400097687291379

`A341887(A130446(n+1))+A341887(n+1)`
-/

namespace A341886.P6831400097687291379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (A130446 (n + 1)).toNat + A341887 (n + 1)

end

end A341886.P6831400097687291379

/-! ## A341886.P7164493764250661790

`2/A341887(n+1)^A008683(A020484(n))`
-/

namespace A341886.P7164493764250661790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A341887 (n + 1) : ℚ) ^ (A008683 (A020484 n).toNat : ℤ)

end

end A341886.P7164493764250661790

/-! ## A341886.P18369418440161080212

`A341887(n+1)+record[A341887(A002260(n+1))]`
-/

namespace A341886.P18369418440161080212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341886.P18369418440161080212

/-! ## A341886.P16316251191729245601

`A341887(n+1)+A341887((n+1)%A228186(n))`
-/

namespace A341886.P16316251191729245601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (n + 1) + A341887 (Int.tmod (n + 1 : ℤ) (A228186 n)).toNat

end

end A341886.P16316251191729245601

/-! ## A341886.P5133480706547706205

`A341887(n+1)+lcm(A033999(n), A341887(n+1))`
-/

namespace A341886.P5133480706547706205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (n + 1) + (Int.lcm (A033999 n) (A341887 (n + 1)) : ℤ)

end

end A341886.P5133480706547706205

/-! ## A341886.P3518997095354022796

`A000007(n+1)+A341887(n+1)+A341887(n+1)`
-/

namespace A341886.P3518997095354022796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A341887 (n + 1) + A341887 (n + 1))

end

end A341886.P3518997095354022796

/-! ## A341886.P13455967765177091651

`A341887(n+1)+A341887(n+1)%A287514(n+1)`
-/

namespace A341886.P13455967765177091651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341887 (n + 1) + Int.tmod (A341887 (n + 1)) (A287514 (n + 1))

end

end A341886.P13455967765177091651

/-!
# A341887: a(n) = A341886(n)/2; numbers k such that A307437(k) is even.

The programs for A341887, there is no canonical definition to state claims against.
-/

/-! ## A341887.P5221590327661659576

`A341886(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341887.P5221590327661659576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341886 (n + 1) : ℚ) / 2

end

end A341887.P5221590327661659576

/-! ## A341887.P6398936622618616401

`2^A008683(A057673(n))*A341886(n+1)`
-/

namespace A341887.P6398936622618616401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A057673 n).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P6398936622618616401

/-! ## A341887.P62528472325642629

`2^A008683(A000040(n+1))*A341886(n+1)`
-/

namespace A341887.P62528472325642629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A000040 (n + 1)).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P62528472325642629

/-! ## A341887.P7493845017234157460

`2^A008683(A003631(n+1))*A341886(n+1)`
-/

namespace A341887.P7493845017234157460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003631 (n + 1)).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P7493845017234157460

/-! ## A341887.P14774405008091765767

`2^A008683(A006512(n+1))*A341886(n+1)`
-/

namespace A341887.P14774405008091765767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006512 (n + 1)).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P14774405008091765767

/-! ## A341887.P17148208439871084043

`2^A008683(A030432(n+1))*A341886(n+1)`
-/

namespace A341887.P17148208439871084043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A030432 (n + 1)).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P17148208439871084043

/-! ## A341887.P4123218644895844450

`2^A008683(A205533(n+1))*A341886(n+1)`
-/

namespace A341887.P4123218644895844450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A205533 (n + 1)).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P4123218644895844450

/-! ## A341887.P15754905622445350853

`2^A008683(A227420(n+1))*A341886(n+1)`
-/

namespace A341887.P15754905622445350853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A227420 (n + 1)).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P15754905622445350853

/-! ## A341887.P12378974765792919876

`2^A008683(A359138(n+1))*A341886(n+1)`
-/

namespace A341887.P12378974765792919876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A359138 (n + 1)).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P12378974765792919876

/-! ## A341887.P11970591759483902549

`2^A008683(A040976(n+1)+2)*A341886(n+1)`
-/

namespace A341887.P11970591759483902549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A040976 (n + 1) + 2).toNat : ℤ) * (A341886 (n + 1) : ℚ)

end

end A341887.P11970591759483902549

/-!
# A341888: Indices of record values of A307437(k)/k.

The programs for A341888, there is no canonical definition to state claims against.
-/

/-! ## A341888.P6946291074944982756

`A169583(∑[A073090(n)!])`
-/

namespace A341888.P6946291074944982756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A073090 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169583 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341888.P6946291074944982756

/-! ## A341888.P8028046490729623650

`record[A233547(A148999(n))+1]`
-/

namespace A341888.P8028046490729623650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233547 (A148999 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341888.P8028046490729623650

/-!
# A341891: Numbers that are the sum of five fourth powers in nine or more ways.

The programs for A341891, there is no canonical definition to state claims against.
-/

/-! ## A341891.P8319195413852136211

`∪[A341892(n+1), A341897(n+1)]`
-/

namespace A341891.P8319195413852136211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A341891.P8319195413852136211

/-!
# A341892: Numbers that are the sum of five fourth powers in exactly nine ways.

The programs for A341892, there is no canonical definition to state claims against.
-/

/-! ## A341892.P14591056415810534591

`A341891(lt[A046029(n+2), A231828(n+3)])`
-/

namespace A341892.P14591056415810534591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046029 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231828 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341891 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341892.P14591056415810534591

/-! ## A341892.P14911018750936853414

`A341891(lt[A017817(n), A005811(n)])`
-/

namespace A341892.P14911018750936853414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341891 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341892.P14911018750936853414

/-! ## A341892.P10703460120967434241

`A341891(lt[A251744(3*n+2), A181836(3*n+1)])`
-/

namespace A341892.P10703460120967434241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251744 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181836 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341891 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A341892.P10703460120967434241

/-!
# A341893: Indices of triangular numbers that are one-tenth of other triangular numbers.

The programs for A341893, the canonical program `A341893.P17694100687298408992` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341893 has offset 1).

The definition of A341893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341893.P17694100687298408992

`38*a(n-3)-a(n-6)+18` with `a(0)=0, a(1)=1, a(2)=6, a(3)=12, a(4)=55, a(5)=246`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341893

/-- `38*a(n-3)-a(n-6)+18` -/
def P17694100687298408992.Spec : Prop :=
  ∀ n, P17694100687298408992.a n = A341893 (n + 1)

theorem P17694100687298408992.correct : P17694100687298408992.Spec := by
  intro n
  simp only [A341893, Nat.add_sub_cancel]

end A341893

/-! ## A341893.P14139216252227414

`A180003(n+1)-1`
-/

namespace A341893.P14139216252227414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180003 (n + 1) - 1

end

end A341893.P14139216252227414

namespace A341893

/-- `A180003(n+1)-1` -/
def P14139216252227414.Spec : Prop :=
  ∀ n, P14139216252227414.a n = A341893 (n + 1)

end A341893

/-! ## A341893.P13197471377392300905

`ogf((x+5x^2+6x^3+5x^4+x^5)/(1-x-38x^3+38x^4+x^6-x^7))`
-/

namespace A341893.P13197471377392300905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, 6, 5, 1] [1, -1, 0, -38, 38, 0, 1, -1] n

end

end A341893.P13197471377392300905

namespace A341893

/-- `ogf((x+5x^2+6x^3+5x^4+x^5)/(1-x-38x^3+38x^4+x^6-x^7))` -/
def P13197471377392300905.Spec : Prop :=
  ∀ n, P13197471377392300905.a n = A341893 (n + 1)

end A341893

/-! ## A341893.P1714220724918073432

`floor(A052454(n+1)/2)`
-/

namespace A341893.P1714220724918073432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052454 (n + 1) : ℚ) / 2⌋

end

end A341893.P1714220724918073432

namespace A341893

/-- `floor(A052454(n+1)/2)` -/
def P1714220724918073432.Spec : Prop :=
  ∀ n, P1714220724918073432.a n = A341893 (n + 1)

end A341893

/-! ## A341893.P10833557367352143732

`A052454(n+1)%A180003(n+1)`
-/

namespace A341893.P10833557367352143732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052454 (n + 1)) (A180003 (n + 1))

end

end A341893.P10833557367352143732

namespace A341893

/-- `A052454(n+1)%A180003(n+1)` -/
def P10833557367352143732.Spec : Prop :=
  ∀ n, P10833557367352143732.a n = A341893 (n + 1)

end A341893

/-! ## A341893.P7644295469098290514

`ceil(A052454(n+1)/2)-A000034(2*n)`
-/

namespace A341893.P7644295469098290514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052454 (n + 1) : ℚ) / 2⌉ - A000034 (2 * n)

end

end A341893.P7644295469098290514

namespace A341893

/-- `ceil(A052454(n+1)/2)-A000034(2*n)` -/
def P7644295469098290514.Spec : Prop :=
  ∀ n, P7644295469098290514.a n = A341893 (n + 1)

end A341893

/-! ## A341893.P14842423122638557807

`A209615(A125254(n+1))+A180003(n+1)`
-/

namespace A341893.P14842423122638557807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (A125254 (n + 1)).toNat + A180003 (n + 1)

end

end A341893.P14842423122638557807

namespace A341893

/-- `A209615(A125254(n+1))+A180003(n+1)` -/
def P14842423122638557807.Spec : Prop :=
  ∀ n, P14842423122638557807.a n = A341893 (n + 1)

end A341893

/-! ## A341893.P15242985981451921192

`A260685(A260684(n+2))+A180003(n+1)`
-/

namespace A341893.P15242985981451921192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260685 (A260684 (n + 2)).toNat + A180003 (n + 1)

end

end A341893.P15242985981451921192

namespace A341893

/-- `A260685(A260684(n+2))+A180003(n+1)` -/
def P15242985981451921192.Spec : Prop :=
  ∀ n, P15242985981451921192.a n = A341893 (n + 1)

end A341893

/-!
# A341895: Indices of triangular numbers that are ten times other triangular numbers.

The programs for A341895, the canonical program `A341895.P12794188109723062972` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341895 has offset 1).

The definition of A341895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341895.P12794188109723062972

`38*a(n-3)-a(n-6)+18` with `a(0)=0, a(1)=4, a(2)=20, a(3)=39, a(4)=175, a(5)=779`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341895

/-- `38*a(n-3)-a(n-6)+18` -/
def P12794188109723062972.Spec : Prop :=
  ∀ n, P12794188109723062972.a n = A341895 (n + 1)

theorem P12794188109723062972.correct : P12794188109723062972.Spec := by
  intro n
  simp only [A341895, Nat.add_sub_cancel]

end A341895

/-! ## A341895.P12875255273332514034

`(A198943(n+1)+1)/2-1`
-/

namespace A341895.P12875255273332514034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198943 (n + 1) + 1 : ℚ) / 2 - 1

end

end A341895.P12875255273332514034

namespace A341895

/-- `(A198943(n+1)+1)/2-1` -/
def P12875255273332514034.Spec : Prop :=
  ∀ n, P12875255273332514034.a n = (A341895 (n + 1) : ℚ)

end A341895

/-! ## A341895.P6888520064120360244

`ogf((4x+16x^2+19x^3-16x^4-4x^5-x^6)/(1-x-38x^3+38x^4+x^6-x^7))`
-/

namespace A341895.P6888520064120360244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 16, 19, -16, -4, -1] [1, -1, 0, -38, 38, 0, 1, -1] n

end

end A341895.P6888520064120360244

namespace A341895

/-- `ogf((4x+16x^2+19x^3-16x^4-4x^5-x^6)/(1-x-38x^3+38x^4+x^6-x^7))` -/
def P6888520064120360244.Spec : Prop :=
  ∀ n, P6888520064120360244.a n = A341895 (n + 1)

end A341895

/-! ## A341895.P13717581666320903185

`A180002(n+1)-4`
-/

namespace A341895.P13717581666320903185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180002 (n + 1) - 4

end

end A341895.P13717581666320903185

namespace A341895

/-- `A180002(n+1)-4` -/
def P13717581666320903185.Spec : Prop :=
  ∀ n, P13717581666320903185.a n = A341895 (n + 1)

theorem P13717581666320903185.correct : P13717581666320903185.Spec := by
  intro n
  simp only [A341895, Nat.add_sub_cancel, A341895.P13717581666320903185.a, A341895.P12794188109723062972.a, A180002, A180002.P14711307796903389757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A341895

/-! ## A341895.P9015454298247630141

`floor(A198943(n+1)/2)`
-/

namespace A341895.P9015454298247630141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198943 (n + 1) : ℚ) / 2⌋

end

end A341895.P9015454298247630141

namespace A341895

/-- `floor(A198943(n+1)/2)` -/
def P9015454298247630141.Spec : Prop :=
  ∀ n, P9015454298247630141.a n = A341895 (n + 1)

end A341895

/-! ## A341895.P17939000255730080566

`(A198943(n+1)+3)%A180002(n+1)`
-/

namespace A341895.P17939000255730080566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198943 (n + 1) + 3) (A180002 (n + 1))

end

end A341895.P17939000255730080566

namespace A341895

/-- `(A198943(n+1)+3)%A180002(n+1)` -/
def P17939000255730080566.Spec : Prop :=
  ∀ n, P17939000255730080566.a n = A341895 (n + 1)

end A341895

/-! ## A341895.P6555500342234855989

`A216871(A051516(2*n+1))+A180002(n+1)`
-/

namespace A341895.P6555500342234855989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216871 (A051516 (2 * n + 1)).toNat + A180002 (n + 1)

end

end A341895.P6555500342234855989

namespace A341895

/-- `A216871(A051516(2*n+1))+A180002(n+1)` -/
def P6555500342234855989.Spec : Prop :=
  ∀ n, P6555500342234855989.a n = A341895 (n + 1)

end A341895

/-! ## A341895.P15152622376375418882

`record[Δ[A180002(A193592(n))]]`
-/

namespace A341895.P15152622376375418882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180002 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341895.P15152622376375418882

namespace A341895

/-- `record[Δ[A180002(A193592(n))]]` -/
def P15152622376375418882.Spec : Prop :=
  ∀ n, P15152622376375418882.a n = A341895 (n + 1)

end A341895

/-!
# A341896: a(n) is the number of words of length n over the alphabet {a,b,c} with an even number of appearances of the letter 'a' and the sum of appearances of the letters 'b' and 'c' add up to at most 3.

The programs for A341896, the canonical program `A341896.P15599799792937174762` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341896 has offset 0).

The definition of A341896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341896.P4209482285929423413

`ogf((1+2x+x^2+6x^3+11x^4+46x^5-13x^6+10x^7)/(1-4x^2+6x^4-4x^6+x^8))`
-/

namespace A341896.P4209482285929423413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 6, 11, 46, -13, 10] [1, 0, -4, 0, 6, 0, -4, 0, 1] n

end

end A341896.P4209482285929423413

namespace A341896

/-- `ogf((1+2x+x^2+6x^3+11x^4+46x^5-13x^6+10x^7)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P4209482285929423413.Spec : Prop :=
  ∀ n, P4209482285929423413.a n = A341896 n

end A341896

/-! ## A341896.P15599799792937174762

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14, a(4)=25, a(5)=90, a(6)=61, a(7)=294`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A341896

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P15599799792937174762.Spec : Prop :=
  ∀ n, P15599799792937174762.a n = A341896 n

theorem P15599799792937174762.correct : P15599799792937174762.Spec := by
  intro n
  simp only [A341896]

end A341896

/-! ## A341896.P13000004853284388312

`A161712(n)-A342159(n)`
-/

namespace A341896.P13000004853284388312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 n - A342159 n

end

end A341896.P13000004853284388312

namespace A341896

/-- `A161712(n)-A342159(n)` -/
def P13000004853284388312.Spec : Prop :=
  ∀ n, P13000004853284388312.a n = A341896 n

end A341896

/-! ## A341896.P787210925604556555

`A161712(n)+A342159(n)/A260196(n+1)`
-/

namespace A341896.P787210925604556555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161712 n : ℚ) + (A342159 n : ℚ) / (A260196 (n + 1) : ℚ)

end

end A341896.P787210925604556555

namespace A341896

/-- `A161712(n)+A342159(n)/A260196(n+1)` -/
def P787210925604556555.Spec : Prop :=
  ∀ n, P787210925604556555.a n = (A341896 n : ℚ)

end A341896

/-! ## A341896.P14058873780044107275

`or(1, A000125(comp[2*(n+1)]))-A342159(n)`
-/

namespace A341896.P14058873780044107275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) - A342159 n

end

end A341896.P14058873780044107275

namespace A341896

/-- `or(1, A000125(comp[2*(n+1)]))-A342159(n)` -/
def P14058873780044107275.Spec : Prop :=
  ∀ n, P14058873780044107275.a n = A341896 n

end A341896

/-!
# A341898: Numbers that are the sum of five fourth powers in exactly ten ways.

The programs for A341898, there is no canonical definition to state claims against.
-/

/-! ## A341898.P234094520229798642

`A341897(record[A341793(2*n)])`
-/

namespace A341898.P234094520229798642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341793 (2 * n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341898.P234094520229798642

/-! ## A341898.P7702675827428043257

`A341897(A325031(n+1)^A293718(n))`
-/

namespace A341898.P7702675827428043257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341897 (SequenceMachineLib.roundAway ((A325031 (n + 1) : ℚ) ^ (A293718 n : ℤ))).toNat

end

end A341898.P7702675827428043257

/-! ## A341898.P3160595272743424284

`A341897(∑[A108998(n)!])`
-/

namespace A341898.P3160595272743424284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A108998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341897 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341898.P3160595272743424284

