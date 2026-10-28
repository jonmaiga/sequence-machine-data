import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A243700: The lexicographically earliest sequence of distinct terms with a(1) = 1 such that a(n) divides the sum of the first a(n) terms.

The programs for A243700, there is no canonical definition to state claims against.
-/

/-! ## A243700.P13017098292431521092

`Δ[A244010(A028310(n))%(n+1)²]`
-/

namespace A243700.P13017098292431521092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244010 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243700.P13017098292431521092

/-! ## A243700.P9681813946898554434

`A000007(n)+Δ[A244010(A028310(n))]`
-/

namespace A243700.P9681813946898554434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244010 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A243700.P9681813946898554434

/-! ## A243700.P17375920950371071674

`A010051(2*(n+1))+Δ[A244010(A028310(n))]`
-/

namespace A243700.P17375920950371071674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244010 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A243700.P17375920950371071674

/-! ## A243700.P3524174465557110022

`A244010(n+1)+A000007(n)-A244010(A028310(n))`
-/

namespace A243700.P3524174465557110022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244010 (n + 1) + (A000007 n - A244010 (A028310 n).toNat)

end

end A243700.P3524174465557110022

/-! ## A243700.P6234035499514027563

`A054977(n)*A244010(n+1)-A244010(A028310(n))`
-/

namespace A243700.P6234035499514027563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A244010 (n + 1) - A244010 (A028310 n).toNat

end

end A243700.P6234035499514027563

/-! ## A243700.P7479895034648357148

`A244010(n+1)-A057427(n)*A244010(A028310(n))`
-/

namespace A243700.P7479895034648357148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244010 (n + 1) - A057427 n * A244010 (A028310 n).toNat

end

end A243700.P7479895034648357148

/-! ## A243700.P18283940316839494498

`Δ[A244010(A028310(n))+A057427(n)]`
-/

namespace A243700.P18283940316839494498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244010 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243700.P18283940316839494498

/-! ## A243700.P15412853842068937380

`Δ[A244010(A028310(n))-A054977(n)]`
-/

namespace A243700.P15412853842068937380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244010 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243700.P15412853842068937380

/-!
# A243701: Primes represented by the indefinite quadratic form x^2 + 13xy - 9y^2.

The programs for A243701, there is no canonical definition to state claims against.
-/

/-! ## A243701.P7715026935334373953

`p?[A372518(n+1)]`
-/

namespace A243701.P7715026935334373953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243701.P7715026935334373953

/-! ## A243701.P9737485332133491788

`filter[A372518(n+1), A010051(#)]`
-/

namespace A243701.P9737485332133491788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A243701.P9737485332133491788

/-! ## A243701.P6138976596443156824

`filter[A372518(n+1), A171387(#)]`
-/

namespace A243701.P6138976596443156824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A243701.P6138976596443156824

/-! ## A243701.P6744455229758616123

`filter[A372518(n+1), A174282(#)]`
-/

namespace A243701.P6744455229758616123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174282 (f1 j).toNat = 1) n)

end

end A243701.P6744455229758616123

/-! ## A243701.P8015617670553480530

`filter[A372518(n+1), A257531(#)]`
-/

namespace A243701.P8015617670553480530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A243701.P8015617670553480530

/-!
# A243702: Nonnegative numbers represented by the indefinite quadratic form x^2 + 13xy - 9y^2.

The programs for A243702, there is no canonical definition to state claims against.
-/

/-! ## A243702.P15530417645716076420

`eq[A028637(A033718(n)), A028713(n+2)]`
-/

namespace A243702.P15530417645716076420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028637 (A033718 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028713 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243702.P15530417645716076420

/-! ## A243702.P14679998191077526176

`lt[A281976(n+3), A280136(A004277(n))]`
-/

namespace A243702.P14679998191077526176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281976 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280136 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243702.P14679998191077526176

/-! ## A243702.P3678664531654004884

`eq[A008683(A094262(n+1)), A112049(n+1)]`
-/

namespace A243702.P3678664531654004884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A094262 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243702.P3678664531654004884

/-!
# A243704: Primes represented by the indefinite quadratic form -x^2+13xy+9y^2.

The programs for A243704, there is no canonical definition to state claims against.
-/

/-! ## A243704.P14933658582873373413

`p?[A243703(n+1)]`
-/

namespace A243704.P14933658582873373413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243704.P14933658582873373413

/-! ## A243704.P10717061579412738810

`p?[record[A243703(A065648(n))]]`
-/

namespace A243704.P10717061579412738810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243703 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243704.P10717061579412738810

/-! ## A243704.P8147778373438690216

`p?[record[A243703(A134478(n))]]`
-/

namespace A243704.P8147778373438690216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243703 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243704.P8147778373438690216

/-! ## A243704.P6650905226989539057

`p?[record[A243703(A141256(n))]]`
-/

namespace A243704.P6650905226989539057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243703 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243704.P6650905226989539057

/-! ## A243704.P17061540784295582784

`record[A020639(A243703(n+4))]`
-/

namespace A243704.P17061540784295582784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243703 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243704.P17061540784295582784

/-!
# A243706: Primes represented by the indefinite quadratic form 3x^2+13xy-3y^2.

The programs for A243706, there is no canonical definition to state claims against.
-/

/-! ## A243706.P8211600146227010195

`p?[A243705(n+1)]`
-/

namespace A243706.P8211600146227010195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243706.P8211600146227010195

/-! ## A243706.P13267207923401767915

`filter[A243705(n+2), A010051(#)]`
-/

namespace A243706.P13267207923401767915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A243706.P13267207923401767915

/-! ## A243706.P9303539388348492557

`filter[A243705(n+2), A080339(#)]`
-/

namespace A243706.P9303539388348492557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A243706.P9303539388348492557

/-! ## A243706.P1496645889442001305

`filter[A243705(n+2), A080545(#)]`
-/

namespace A243706.P1496645889442001305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A243706.P1496645889442001305

/-! ## A243706.P1257728439537728020

`filter[A243705(n+2), A252233(#)]`
-/

namespace A243706.P1257728439537728020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A243706.P1257728439537728020

/-!
# A243707: Bisection A140468(2n+1).

The programs for A243707, there is no canonical definition to state claims against.
-/

/-! ## A243707.P1765110830736444787

`A140468(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243707.P1765110830736444787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140468 (2 * n + 1)

end

end A243707.P1765110830736444787

/-!
# A243708: Bisection A140468(2n).

The programs for A243708, there is no canonical definition to state claims against.
-/

/-! ## A243708.P17951127294902705033

`record[n%2*A140468(n+1)]`
-/

namespace A243708.P17951127294902705033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A140468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243708.P17951127294902705033

/-!
# A243714: Irregular triangular array of denominators of all rational numbers ordered as in Comments.

The programs for A243714, there is no canonical definition to state claims against.
-/

/-! ## A243714.P1791778928947976060

`∏{e}[A281873(A054582(n)), #]`
-/

namespace A243714.P1791778928947976060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A054582 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A243714.P1791778928947976060

/-! ## A243714.P1639675435017869564

`A193592(n+1+Δ[A184955(n)])`
-/

namespace A243714.P1639675435017869564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 ((n + 1 : ℤ) + (f1 (n + 1) - f1 n)).toNat

end

end A243714.P1639675435017869564

/-! ## A243714.P9878256938929923574

`A245714(A064989(A083140(n+2)²))`
-/

namespace A243714.P9878256938929923574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A064989 (A083140 (n + 2) ^ 2).toNat).toNat

end

end A243714.P9878256938929923574

/-! ## A243714.P1411323957067182455

`A349258(A251758(n+2)+A102123(n))`
-/

namespace A243714.P1411323957067182455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 (A251758 (n + 2) + A102123 n).toNat

end

end A243714.P1411323957067182455

/-! ## A243714.P470405619333786541

`A038374(A329749(n)+A034363(n+3))`
-/

namespace A243714.P470405619333786541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A329749 n + A034363 (n + 3)).toNat

end

end A243714.P470405619333786541

/-!
# A243717: Number of inequivalent (mod D_4) ways to place 2 nonattacking knights on an n X n board.

The programs for A243717, the canonical program `A243717.P1795088881479719934` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243717 has offset 2).

The definition of A243717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243717.P1795088881479719934

`ogf((2+3x+5x^3+3x^4-x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243717

/-- `ogf((2+3x+5x^3+3x^4-x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P1795088881479719934.Spec : Prop :=
  ∀ n, P1795088881479719934.a n = A243717 (n + 2)

theorem P1795088881479719934.correct : P1795088881479719934.Spec := by
  intro n
  simp only [A243717, Nat.add_sub_cancel]

end A243717

/-! ## A243717.P9128340511837324197

`A014409(n+2)-∑[n]`
-/

namespace A243717.P9128340511837324197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A243717.P9128340511837324197

namespace A243717

/-- `A014409(n+2)-∑[n]` -/
def P9128340511837324197.Spec : Prop :=
  ∀ n, P9128340511837324197.a n = A243717 (n + 2)

end A243717

/-! ## A243717.P2927839454402953982

`∑[(ceil(n/2)+1)*A000982(n+1)+1]`
-/

namespace A243717.P2927839454402953982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 2⌉ + 1) * A000982 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243717.P2927839454402953982

namespace A243717

/-- `∑[(ceil(n/2)+1)*A000982(n+1)+1]` -/
def P2927839454402953982.Spec : Prop :=
  ∀ n, P2927839454402953982.a n = A243717 (n + 2)

end A243717

/-! ## A243717.P3954858373897309005

`abs(A014409(n+2)-A000217(n))`
-/

namespace A243717.P3954858373897309005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014409 (n + 2) - A000217 n|

end

end A243717.P3954858373897309005

namespace A243717

/-- `abs(A014409(n+2)-A000217(n))` -/
def P3954858373897309005.Spec : Prop :=
  ∀ n, P3954858373897309005.a n = A243717 (n + 2)

end A243717

/-! ## A243717.P12383851563064934758

`A279111(A008619(2*(n+1)))+A080513(3*n+1)`
-/

namespace A243717.P12383851563064934758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279111 (A008619 (2 * (n + 1))).toNat + A080513 (3 * n + 1)

end

end A243717.P12383851563064934758

namespace A243717

/-- `A279111(A008619(2*(n+1)))+A080513(3*n+1)` -/
def P12383851563064934758.Spec : Prop :=
  ∀ n, P12383851563064934758.a n = A243717 (n + 2)

end A243717

/-! ## A243717.P5796694118978444196

`(A014409(n+2)-A000217(n))%A256954(n+1)`
-/

namespace A243717.P5796694118978444196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014409 (n + 2) - A000217 n) (A256954 (n + 1))

end

end A243717.P5796694118978444196

namespace A243717

/-- `(A014409(n+2)-A000217(n))%A256954(n+1)` -/
def P5796694118978444196.Spec : Prop :=
  ∀ n, P5796694118978444196.a n = A243717 (n + 2)

end A243717

/-! ## A243717.P2954956884547590691

`A000027(A014409(n+2)-A000217(n))`
-/

namespace A243717.P2954956884547590691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A014409 (n + 2) - A000217 n).toNat

end

end A243717.P2954956884547590691

namespace A243717

/-- `A000027(A014409(n+2)-A000217(n))` -/
def P2954956884547590691.Spec : Prop :=
  ∀ n, P2954956884547590691.a n = A243717 (n + 2)

end A243717

/-!
# A243718: Number of inequivalent (mod D_8) ways to place 3 nonattacking knights on an n X n board.

The programs for A243718, the canonical program `A243718.P11431760485053228168` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243718 has offset 2).

The definition of A243718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243718.P11431760485053228168

`ogf((1+6x+12x^2+77x^3+86x^4+74x^5-3x^6+18x^7-16x^8-32x^9+11x^10+9x^11-3x^12)/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243718

/-- `ogf((1+6x+12x^2+77x^3+86x^4+74x^5-3x^6+18x^7-16x^8-32x^9+11x^10+9x^11-3x^12)/(1-3x-x^2+11x^3-6x^4-14x^5+14x^6+6x^7-11x^8+x^9+3x^10-x^11))` -/
def P11431760485053228168.Spec : Prop :=
  ∀ n, P11431760485053228168.a n = A243718 (n + 2)

theorem P11431760485053228168.correct : P11431760485053228168.Spec := by
  intro n
  simp only [A243718, Nat.add_sub_cancel]

end A243718

/-!
# A243721: Number of length n+2 0..n arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..n introduced in 0..n order.

The programs for A243721, there is no canonical definition to state claims against.
-/

/-! ## A243721.P13454727697541615948

`A243729(∑[4*n]+1)`
-/

namespace A243721.P13454727697541615948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243721.P13454727697541615948

/-! ## A243721.P9214751417749199107

`lcm(A087960(n), A243729(A001844(n)))`
-/

namespace A243721.P9214751417749199107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A243729 (A001844 n).toNat)

end

end A243721.P9214751417749199107

/-! ## A243721.P3227823476815712812

`or(A000038(n), A243729(A001844(n)))`
-/

namespace A243721.P3227823476815712812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A243729 (A001844 n).toNat)

end

end A243721.P3227823476815712812

/-! ## A243721.P1973035785981208808

`A243729(A001844(n))/A033999(n)²`
-/

namespace A243721.P1973035785981208808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243729 (A001844 n).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A243721.P1973035785981208808

/-! ## A243721.P14115287147369332947

`A243729(A001844(n))/A267354(Δ[n²])`
-/

namespace A243721.P14115287147369332947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243729 (A001844 n).toNat : ℚ) / (A267354 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A243721.P14115287147369332947

/-! ## A243721.P16797344746096258834

`A243729(A001844(n))%Δ[A000984(n+1)]`
-/

namespace A243721.P16797344746096258834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243729 (A001844 n).toNat) (f1 (n + 1) - f1 n)

end

end A243721.P16797344746096258834

/-! ## A243721.P15375756247009678841

`record[A243729(2*A055461(n+1))]`
-/

namespace A243721.P15375756247009678841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (2 * A055461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243721.P15375756247009678841

/-!
# A243722: Number of length n+2 0..3 arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..3 introduced in 0..3 order.

The programs for A243722, the canonical program `A243722.P8492954015173514392` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243722 has offset 1).

The definition of A243722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243722.P14538446343138430887

`ogf((3-9x^2-5x^3)/(1-2x-3x^2+4x^3+3x^4))`
-/

namespace A243722.P14538446343138430887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -9, -5] [1, -2, -3, 4, 3] n

end

end A243722.P14538446343138430887

namespace A243722

/-- `ogf((3-9x^2-5x^3)/(1-2x-3x^2+4x^3+3x^4))` -/
def P14538446343138430887.Spec : Prop :=
  ∀ n, P14538446343138430887.a n = A243722 (n + 1)

end A243722

/-! ## A243722.P8492954015173514392

`2*a(n-1)+3*a(n-2)-4*a(n-3)-3*a(n-4)` with `a(0)=3, a(1)=6, a(2)=12, a(3)=25`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243722

/-- `2*a(n-1)+3*a(n-2)-4*a(n-3)-3*a(n-4)` -/
def P8492954015173514392.Spec : Prop :=
  ∀ n, P8492954015173514392.a n = A243722 (n + 1)

theorem P8492954015173514392.correct : P8492954015173514392.Spec := by
  intro n
  simp only [A243722, Nat.add_sub_cancel]

end A243722

/-! ## A243722.P6696389950573422139

`A243729(∑[n+3]+1)`
-/

namespace A243722.P6696389950573422139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243722.P6696389950573422139

namespace A243722

/-- `A243729(∑[n+3]+1)` -/
def P6696389950573422139.Spec : Prop :=
  ∀ n, P6696389950573422139.a n = A243722 (n + 1)

end A243722

/-! ## A243722.P5781872382193833644

`((-1)^n)²*A243729(A052905(n)+3)`
-/

namespace A243722.P5781872382193833644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A243729 (A052905 n + 3).toNat

end

end A243722.P5781872382193833644

namespace A243722

/-- `((-1)^n)²*A243729(A052905(n)+3)` -/
def P5781872382193833644.Spec : Prop :=
  ∀ n, P5781872382193833644.a n = A243722 (n + 1)

end A243722

/-! ## A243722.P3093513291371410675

`A243729(A052905(n)+3)%A260923(n+1)`
-/

namespace A243722.P3093513291371410675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243729 (A052905 n + 3).toNat) (A260923 (n + 1))

end

end A243722.P3093513291371410675

namespace A243722

/-- `A243729(A052905(n)+3)%A260923(n+1)` -/
def P3093513291371410675.Spec : Prop :=
  ∀ n, P3093513291371410675.a n = A243722 (n + 1)

end A243722

/-! ## A243722.P12634793464727197470

`A243729(A052905(n)+3)+A090192(2*A076110(n+1))`
-/

namespace A243722.P12634793464727197470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A052905 n + 3).toNat + A090192 (2 * A076110 (n + 1)).toNat

end

end A243722.P12634793464727197470

namespace A243722

/-- `A243729(A052905(n)+3)+A090192(2*A076110(n+1))` -/
def P12634793464727197470.Spec : Prop :=
  ∀ n, P12634793464727197470.a n = A243722 (n + 1)

end A243722

/-! ## A243722.P2528936591164554529

`A243729(A052905(n)+3)+A105523(2*A076110(n+1))`
-/

namespace A243722.P2528936591164554529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A052905 n + 3).toNat + A105523 (2 * A076110 (n + 1)).toNat

end

end A243722.P2528936591164554529

namespace A243722

/-- `A243729(A052905(n)+3)+A105523(2*A076110(n+1))` -/
def P2528936591164554529.Spec : Prop :=
  ∀ n, P2528936591164554529.a n = A243722 (n + 1)

end A243722

/-! ## A243722.P1126607738321714666

`A243729(A052905(n)+3)/A001222(A309381(n+1))`
-/

namespace A243722.P1126607738321714666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243729 (A052905 n + 3).toNat : ℚ) / (A001222 (A309381 (n + 1)).toNat : ℚ)

end

end A243722.P1126607738321714666

namespace A243722

/-- `A243729(A052905(n)+3)/A001222(A309381(n+1))` -/
def P1126607738321714666.Spec : Prop :=
  ∀ n, P1126607738321714666.a n = (A243722 (n + 1) : ℚ)

end A243722

/-!
# A243723: Number of length n+2 0..4 arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..4 introduced in 0..4 order.

The programs for A243723, the canonical program `A243723.P15275538555100285874` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243723 has offset 1).

The definition of A243723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243723.P3348330772504082703

`ogf((3-6x-12x^2+16x^3+13x^4)/(1-4x+13x^3-6x^4-8x^5))`
-/

namespace A243723.P3348330772504082703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, -12, 16, 13] [1, -4, 0, 13, -6, -8] n

end

end A243723.P3348330772504082703

namespace A243723

/-- `ogf((3-6x-12x^2+16x^3+13x^4)/(1-4x+13x^3-6x^4-8x^5))` -/
def P3348330772504082703.Spec : Prop :=
  ∀ n, P3348330772504082703.a n = A243723 (n + 1)

end A243723

/-! ## A243723.P15275538555100285874

`4*a(n-1)-13*a(n-3)+6*a(n-4)+8*a(n-5)` with `a(0)=3, a(1)=6, a(2)=12, a(3)=25, a(4)=53`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243723

/-- `4*a(n-1)-13*a(n-3)+6*a(n-4)+8*a(n-5)` -/
def P15275538555100285874.Spec : Prop :=
  ∀ n, P15275538555100285874.a n = A243723 (n + 1)

theorem P15275538555100285874.correct : P15275538555100285874.Spec := by
  intro n
  simp only [A243723, Nat.add_sub_cancel]

end A243723

/-! ## A243723.P1699458581546932886

`A243729(∑[n+1]+3*(n+2))`
-/

namespace A243723.P1699458581546932886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (∑ j ∈ Finset.range (n + 1), f1 j + 3 * (n + 2))

end

end A243723.P1699458581546932886

namespace A243723

/-- `A243729(∑[n+1]+3*(n+2))` -/
def P1699458581546932886.Spec : Prop :=
  ∀ n, P1699458581546932886.a n = A243723 (n + 1)

end A243723

/-! ## A243723.P17895958211453398223

`A243729(A104675(n)-A046691(n))%A002042(n)`
-/

namespace A243723.P17895958211453398223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243729 (A104675 n - A046691 n).toNat) (A002042 n)

end

end A243723.P17895958211453398223

namespace A243723

/-- `A243729(A104675(n)-A046691(n))%A002042(n)` -/
def P17895958211453398223.Spec : Prop :=
  ∀ n, P17895958211453398223.a n = A243723 (n + 1)

end A243723

/-! ## A243723.P4770155650076021015

`A000034(2*n)*A243729(A167499(n)+A016777(n))`
-/

namespace A243723.P4770155650076021015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A243729 (A167499 n + A016777 n).toNat

end

end A243723.P4770155650076021015

namespace A243723

/-- `A000034(2*n)*A243729(A167499(n)+A016777(n))` -/
def P4770155650076021015.Spec : Prop :=
  ∀ n, P4770155650076021015.a n = A243723 (n + 1)

end A243723

/-! ## A243723.P51102127852945228

`A243729(A167499(n)+A016777(n))%A143367(n+1)`
-/

namespace A243723.P51102127852945228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243729 (A167499 n + A016777 n).toNat) (A143367 (n + 1))

end

end A243723.P51102127852945228

namespace A243723

/-- `A243729(A167499(n)+A016777(n))%A143367(n+1)` -/
def P51102127852945228.Spec : Prop :=
  ∀ n, P51102127852945228.a n = A243723 (n + 1)

end A243723

/-!
# A243724: Number of length n+2 0..5 arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..5 introduced in 0..5 order.

The programs for A243724, the canonical program `A243724.P13068176524003411484` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243724 has offset 1).

The definition of A243724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243724.P13068176524003411484

`ogf((3-9x-18x^2+52x^3+42x^4-74x^5-49x^6)/(1-5x+29x^3-20x^4-51x^5+31x^6+30x^7))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A243724

/-- `ogf((3-9x-18x^2+52x^3+42x^4-74x^5-49x^6)/(1-5x+29x^3-20x^4-51x^5+31x^6+30x^7))` -/
def P13068176524003411484.Spec : Prop :=
  ∀ n, P13068176524003411484.a n = A243724 (n + 1)

theorem P13068176524003411484.correct : P13068176524003411484.Spec := by
  intro n
  simp only [A243724, Nat.add_sub_cancel]

end A243724

/-! ## A243724.P10444357738718518835

`A243729(∑[n+1]+4*n+10)`
-/

namespace A243724.P10444357738718518835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 10))

end

end A243724.P10444357738718518835

namespace A243724

/-- `A243729(∑[n+1]+4*n+10)` -/
def P10444357738718518835.Spec : Prop :=
  ∀ n, P10444357738718518835.a n = A243724 (n + 1)

end A243724

/-! ## A243724.P12763860285452912755

`or(char[3], A243729(A046691(n+3)))`
-/

namespace A243724.P12763860285452912755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A243729 (A046691 (n + 3)).toNat)

end

end A243724.P12763860285452912755

namespace A243724

/-- `or(char[3], A243729(A046691(n+3)))` -/
def P12763860285452912755.Spec : Prop :=
  ∀ n, P12763860285452912755.a n = A243724 (n + 1)

end A243724

/-! ## A243724.P9279202109664978031

`A243729(A046691(n+3))%A000051(n)²`
-/

namespace A243724.P9279202109664978031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243729 (A046691 (n + 3)).toNat) (A000051 n ^ 2)

end

end A243724.P9279202109664978031

namespace A243724

/-- `A243729(A046691(n+3))%A000051(n)²` -/
def P9279202109664978031.Spec : Prop :=
  ∀ n, P9279202109664978031.a n = A243724 (n + 1)

end A243724

/-! ## A243724.P17902752736686894922

`A007318(∑[n])*A243729(A046691(n+3))`
-/

namespace A243724.P17902752736686894922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A243729 (A046691 (n + 3)).toNat

end

end A243724.P17902752736686894922

namespace A243724

/-- `A007318(∑[n])*A243729(A046691(n+3))` -/
def P17902752736686894922.Spec : Prop :=
  ∀ n, P17902752736686894922.a n = A243724 (n + 1)

end A243724

/-! ## A243724.P6596381184508575627

`A243729(A046691(n+3))+A000007(n+1)`
-/

namespace A243724.P6596381184508575627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A243724.P6596381184508575627

namespace A243724

/-- `A243729(A046691(n+3))+A000007(n+1)` -/
def P6596381184508575627.Spec : Prop :=
  ∀ n, P6596381184508575627.a n = A243724 (n + 1)

end A243724

/-! ## A243724.P3398866377573536399

`A000034(2*n)*A243729(A046691(n+3))`
-/

namespace A243724.P3398866377573536399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A243729 (A046691 (n + 3)).toNat

end

end A243724.P3398866377573536399

namespace A243724

/-- `A000034(2*n)*A243729(A046691(n+3))` -/
def P3398866377573536399.Spec : Prop :=
  ∀ n, P3398866377573536399.a n = A243724 (n + 1)

end A243724

/-! ## A243724.P14622326621405909213

`A243729(A046691(n+3))/A007318(∑[n+2])`
-/

namespace A243724.P14622326621405909213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243729 (A046691 (n + 3)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A243724.P14622326621405909213

namespace A243724

/-- `A243729(A046691(n+3))/A007318(∑[n+2])` -/
def P14622326621405909213.Spec : Prop :=
  ∀ n, P14622326621405909213.a n = (A243724 (n + 1) : ℚ)

end A243724

/-! ## A243724.P16879323917855022012

`A001511(2*n+1)*A243729(A046691(n+3))`
-/

namespace A243724.P16879323917855022012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A243729 (A046691 (n + 3)).toNat

end

end A243724.P16879323917855022012

namespace A243724

/-- `A001511(2*n+1)*A243729(A046691(n+3))` -/
def P16879323917855022012.Spec : Prop :=
  ∀ n, P16879323917855022012.a n = A243724 (n + 1)

end A243724

/-! ## A243724.P18313749639667103158

`A243729(A046691(n+3))+A126120(A005408(n))`
-/

namespace A243724.P18313749639667103158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A046691 (n + 3)).toNat + A126120 (A005408 n).toNat

end

end A243724.P18313749639667103158

namespace A243724

/-- `A243729(A046691(n+3))+A126120(A005408(n))` -/
def P18313749639667103158.Spec : Prop :=
  ∀ n, P18313749639667103158.a n = A243724 (n + 1)

end A243724

/-!
# A243725: Number of length n+2 0..6 arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..6 introduced in 0..6 order.

The programs for A243725, there is no canonical definition to state claims against.
-/

/-! ## A243725.P17821418300277672962

`A243729(A052905(n+3))`
-/

namespace A243725.P17821418300277672962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A052905 (n + 3)).toNat

end

end A243725.P17821418300277672962

/-! ## A243725.P12576572111884431296

`A243729(A046691(n+4)-1)`
-/

namespace A243725.P12576572111884431296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A046691 (n + 4) - 1).toNat

end

end A243725.P12576572111884431296

/-! ## A243725.P18166522641121212761

`A243729(A000217(n+6)-5)`
-/

namespace A243725.P18166522641121212761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000217 (n + 6) - 5).toNat

end

end A243725.P18166522641121212761

/-! ## A243725.P10157734658021937968

`A243729(A000124(n+6)-6)`
-/

namespace A243725.P10157734658021937968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000124 (n + 6) - 6).toNat

end

end A243725.P10157734658021937968

/-! ## A243725.P4494223360031180765

`A243729(Δ[A026054(n+3)]+1)`
-/

namespace A243725.P4494223360031180765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (f1 (n + 1) - f1 n + 1).toNat

end

end A243725.P4494223360031180765

/-! ## A243725.P11869555475410576532

`A243729(A167499(n+3)+A060747(n+1))`
-/

namespace A243725.P11869555475410576532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A167499 (n + 3) + A060747 (n + 1)).toNat

end

end A243725.P11869555475410576532

/-! ## A243725.P9421313476705072032

`A243729(A004275(n+4)+A000217(n+4))`
-/

namespace A243725.P9421313476705072032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A004275 (n + 4) + A000217 (n + 4)).toNat

end

end A243725.P9421313476705072032

/-!
# A243726: Number of length n+2 0..7 arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..7 introduced in 0..7 order.

The programs for A243726, there is no canonical definition to state claims against.
-/

/-! ## A243726.P2325742284539503910

`A243729(A055999(n+4))`
-/

namespace A243726.P2325742284539503910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A055999 (n + 4)).toNat

end

end A243726.P2325742284539503910

/-! ## A243726.P15759596877982192940

`A243729(Δ[A026054(n+4)])`
-/

namespace A243726.P15759596877982192940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (f1 (n + 1) - f1 n).toNat

end

end A243726.P15759596877982192940

/-! ## A243726.P3233556509603722078

`A243729(A000217(n+7)-6)`
-/

namespace A243726.P3233556509603722078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000217 (n + 7) - 6).toNat

end

end A243726.P3233556509603722078

/-! ## A243726.P8817868677046681793

`A243729(A000124(n+7)-7)`
-/

namespace A243726.P8817868677046681793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000124 (n + 7) - 7).toNat

end

end A243726.P8817868677046681793

/-! ## A243726.P12567199536184508118

`A243729(A167614(n+5)+n-2)`
-/

namespace A243726.P12567199536184508118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A167614 (n + 5) + ((n : ℤ) - 2)).toNat

end

end A243726.P12567199536184508118

/-! ## A243726.P12299697879425753367

`A243729(A000096(n+8)-A103517(n+10))`
-/

namespace A243726.P12299697879425753367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000096 (n + 8) - A103517 (n + 10)).toNat

end

end A243726.P12299697879425753367

/-!
# A243727: Number of length n+2 0..8 arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..8 introduced in 0..8 order.

The programs for A243727, there is no canonical definition to state claims against.
-/

/-! ## A243727.P17394580260447404132

`A243729(A034856(n+7)-5)`
-/

namespace A243727.P17394580260447404132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A034856 (n + 7) - 5).toNat

end

end A243727.P17394580260447404132

/-! ## A243727.P10395217775894812296

`A243729(A000096(n+7)-6)`
-/

namespace A243727.P10395217775894812296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000096 (n + 7) - 6).toNat

end

end A243727.P10395217775894812296

/-! ## A243727.P929410880940834664

`A243729(A000217(n+8)-7)`
-/

namespace A243727.P929410880940834664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000217 (n + 8) - 7).toNat

end

end A243727.P929410880940834664

/-! ## A243727.P12979537903865894987

`A243729(A000124(n+8)-8)`
-/

namespace A243727.P12979537903865894987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000124 (n + 8) - 8).toNat

end

end A243727.P12979537903865894987

/-! ## A243727.P16035202617068359902

`A243729(A167499(n+5)+A060747(n+2))`
-/

namespace A243727.P16035202617068359902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A167499 (n + 5) + A060747 (n + 2)).toNat

end

end A243727.P16035202617068359902

/-! ## A243727.P2515725494971773683

`A243729(A004275(n+5)+A000217(n+6))`
-/

namespace A243727.P2515725494971773683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A004275 (n + 5) + A000217 (n + 6)).toNat

end

end A243727.P2515725494971773683

/-!
# A243728: Number of length n+2 0..9 arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..9 introduced in 0..9 order.

The programs for A243728, there is no canonical definition to state claims against.
-/

/-! ## A243728.P13630750695813754279

`A243729(A155212(n+5))`
-/

namespace A243728.P13630750695813754279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A155212 (n + 5)).toNat

end

end A243728.P13630750695813754279

/-! ## A243728.P5737145446267503919

`A243729(A000217(n+9)-8)`
-/

namespace A243728.P5737145446267503919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000217 (n + 9) - 8).toNat

end

end A243728.P5737145446267503919

/-! ## A243728.P678563331519786686

`A243729(A000124(n+9)-9)`
-/

namespace A243728.P678563331519786686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A000124 (n + 9) - 9).toNat

end

end A243728.P678563331519786686

/-! ## A243728.P2769075508660715005

`A243729(A008706(n+6)+∑[n+4]+3)`
-/

namespace A243728.P2769075508660715005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A008706 (n + 6) + ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ)).toNat

end

end A243728.P2769075508660715005

/-! ## A243728.P18217933921835132158

`A243729(2*(n+1)+A000217(n+7)+7)`
-/

namespace A243728.P18217933921835132158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 ((2 * (n + 1) : ℤ) + (A000217 (n + 7) + 7)).toNat

end

end A243728.P18217933921835132158

/-! ## A243728.P5214157409058730336

`A243729(A052905(n+4)+A005843(n+7))`
-/

namespace A243728.P5214157409058730336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243729 (A052905 (n + 4) + A005843 (n + 7)).toNat

end

end A243728.P5214157409058730336

/-!
# A243729: T(n,k)=Number of length n+2 0..k arrays with no three unequal elements in a row and no three equal elements in a row and new values 0..k introduced in 0..k order.

The programs for A243729, there is no canonical definition to state claims against.
-/

/-! ## A243729.P3540557250924242757

`A238303(A336956(n))+A062575(A209996(n+1)+1)`
-/

namespace A243729.P3540557250924242757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 (A336956 n).toNat + A062575 (A209996 (n + 1) + 1).toNat

end

end A243729.P3540557250924242757

/-! ## A243729.P10916371750117964885

`A268327(n+1)+A020639(A112356(n))`
-/

namespace A243729.P10916371750117964885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268327 (n + 1) + A020639 (A112356 n).toNat

end

end A243729.P10916371750117964885

/-! ## A243729.P8508082335277127941

`A140828(A209996(n+1))+A020639(A112356(n))`
-/

namespace A243729.P8508082335277127941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140828 (A209996 (n + 1)).toNat + A020639 (A112356 n).toNat

end

end A243729.P8508082335277127941

/-! ## A243729.P6527965865236926763

`A062575(A209996(n+1)+1)+A020639(A112356(n))`
-/

namespace A243729.P6527965865236926763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A209996 (n + 1) + 1).toNat + A020639 (A112356 n).toNat

end

end A243729.P6527965865236926763

/-!
# A243730: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A243730, there is no canonical definition to state claims against.
-/

/-! ## A243730.P4306065632508495561

`A002262(lt[A098825(n), A208879(n)])`
-/

namespace A243730.P4306065632508495561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243730.P4306065632508495561

/-! ## A243730.P13295458771175615780

`A002260(A277892(A277898(∑[n+3])))`
-/

namespace A243730.P13295458771175615780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A277892 (A277898 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A243730.P13295458771175615780

/-! ## A243730.P8500596919487718120

`A002260(A277895(A277897(∑[n+3])))`
-/

namespace A243730.P8500596919487718120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A277895 (A277897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A243730.P8500596919487718120

/-! ## A243730.P5861884817004272320

`A139039(A291119(n))*A243732(n+2)`
-/

namespace A243730.P5861884817004272320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139039 (A291119 n).toNat * A243732 (n + 2)

end

end A243730.P5861884817004272320

/-!
# A243732: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A243732, there is no canonical definition to state claims against.
-/

/-! ## A243732.P15365620041349961110

`A144328(lt[A291883(n+2), A320253(n)])`
-/

namespace A243732.P15365620041349961110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291883 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243732.P15365620041349961110

/-! ## A243732.P9457864010032704958

`A144328(lt[A228859(n+2), A157729(n)]+1)`
-/

namespace A243732.P9457864010032704958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228859 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A243732.P9457864010032704958

/-! ## A243732.P1328114726379395773

`A144328(lt[A193357(n+5), A352067(n+1)])`
-/

namespace A243732.P1328114726379395773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193357 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243732.P1328114726379395773

/-! ## A243732.P11157815695501020807

`∏{e}[ceil(2^(n-2))+floor(2^(n-3)), A002260(#)]`
-/

namespace A243732.P11157815695501020807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ + ⌊(2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002260 (Nat.factorization (f1 n).natAbs p)

end

end A243732.P11157815695501020807

/-!
# A243734: Primes p for which p + 4, p^2 + 4 and p^3 + 4 are primes.

The programs for A243734, there is no canonical definition to state claims against.
-/

/-! ## A243734.P8899024883052612311

`∩[A062324(n+1), A243583(n+1)]`
-/

namespace A243734.P8899024883052612311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243734.P8899024883052612311

/-! ## A243734.P15922176946356990896

`∩[A007591(n+1), A243583(n+1)]`
-/

namespace A243734.P15922176946356990896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243734.P15922176946356990896

/-!
# A243735: Sum of the numbers in row n of the array at A242364.

The programs for A243735, there is no canonical definition to state claims against.
-/

/-! ## A243735.P16459240581905501387

`A352128(6*n+14)+A242498(∑[∑{e}[n+1, #]+1])`
-/

namespace A243735.P16459240581905501387
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352128 (6 * n + 14) + A242498 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243735.P16459240581905501387

/-! ## A243735.P4430571494286495063

`A138234(A280908(n))`
-/

namespace A243735.P4430571494286495063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 (A280908 n).toNat

end

end A243735.P4430571494286495063

/-! ## A243735.P5222117978518661880

`A003056(A351648(n))+n`
-/

namespace A243735.P5222117978518661880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A351648 n).toNat + (n : ℤ)

end

end A243735.P5222117978518661880

/-! ## A243735.P515772488280108106

`A000602(∑{e}[A099996(n), #])+∑[∑{e}[n+1, #]]`
-/

namespace A243735.P515772488280108106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099996 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000602 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A243735.P515772488280108106

/-! ## A243735.P13632571235227279214

`A318400(n+1)+A135661(A001189(n+2))`
-/

namespace A243735.P13632571235227279214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1) + A135661 (A001189 (n + 2)).toNat

end

end A243735.P13632571235227279214

/-!
# A243736: Sum of the numbers in row n of the array at A242365.

The programs for A243736, there is no canonical definition to state claims against.
-/

/-! ## A243736.P18075296332725520333

`ceil(A001358(A255170(n+5))/63)`
-/

namespace A243736.P18075296332725520333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001358 (A255170 (n + 5)).toNat : ℚ) / 63⌉

end

end A243736.P18075296332725520333

/-! ## A243736.P5135790839731627552

`A332086(A296668(n+1)-A064989(n+1))`
-/

namespace A243736.P5135790839731627552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A296668 (n + 1) - A064989 (n + 1)).toNat

end

end A243736.P5135790839731627552

/-! ## A243736.P4303985314395524101

`or(A008647(A055729(n+3)), A363339(3*n+1))`
-/

namespace A243736.P4303985314395524101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008647 (A055729 (n + 3)).toNat) (A363339 (3 * n + 1))

end

end A243736.P4303985314395524101

/-!
# A243737: Number of compositions of n with exactly two occurrences of the largest part.

The programs for A243737, there is no canonical definition to state claims against.
-/

/-! ## A243737.P10664867228730597893

`A238341(∑[n+2]+3)`
-/

namespace A243737.P10664867228730597893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A243737.P10664867228730597893

/-! ## A243737.P16543982043252487448

`(1-char[1])*A238341(A340266(n+1))`
-/

namespace A243737.P16543982043252487448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * A238341 (A340266 (n + 1)).toNat

end

end A243737.P16543982043252487448

/-! ## A243737.P11930404043943358517

`lcm(A097807(n), A238341(A340266(n+1)))`
-/

namespace A243737.P11930404043943358517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A238341 (A340266 (n + 1)).toNat)

end

end A243737.P11930404043943358517

/-! ## A243737.P8474903173468986639

`A238341(A340266(n+1))%A000984(n+1)`
-/

namespace A243737.P8474903173468986639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238341 (A340266 (n + 1)).toNat) (A000984 (n + 1))

end

end A243737.P8474903173468986639

/-! ## A243737.P8339405960275965537

`A238341(A340266(n+1))+char[A051003(n+1)]`
-/

namespace A243737.P8339405960275965537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051003 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A340266 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A243737.P8339405960275965537

/-! ## A243737.P3702905656864583090

`A238341(A340266(n+1))*A238341(A046092(n))`
-/

namespace A243737.P3702905656864583090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A340266 (n + 1)).toNat * A238341 (A046092 n).toNat

end

end A243737.P3702905656864583090

/-! ## A243737.P6907082807182494582

`A238341(A340266(n+1))^A014963(A046092(n+1))`
-/

namespace A243737.P6907082807182494582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238341 (A340266 (n + 1)).toNat : ℚ) ^ (A014963 (A046092 (n + 1)).toNat : ℤ)

end

end A243737.P6907082807182494582

/-!
# A243738: Number of compositions of n with exactly three occurrences of the largest part.

The programs for A243738, there is no canonical definition to state claims against.
-/

/-! ## A243738.P6633321919117555211

`A238341(∑[n+3]+6)`
-/

namespace A243738.P6633321919117555211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A243738.P6633321919117555211

/-! ## A243738.P8598113003003733763

`gcd(C(2, n+2), A238341(A052905(n)+8))`
-/

namespace A243738.P8598113003003733763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A238341 (A052905 n + 8).toNat)

end

end A243738.P8598113003003733763

/-! ## A243738.P4646878572198788464

`and(A238341(A167614(n+2)), A263806(n))`
-/

namespace A243738.P4646878572198788464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238341 (A167614 (n + 2)).toNat) (A263806 n)

end

end A243738.P4646878572198788464

/-! ## A243738.P17548177234342760045

`or(A000007(n), A238341(A167614(n+2)))`
-/

namespace A243738.P17548177234342760045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A238341 (A167614 (n + 2)).toNat)

end

end A243738.P17548177234342760045

/-! ## A243738.P5715908213193241397

`A238341(Δ[A008778(n)]+5)%A304467(n+1)`
-/

namespace A243738.P5715908213193241397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238341 (f1 (n + 1) - f1 n + 5).toNat) (A304467 (n + 1))

end

end A243738.P5715908213193241397

/-! ## A243738.P4484710747693150695

`A057427(A020639(n+1))*A238341(A167614(n+2))`
-/

namespace A243738.P4484710747693150695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A020639 (n + 1)).toNat * A238341 (A167614 (n + 2)).toNat

end

end A243738.P4484710747693150695

/-!
# A243739: Number of compositions of n with exactly four occurrences of the largest part.

The programs for A243739, there is no canonical definition to state claims against.
-/

/-! ## A243739.P8934497753741158191

`A238341(eq[4, A002262(n)])`
-/

namespace A243739.P8934497753741158191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243739.P8934497753741158191

/-! ## A243739.P17587023805387761377

`A238341(A167614(n+3)+1)`
-/

namespace A243739.P17587023805387761377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A167614 (n + 3) + 1).toNat

end

end A243739.P17587023805387761377

/-! ## A243739.P12347138018489138876

`A238341(A133263(n+4)+2)`
-/

namespace A243739.P12347138018489138876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A133263 (n + 4) + 2).toNat

end

end A243739.P12347138018489138876

/-! ## A243739.P4021843840876019735

`A238341(A166136(n+3)-2)`
-/

namespace A243739.P4021843840876019735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A166136 (n + 3) - 2).toNat

end

end A243739.P4021843840876019735

/-! ## A243739.P4104684601613397577

`A238341(A000124(n+4)+3)`
-/

namespace A243739.P4104684601613397577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000124 (n + 4) + 3).toNat

end

end A243739.P4104684601613397577

/-! ## A243739.P9027272883876992785

`A238341(A000096(n+3)+5)`
-/

namespace A243739.P9027272883876992785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000096 (n + 3) + 5).toNat

end

end A243739.P9027272883876992785

/-! ## A243739.P12147726769650378669

`A238341(A000217(n+4)+4)`
-/

namespace A243739.P12147726769650378669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000217 (n + 4) + 4).toNat

end

end A243739.P12147726769650378669

/-! ## A243739.P2411870685819024274

`A238341(A055999(n+1)+10)`
-/

namespace A243739.P2411870685819024274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A055999 (n + 1) + 10).toNat

end

end A243739.P2411870685819024274

/-! ## A243739.P5040893376037944855

`A238341(A004652(n+2)+A004652(n+7))`
-/

namespace A243739.P5040893376037944855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A004652 (n + 2) + A004652 (n + 7)).toNat

end

end A243739.P5040893376037944855

/-!
# A243740: Number of compositions of n with exactly five occurrences of the largest part.

The programs for A243740, there is no canonical definition to state claims against.
-/

/-! ## A243740.P12864356254976274833

`A238341(A167499(n+4))`
-/

namespace A243740.P12864356254976274833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A167499 (n + 4)).toNat

end

end A243740.P12864356254976274833

/-! ## A243740.P5139533839586928487

`A238341(eq[5, A002262(n)])`
-/

namespace A243740.P5139533839586928487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243740.P5139533839586928487

/-! ## A243740.P15869641833011077316

`A238341(A000124(n+5)+4)`
-/

namespace A243740.P15869641833011077316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000124 (n + 5) + 4).toNat

end

end A243740.P15869641833011077316

/-! ## A243740.P11890038254021318769

`A238341(A000096(n+4)+6)`
-/

namespace A243740.P11890038254021318769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000096 (n + 4) + 6).toNat

end

end A243740.P11890038254021318769

/-! ## A243740.P18406932131756132688

`A238341(A133263(n+3)+A005843(n+6))`
-/

namespace A243740.P18406932131756132688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A133263 (n + 3) + A005843 (n + 6)).toNat

end

end A243740.P18406932131756132688

/-!
# A243741: Number of compositions of n with exactly six occurrences of the largest part.

The programs for A243741, there is no canonical definition to state claims against.
-/

/-! ## A243741.P9726352363690757795

`A238341(A166136(n+5))`
-/

namespace A243741.P9726352363690757795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A166136 (n + 5)).toNat

end

end A243741.P9726352363690757795

/-! ## A243741.P13493906530919501652

`A238341(A133263(n+6)+4)`
-/

namespace A243741.P13493906530919501652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A133263 (n + 6) + 4).toNat

end

end A243741.P13493906530919501652

/-! ## A243741.P13648624106922955708

`A238341(A000096(n+5)+7)`
-/

namespace A243741.P13648624106922955708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000096 (n + 5) + 7).toNat

end

end A243741.P13648624106922955708

/-! ## A243741.P12495698645565674121

`A238341(A000217(n+6)+6)`
-/

namespace A243741.P12495698645565674121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000217 (n + 6) + 6).toNat

end

end A243741.P12495698645565674121

/-! ## A243741.P12964970635774414434

`A238341(A046691(n+4)+10)`
-/

namespace A243741.P12964970635774414434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A046691 (n + 4) + 10).toNat

end

end A243741.P12964970635774414434

/-! ## A243741.P9670579234491224904

`A238341(A004277(n+8)+A000124(n+4))`
-/

namespace A243741.P9670579234491224904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A004277 (n + 8) + A000124 (n + 4)).toNat

end

end A243741.P9670579234491224904

/-! ## A243741.P5583101793008533929

`A238341(A167614(n+7)-A005843(n+6))`
-/

namespace A243741.P5583101793008533929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A167614 (n + 7) - A005843 (n + 6)).toNat

end

end A243741.P5583101793008533929

/-!
# A243742: Number of compositions of n with exactly seven occurrences of the largest part.

The programs for A243742, there is no canonical definition to state claims against.
-/

/-! ## A243742.P15693296202291158581

`A238341(eq[7, A002262(n)])`
-/

namespace A243742.P15693296202291158581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243742.P15693296202291158581

/-! ## A243742.P11214182372281633982

`A238341(A000124(n+7)+6)`
-/

namespace A243742.P11214182372281633982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000124 (n + 7) + 6).toNat

end

end A243742.P11214182372281633982

/-! ## A243742.P16924486513036741289

`A238341(A000096(n+6)+8)`
-/

namespace A243742.P16924486513036741289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000096 (n + 6) + 8).toNat

end

end A243742.P16924486513036741289

/-! ## A243742.P13108735736133117949

`A238341(eq[8, A002260(n+1)])`
-/

namespace A243742.P13108735736133117949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243742.P13108735736133117949

/-! ## A243742.P17228789432242301887

`A238341(A133263(n+8)-(n+3))`
-/

namespace A243742.P17228789432242301887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A133263 (n + 8) - (n + 3 : ℤ)).toNat

end

end A243742.P17228789432242301887

/-! ## A243742.P9899447806363207095

`A238341(A000217(n+9)-A004277(n+5))`
-/

namespace A243742.P9899447806363207095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000217 (n + 9) - A004277 (n + 5)).toNat

end

end A243742.P9899447806363207095

/-!
# A243743: Number of compositions of n with exactly eight occurrences of the largest part.

The programs for A243743, there is no canonical definition to state claims against.
-/

/-! ## A243743.P652810656519096132

`A238341(A133263(n+8)+6)`
-/

namespace A243743.P652810656519096132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A133263 (n + 8) + 6).toNat

end

end A243743.P652810656519096132

/-! ## A243743.P648542226318266543

`A238341(A000096(n+7)+9)`
-/

namespace A243743.P648542226318266543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000096 (n + 7) + 9).toNat

end

end A243743.P648542226318266543

/-! ## A243743.P11047427870617475080

`A238341(A000217(n+9)-(n+1))`
-/

namespace A243743.P11047427870617475080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000217 (n + 9) - (n + 1 : ℤ)).toNat

end

end A243743.P11047427870617475080

/-! ## A243743.P12066097728602886238

`A238341(A087475(n+7)-A055999(n+2))`
-/

namespace A243743.P12066097728602886238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A087475 (n + 7) - A055999 (n + 2)).toNat

end

end A243743.P12066097728602886238

/-! ## A243743.P10747050292368994571

`A238341(A167614(n+9)-A005843(n+7))`
-/

namespace A243743.P10747050292368994571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A167614 (n + 9) - A005843 (n + 7)).toNat

end

end A243743.P10747050292368994571

/-!
# A243744: Number of compositions of n with exactly nine occurrences of the largest part.

The programs for A243744, there is no canonical definition to state claims against.
-/

/-! ## A243744.P17855877557725473547

`A238341(A167499(n+8)+4)`
-/

namespace A243744.P17855877557725473547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A167499 (n + 8) + 4).toNat

end

end A243744.P17855877557725473547

/-! ## A243744.P13017130259298417178

`A238341(A000124(n+9)+8)`
-/

namespace A243744.P13017130259298417178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000124 (n + 9) + 8).toNat

end

end A243744.P13017130259298417178

/-! ## A243744.P17829682676544748826

`A238341(A000096(n+8)+10)`
-/

namespace A243744.P17829682676544748826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000096 (n + 8) + 10).toNat

end

end A243744.P17829682676544748826

/-! ## A243744.P4246701851060237013

`A238341(A000217(n+10)-(n+1))`
-/

namespace A243744.P4246701851060237013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A243744.P4246701851060237013

/-! ## A243744.P2094961108827638167

`A238341(A133263(n+7)+A005843(n+12))`
-/

namespace A243744.P2094961108827638167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A133263 (n + 7) + A005843 (n + 12)).toNat

end

end A243744.P2094961108827638167

/-!
# A243745: Number of compositions of n with exactly ten occurrences of the largest part.

The programs for A243745, there is no canonical definition to state claims against.
-/

/-! ## A243745.P2489045829498400730

`A238341(eq[10, A002262(n)])`
-/

namespace A243745.P2489045829498400730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243745.P2489045829498400730

/-! ## A243745.P16482023208725027006

`A238341(A000096(n+9)+11)`
-/

namespace A243745.P16482023208725027006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000096 (n + 9) + 11).toNat

end

end A243745.P16482023208725027006

/-! ## A243745.P18020482687063929569

`A238341(A000217(n+10)+10)`
-/

namespace A243745.P18020482687063929569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000217 (n + 10) + 10).toNat

end

end A243745.P18020482687063929569

/-! ## A243745.P11989809980619166020

`A238341(eq[11, A002260(n+1)])`
-/

namespace A243745.P11989809980619166020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243745.P11989809980619166020

/-! ## A243745.P6114837289762505364

`A238341(eq[11, A134868(n+1)])`
-/

namespace A243745.P6114837289762505364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243745.P6114837289762505364

/-! ## A243745.P10951399038363521273

`A238341(A167614(n+11)-A005843(n+8))`
-/

namespace A243745.P10951399038363521273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A167614 (n + 11) - A005843 (n + 8)).toNat

end

end A243745.P10951399038363521273

/-!
# A243746: Number of compositions of n^2 with exactly n occurrences of the largest part.

The programs for A243746, there is no canonical definition to state claims against.
-/

/-! ## A243746.P18319370943216032261

`A238341(2*A006528(n))`
-/

namespace A243746.P18319370943216032261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (2 * A006528 n).toNat

end

end A243746.P18319370943216032261

/-! ## A243746.P15051263918027695436

`A238341(A037270(n)+n)`
-/

namespace A243746.P15051263918027695436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A037270 n + (n : ℤ)).toNat

end

end A243746.P15051263918027695436

/-! ## A243746.P15770965427601745649

`A238341(A000217(n²)+n)`
-/

namespace A243746.P15770965427601745649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238341 (A000217 (n ^ 2) + (n : ℤ)).toNat

end

end A243746.P15770965427601745649

/-!
# A243747: Expansion of (phi(q) - phi(q^2))^2 / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A243747, the canonical program `A243747.P6224960804244215047` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243747 has offset 2).

The definition of A243747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243747.P12689563359419663565

`A244544(n+2)-A033715(n+2)`
-/

namespace A243747.P12689563359419663565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244544 (n + 2) - A033715 (n + 2)

end

end A243747.P12689563359419663565

namespace A243747

/-- `A244544(n+2)-A033715(n+2)` -/
def P12689563359419663565.Spec : Prop :=
  ∀ n, P12689563359419663565.a n = A243747 (n + 2)

end A243747

/-! ## A243747.P6224960804244215047

`A035184(A259445(n+2))-A002325(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A243747

/-- `A035184(A259445(n+2))-A002325(n+2)` -/
def P6224960804244215047.Spec : Prop :=
  ∀ n, P6224960804244215047.a n = A243747 (n + 2)

theorem P6224960804244215047.correct : P6224960804244215047.Spec := by
  intro n
  simp only [A243747, Nat.add_sub_cancel]

end A243747

/-!
# A243750: Indices of records in A112801 = number of partitions of 2n-1 into three numbers with two distinct prime factors each.

The programs for A243750, there is no canonical definition to state claims against.
-/

/-! ## A243750.P1404484110535441288

`lt[A276942(A067775(n+4)), A155776(n+1)]`
-/

namespace A243750.P1404484110535441288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276942 (A067775 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155776 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243750.P1404484110535441288

/-! ## A243750.P18437913601962229251

`lt[A087681(A355035(n+2)), A210944(2*n+1)]`
-/

namespace A243750.P18437913601962229251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (A355035 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210944 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243750.P18437913601962229251

/-! ## A243750.P1005836328395903709

`lt[A051173(n+1), A326595(A195831(2*(n+2)))]`
-/

namespace A243750.P1005836328395903709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326595 (A195831 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243750.P1005836328395903709

/-! ## A243750.P2325845239043104219

`lt[A335893(2*n+3), A216674(A064174(n+1))]`
-/

namespace A243750.P2325845239043104219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216674 (A064174 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243750.P2325845239043104219

/-! ## A243750.P5945250374736422881

`lt[9, A218879(A002808(n+1))]`
-/

namespace A243750.P5945250374736422881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218879 (A002808 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243750.P5945250374736422881

/-!
# A243751: Range of A112801 (number of partitions of 2n-1 into three summands with two distinct prime factors each).

The programs for A243751, there is no canonical definition to state claims against.
-/

/-! ## A243751.P2351739410633010509

`eq[1, char[A112801(n+1)]]`
-/

namespace A243751.P2351739410633010509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112801 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243751.P2351739410633010509

/-! ## A243751.P12119261299694071134

`record[char[A112801(n+1)]*A004526(2*n)]`
-/

namespace A243751.P12119261299694071134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112801 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A004526 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243751.P12119261299694071134

/-! ## A243751.P6824813325228804767

`lt[n-2, char[A112801(n+1)]*A095274(n)]`
-/

namespace A243751.P6824813325228804767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112801 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A095274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243751.P6824813325228804767

/-! ## A243751.P2091921972499708769

`lt[A178489(n), char[A112801(n+1)]+1]`
-/

namespace A243751.P2091921972499708769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112801 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243751.P2091921972499708769

/-! ## A243751.P13081833610062907737

`record[A112801(A036741(n+1)+4)]`
-/

namespace A243751.P13081833610062907737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112801 (A036741 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243751.P13081833610062907737

/-!
# A243753: Number A(n,k) of Dyck paths of semilength n avoiding the consecutive step pattern given by the binary expansion of k, where 1=U=(1,1) and 0=D=(1,-1); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A243753, there is no canonical definition to state claims against.
-/

/-! ## A243753.P4700639169799424740

`A103221(A058398(n+3)%A261763(n))`
-/

namespace A243753.P4700639169799424740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.tmod (A058398 (n + 3)) (A261763 n)).toNat

end

end A243753.P4700639169799424740

/-! ## A243753.P1833976344299418088

`C(n%A060637(n), n)`
-/

namespace A243753.P1833976344299418088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (n : ℤ) (A060637 n)).toNat n

end

end A243753.P1833976344299418088

/-! ## A243753.P14524105888227117508

`A000007(floor(n/A060637(n)))`
-/

namespace A243753.P14524105888227117508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ⌊(n : ℚ) / (A060637 n : ℚ)⌋.toNat

end

end A243753.P14524105888227117508

/-! ## A243753.P2195962669468726243

`A000038(n)^C(n, A060637(n))`
-/

namespace A243753.P2195962669468726243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ Nat.choose n (A060637 n).toNat

end

end A243753.P2195962669468726243

/-! ## A243753.P950480834931627541

`C(A007318(n), C(n, A060637(n)))`
-/

namespace A243753.P950480834931627541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 n).toNat (Nat.choose n (A060637 n).toNat)

end

end A243753.P950480834931627541

/-!
# A243754: Number of Dyck paths of semilength n avoiding the consecutive step pattern given by the binary expansion of n, where 1=U=(1,1) and 0=D=(1,-1).

The programs for A243754, there is no canonical definition to state claims against.
-/

/-! ## A243754.P4271372265539202069

`A243753(∑[4*n])`
-/

namespace A243754.P4271372265539202069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243753 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243754.P4271372265539202069

/-! ## A243754.P4102275150716874477

`A243753((n+1)*2*n)%A000747(n)`
-/

namespace A243754.P4102275150716874477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243753 ((n + 1) * (2 * n))) (A000747 n)

end

end A243754.P4102275150716874477

/-! ## A243754.P14266886012821017064

`lcm(A033999(n), A243753((n+1)*2*n))`
-/

namespace A243754.P14266886012821017064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A243753 ((n + 1) * (2 * n)))

end

end A243754.P14266886012821017064

/-! ## A243754.P5347706946470862824

`gcd(A000038(n), A243753(A046092(n)))`
-/

namespace A243754.P5347706946470862824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A243753 (A046092 n).toNat)

end

end A243754.P5347706946470862824

/-! ## A243754.P35694485183081574

`lcm(A020985(n), A243753(A046092(n)))`
-/

namespace A243754.P35694485183081574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A243753 (A046092 n).toNat)

end

end A243754.P35694485183081574

/-! ## A243754.P7536959561851018018

`A000034(2*n)*A243753(A046092(n))`
-/

namespace A243754.P7536959561851018018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A243753 (A046092 n).toNat

end

end A243754.P7536959561851018018

/-! ## A243754.P17410107623486272121

`A243753(A046092(n))%A000108(n+2)`
-/

namespace A243754.P17410107623486272121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243753 (A046092 n).toNat) (A000108 (n + 2))

end

end A243754.P17410107623486272121

/-! ## A243754.P7460197801656247582

`A059841(2*(n+1))*A243753(A046092(n))`
-/

namespace A243754.P7460197801656247582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * (n + 1)) * A243753 (A046092 n).toNat

end

end A243754.P7460197801656247582

/-! ## A243754.P12517626578854435788

`A243753(A046092(n))^A000041(floor(2/(n+1)))`
-/

namespace A243754.P12517626578854435788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243753 (A046092 n).toNat : ℚ) ^ (A000041 ⌊2 / (n + 1 : ℚ)⌋.toNat : ℤ)

end

end A243754.P12517626578854435788

/-!
# A243755: Primes p such that p is a primitive root modulo the next prime p' and also p' is a primitive root modulo p.

The programs for A243755, there is no canonical definition to state claims against.
-/

/-! ## A243755.P11792667186366091676

`p?[A000164(n)*A023474(n)]`
-/

namespace A243755.P11792667186366091676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n * A023474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243755.P11792667186366091676

/-! ## A243755.P2152415464646669393

`p?[A076798(∑[A076831(n)])]`
-/

namespace A243755.P2152415464646669393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076831 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076798 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243755.P2152415464646669393

/-! ## A243755.P15336367960355576625

`p?[A076798(∑[A329052(n)])]`
-/

namespace A243755.P15336367960355576625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076798 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243755.P15336367960355576625

/-!
# A243756: Triangle read by rows: T(n,k) = A242954(n)/(A242954(k) * A242954(n-k)).

The programs for A243756, the canonical program `A243756.P3633262118431824460` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243756 has offset 0).

The definition of A243756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243756.P3633262118431824460

`A242954(row(n))/(A242954(col(n))*A242954(row(n)-col(n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A243756

/-- `A242954(row(n))/(A242954(col(n))*A242954(row(n)-col(n)))` -/
def P3633262118431824460.Spec : Prop :=
  ∀ n, P3633262118431824460.a n = (A243756 n : ℚ)

end A243756

/-! ## A243756.P4137384781413249675

`dr(gcd(13, A022169(n)))`
-/

namespace A243756.P4137384781413249675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd 13 (A022169 n) : ℤ)

end

end A243756.P4137384781413249675

namespace A243756

/-- `dr(gcd(13, A022169(n)))` -/
def P4137384781413249675.Spec : Prop :=
  ∀ n, (P4137384781413249675.a n : ℤ) = A243756 n

end A243756

/-! ## A243756.P9464776191486147041

`4^val(A022166(n), 5)`
-/

namespace A243756.P9464776191486147041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (A022166 n).toNat 5

end

end A243756.P9464776191486147041

namespace A243756

/-- `4^val(A022166(n), 5)` -/
def P9464776191486147041.Spec : Prop :=
  ∀ n, (P9464776191486147041.a n : ℤ) = A243756 n

end A243756

/-! ## A243756.P17966923692417674799

`(val(A034801(n), 7)+1)²`
-/

namespace A243756.P17966923692417674799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A034801 n).toNat 7 + 1) ^ 2

end

end A243756.P17966923692417674799

namespace A243756

/-- `(val(A034801(n), 7)+1)²` -/
def P17966923692417674799.Spec : Prop :=
  ∀ n, (P17966923692417674799.a n : ℤ) = A243756 n

end A243756

/-! ## A243756.P5989181968173690945

`A000079(val(A022171(n), 5))`
-/

namespace A243756.P5989181968173690945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A022171 n).toNat 5)

end

end A243756.P5989181968173690945

namespace A243756

/-- `A000079(val(A022171(n), 5))` -/
def P5989181968173690945.Spec : Prop :=
  ∀ n, P5989181968173690945.a n = A243756 n

end A243756

/-! ## A243756.P939979292698761625

`A000124(val(A022171(n), 5))`
-/

namespace A243756.P939979292698761625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.valuation (A022171 n).toNat 5)

end

end A243756.P939979292698761625

namespace A243756

/-- `A000124(val(A022171(n), 5))` -/
def P939979292698761625.Spec : Prop :=
  ∀ n, P939979292698761625.a n = A243756 n

end A243756

/-! ## A243756.P325516228865154336

`A000302(val(A022167(n), 5))`
-/

namespace A243756.P325516228865154336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (SequenceMachineLib.valuation (A022167 n).toNat 5)

end

end A243756.P325516228865154336

namespace A243756

/-- `A000302(val(A022167(n), 5))` -/
def P325516228865154336.Spec : Prop :=
  ∀ n, P325516228865154336.a n = A243756 n

end A243756

/-! ## A243756.P12785698376446272600

`A000302(val(A022181(n), 5))`
-/

namespace A243756.P12785698376446272600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (SequenceMachineLib.valuation (A022181 n).toNat 5)

end

end A243756.P12785698376446272600

namespace A243756

/-- `A000302(val(A022181(n), 5))` -/
def P12785698376446272600.Spec : Prop :=
  ∀ n, P12785698376446272600.a n = A243756 n

end A243756

/-! ## A243756.P1500590012635154526

`A008579(val(A022166(n), 5))`
-/

namespace A243756.P1500590012635154526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 (SequenceMachineLib.valuation (A022166 n).toNat 5)

end

end A243756.P1500590012635154526

namespace A243756

/-- `A008579(val(A022166(n), 5))` -/
def P1500590012635154526.Spec : Prop :=
  ∀ n, P1500590012635154526.a n = A243756 n

end A243756

/-! ## A243756.P13828488138923311841

`A016777(val(A022167(n), 5))`
-/

namespace A243756.P13828488138923311841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.valuation (A022167 n).toNat 5)

end

end A243756.P13828488138923311841

namespace A243756

/-- `A016777(val(A022167(n), 5))` -/
def P13828488138923311841.Spec : Prop :=
  ∀ n, P13828488138923311841.a n = A243756 n

end A243756

/-!
# A243757: a(n) = Product_{i=1..n} A060904(i).

The programs for A243757, the canonical program `A243757.P16530541461814582168` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243757 has offset 0).

The definition of A243757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243757.P16530541461814582168

`5^A027868(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A243757

/-- `5^A027868(n)` -/
def P16530541461814582168.Spec : Prop :=
  ∀ n, P16530541461814582168.a n = (A243757 n : ℚ)

end A243757

/-! ## A243757.P5455013030483339899

`5^val(n, 5)*a(n-1)` with `a(0)=1`
-/

namespace A243757.P5455013030483339899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 ^ SequenceMachineLib.valuation n 5 * a (n - 1)

end

end A243757.P5455013030483339899

namespace A243757

/-- `5^val(n, 5)*a(n-1)` -/
def P5455013030483339899.Spec : Prop :=
  ∀ n, (P5455013030483339899.a n : ℤ) = A243757 n

end A243757

/-! ## A243757.P10636022232109587915

`a(n-1)*A060904(n)` with `a(0)=1`
-/

namespace A243757.P10636022232109587915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A060904 n

end

end A243757.P10636022232109587915

namespace A243757

/-- `a(n-1)*A060904(n)` -/
def P10636022232109587915.Spec : Prop :=
  ∀ n, P10636022232109587915.a n = A243757 n

end A243757

/-! ## A243757.P12555129691923831780

`A000351(A027868(n))`
-/

namespace A243757.P12555129691923831780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A027868 n).toNat

end

end A243757.P12555129691923831780

namespace A243757

/-- `A000351(A027868(n))` -/
def P12555129691923831780.Spec : Prop :=
  ∀ n, P12555129691923831780.a n = A243757 n

end A243757

/-! ## A243757.P5420966553138207050

`A000351(A191610(n+1)-n)`
-/

namespace A243757.P5420966553138207050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A191610 (n + 1) - (n : ℤ)).toNat

end

end A243757.P5420966553138207050

namespace A243757

/-- `A000351(A191610(n+1)-n)` -/
def P5420966553138207050.Spec : Prop :=
  ∀ n, P5420966553138207050.a n = A243757 n

end A243757

/-! ## A243757.P17441552125765377054

`5^(A034886(n)-A008906(n))`
-/

namespace A243757.P17441552125765377054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A034886 n - A008906 n : ℤ)

end

end A243757.P17441552125765377054

namespace A243757

/-- `5^(A034886(n)-A008906(n))` -/
def P17441552125765377054.Spec : Prop :=
  ∀ n, P17441552125765377054.a n = (A243757 n : ℚ)

end A243757

/-! ## A243757.P7506837845775844177

`A000351(A034886(n)-A008906(n))`
-/

namespace A243757.P7506837845775844177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A034886 n - A008906 n).toNat

end

end A243757.P7506837845775844177

namespace A243757

/-- `A000351(A034886(n)-A008906(n))` -/
def P7506837845775844177.Spec : Prop :=
  ∀ n, P7506837845775844177.a n = A243757 n

end A243757

/-! ## A243757.P9324336131564264313

`gcd(n, 5*a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A243757.P9324336131564264313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd n (5 * a (n - 1)) * a (n - 1)

end

end A243757.P9324336131564264313

namespace A243757

/-- `gcd(n, 5*a(n-1))*a(n-1)` -/
def P9324336131564264313.Spec : Prop :=
  ∀ n, (P9324336131564264313.a n : ℤ) = A243757 n

end A243757

/-! ## A243757.P428068178263757389

`∏[gcd(n, A074872(n+1))]`
-/

namespace A243757.P428068178263757389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A074872 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243757.P428068178263757389

namespace A243757

/-- `∏[gcd(n, A074872(n+1))]` -/
def P428068178263757389.Spec : Prop :=
  ∀ n, (P428068178263757389.a n : ℤ) = A243757 n

end A243757

/-! ## A243757.P6493386631993293592

`gcd(n, 5^(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A243757.P6493386631993293592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (n : ℤ) (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) * a (n - 1)

end

end A243757.P6493386631993293592

namespace A243757

/-- `gcd(n, 5^(n-1))*a(n-1)` -/
def P6493386631993293592.Spec : Prop :=
  ∀ n, (P6493386631993293592.a n : ℤ) = A243757 n

end A243757

/-! ## A243757.P10479319796910263537

`∏[gcd(n, A123748(n))]`
-/

namespace A243757.P10479319796910263537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A123748 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243757.P10479319796910263537

namespace A243757

/-- `∏[gcd(n, A123748(n))]` -/
def P10479319796910263537.Spec : Prop :=
  ∀ n, (P10479319796910263537.a n : ℤ) = A243757 n

end A243757

/-! ## A243757.P16964079306632383813

`∏[gcd(A001076(n), A124398(n))]`
-/

namespace A243757.P16964079306632383813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001076 n) (A124398 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243757.P16964079306632383813

namespace A243757

/-- `∏[gcd(A001076(n), A124398(n))]` -/
def P16964079306632383813.Spec : Prop :=
  ∀ n, (P16964079306632383813.a n : ℤ) = A243757 n

end A243757

/-! ## A243757.P3421558649892331850

`∏[gcd(n, 5^n)]`
-/

namespace A243757.P3421558649892331850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (5 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243757.P3421558649892331850

namespace A243757

/-- `∏[gcd(n, 5^n)]` -/
def P3421558649892331850.Spec : Prop :=
  ∀ n, (P3421558649892331850.a n : ℤ) = A243757 n

end A243757

/-! ## A243757.P2816034427925015668

`A000351(A191610(n+1))/A000351(n)`
-/

namespace A243757.P2816034427925015668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 (A191610 (n + 1)).toNat : ℚ) / (A000351 n : ℚ)

end

end A243757.P2816034427925015668

namespace A243757

/-- `A000351(A191610(n+1))/A000351(n)` -/
def P2816034427925015668.Spec : Prop :=
  ∀ n, P2816034427925015668.a n = (A243757 n : ℚ)

end A243757

/-!
# A243758: a(n) = Product_{i=1..n} A234959(i).

The programs for A243758, the canonical program `A243758.P2844968170181459511` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243758 has offset 0).

The definition of A243758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243758.P2844968170181459511

`6^A054895(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A243758

/-- `6^A054895(n)` -/
def P2844968170181459511.Spec : Prop :=
  ∀ n, P2844968170181459511.a n = (A243758 n : ℚ)

end A243758

/-! ## A243758.P778895578099062927

`6^val(n, 6)*a(n-1)` with `a(0)=1`
-/

namespace A243758.P778895578099062927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 ^ SequenceMachineLib.valuation n 6 * a (n - 1)

end

end A243758.P778895578099062927

namespace A243758

/-- `6^val(n, 6)*a(n-1)` -/
def P778895578099062927.Spec : Prop :=
  ∀ n, (P778895578099062927.a n : ℤ) = A243758 n

end A243758

/-! ## A243758.P13292543322741521747

`a(n-1)*A234959(n)` with `a(0)=1`
-/

namespace A243758.P13292543322741521747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A234959 n

end

end A243758.P13292543322741521747

namespace A243758

/-- `a(n-1)*A234959(n)` -/
def P13292543322741521747.Spec : Prop :=
  ∀ n, P13292543322741521747.a n = A243758 n

end A243758

/-! ## A243758.P13559013781935425448

`A026549(2*A054895(n))`
-/

namespace A243758.P13559013781935425448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (2 * A054895 n).toNat

end

end A243758.P13559013781935425448

namespace A243758

/-- `A026549(2*A054895(n))` -/
def P13559013781935425448.Spec : Prop :=
  ∀ n, P13559013781935425448.a n = A243758 n

end A243758

/-! ## A243758.P11037052361309649733

`A026532(2*A054895(n)+1)`
-/

namespace A243758.P11037052361309649733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (2 * A054895 n + 1).toNat

end

end A243758.P11037052361309649733

namespace A243758

/-- `A026532(2*A054895(n)+1)` -/
def P11037052361309649733.Spec : Prop :=
  ∀ n, P11037052361309649733.a n = A243758 n

end A243758

/-! ## A243758.P28942724793585077

`n/A030105(A030105(n))*a(n-1)` with `a(0)=1`
-/

namespace A243758.P28942724793585077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (A030105 (A030105 n).toNat : ℚ) * a (n - 1)

end

end A243758.P28942724793585077

namespace A243758

/-- `n/A030105(A030105(n))*a(n-1)` -/
def P28942724793585077.Spec : Prop :=
  ∀ n, P28942724793585077.a n = (A243758 n : ℚ)

end A243758

/-! ## A243758.P9582263988236671583

`A026532(A054895(n)+A054895(n)+1)`
-/

namespace A243758.P9582263988236671583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026532 (A054895 n + (A054895 n + 1)).toNat

end

end A243758.P9582263988236671583

namespace A243758

/-- `A026532(A054895(n)+A054895(n)+1)` -/
def P9582263988236671583.Spec : Prop :=
  ∀ n, P9582263988236671583.a n = A243758 n

end A243758

/-! ## A243758.P9390562246298727958

`6^∑[val(A053121(A055998(n)), 6)]`
-/

namespace A243758.P9390562246298727958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053121 (A055998 n).toNat).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243758.P9390562246298727958

namespace A243758

/-- `6^∑[val(A053121(A055998(n)), 6)]` -/
def P9390562246298727958.Spec : Prop :=
  ∀ n, (P9390562246298727958.a n : ℤ) = A243758 n

end A243758

/-! ## A243758.P8850334300786820975

`∏[A254730(A000124(n))]`
-/

namespace A243758.P8850334300786820975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P8850334300786820975

namespace A243758

/-- `∏[A254730(A000124(n))]` -/
def P8850334300786820975.Spec : Prop :=
  ∀ n, P8850334300786820975.a n = A243758 n

end A243758

/-! ## A243758.P11524402435742989707

`∏[A254730(A125577(n))]`
-/

namespace A243758.P11524402435742989707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A125577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P11524402435742989707

namespace A243758

/-- `∏[A254730(A125577(n))]` -/
def P11524402435742989707.Spec : Prop :=
  ∀ n, P11524402435742989707.a n = A243758 n

end A243758

/-! ## A243758.P18362989849288917248

`∏[A254730(A135405(n))]`
-/

namespace A243758.P18362989849288917248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A135405 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P18362989849288917248

namespace A243758

/-- `∏[A254730(A135405(n))]` -/
def P18362989849288917248.Spec : Prop :=
  ∀ n, P18362989849288917248.a n = A243758 n

end A243758

/-! ## A243758.P16455202650509837654

`∏[A254730(A266257(n))]`
-/

namespace A243758.P16455202650509837654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A266257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P16455202650509837654

namespace A243758

/-- `∏[A254730(A266257(n))]` -/
def P16455202650509837654.Spec : Prop :=
  ∀ n, P16455202650509837654.a n = A243758 n

end A243758

/-! ## A243758.P11979488297934570060

`∏[A254730(A089781(n+1))]`
-/

namespace A243758.P11979488297934570060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A089781 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P11979488297934570060

namespace A243758

/-- `∏[A254730(A089781(n+1))]` -/
def P11979488297934570060.Spec : Prop :=
  ∀ n, P11979488297934570060.a n = A243758 n

end A243758

/-! ## A243758.P16333785635488889289

`∏[A254730(A266663(n)-1)]`
-/

namespace A243758.P16333785635488889289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A266663 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P16333785635488889289

namespace A243758

/-- `∏[A254730(A266663(n)-1)]` -/
def P16333785635488889289.Spec : Prop :=
  ∀ n, P16333785635488889289.a n = A243758 n

end A243758

/-! ## A243758.P17615346583209433926

`∏[A254730(A265724(n))]`
-/

namespace A243758.P17615346583209433926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A265724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P17615346583209433926

namespace A243758

/-- `∏[A254730(A265724(n))]` -/
def P17615346583209433926.Spec : Prop :=
  ∀ n, P17615346583209433926.a n = A243758 n

end A243758

/-! ## A243758.P6366780264854360985

`∏[A254730(A266617(n))]`
-/

namespace A243758.P6366780264854360985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A266617 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P6366780264854360985

namespace A243758

/-- `∏[A254730(A266617(n))]` -/
def P6366780264854360985.Spec : Prop :=
  ∀ n, P6366780264854360985.a n = A243758 n

end A243758

/-! ## A243758.P9939310523550917542

`∏[A254730(A266663(n))]`
-/

namespace A243758.P9939310523550917542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254730 (A266663 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A243758.P9939310523550917542

namespace A243758

/-- `∏[A254730(A266663(n))]` -/
def P9939310523550917542.Spec : Prop :=
  ∀ n, P9939310523550917542.a n = A243758 n

end A243758

/-!
# A243759: Triangle T(m,k): exponent of the highest power of 3 dividing the binomial coefficient binomial(m,k).

The programs for A243759, the canonical program `A243759.P8460389810584286974` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243759 has offset 0).

The definition of A243759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A243759.P8460389810584286974

`A007949(A007318(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A243759

/-- `A007949(A007318(n))` -/
def P8460389810584286974.Spec : Prop :=
  ∀ n, P8460389810584286974.a n = A243759 n

theorem P8460389810584286974.correct : P8460389810584286974.Spec := by
  intro n
  simp only [A243759]

end A243759

/-! ## A243759.P1712774401427166901

`val(A007318(n), 3)`
-/

namespace A243759.P1712774401427166901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 n).toNat 3

end

end A243759.P1712774401427166901

namespace A243759

/-- `val(A007318(n), 3)` -/
def P1712774401427166901.Spec : Prop :=
  ∀ n, (P1712774401427166901.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P15437070338615387998

`val(A013609(n), 3)`
-/

namespace A243759.P15437070338615387998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013609 n).toNat 3

end

end A243759.P15437070338615387998

namespace A243759

/-- `val(A013609(n), 3)` -/
def P15437070338615387998.Spec : Prop :=
  ∀ n, (P15437070338615387998.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P5957798715087406083

`val(A013611(n), 3)`
-/

namespace A243759.P5957798715087406083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013611 n).toNat 3

end

end A243759.P5957798715087406083

namespace A243759

/-- `val(A013611(n), 3)` -/
def P5957798715087406083.Spec : Prop :=
  ∀ n, (P5957798715087406083.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P16783800190178841565

`val(A028326(n), 3)`
-/

namespace A243759.P16783800190178841565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028326 n).toNat 3

end

end A243759.P16783800190178841565

namespace A243759

/-- `val(A028326(n), 3)` -/
def P16783800190178841565.Spec : Prop :=
  ∀ n, (P16783800190178841565.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P8386311636427853125

`val(A038207(n), 3)`
-/

namespace A243759.P8386311636427853125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038207 n).toNat 3

end

end A243759.P8386311636427853125

namespace A243759

/-- `val(A038207(n), 3)` -/
def P8386311636427853125.Spec : Prop :=
  ∀ n, (P8386311636427853125.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P13912055779406303903

`val(A038208(n), 3)`
-/

namespace A243759.P13912055779406303903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038208 n).toNat 3

end

end A243759.P13912055779406303903

namespace A243759

/-- `val(A038208(n), 3)` -/
def P13912055779406303903.Spec : Prop :=
  ∀ n, (P13912055779406303903.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P9349775600580543557

`val(A038231(n), 3)`
-/

namespace A243759.P9349775600580543557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038231 n).toNat 3

end

end A243759.P9349775600580543557

namespace A243759

/-- `val(A038231(n), 3)` -/
def P9349775600580543557.Spec : Prop :=
  ∀ n, (P9349775600580543557.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P10847555941324367152

`val(A124927(n), 3)`
-/

namespace A243759.P10847555941324367152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124927 n).toNat 3

end

end A243759.P10847555941324367152

namespace A243759

/-- `val(A124927(n), 3)` -/
def P10847555941324367152.Spec : Prop :=
  ∀ n, (P10847555941324367152.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P319751213054500449

`val(A008459(n), 9)`
-/

namespace A243759.P319751213054500449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008459 n).toNat 9

end

end A243759.P319751213054500449

namespace A243759

/-- `val(A008459(n), 9)` -/
def P319751213054500449.Spec : Prop :=
  ∀ n, (P319751213054500449.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P6209713529615473163

`A001222(A242849(n))`
-/

namespace A243759.P6209713529615473163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A242849 n).toNat

end

end A243759.P6209713529615473163

namespace A243759

/-- `A001222(A242849(n))` -/
def P6209713529615473163.Spec : Prop :=
  ∀ n, P6209713529615473163.a n = A243759 n

end A243759

/-! ## A243759.P17577259551502118947

`val(A028263(n)-A014410(n+2), 3)`
-/

namespace A243759.P17577259551502118947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028263 n - A014410 (n + 2)).toNat 3

end

end A243759.P17577259551502118947

namespace A243759

/-- `val(A028263(n)-A014410(n+2), 3)` -/
def P17577259551502118947.Spec : Prop :=
  ∀ n, (P17577259551502118947.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P15573350968859634634

`val(C(A003056(n), A004736(n+1)-1), 3)`
-/

namespace A243759.P15573350968859634634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose (A003056 n).toNat (A004736 (n + 1) - 1).toNat) 3

end

end A243759.P15573350968859634634

namespace A243759

/-- `val(C(A003056(n), A004736(n+1)-1), 3)` -/
def P15573350968859634634.Spec : Prop :=
  ∀ n, (P15573350968859634634.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P17783547618517908974

`val(A013612(n), 3)`
-/

namespace A243759.P17783547618517908974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013612 n).toNat 3

end

end A243759.P17783547618517908974

namespace A243759

/-- `val(A013612(n), 3)` -/
def P17783547618517908974.Spec : Prop :=
  ∀ n, (P17783547618517908974.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P16643461320382534144

`val(A038210(n), 3)`
-/

namespace A243759.P16643461320382534144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038210 n).toNat 3

end

end A243759.P16643461320382534144

namespace A243759

/-- `val(A038210(n), 3)` -/
def P16643461320382534144.Spec : Prop :=
  ∀ n, (P16643461320382534144.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P15937727800578499046

`val(A038243(n), 3)`
-/

namespace A243759.P15937727800578499046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038243 n).toNat 3

end

end A243759.P15937727800578499046

namespace A243759

/-- `val(A038243(n), 3)` -/
def P15937727800578499046.Spec : Prop :=
  ∀ n, (P15937727800578499046.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P17464820631987431436

`val(A013621(n), 3)`
-/

namespace A243759.P17464820631987431436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013621 n).toNat 3

end

end A243759.P17464820631987431436

namespace A243759

/-- `val(A013621(n), 3)` -/
def P17464820631987431436.Spec : Prop :=
  ∀ n, (P17464820631987431436.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P11639224375304584557

`val(A013614(n), 3)`
-/

namespace A243759.P11639224375304584557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013614 n).toNat 3

end

end A243759.P11639224375304584557

namespace A243759

/-- `val(A013614(n), 3)` -/
def P11639224375304584557.Spec : Prop :=
  ∀ n, (P11639224375304584557.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P1345840717323609451

`val(A027466(n), 3)`
-/

namespace A243759.P1345840717323609451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A027466 n).toNat 3

end

end A243759.P1345840717323609451

namespace A243759

/-- `val(A027466(n), 3)` -/
def P1345840717323609451.Spec : Prop :=
  ∀ n, (P1345840717323609451.a n : ℤ) = A243759 n

end A243759

/-! ## A243759.P5847200149732225027

`val(A013615(n), 3)`
-/

namespace A243759.P5847200149732225027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A013615 n).toNat 3

end

end A243759.P5847200149732225027

namespace A243759

/-- `val(A013615(n), 3)` -/
def P5847200149732225027.Spec : Prop :=
  ∀ n, (P5847200149732225027.a n : ℤ) = A243759 n

end A243759

/-!
# A243760: Expansion of (sqrt(8*x+4*sqrt(1-4*x)-3)-1)/(2*sqrt(1-4*x)-2).

The programs for A243760, there is no canonical definition to state claims against.
-/

/-! ## A243760.P12311053297177438071

`A191923(2^n-(n-char[1]))`
-/

namespace A243760.P12311053297177438071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191923 ((2 ^ n : ℤ) - ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A243760.P12311053297177438071

/-! ## A243760.P8971507664039015211

`A373114(A243022(n+1))`
-/

namespace A243760.P8971507664039015211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373114 (A243022 (n + 1)).toNat

end

end A243760.P8971507664039015211

/-! ## A243760.P10477565106995543985

`A008651(A382668(n+2))`
-/

namespace A243760.P10477565106995543985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A382668 (n + 2)).toNat

end

end A243760.P10477565106995543985

/-!
# A243761: Primes of the form p^2 + pq + q^2, where p and q are consecutive primes.

The programs for A243761, there is no canonical definition to state claims against.
-/

/-! ## A243761.P5966469194782221727

`p?[A069484(n+1)+A006094(n+1)]`
-/

namespace A243761.P5966469194782221727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243761.P5966469194782221727

/-! ## A243761.P12358941288084295769

`p?[A001043(n+1)²-A006094(n+1)]`
-/

namespace A243761.P12358941288084295769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 - A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243761.P12358941288084295769

/-! ## A243761.P9697946561173545121

`p?[A069484(n+1)+A000040(n+1)*A000040(n+2)]`
-/

namespace A243761.P9697946561173545121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + A000040 (n + 1) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243761.P9697946561173545121

/-! ## A243761.P4211754911023150685

`p?[A001043(n+1)²-A000040(n+1)*A000040(n+2)]`
-/

namespace A243761.P4211754911023150685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) ^ 2 - A000040 (n + 1) * A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243761.P4211754911023150685

/-!
# A243762: a(n) = 4*n^3 + 5.

The programs for A243762, there is no canonical definition to state claims against.
-/

/-! ## A243762.P1737986692816558181

`4*(n-1)^3+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243762.P1737986692816558181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - 1) ^ 3 + 5

end

end A243762.P1737986692816558181

/-! ## A243762.P2207585733814026572

`Δ[C(2*n, 2)+24*C(n, 4)]`
-/

namespace A243762.P2207585733814026572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 + 24 * Nat.choose n 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A243762.P2207585733814026572

/-! ## A243762.P13543349705552994587

`Δ[A052762(n)+lcm(n, 2*n-1)]`
-/

namespace A243762.P13543349705552994587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n + (Int.lcm (n : ℤ) ((2 * n : ℤ) - 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243762.P13543349705552994587

/-! ## A243762.P10375579571701317720

`Δ[A051890(n)+A001094(n)]`
-/

namespace A243762.P10375579571701317720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051890 n + A001094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243762.P10375579571701317720

/-! ## A243762.P10385473098315294671

`Δ[A052762(n)+A000384(n)]`
-/

namespace A243762.P10385473098315294671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n + A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243762.P10385473098315294671

/-! ## A243762.P16519902541066674647

`Δ[A130883(n)+A052762(n)]`
-/

namespace A243762.P16519902541066674647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n + A052762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243762.P16519902541066674647

/-! ## A243762.P10432270270271232556

`Δ[A000384(n)+A001094(n)-n]`
-/

namespace A243762.P10432270270271232556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + (A001094 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243762.P10432270270271232556

/-! ## A243762.P15556567567203381853

`Δ[A052762(n)+n*log2(A081294(n))]`
-/

namespace A243762.P15556567567203381853
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A052762 n : ℝ) + (n : ℝ) * Real.logb 2 (A081294 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243762.P15556567567203381853

/-! ## A243762.P2387105848465427916

`Δ[A052762(n)+n*lt[A020639(n²+1), 4]]`
-/

namespace A243762.P2387105848465427916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n ^ 2 + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n + (n * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A243762.P2387105848465427916

/-!
# A243763: Expansion of q * phi(q)^3 * psi(q^2)^4 in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A243763, there is no canonical definition to state claims against.
-/

/-! ## A243763.P8434793810490721801

`∑[∑[A181819(A071734(n))]]`
-/

namespace A243763.P8434793810490721801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A071734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243763.P8434793810490721801

/-! ## A243763.P15592356330421270287

`A000233(n+1)*A300403((n+2)²)`
-/

namespace A243763.P15592356330421270287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000233 (n + 1) * A300403 ((n + 2) ^ 2)

end

end A243763.P15592356330421270287

/-! ## A243763.P14321995817218080088

`A000233(n+1)*A001511(A025240(n+1))`
-/

namespace A243763.P14321995817218080088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000233 (n + 1) * A001511 (A025240 (n + 1)).toNat

end

end A243763.P14321995817218080088

/-! ## A243763.P10296466616815915071

`A000233(n+1)*A136165(A000251(n+7))`
-/

namespace A243763.P10296466616815915071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000233 (n + 1) * A136165 (A000251 (n + 7)).toNat

end

end A243763.P10296466616815915071

/-!
# A243766: Decimal numbers which give three prime numbers when split into three equal parts whose sum is prime. No leading zeros.

The programs for A243766, there is no canonical definition to state claims against.
-/

/-! ## A243766.P18155783699128467931

`A292732(C(A288860(3*n+5), A339748(n+1)))`
-/

namespace A243766.P18155783699128467931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292732 (Nat.choose (A288860 (3 * n + 5)).toNat (A339748 (n + 1)).toNat)

end

end A243766.P18155783699128467931

/-!
# A243767: Decimal prime numbers which can be split into three equal-sized prime parts whose sum is prime. No leading zeros.

The programs for A243767, there is no canonical definition to state claims against.
-/

/-! ## A243767.P8564080316764061046

`p?[A243766(n+1)]`
-/

namespace A243767.P8564080316764061046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243767.P8564080316764061046

/-! ## A243767.P9431451618019962826

`A000015(A110028(n+2))`
-/

namespace A243767.P9431451618019962826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A110028 (n + 2)).toNat

end

end A243767.P9431451618019962826

/-! ## A243767.P14467444038326931364

`A110028(A087051(n)+2)`
-/

namespace A243767.P14467444038326931364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110028 (A087051 n + 2).toNat

end

end A243767.P14467444038326931364

/-! ## A243767.P919093758080332138

`A119288(2*A110028(n+2))`
-/

namespace A243767.P919093758080332138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (2 * A110028 (n + 2)).toNat

end

end A243767.P919093758080332138

/-! ## A243767.P2944032941522883263

`filter[A110028(n+1), A080111(#)]`
-/

namespace A243767.P2944032941522883263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080111 (f1 j).toNat = 1) n)

end

end A243767.P2944032941522883263

/-!
# A243768: Primes p such that 6 is not a 6th power mod p.

The programs for A243768, there is no canonical definition to state claims against.
-/

/-! ## A243768.P2281261779783526799

`∪[A038877(n+1), A040047(n+1)]`
-/

namespace A243768.P2281261779783526799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A243768.P2281261779783526799

/-! ## A243768.P12533815980600406170

`p?[and(A174737(n)+1, n^3)+n]`
-/

namespace A243768.P12533815980600406170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174737 n + 1) (n ^ 3 : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243768.P12533815980600406170

/-! ## A243768.P13418481022952821661

`p?[eq[A171900(n+1), A276869(n+1)]]`
-/

namespace A243768.P13418481022952821661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171900 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276869 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243768.P13418481022952821661

/-! ## A243768.P1606169505677639553

`p?[floor(((A243047(n+1)+3)^and(1, n)-2)/2)]`
-/

namespace A243768.P1606169505677639553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A243047 (n + 1) + 3) ^ Nat.land 1 n - 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243768.P1606169505677639553

/-! ## A243768.P18232131797251556461

`∩[A141639(n+1), A225859(n+1)]`
-/

namespace A243768.P18232131797251556461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243768.P18232131797251556461

/-!
# A243769: a(n) = prime(n)^3 mod (n^2 + prime(n)^2).

The programs for A243769, the canonical program `A243769.P11078332122965796969` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243769 has offset 1).

The definition of A243769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n+1)^3)%((n+1)²+A000040(n+1)²)` (program `A243769.P11078332122965796969`, by `A243769.P11078332122965796969.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243769.P6858132266747449837

`A030078(n+1)%A106587(n+1)`
-/

namespace A243769.P6858132266747449837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (n + 1)) (A106587 (n + 1))

end

end A243769.P6858132266747449837

namespace A243769

/-- `A030078(n+1)%A106587(n+1)` -/
def P6858132266747449837.Spec : Prop :=
  ∀ n, P6858132266747449837.a n = A243769 (n + 1)

end A243769

/-! ## A243769.P11078332122965796969

`(A000040(n+1)^3)%((n+1)²+A000040(n+1)²)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A243769

/-- `(A000040(n+1)^3)%((n+1)²+A000040(n+1)²)` -/
def P11078332122965796969.Spec : Prop :=
  ∀ n, P11078332122965796969.a n = A243769 (n + 1)

theorem P11078332122965796969.correct : P11078332122965796969.Spec := by
  intro n
  simp only [A243769, Nat.add_sub_cancel]

end A243769

/-! ## A243769.P10256324983778918000

`(A000040(n+1)*A001248(n+1))%A106587(n+1)`
-/

namespace A243769.P10256324983778918000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A001248 (n + 1)) (A106587 (n + 1))

end

end A243769.P10256324983778918000

namespace A243769

/-- `(A000040(n+1)*A001248(n+1))%A106587(n+1)` -/
def P10256324983778918000.Spec : Prop :=
  ∀ n, P10256324983778918000.a n = A243769 (n + 1)

theorem P10256324983778918000.correct : P10256324983778918000.Spec := by
  intro n
  simp only [A243769, Nat.add_sub_cancel, A243769.P10256324983778918000.a, A243769.P11078332122965796969.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A106587, A106587.P14902607394703240877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A243769

/-! ## A243769.P12311248085822972041

`A000578(Δ[A007504(n)])%A106587(n+1)`
-/

namespace A243769.P12311248085822972041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (f1 (n + 1) - f1 n).toNat) (A106587 (n + 1))

end

end A243769.P12311248085822972041

namespace A243769

/-- `A000578(Δ[A007504(n)])%A106587(n+1)` -/
def P12311248085822972041.Spec : Prop :=
  ∀ n, P12311248085822972041.a n = A243769 (n + 1)

end A243769

/-! ## A243769.P14832589970415720509

`A000578(A000040(n+1))%A106587(n+1)`
-/

namespace A243769.P14832589970415720509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A000040 (n + 1)).toNat) (A106587 (n + 1))

end

end A243769.P14832589970415720509

namespace A243769

/-- `A000578(A000040(n+1))%A106587(n+1)` -/
def P14832589970415720509.Spec : Prop :=
  ∀ n, P14832589970415720509.a n = A243769 (n + 1)

end A243769

/-! ## A243769.P14547839252334858924

`(p?[A064413(n+1)]^3)%A106587(n+1)`
-/

namespace A243769.P14547839252334858924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3) (A106587 (n + 1))

end

end A243769.P14547839252334858924

namespace A243769

/-- `(p?[A064413(n+1)]^3)%A106587(n+1)` -/
def P14547839252334858924.Spec : Prop :=
  ∀ n, P14547839252334858924.a n = A243769 (n + 1)

end A243769

/-! ## A243769.P18159698347716238469

`∏{d}[A001248(n+1), #]%A106587(n+1)`
-/

namespace A243769.P18159698347716238469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (A106587 (n + 1))

end

end A243769.P18159698347716238469

namespace A243769

/-- `∏{d}[A001248(n+1), #]%A106587(n+1)` -/
def P18159698347716238469.Spec : Prop :=
  ∀ n, P18159698347716238469.a n = A243769 (n + 1)

end A243769

/-! ## A243769.P14366086005376905079

`(p?[A332462(n+1)]^3)%A106587(n+1)`
-/

namespace A243769.P14366086005376905079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3) (A106587 (n + 1))

end

end A243769.P14366086005376905079

namespace A243769

/-- `(p?[A332462(n+1)]^3)%A106587(n+1)` -/
def P14366086005376905079.Spec : Prop :=
  ∀ n, P14366086005376905079.a n = A243769 (n + 1)

end A243769

/-!
# A243770: Number of Dyck paths of semilength n having exactly one occurrence of the consecutive step pattern given by the binary expansion of n, where 1=U=(1,1) and 0=D=(1,-1).

The programs for A243770, there is no canonical definition to state claims against.
-/

/-! ## A243770.P17144876523345558082

`A243827(∑[4*(n+1)])`
-/

namespace A243770.P17144876523345558082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243827 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243770.P17144876523345558082

/-! ## A243770.P14620961537430550876

`A187495(n)+A165084(A008000(n))`
-/

namespace A243770.P14620961537430550876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 n + A165084 (A008000 n).toNat

end

end A243770.P14620961537430550876

/-!
# A243771: Number of Dyck paths of semilength n having exactly two (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of n, where 1=U=(1,1) and 0=D=(1,-1).

The programs for A243771, there is no canonical definition to state claims against.
-/

/-! ## A243771.P9898780968408856051

`A243828(2*(n+2)*(n+3))`
-/

namespace A243771.P9898780968408856051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243828 (2 * ((n + 2) * (n + 3)))

end

end A243771.P9898780968408856051

/-!
# A243772: Number of Dyck paths of semilength n having exactly three (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of n, where 1=U=(1,1) and 0=D=(1,-1).

The programs for A243772, there is no canonical definition to state claims against.
-/

/-! ## A243772.P10339327305030467164

`A243829(4*A000217(n+5))`
-/

namespace A243772.P10339327305030467164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243829 (4 * A000217 (n + 5)).toNat

end

end A243772.P10339327305030467164

/-!
# A243773: Number of Dyck paths of semilength n having exactly four (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of n, where 1=U=(1,1) and 0=D=(1,-1).

The programs for A243773, there is no canonical definition to state claims against.
-/

/-! ## A243773.P4567033784573521328

`A243830(4*A000217(n+5))`
-/

namespace A243773.P4567033784573521328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243830 (4 * A000217 (n + 5)).toNat

end

end A243773.P4567033784573521328

/-! ## A243773.P3410887995914084310

`A005061(A100957(n+1))*A271703(n)`
-/

namespace A243773.P3410887995914084310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (A100957 (n + 1)).toNat * A271703 n

end

end A243773.P3410887995914084310

/-!
# A243776: Number of Dyck paths of semilength n having exactly seven (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of n, where 1=U=(1,1) and 0=D=(1,-1).

The programs for A243776, there is no canonical definition to state claims against.
-/

/-! ## A243776.P18252512032238889128

`A068857(A070201(C(2*n, n+2)+(n+1)*a(n-1)))` with `a(0)=17`
-/

namespace A243776.P18252512032238889128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A068857 (A070201 ((Nat.choose (2 * n) (n + 2) : ℤ) + (n + 1 : ℤ) * a (n - 1)).toNat).toNat

end

end A243776.P18252512032238889128

/-! ## A243776.P8523506616276608020

`A003849(3*n+4)*A130091(A000043(3*n+5))`
-/

namespace A243776.P8523506616276608020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (3 * n + 4) * A130091 (A000043 (3 * n + 5)).toNat

end

end A243776.P8523506616276608020

/-!
# A243777: Number of Dyck paths of semilength n having exactly eight (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of n, where 1=U=(1,1) and 0=D=(1,-1).

The programs for A243777, there is no canonical definition to state claims against.
-/

/-! ## A243777.P3057232245992718365

`A216805(2^n+2)`
-/

namespace A243777.P3057232245992718365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216805 (2 ^ n + 2)

end

end A243777.P3057232245992718365

/-! ## A243777.P18006130681754555744

`A349446(6^n+7)`
-/

namespace A243777.P18006130681754555744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349446 (6 ^ n + 7)

end

end A243777.P18006130681754555744

/-!
# A243778: Number of Dyck paths of semilength n having exactly nine (possibly overlapping) occurrences of the consecutive step pattern given by the binary expansion of n, where 1=U=(1,1) and 0=D=(1,-1).

The programs for A243778, there is no canonical definition to state claims against.
-/

/-! ## A243778.P17588851478543065593

`A213177(p?[ceil(n/sqrt(2))]!)`
-/

namespace A243778.P17588851478543065593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213177 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A243778.P17588851478543065593

/-! ## A243778.P14122523423862405194

`A181153(2*n)-floor(n/4)`
-/

namespace A243778.P14122523423862405194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181153 (2 * n) - ⌊(n : ℚ) / 4⌋

end

end A243778.P14122523423862405194

/-!
# A243780: Primes p for which p^i + 4 is prime for i = 1, 3 and 5.

The programs for A243780, there is no canonical definition to state claims against.
-/

/-! ## A243780.P1523534853868728422

`∩[A125260(n+1), A243583(n+1)]`
-/

namespace A243780.P1523534853868728422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243780.P1523534853868728422

/-!
# A243781: Number of simple connected graphs on n nodes whose independence number a(g)=2.

The programs for A243781, there is no canonical definition to state claims against.
-/

/-! ## A243781.P4550614322351757133

`floor(A052450(n+1)-n/2)`
-/

namespace A243781.P4550614322351757133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052450 (n + 1) : ℚ) - (n : ℚ) / 2⌋

end

end A243781.P4550614322351757133

/-! ## A243781.P16349288968872285368

`∑[A372169(n+1)-n%2]`
-/

namespace A243781.P16349288968872285368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372169 (n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243781.P16349288968872285368

/-! ## A243781.P4354320352866113023

`A006785(n+1)-(ceil(n/2)+1)`
-/

namespace A243781.P4354320352866113023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006785 (n + 1) - (⌈(n : ℚ) / 2⌉ + 1)

end

end A243781.P4354320352866113023

/-! ## A243781.P4794413537866642177

`A294490(A179865(n+1)+2)`
-/

namespace A243781.P4794413537866642177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294490 (A179865 (n + 1) + 2).toNat

end

end A243781.P4794413537866642177

/-! ## A243781.P5562548414675152423

`A052450(n+1)-A062108(n)`
-/

namespace A243781.P5562548414675152423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052450 (n + 1) - A062108 n

end

end A243781.P5562548414675152423

/-!
# A243782: Number of simple connected graphs on n nodes whose independence number a(g)=3.

The programs for A243782, there is no canonical definition to state claims against.
-/

/-! ## A243782.P1565623887402654461

`A294490(A152950(n+1))%A143508(n)`
-/

namespace A243782.P1565623887402654461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294490 (A152950 (n + 1)).toNat) (A143508 n)

end

end A243782.P1565623887402654461

/-! ## A243782.P8786388286667188224

`floor(A324840(3*n+1)/78)`
-/

namespace A243782.P8786388286667188224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A324840 (3 * n + 1) : ℚ) / 78⌋

end

end A243782.P8786388286667188224

/-! ## A243782.P7561710087881580481

`A195177(A143508(n))-1`
-/

namespace A243782.P7561710087881580481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A143508 n).toNat - 1

end

end A243782.P7561710087881580481

/-!
# A243783: Number of simple connected graphs on n nodes whose independence number a(g)=4.

The programs for A243783, there is no canonical definition to state claims against.
-/

/-! ## A243783.P14930496542066085807

`floor(A330625(n)/96)`
-/

namespace A243783.P14930496542066085807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330625 n : ℚ) / 96⌋

end

end A243783.P14930496542066085807

/-! ## A243783.P12328745960543372634

`A210718(∑[∑[n]]+2)`
-/

namespace A243783.P12328745960543372634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210718 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A243783.P12328745960543372634

/-! ## A243783.P17248702723831580491

`A322387(A027423(n))`
-/

namespace A243783.P17248702723831580491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322387 (A027423 n).toNat

end

end A243783.P17248702723831580491

/-!
# A243784: Number of simple connected graphs on n nodes whose independence number a(g)=5.

The programs for A243784, there is no canonical definition to state claims against.
-/

/-! ## A243784.P17364191739055972327

`A082363(C(A000073(n), 4))`
-/

namespace A243784.P17364191739055972327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082363 (Nat.choose (A000073 n).toNat 4)

end

end A243784.P17364191739055972327

/-! ## A243784.P15627650563017441209

`round(A213111(n)/A007647(n+3))`
-/

namespace A243784.P15627650563017441209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A213111 n : ℚ) / (A007647 (n + 3) : ℚ))

end

end A243784.P15627650563017441209

/-! ## A243784.P4826112887743447723

`A331718(n)%A082136(A003520(n))`
-/

namespace A243784.P4826112887743447723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331718 n) (A082136 (A003520 n).toNat)

end

end A243784.P4826112887743447723

/-! ## A243784.P11284944882636174622

`A090338(A004709(n+1))%A090338(n)`
-/

namespace A243784.P11284944882636174622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090338 (A004709 (n + 1)).toNat) (A090338 n)

end

end A243784.P11284944882636174622

/-!
# A243785: Number of unlabeled simple connected graphs with n nodes that are chordal but not integral.

The programs for A243785, there is no canonical definition to state claims against.
-/

/-! ## A243785.P477740171332633985

`A048192(n+1)-A243786(n+1)`
-/

namespace A243785.P477740171332633985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) - A243786 (n + 1)

end

end A243785.P477740171332633985

/-! ## A243785.P4118816708486348926

`A048193(n+1)-(A287427(n+1)+A243786(n+1))`
-/

namespace A243785.P4118816708486348926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048193 (n + 1) - (A287427 (n + 1) + A243786 (n + 1))

end

end A243785.P4118816708486348926

/-! ## A243785.P15102312162563046192

`A001349(n+1)-A241843(n+1)-A243786(n+1)`
-/

namespace A243785.P15102312162563046192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A241843 (n + 1) - A243786 (n + 1)

end

end A243785.P15102312162563046192

/-! ## A243785.P5368936715320958686

`∑[A079456(n+1)]-(A287427(n+1)+A243786(n+1))`
-/

namespace A243785.P5368936715320958686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A287427 (n + 1) + A243786 (n + 1))

end

end A243785.P5368936715320958686

/-! ## A243785.P5036640401901424828

`A201922(A000124(n))-(A243786(n+1)+A241843(n+1))`
-/

namespace A243785.P5036640401901424828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - (A243786 (n + 1) + A241843 (n + 1))

end

end A243785.P5036640401901424828

/-!
# A243787: Number of graphs with n nodes that are chordal and planar.

The programs for A243787, there is no canonical definition to state claims against.
-/

/-! ## A243787.P17602495130969271174

`A106432(A369599(n))`
-/

namespace A243787.P17602495130969271174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A369599 n).toNat

end

end A243787.P17602495130969271174

/-! ## A243787.P12003426159289598864

`A036234(A026168(n!))`
-/

namespace A243787.P12003426159289598864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A026168 (Nat.factorial n)).toNat

end

end A243787.P12003426159289598864

/-! ## A243787.P875489767036317704

`A033270(A091067(n!))`
-/

namespace A243787.P875489767036317704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A091067 (Nat.factorial n)).toNat

end

end A243787.P875489767036317704

/-!
# A243788: Number of graphs with n nodes that are chordal and are K_4 free.

The programs for A243788, there is no canonical definition to state claims against.
-/

/-! ## A243788.P3344051826077996853

`ceil((A091218(n+1)+2)/5)`
-/

namespace A243788.P3344051826077996853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091218 (n + 1) + 2 : ℚ) / 5⌉

end

end A243788.P3344051826077996853

/-! ## A243788.P5812414049299474039

`A103128(n^abs(1-n)+1)`
-/

namespace A243788.P5812414049299474039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| : ℤ) + 1)).toNat

end

end A243788.P5812414049299474039

/-! ## A243788.P18083219457400252446

`A172471(n^((n-1)%(n+1)))`
-/

namespace A243788.P18083219457400252446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat

end

end A243788.P18083219457400252446

/-!
# A243791: Number of simple connected graphs with n nodes that are Eulerian and have no subgraph isomorphic to the open-bowtie graph.

The programs for A243791, there is no canonical definition to state claims against.
-/

/-! ## A243791.P14536776216266777145

`A243335(n+1)+char[2]`
-/

namespace A243791.P14536776216266777145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243335 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243791.P14536776216266777145

/-! ## A243791.P2183536146374546754

`A243335(A186035(n)+n)`
-/

namespace A243791.P2183536146374546754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243335 (A186035 n + (n : ℤ)).toNat

end

end A243791.P2183536146374546754

/-! ## A243791.P13949850237167299637

`A243335(A329684(n)+n)`
-/

namespace A243791.P13949850237167299637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243335 (A329684 n + (n : ℤ)).toNat

end

end A243791.P13949850237167299637

/-! ## A243791.P8669592432571839405

`ceil(A129817(n)/A101461(n))`
-/

namespace A243791.P8669592432571839405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A129817 n : ℚ) / (A101461 n : ℚ)⌉

end

end A243791.P8669592432571839405

/-! ## A243791.P1452875403738757764

`round(A000166(n)/A148175(n))`
-/

namespace A243791.P1452875403738757764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000166 n : ℚ) / (A148175 n : ℚ))

end

end A243791.P1452875403738757764

/-!
# A243793: Number of simple connected graphs with n nodes that are not integral and have no subgraph isomorphic to the open-bowtie graph.

The programs for A243793, there is no canonical definition to state claims against.
-/

/-! ## A243793.P11334962964225441908

`A242791(n+1)-A243792(n+1)`
-/

namespace A243793.P11334962964225441908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242791 (n + 1) - A243792 (n + 1)

end

end A243793.P11334962964225441908

/-! ## A243793.P1851878404777020447

`A001349(n+1)-A243247(n+1)-A243792(n+1)`
-/

namespace A243793.P1851878404777020447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243247 (n + 1) - A243792 (n + 1)

end

end A243793.P1851878404777020447

/-! ## A243793.P12135136762190961260

`A201922(A000124(n))-(A243792(n+1)+A243247(n+1))`
-/

namespace A243793.P12135136762190961260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - (A243792 (n + 1) + A243247 (n + 1))

end

end A243793.P12135136762190961260

/-! ## A243793.P9742043309225255272

`A003049(n+1)+A158007(n+1)-A243247(n+1)-A243792(n+1)`
-/

namespace A243793.P9742043309225255272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003049 (n + 1) + (A158007 (n + 1) - A243247 (n + 1)) - A243792 (n + 1)

end

end A243793.P9742043309225255272

/-! ## A243793.P16375718769342446800

`A048192(n+1)+A241843(n+1)-A243247(n+1)-A243792(n+1)`
-/

namespace A243793.P16375718769342446800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048192 (n + 1) + (A241843 (n + 1) - A243247 (n + 1)) - A243792 (n + 1)

end

end A243793.P16375718769342446800

/-!
# A243796: Number of graphs with n nodes that are chordal and Hamiltonian.

The programs for A243796, there is no canonical definition to state claims against.
-/

/-! ## A243796.P2056506129081478016

`A103221((A059053(n+1)+A131572(n+1)-1)*A084423(n))`
-/

namespace A243796.P2056506129081478016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((A059053 (n + 1) + (A131572 (n + 1) - 1)) * A084423 n).toNat

end

end A243796.P2056506129081478016

/-! ## A243796.P386493567840530703

`A103221((A059053(n+1)+A131572(n+1)-1)*A320747((1-n)²+n²))`
-/

namespace A243796.P386493567840530703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ((A059053 (n + 1) + (A131572 (n + 1) - 1)) * A320747 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat).toNat

end

end A243796.P386493567840530703

/-!
# A243797: Number of graphs with n nodes that are chordal and do not have a bowtie as a subgraph.

The programs for A243797, there is no canonical definition to state claims against.
-/

/-! ## A243797.P16994207106057379859

`A361070(A334630(n))`
-/

namespace A243797.P16994207106057379859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361070 (A334630 n).toNat

end

end A243797.P16994207106057379859

/-! ## A243797.P17172472202498050675

`A066490(4*A007743(n+1))`
-/

namespace A243797.P17172472202498050675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (4 * A007743 (n + 1)).toNat

end

end A243797.P17172472202498050675

/-! ## A243797.P6265963963192987008

`A007598(n)+A003056(A058182(n))`
-/

namespace A243797.P6265963963192987008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + A003056 (A058182 n).toNat

end

end A243797.P6265963963192987008

/-! ## A243797.P12208305965566954843

`A342517(n)+A055930(A124302(n))`
-/

namespace A243797.P12208305965566954843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 n + A055930 (A124302 n).toNat

end

end A243797.P12208305965566954843

