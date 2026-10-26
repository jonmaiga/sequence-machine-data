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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A312200: Coordination sequence Gal.5.286.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312200, there is no canonical definition to state claims against.
-/

/-! ## A312200.P12061489157330837688

`A312198(n)+A280639(A067067(n))`
-/

namespace A312200.P12061489157330837688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312198 n + A280639 (A067067 n).toNat

end

end A312200.P12061489157330837688

/-! ## A312200.P14940444140618514878

`∑[A002376(∑[A301555(n)])]`
-/

namespace A312200.P14940444140618514878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301555 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312200.P14940444140618514878

/-! ## A312200.P14419829687648116101

`A312199(n)+A018843(A003657(n+1))`
-/

namespace A312200.P14419829687648116101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312199 n + A018843 (A003657 (n + 1)).toNat

end

end A312200.P14419829687648116101

/-! ## A312200.P3800340467672176110

`A104514(A321228(n+1))+A000069(2*n+1)`
-/

namespace A312200.P3800340467672176110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104514 (A321228 (n + 1)).toNat + A000069 (2 * n + 1)

end

end A312200.P3800340467672176110

/-! ## A312200.P1574322837941030258

`∑[A261250(∑[A241405(n+1)])]`
-/

namespace A312200.P1574322837941030258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241405 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261250 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312200.P1574322837941030258

/-!
# A312201: Coordination sequence Gal.5.171.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312201, there is no canonical definition to state claims against.
-/

/-! ## A312201.P3945037357637710929

`A312202(n)-A018843(A111181(n+1))`
-/

namespace A312201.P3945037357637710929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312202 n - A018843 (A111181 (n + 1)).toNat

end

end A312201.P3945037357637710929

/-! ## A312201.P8152044329151130964

`A312202(n)-A014639(A147181(n+1))`
-/

namespace A312201.P8152044329151130964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312202 n - A014639 (A147181 (n + 1)).toNat

end

end A312201.P8152044329151130964

/-! ## A312201.P14133165618824094712

`A312202(A120126(n))-A044941(n+1)`
-/

namespace A312201.P14133165618824094712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312202 (A120126 n).toNat - A044941 (n + 1)

end

end A312201.P14133165618824094712

/-! ## A312201.P2076975430852786676

`A312202(A120126(n))-A018843(2*n+3)`
-/

namespace A312201.P2076975430852786676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312202 (A120126 n).toNat - A018843 (2 * n + 3)

end

end A312201.P2076975430852786676

/-! ## A312201.P14718192746597800912

`A312202(A087051(n))`
-/

namespace A312201.P14718192746597800912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312202 (A087051 n).toNat

end

end A312201.P14718192746597800912

/-!
# A312202: Coordination sequence Gal.5.160.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312202, there is no canonical definition to state claims against.
-/

/-! ## A312202.P10230013103690559302

`A312201(n)+A018843(A111181(n+1))`
-/

namespace A312202.P10230013103690559302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312201 n + A018843 (A111181 (n + 1)).toNat

end

end A312202.P10230013103690559302

/-! ## A312202.P622402045468245298

`A312201(n)+A014639(A147181(n+1))`
-/

namespace A312202.P622402045468245298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312201 n + A014639 (A147181 (n + 1)).toNat

end

end A312202.P622402045468245298

/-! ## A312202.P5689392802325276803

`A312201(A120126(n))+A044941(n+1)`
-/

namespace A312202.P5689392802325276803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312201 (A120126 n).toNat + A044941 (n + 1)

end

end A312202.P5689392802325276803

/-! ## A312202.P1853368423389622254

`A312201(A120126(n))+A018843(2*n+3)`
-/

namespace A312202.P1853368423389622254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312201 (A120126 n).toNat + A018843 (2 * n + 3)

end

end A312202.P1853368423389622254

/-!
# A312203: Coordination sequence Gal.6.418.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312203, there is no canonical definition to state claims against.
-/

/-! ## A312203.P16787348175771307488

`A312204(A062399(n))-A064834(n)`
-/

namespace A312203.P16787348175771307488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312204 (A062399 n).toNat - A064834 n

end

end A312203.P16787348175771307488

/-! ## A312203.P10931382066060242406

`A312204(n)-A064834(A351870(n))`
-/

namespace A312203.P10931382066060242406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312204 n - A064834 (A351870 n).toNat

end

end A312203.P10931382066060242406

/-! ## A312203.P1203187781454954996

`A312204(n)-A018843(A111181(n+1))`
-/

namespace A312203.P1203187781454954996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312204 n - A018843 (A111181 (n + 1)).toNat

end

end A312203.P1203187781454954996

/-!
# A312204: Coordination sequence Gal.6.401.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312204, there is no canonical definition to state claims against.
-/

/-! ## A312204.P2934145639305702940

`A312203(A062399(n))+A064834(n)`
-/

namespace A312204.P2934145639305702940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312203 (A062399 n).toNat + A064834 n

end

end A312204.P2934145639305702940

/-! ## A312204.P6371331039634900036

`A312203(n)+A011846(A351870(n))`
-/

namespace A312204.P6371331039634900036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312203 n + A011846 (A351870 n).toNat

end

end A312204.P6371331039634900036

/-! ## A312204.P9291927600861319177

`A312200(n)+A079979(A003239(n+1))`
-/

namespace A312204.P9291927600861319177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312200 n + A079979 (A003239 (n + 1)).toNat

end

end A312204.P9291927600861319177

/-! ## A312204.P6801361542502248402

`A312203(n)+A018843(A111181(n+1))`
-/

namespace A312204.P6801361542502248402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312203 n + A018843 (A111181 (n + 1)).toNat

end

end A312204.P6801361542502248402

/-! ## A312204.P1366594225635992522

`A312203(A351870(n))-A038608(A064834(n))`
-/

namespace A312204.P1366594225635992522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312203 (A351870 n).toNat - A038608 (A064834 n).toNat

end

end A312204.P1366594225635992522

/-!
# A312205: Coordination sequence Gal.4.43.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312205, the canonical program `A312205.P3565082773998277828` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312205 has offset 0).

The definition of A312205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312205.P16489866158601360461

`A314896(n)-A046978(n)`
-/

namespace A312205.P16489866158601360461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n - A046978 n

end

end A312205.P16489866158601360461

namespace A312205

/-- `A314896(n)-A046978(n)` -/
def P16489866158601360461.Spec : Prop :=
  ∀ n, P16489866158601360461.a n = A312205 n

end A312205

/-! ## A312205.P3565082773998277828

`A311625(n)+Δ[A011861(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312205

/-- `A311625(n)+Δ[A011861(n)]` -/
def P3565082773998277828.Spec : Prop :=
  ∀ n, P3565082773998277828.a n = A312205 n

theorem P3565082773998277828.correct : P3565082773998277828.Spec := by
  intro n
  simp only [A312205]

end A312205

/-! ## A312205.P14333951615248586995

`A313115(n)-A046978(n-A046978(n))`
-/

namespace A312205.P14333951615248586995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A312205.P14333951615248586995

namespace A312205

/-- `A313115(n)-A046978(n-A046978(n))` -/
def P14333951615248586995.Spec : Prop :=
  ∀ n, P14333951615248586995.a n = A312205 n

end A312205

/-! ## A312205.P16463928272730109382

`A004525(n)+A312140(n)-A004525(A004525(n))`
-/

namespace A312205.P16463928272730109382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312140 n - A004525 (A004525 n).toNat)

end

end A312205.P16463928272730109382

namespace A312205

/-- `A004525(n)+A312140(n)-A004525(A004525(n))` -/
def P16463928272730109382.Spec : Prop :=
  ∀ n, P16463928272730109382.a n = A312205 n

end A312205

/-! ## A312205.P18359418423439559335

`A314969(n)-A004525(A004525(n))`
-/

namespace A312205.P18359418423439559335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n - A004525 (A004525 n).toNat

end

end A312205.P18359418423439559335

namespace A312205

/-- `A314969(n)-A004525(A004525(n))` -/
def P18359418423439559335.Spec : Prop :=
  ∀ n, P18359418423439559335.a n = A312205 n

end A312205

/-! ## A312205.P8617354707683036090

`A312682(n)-Δ[A011861(n)]`
-/

namespace A312205.P8617354707683036090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312682 n - (f1 (n + 1) - f1 n)

end

end A312205.P8617354707683036090

namespace A312205

/-- `A312682(n)-Δ[A011861(n)]` -/
def P8617354707683036090.Spec : Prop :=
  ∀ n, P8617354707683036090.a n = A312205 n

theorem P8617354707683036090.correct : P8617354707683036090.Spec := by
  intro n
  simp only [A312205, Nat.add_sub_cancel, A312205.P8617354707683036090.f1, A312205.P8617354707683036090.a, A312205.P3565082773998277828.f1, A312205.P3565082773998277828.a, A011861, A011861.P4500963193198654930.a, A311625, A311625.P7066219322900741713.a, A312682, A312682.P2011729354850800503.f1, A312682.P2011729354850800503.a, A008574, A008574.P1300280032690682112.a, A311501, A311501.P3617403906977629789.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312205

/-! ## A312205.P13549383082716952280

`A313152(n)-A004525(n-A004525(n))`
-/

namespace A312205.P13549383082716952280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A312205.P13549383082716952280

namespace A312205

/-- `A313152(n)-A004525(n-A004525(n))` -/
def P13549383082716952280.Spec : Prop :=
  ∀ n, P13549383082716952280.a n = A312205 n

end A312205

/-! ## A312205.P11527990432479005668

`A313292(n)-∑[C(n, 2)%2]`
-/

namespace A312205.P11527990432479005668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A312205.P11527990432479005668

namespace A312205

/-- `A313292(n)-∑[C(n, 2)%2]` -/
def P11527990432479005668.Spec : Prop :=
  ∀ n, P11527990432479005668.a n = A312205 n

end A312205

/-! ## A312205.P713986247923505579

`A313292(n)-∑[A021913(n)]`
-/

namespace A312205.P713986247923505579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312205.P713986247923505579

namespace A312205

/-- `A313292(n)-∑[A021913(n)]` -/
def P713986247923505579.Spec : Prop :=
  ∀ n, P713986247923505579.a n = A312205 n

theorem P713986247923505579.correct : P713986247923505579.Spec := by
  intro n
  simp only [A312205, Nat.add_sub_cancel, A312205.P713986247923505579.f1, A312205.P713986247923505579.a, A312205.P3565082773998277828.f1, A312205.P3565082773998277828.a, A011861, A011861.P4500963193198654930.a, A021913, A021913.P3902253882929539198.a, A311625, A311625.P7066219322900741713.a, A313292, A313292.P15392932412953787641.f1, A313292.P15392932412953787641.a, A008574, A008574.P1300280032690682112.a, A311501, A311501.P3617403906977629789.a, A004525, A004525.P4158271949796742323.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312205

/-! ## A312205.P12392461865955909648

`A313292(n)-Δ[A011848(n)]`
-/

namespace A312205.P12392461865955909648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 n - (f1 (n + 1) - f1 n)

end

end A312205.P12392461865955909648

namespace A312205

/-- `A313292(n)-Δ[A011848(n)]` -/
def P12392461865955909648.Spec : Prop :=
  ∀ n, P12392461865955909648.a n = A312205 n

end A312205

/-! ## A312205.P5299579910853529418

`A313292(n)-A004524(n+1)`
-/

namespace A312205.P5299579910853529418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 n - A004524 (n + 1)

end

end A312205.P5299579910853529418

namespace A312205

/-- `A313292(n)-A004524(n+1)` -/
def P5299579910853529418.Spec : Prop :=
  ∀ n, P5299579910853529418.a n = A312205 n

end A312205

/-! ## A312205.P10589040562509320864

`abs(A008592(n)-A315671(n))`
-/

namespace A312205.P10589040562509320864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315671 n|

end

end A312205.P10589040562509320864

namespace A312205

/-- `abs(A008592(n)-A315671(n))` -/
def P10589040562509320864.Spec : Prop :=
  ∀ n, P10589040562509320864.a n = A312205 n

end A312205

/-! ## A312205.P3914326045586340121

`2*A008706(n)-A315671(n)`
-/

namespace A312205.P3914326045586340121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315671 n

end

end A312205.P3914326045586340121

namespace A312205

/-- `2*A008706(n)-A315671(n)` -/
def P3914326045586340121.Spec : Prop :=
  ∀ n, P3914326045586340121.a n = A312205 n

end A312205

/-! ## A312205.P11536099651100769053

`A008458(n)+A008574(n)-A315671(n)`
-/

namespace A312205.P11536099651100769053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315671 n)

end

end A312205.P11536099651100769053

namespace A312205

/-- `A008458(n)+A008574(n)-A315671(n)` -/
def P11536099651100769053.Spec : Prop :=
  ∀ n, P11536099651100769053.a n = A312205 n

end A312205

/-! ## A312205.P10375482388660656642

`∑{d}[A008592(n)-A315671(n), A000010(#)]`
-/

namespace A312205.P10375482388660656642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A312205.P10375482388660656642

namespace A312205

/-- `∑{d}[A008592(n)-A315671(n), A000010(#)]` -/
def P10375482388660656642.Spec : Prop :=
  ∀ n, P10375482388660656642.a n = A312205 n

end A312205

/-! ## A312205.P4598335063655479323

`A315671(n)-A005843(A315671(n)-A008706(n))`
-/

namespace A312205.P4598335063655479323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n - A005843 (A315671 n - A008706 n).toNat

end

end A312205.P4598335063655479323

namespace A312205

/-- `A315671(n)-A005843(A315671(n)-A008706(n))` -/
def P4598335063655479323.Spec : Prop :=
  ∀ n, P4598335063655479323.a n = A312205 n

end A312205

/-! ## A312205.P6153356193696223961

`A312140(n)+∑[A021913(A312140(n))]`
-/

namespace A312205.P6153356193696223961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A312140 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312140 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312205.P6153356193696223961

namespace A312205

/-- `A312140(n)+∑[A021913(A312140(n))]` -/
def P6153356193696223961.Spec : Prop :=
  ∀ n, P6153356193696223961.a n = A312205 n

end A312205

/-! ## A312205.P17557629136218229271

`A315543(n)-(A046978(n)+n)`
-/

namespace A312205.P17557629136218229271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - (A046978 n + (n : ℤ))

end

end A312205.P17557629136218229271

namespace A312205

/-- `A315543(n)-(A046978(n)+n)` -/
def P17557629136218229271.Spec : Prop :=
  ∀ n, P17557629136218229271.a n = A312205 n

end A312205

/-! ## A312205.P12405426441054705036

`A005843(A008706(n))-A315671(n)`
-/

namespace A312205.P12405426441054705036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315671 n

end

end A312205.P12405426441054705036

namespace A312205

/-- `A005843(A008706(n))-A315671(n)` -/
def P12405426441054705036.Spec : Prop :=
  ∀ n, P12405426441054705036.a n = A312205 n

end A312205

/-!
# A312206: Coordination sequence Gal.6.157.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312206, the canonical program `A312206.P1241787982787610248` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312206 has offset 0).

The definition of A312206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312206.P1241787982787610248

`abs(10*n-A315670(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A312206

/-- `abs(10*n-A315670(n))` -/
def P1241787982787610248.Spec : Prop :=
  ∀ n, P1241787982787610248.a n = A312206 n

theorem P1241787982787610248.correct : P1241787982787610248.Spec := by
  intro n
  simp only [A312206]

end A312206

/-! ## A312206.P17886106715745298778

`A314742(n)-A128834(n)`
-/

namespace A312206.P17886106715745298778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n - A128834 n

end

end A312206.P17886106715745298778

namespace A312206

/-- `A314742(n)-A128834(n)` -/
def P17886106715745298778.Spec : Prop :=
  ∀ n, P17886106715745298778.a n = A312206 n

end A312206

/-! ## A312206.P10650487508870024435

`floor(A010015(n)/A315670(n))`
-/

namespace A312206.P10650487508870024435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315670 n : ℚ)⌋

end

end A312206.P10650487508870024435

namespace A312206

/-- `floor(A010015(n)/A315670(n))` -/
def P10650487508870024435.Spec : Prop :=
  ∀ n, P10650487508870024435.a n = A312206 n

end A312206

/-! ## A312206.P8676494809450237691

`A314742(n)+A010892(n+2)`
-/

namespace A312206.P8676494809450237691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314742 n + A010892 (n + 2)

end

end A312206.P8676494809450237691

namespace A312206

/-- `A314742(n)+A010892(n+2)` -/
def P8676494809450237691.Spec : Prop :=
  ∀ n, P8676494809450237691.a n = A312206 n

end A312206

/-! ## A312206.P11402469231374887625

`2*A008706(n)-A315670(n)`
-/

namespace A312206.P11402469231374887625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315670 n

end

end A312206.P11402469231374887625

namespace A312206

/-- `2*A008706(n)-A315670(n)` -/
def P11402469231374887625.Spec : Prop :=
  ∀ n, P11402469231374887625.a n = A312206 n

end A312206

/-! ## A312206.P9980068274521292680

`A311549(n)+A004524(A099480(2*n))`
-/

namespace A312206.P9980068274521292680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + A004524 (A099480 (2 * n)).toNat

end

end A312206.P9980068274521292680

namespace A312206

/-- `A311549(n)+A004524(A099480(2*n))` -/
def P9980068274521292680.Spec : Prop :=
  ∀ n, P9980068274521292680.a n = A312206 n

end A312206

/-! ## A312206.P14326988363115883561

`A008458(n)+A008574(n)-A315670(n)`
-/

namespace A312206.P14326988363115883561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315670 n)

end

end A312206.P14326988363115883561

namespace A312206

/-- `A008458(n)+A008574(n)-A315670(n)` -/
def P14326988363115883561.Spec : Prop :=
  ∀ n, P14326988363115883561.a n = A312206 n

end A312206

/-! ## A312206.P6200040746586446239

`A004396(n)+A311549(n)-A004525(A004396(n))`
-/

namespace A312206.P6200040746586446239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311549 n - A004525 (A004396 n).toNat)

end

end A312206.P6200040746586446239

namespace A312206

/-- `A004396(n)+A311549(n)-A004525(A004396(n))` -/
def P6200040746586446239.Spec : Prop :=
  ∀ n, P6200040746586446239.a n = A312206 n

end A312206

/-! ## A312206.P10529809576027143335

`A314974(n)-A004525(A004396(n))`
-/

namespace A312206.P10529809576027143335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314974 n - A004525 (A004396 n).toNat

end

end A312206.P10529809576027143335

namespace A312206

/-- `A314974(n)-A004525(A004396(n))` -/
def P10529809576027143335.Spec : Prop :=
  ∀ n, P10529809576027143335.a n = A312206 n

end A312206

/-! ## A312206.P10358788780535519101

`A313297(n)-∑[C(n, 2)%2]`
-/

namespace A312206.P10358788780535519101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313297 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A312206.P10358788780535519101

namespace A312206

/-- `A313297(n)-∑[C(n, 2)%2]` -/
def P10358788780535519101.Spec : Prop :=
  ∀ n, P10358788780535519101.a n = A312206 n

end A312206

/-! ## A312206.P17078303732903878920

`A313297(n)-∑[A021913(n)]`
-/

namespace A312206.P17078303732903878920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313297 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312206.P17078303732903878920

namespace A312206

/-- `A313297(n)-∑[A021913(n)]` -/
def P17078303732903878920.Spec : Prop :=
  ∀ n, P17078303732903878920.a n = A312206 n

end A312206

/-! ## A312206.P12672395816656399183

`A313297(n)-Δ[A011848(n)]`
-/

namespace A312206.P12672395816656399183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313297 n - (f1 (n + 1) - f1 n)

end

end A312206.P12672395816656399183

namespace A312206

/-- `A313297(n)-Δ[A011848(n)]` -/
def P12672395816656399183.Spec : Prop :=
  ∀ n, P12672395816656399183.a n = A312206 n

end A312206

/-! ## A312206.P5600237644613251127

`A004525(n)+A313297(n)-n`
-/

namespace A312206.P5600237644613251127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313297 n - (n : ℤ))

end

end A312206.P5600237644613251127

namespace A312206

/-- `A004525(n)+A313297(n)-n` -/
def P5600237644613251127.Spec : Prop :=
  ∀ n, P5600237644613251127.a n = A312206 n

end A312206

/-! ## A312206.P5305593960095634209

`A312144(n)+∑[A021913(A312144(n))]`
-/

namespace A312206.P5305593960095634209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A312144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312206.P5305593960095634209

namespace A312206

/-- `A312144(n)+∑[A021913(A312144(n))]` -/
def P5305593960095634209.Spec : Prop :=
  ∀ n, P5305593960095634209.a n = A312206 n

end A312206

/-! ## A312206.P5115075206193559260

`A074067(A315670(n))`
-/

namespace A312206.P5115075206193559260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315670 n).toNat

end

end A312206.P5115075206193559260

namespace A312206

/-- `A074067(A315670(n))` -/
def P5115075206193559260.Spec : Prop :=
  ∀ n, P5115075206193559260.a n = A312206 n

end A312206

/-! ## A312206.P16702396658392131897

`A005843(A008706(n))-A315670(n)`
-/

namespace A312206.P16702396658392131897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315670 n

end

end A312206.P16702396658392131897

namespace A312206

/-- `A005843(A008706(n))-A315670(n)` -/
def P16702396658392131897.Spec : Prop :=
  ∀ n, P16702396658392131897.a n = A312206 n

end A312206

/-!
# A312207: Coordination sequence Gal.5.68.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312207, the canonical program `A312207.P3228347032379674604` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312207 has offset 0).

The definition of A312207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312207.P3228347032379674604

`A311633(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A312207

/-- `A311633(n)+Δ[A011862(n)]` -/
def P3228347032379674604.Spec : Prop :=
  ∀ n, P3228347032379674604.a n = A312207 n

theorem P3228347032379674604.correct : P3228347032379674604.Spec := by
  intro n
  simp only [A312207]

end A312207

/-! ## A312207.P18273515618016184711

`A004396(n)+A311633(n)-A004396(A004396(n))`
-/

namespace A312207.P18273515618016184711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311633 n - A004396 (A004396 n).toNat)

end

end A312207.P18273515618016184711

namespace A312207

/-- `A004396(n)+A311633(n)-A004396(A004396(n))` -/
def P18273515618016184711.Spec : Prop :=
  ∀ n, P18273515618016184711.a n = A312207 n

end A312207

/-! ## A312207.P15370761239087522497

`A312683(n)-Δ[A011862(n)]`
-/

namespace A312207.P15370761239087522497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312683 n - (f1 (n + 1) - f1 n)

end

end A312207.P15370761239087522497

namespace A312207

/-- `A312683(n)-Δ[A011862(n)]` -/
def P15370761239087522497.Spec : Prop :=
  ∀ n, P15370761239087522497.a n = A312207 n

theorem P15370761239087522497.correct : P15370761239087522497.Spec := by
  intro n
  simp only [A312207, Nat.add_sub_cancel, A312207.P15370761239087522497.f1, A312207.P15370761239087522497.a, A312207.P3228347032379674604.f1, A312207.P3228347032379674604.a, A011862, A011862.P9485299441699197278.a, A311633, A311633.P17424544686150266232.a, A312683, A312683.P3196979988989396886.f1, A312683.P3196979988989396886.a, A004396, A004396.P17032557045289780609.a, A128834, A128834.P16779687439637953687.a, A314736, A314736.P3794098761063289759.a, A006369, A006369.P842576174392056214.a, A010892, A010892.P14408744864468695543.a, A314428, A314428.P9611413599869563837.a, A315214, A315214.P13359799671460808905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312207

/-! ## A312207.P12574524828682950124

`(A312683(n)+A311633(n))/2`
-/

namespace A312207.P12574524828682950124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312683 n + A311633 n : ℚ) / 2

end

end A312207.P12574524828682950124

namespace A312207

/-- `(A312683(n)+A311633(n))/2` -/
def P12574524828682950124.Spec : Prop :=
  ∀ n, P12574524828682950124.a n = (A312207 n : ℚ)

theorem P12574524828682950124.correct : P12574524828682950124.Spec := by
  intro n
  simp only [A312207, Nat.add_sub_cancel, A312207.P12574524828682950124.a, A312207.P3228347032379674604.f1, A312207.P3228347032379674604.a, A011862, A011862.P9485299441699197278.a, A311633, A311633.P17424544686150266232.a, A312683, A312683.P3196979988989396886.f1, A312683.P3196979988989396886.a, A004396, A004396.P17032557045289780609.a, A128834, A128834.P16779687439637953687.a, A314736, A314736.P3794098761063289759.a, A006369, A006369.P842576174392056214.a, A010892, A010892.P14408744864468695543.a, A314428, A314428.P9611413599869563837.a, A315214, A315214.P13359799671460808905.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312207

/-! ## A312207.P12840655636970039368

`A311633(n)+A004525(A312683(n)-A311633(n))`
-/

namespace A312207.P12840655636970039368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n + A004525 (A312683 n - A311633 n).toNat

end

end A312207.P12840655636970039368

namespace A312207

/-- `A311633(n)+A004525(A312683(n)-A311633(n))` -/
def P12840655636970039368.Spec : Prop :=
  ∀ n, P12840655636970039368.a n = A312207 n

end A312207

/-! ## A312207.P11507796923343834767

`A312683(n)-A004526(A312683(n)-A311633(n))`
-/

namespace A312207.P11507796923343834767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312683 n - A004526 (A312683 n - A311633 n).toNat

end

end A312207.P11507796923343834767

namespace A312207

/-- `A312683(n)-A004526(A312683(n)-A311633(n))` -/
def P11507796923343834767.Spec : Prop :=
  ∀ n, P11507796923343834767.a n = A312207 n

end A312207

/-! ## A312207.P2510233989021007044

`A312683(n)-A004525(A312683(n)-A312160(n))`
-/

namespace A312207.P2510233989021007044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312683 n - A004525 (A312683 n - A312160 n).toNat

end

end A312207.P2510233989021007044

namespace A312207

/-- `A312683(n)-A004525(A312683(n)-A312160(n))` -/
def P2510233989021007044.Spec : Prop :=
  ∀ n, P2510233989021007044.a n = A312207 n

end A312207

/-! ## A312207.P15334291503513841130

`abs(A008592(n)-A315669(n))`
-/

namespace A312207.P15334291503513841130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315669 n|

end

end A312207.P15334291503513841130

namespace A312207

/-- `abs(A008592(n)-A315669(n))` -/
def P15334291503513841130.Spec : Prop :=
  ∀ n, P15334291503513841130.a n = A312207 n

end A312207

/-! ## A312207.P12673490488774662205

`2*A008706(n)-A315669(n)`
-/

namespace A312207.P12673490488774662205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315669 n

end

end A312207.P12673490488774662205

namespace A312207

/-- `2*A008706(n)-A315669(n)` -/
def P12673490488774662205.Spec : Prop :=
  ∀ n, P12673490488774662205.a n = A312207 n

end A312207

/-! ## A312207.P4947392490895730585

`A008458(n)+A008574(n)-A315669(n)`
-/

namespace A312207.P4947392490895730585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315669 n)

end

end A312207.P4947392490895730585

namespace A312207

/-- `A008458(n)+A008574(n)-A315669(n)` -/
def P4947392490895730585.Spec : Prop :=
  ∀ n, P4947392490895730585.a n = A312207 n

end A312207

/-! ## A312207.P650928960489443617

`A005843(A008706(n))-A315669(n)`
-/

namespace A312207.P650928960489443617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315669 n

end

end A312207.P650928960489443617

namespace A312207

/-- `A005843(A008706(n))-A315669(n)` -/
def P650928960489443617.Spec : Prop :=
  ∀ n, P650928960489443617.a n = A312207 n

end A312207

/-! ## A312207.P2409824035141823375

`A004396(2*(A312160(n)-n))`
-/

namespace A312207.P2409824035141823375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * (A312160 n - (n : ℤ))).toNat

end

end A312207.P2409824035141823375

namespace A312207

/-- `A004396(2*(A312160(n)-n))` -/
def P2409824035141823375.Spec : Prop :=
  ∀ n, P2409824035141823375.a n = A312207 n

end A312207

/-! ## A312207.P3599045702392828504

`A004396(A005843(A312160(n)-n))`
-/

namespace A312207.P3599045702392828504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 (A312160 n - (n : ℤ)).toNat).toNat

end

end A312207.P3599045702392828504

namespace A312207

/-- `A004396(A005843(A312160(n)-n))` -/
def P3599045702392828504.Spec : Prop :=
  ∀ n, P3599045702392828504.a n = A312207 n

end A312207

/-! ## A312207.P2311970743530332633

`A004525(A312683(n)+A311633(n))`
-/

namespace A312207.P2311970743530332633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312683 n + A311633 n).toNat

end

end A312207.P2311970743530332633

namespace A312207

/-- `A004525(A312683(n)+A311633(n))` -/
def P2311970743530332633.Spec : Prop :=
  ∀ n, P2311970743530332633.a n = A312207 n

end A312207

/-! ## A312207.P733028618244076494

`A004526(A312683(n)+A311633(n))`
-/

namespace A312207.P733028618244076494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312683 n + A311633 n).toNat

end

end A312207.P733028618244076494

namespace A312207

/-- `A004526(A312683(n)+A311633(n))` -/
def P733028618244076494.Spec : Prop :=
  ∀ n, P733028618244076494.a n = A312207 n

end A312207

/-! ## A312207.P12918138755162272307

`A004525(A312683(n)+A312160(n))`
-/

namespace A312207.P12918138755162272307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312683 n + A312160 n).toNat

end

end A312207.P12918138755162272307

namespace A312207

/-- `A004525(A312683(n)+A312160(n))` -/
def P12918138755162272307.Spec : Prop :=
  ∀ n, P12918138755162272307.a n = A312207 n

end A312207

/-!
# A312208: Coordination sequence Gal.5.69.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312208, the canonical program `A312208.P17267733597513165212` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312208 has offset 0).

The definition of A312208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312208.P8798805139726367616

`A008706(n)-A253262(n)`
-/

namespace A312208.P8798805139726367616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A253262 n

end

end A312208.P8798805139726367616

namespace A312208

/-- `A008706(n)-A253262(n)` -/
def P8798805139726367616.Spec : Prop :=
  ∀ n, P8798805139726367616.a n = A312208 n

end A312208

/-! ## A312208.P10885678683991072600

`A314961(n)-A330025(n)`
-/

namespace A312208.P10885678683991072600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314961 n - A330025 n

end

end A312208.P10885678683991072600

namespace A312208

/-- `A314961(n)-A330025(n)` -/
def P10885678683991072600.Spec : Prop :=
  ∀ n, P10885678683991072600.a n = A312208 n

end A312208

/-! ## A312208.P5463893988615278329

`abs(A008592(n)-A315668(n))`
-/

namespace A312208.P5463893988615278329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315668 n|

end

end A312208.P5463893988615278329

namespace A312208

/-- `abs(A008592(n)-A315668(n))` -/
def P5463893988615278329.Spec : Prop :=
  ∀ n, P5463893988615278329.a n = A312208 n

end A312208

/-! ## A312208.P3654645416558807007

`floor(A010015(n)/A315668(n))`
-/

namespace A312208.P3654645416558807007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A315668 n : ℚ)⌋

end

end A312208.P3654645416558807007

namespace A312208

/-- `floor(A010015(n)/A315668(n))` -/
def P3654645416558807007.Spec : Prop :=
  ∀ n, P3654645416558807007.a n = A312208 n

end A312208

/-! ## A312208.P5942215548870008057

`A253262(n+5)+A008706(n)`
-/

namespace A312208.P5942215548870008057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253262 (n + 5) + A008706 n

end

end A312208.P5942215548870008057

namespace A312208

/-- `A253262(n+5)+A008706(n)` -/
def P5942215548870008057.Spec : Prop :=
  ∀ n, P5942215548870008057.a n = A312208 n

end A312208

/-! ## A312208.P13095791544193158057

`A315270(n)-2*A330025(n)`
-/

namespace A312208.P13095791544193158057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315270 n - 2 * A330025 n

end

end A312208.P13095791544193158057

namespace A312208

/-- `A315270(n)-2*A330025(n)` -/
def P13095791544193158057.Spec : Prop :=
  ∀ n, P13095791544193158057.a n = A312208 n

end A312208

/-! ## A312208.P5316567174450226245

`A008458(n)-(A253262(n)+n)`
-/

namespace A312208.P5316567174450226245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A253262 n + (n : ℤ))

end

end A312208.P5316567174450226245

namespace A312208

/-- `A008458(n)-(A253262(n)+n)` -/
def P5316567174450226245.Spec : Prop :=
  ∀ n, P5316567174450226245.a n = A312208 n

end A312208

/-! ## A312208.P17267733597513165212

`A008574(n)+n-A253262(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A312208

/-- `A008574(n)+n-A253262(n)` -/
def P17267733597513165212.Spec : Prop :=
  ∀ n, P17267733597513165212.a n = A312208 n

theorem P17267733597513165212.correct : P17267733597513165212.Spec := by
  intro n
  simp only [A312208]

end A312208

/-! ## A312208.P6947606363498192541

`A001068(A008574(n))-A253262(n)`
-/

namespace A312208.P6947606363498192541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A008574 n).toNat - A253262 n

end

end A312208.P6947606363498192541

namespace A312208

/-- `A001068(A008574(n))-A253262(n)` -/
def P6947606363498192541.Spec : Prop :=
  ∀ n, P6947606363498192541.a n = A312208 n

end A312208

/-! ## A312208.P8562852757901265872

`A004277(A005843(n))+n-A253262(n)`
-/

namespace A312208.P8562852757901265872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005843 n).toNat + ((n : ℤ) - A253262 n)

end

end A312208.P8562852757901265872

namespace A312208

/-- `A004277(A005843(n))+n-A253262(n)` -/
def P8562852757901265872.Spec : Prop :=
  ∀ n, P8562852757901265872.a n = A312208 n

end A312208

/-! ## A312208.P7123236420923624860

`A008458(n)+A008574(n)-A315668(n)`
-/

namespace A312208.P7123236420923624860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315668 n)

end

end A312208.P7123236420923624860

namespace A312208

/-- `A008458(n)+A008574(n)-A315668(n)` -/
def P7123236420923624860.Spec : Prop :=
  ∀ n, P7123236420923624860.a n = A312208 n

end A312208

/-! ## A312208.P7455359951423469103

`A074067(A315668(n))`
-/

namespace A312208.P7455359951423469103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A315668 n).toNat

end

end A312208.P7455359951423469103

namespace A312208

/-- `A074067(A315668(n))` -/
def P7455359951423469103.Spec : Prop :=
  ∀ n, P7455359951423469103.a n = A312208 n

end A312208

/-!
# A312209: Coordination sequence Gal.6.158.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312209, the canonical program `A312209.P5886602847606182547` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312209 has offset 0).

The definition of A312209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312209.P12680932597424218064

`abs(A008592(n)-A315667(n))`
-/

namespace A312209.P12680932597424218064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315667 n|

end

end A312209.P12680932597424218064

namespace A312209

/-- `abs(A008592(n)-A315667(n))` -/
def P12680932597424218064.Spec : Prop :=
  ∀ n, P12680932597424218064.a n = A312209 n

end A312209

/-! ## A312209.P6656305520723995504

`2*A008706(n)-A315667(n)`
-/

namespace A312209.P6656305520723995504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315667 n

end

end A312209.P6656305520723995504

namespace A312209

/-- `2*A008706(n)-A315667(n)` -/
def P6656305520723995504.Spec : Prop :=
  ∀ n, P6656305520723995504.a n = A312209 n

end A312209

/-! ## A312209.P5886602847606182547

`2*A312151(n)-A311889(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A312209

/-- `2*A312151(n)-A311889(n)` -/
def P5886602847606182547.Spec : Prop :=
  ∀ n, P5886602847606182547.a n = A312209 n

theorem P5886602847606182547.correct : P5886602847606182547.Spec := by
  intro n
  simp only [A312209]

end A312209

/-! ## A312209.P15751023565548513007

`(A312685(n)+A311635(n))/2`
-/

namespace A312209.P15751023565548513007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312685 n + A311635 n : ℚ) / 2

end

end A312209.P15751023565548513007

namespace A312209

/-- `(A312685(n)+A311635(n))/2` -/
def P15751023565548513007.Spec : Prop :=
  ∀ n, P15751023565548513007.a n = (A312209 n : ℚ)

end A312209

/-! ## A312209.P15760297425893559841

`A135042(2*n+1)-A315667(n)`
-/

namespace A312209.P15760297425893559841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315667 n

end

end A312209.P15760297425893559841

namespace A312209

/-- `A135042(2*n+1)-A315667(n)` -/
def P15760297425893559841.Spec : Prop :=
  ∀ n, P15760297425893559841.a n = A312209 n

end A312209

/-! ## A312209.P3134492719747254017

`A004525(A312685(n)+A311635(n))`
-/

namespace A312209.P3134492719747254017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312685 n + A311635 n).toNat

end

end A312209.P3134492719747254017

namespace A312209

/-- `A004525(A312685(n)+A311635(n))` -/
def P3134492719747254017.Spec : Prop :=
  ∀ n, P3134492719747254017.a n = A312209 n

end A312209

/-! ## A312209.P8019637219800904849

`A005843(A008706(n))-A315667(n)`
-/

namespace A312209.P8019637219800904849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315667 n

end

end A312209.P8019637219800904849

namespace A312209

/-- `A005843(A008706(n))-A315667(n)` -/
def P8019637219800904849.Spec : Prop :=
  ∀ n, P8019637219800904849.a n = A312209 n

end A312209

/-! ## A312209.P14517429230486990381

`A065502(A313802(n))-A008574(n)`
-/

namespace A312209.P14517429230486990381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A313802 n).toNat - A008574 n

end

end A312209.P14517429230486990381

namespace A312209

/-- `A065502(A313802(n))-A008574(n)` -/
def P14517429230486990381.Spec : Prop :=
  ∀ n, P14517429230486990381.a n = A312209 n

end A312209

/-! ## A312209.P8920526982827891475

`A065502(A008458(n))-A315667(n)`
-/

namespace A312209.P8920526982827891475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315667 n

end

end A312209.P8920526982827891475

namespace A312209

/-- `A065502(A008458(n))-A315667(n)` -/
def P8920526982827891475.Spec : Prop :=
  ∀ n, P8920526982827891475.a n = A312209 n

end A312209

/-! ## A312209.P16618855428631908212

`A005843(A312151(n))-A311889(n)`
-/

namespace A312209.P16618855428631908212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312151 n).toNat - A311889 n

end

end A312209.P16618855428631908212

namespace A312209

/-- `A005843(A312151(n))-A311889(n)` -/
def P16618855428631908212.Spec : Prop :=
  ∀ n, P16618855428631908212.a n = A312209 n

end A312209

/-! ## A312209.P9280375341763183219

`A008458(n)+A008574(n)-A315667(n)`
-/

namespace A312209.P9280375341763183219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315667 n)

end

end A312209.P9280375341763183219

namespace A312209

/-- `A008458(n)+A008574(n)-A315667(n)` -/
def P9280375341763183219.Spec : Prop :=
  ∀ n, P9280375341763183219.a n = A312209 n

end A312209

/-! ## A312209.P1113639526176898533

`A233583(A017281(n))-A315667(n)`
-/

namespace A312209.P1113639526176898533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315667 n

end

end A312209.P1113639526176898533

namespace A312209

/-- `A233583(A017281(n))-A315667(n)` -/
def P1113639526176898533.Spec : Prop :=
  ∀ n, P1113639526176898533.a n = A312209 n

end A312209

/-!
# A312210: Coordination sequence Gal.6.159.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312210, the canonical program `A312210.P10071697695240117449` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312210 has offset 0).

The definition of A312210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312210.P3155094740243911068

`abs(A008592(n)-A315666(n))`
-/

namespace A312210.P3155094740243911068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315666 n|

end

end A312210.P3155094740243911068

namespace A312210

/-- `abs(A008592(n)-A315666(n))` -/
def P3155094740243911068.Spec : Prop :=
  ∀ n, P3155094740243911068.a n = A312210 n

end A312210

/-! ## A312210.P16833668865688783362

`2*A008706(n)-A315666(n)`
-/

namespace A312210.P16833668865688783362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315666 n

end

end A312210.P16833668865688783362

namespace A312210

/-- `2*A008706(n)-A315666(n)` -/
def P16833668865688783362.Spec : Prop :=
  ∀ n, P16833668865688783362.a n = A312210 n

end A312210

/-! ## A312210.P8874197405140409534

`A311554(n)+A002264(A030118(n))`
-/

namespace A312210.P8874197405140409534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311554 n + A002264 (A030118 n).toNat

end

end A312210.P8874197405140409534

namespace A312210

/-- `A311554(n)+A002264(A030118(n))` -/
def P8874197405140409534.Spec : Prop :=
  ∀ n, P8874197405140409534.a n = A312210 n

end A312210

/-! ## A312210.P1374238883680713706

`A008458(n)+A008574(n)-A315666(n)`
-/

namespace A312210.P1374238883680713706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315666 n)

end

end A312210.P1374238883680713706

namespace A312210

/-- `A008458(n)+A008574(n)-A315666(n)` -/
def P1374238883680713706.Spec : Prop :=
  ∀ n, P1374238883680713706.a n = A312210 n

end A312210

/-! ## A312210.P10071697695240117449

`A311196(n)+A312206(n)-A008574(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A312210

/-- `A311196(n)+A312206(n)-A008574(n)` -/
def P10071697695240117449.Spec : Prop :=
  ∀ n, P10071697695240117449.a n = A312210 n

theorem P10071697695240117449.correct : P10071697695240117449.Spec := by
  intro n
  simp only [A312210]

end A312210

/-! ## A312210.P1462712565337838984

`A314964(n)-A128834(A004525(n))`
-/

namespace A312210.P1462712565337838984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n - A128834 (A004525 n).toNat

end

end A312210.P1462712565337838984

namespace A312210

/-- `A314964(n)-A128834(A004525(n))` -/
def P1462712565337838984.Spec : Prop :=
  ∀ n, P1462712565337838984.a n = A312210 n

end A312210

/-! ## A312210.P3493674593545271535

`A008706(n)+A301697(n)-A315735(n)`
-/

namespace A312210.P3493674593545271535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A301697 n - A315735 n)

end

end A312210.P3493674593545271535

namespace A312210

/-- `A008706(n)+A301697(n)-A315735(n)` -/
def P3493674593545271535.Spec : Prop :=
  ∀ n, P3493674593545271535.a n = A312210 n

end A312210

/-! ## A312210.P6679082510306855881

`2*A313803(n)-A315710(n)`
-/

namespace A312210.P6679082510306855881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313803 n - A315710 n

end

end A312210.P6679082510306855881

namespace A312210

/-- `2*A313803(n)-A315710(n)` -/
def P6679082510306855881.Spec : Prop :=
  ∀ n, P6679082510306855881.a n = A312210 n

end A312210

/-! ## A312210.P15911165854767816982

`A315710(n)-A005843(A315710(n)-A313803(n))`
-/

namespace A312210.P15911165854767816982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315710 n - A005843 (A315710 n - A313803 n).toNat

end

end A312210.P15911165854767816982

namespace A312210

/-- `A315710(n)-A005843(A315710(n)-A313803(n))` -/
def P15911165854767816982.Spec : Prop :=
  ∀ n, P15911165854767816982.a n = A312210 n

end A312210

/-! ## A312210.P10545706183530105103

`A005843(A008706(n))-A315666(n)`
-/

namespace A312210.P10545706183530105103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315666 n

end

end A312210.P10545706183530105103

namespace A312210

/-- `A005843(A008706(n))-A315666(n)` -/
def P10545706183530105103.Spec : Prop :=
  ∀ n, P10545706183530105103.a n = A312210 n

end A312210

/-! ## A312210.P5471008886599543055

`A311549(n)+∑[A021913(A313126(n))]`
-/

namespace A312210.P5471008886599543055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311549 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312210.P5471008886599543055

namespace A312210

/-- `A311549(n)+∑[A021913(A313126(n))]` -/
def P5471008886599543055.Spec : Prop :=
  ∀ n, P5471008886599543055.a n = A312210 n

end A312210

/-! ## A312210.P1449293073601133638

`A005843(A313803(n))-A315710(n)`
-/

namespace A312210.P1449293073601133638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313803 n).toNat - A315710 n

end

end A312210.P1449293073601133638

namespace A312210

/-- `A005843(A313803(n))-A315710(n)` -/
def P1449293073601133638.Spec : Prop :=
  ∀ n, P1449293073601133638.a n = A312210 n

end A312210

/-!
# A312211: Coordination sequence Gal.6.610.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312211, there is no canonical definition to state claims against.
-/

/-! ## A312211.P10340211480861677439

`A312204(n)+A037832(A263451(n+1))`
-/

namespace A312211.P10340211480861677439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312204 n + A037832 (A263451 (n + 1)).toNat

end

end A312211.P10340211480861677439

/-! ## A312211.P16730402055749107909

`A034856(n+1)-A304739(A072880(n+1))`
-/

namespace A312211.P16730402055749107909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - A304739 (A072880 (n + 1)).toNat

end

end A312211.P16730402055749107909

/-! ## A312211.P16297139705109463002

`A034856(n+1)-A344529(A116380(n+1))`
-/

namespace A312211.P16297139705109463002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - A344529 (A116380 (n + 1)).toNat

end

end A312211.P16297139705109463002

/-! ## A312211.P10237639485402802783

`eq[A133494(A316896(n+1)), A234575(n+2)]`
-/

namespace A312211.P10237639485402802783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A316896 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312211.P10237639485402802783

/-!
# A312212: Coordination sequence Gal.6.515.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312212, there is no canonical definition to state claims against.
-/

/-! ## A312212.P2594253147153819295

`A313903(n)-(A001222(n+1)+A001222(A181546(n)))`
-/

namespace A312212.P2594253147153819295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313903 n - (A001222 (n + 1) + A001222 (A181546 n).toNat)

end

end A312212.P2594253147153819295

/-!
# A312213: Coordination sequence Gal.6.509.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312213, there is no canonical definition to state claims against.
-/

/-! ## A312213.P5892464437345341057

`A095371(2*(n+1))-A101455(A093364(n+1))`
-/

namespace A312213.P5892464437345341057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095371 (2 * (n + 1)) - A101455 (A093364 (n + 1)).toNat

end

end A312213.P5892464437345341057

/-! ## A312213.P7554489599835447434

`A095371(2*(n+1))+A054525(A281284(n+4))`
-/

namespace A312213.P7554489599835447434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095371 (2 * (n + 1)) + A054525 (A281284 (n + 4)).toNat

end

end A312213.P7554489599835447434

/-! ## A312213.P1352587756523342613

`A095371(2*(n+1))+A010815(A162820(2*n+3))`
-/

namespace A312213.P1352587756523342613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095371 (2 * (n + 1)) + A010815 (A162820 (2 * n + 3)).toNat

end

end A312213.P1352587756523342613

/-! ## A312213.P6453123584725484954

`A057988(n+1)-A251092(A001845(n))`
-/

namespace A312213.P6453123584725484954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057988 (n + 1) - A251092 (A001845 n).toNat

end

end A312213.P6453123584725484954

/-! ## A312213.P17414657814182848896

`A095370(A328899(2*(n+1)))-A095414(A046413(n+1))`
-/

namespace A312213.P17414657814182848896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (A328899 (2 * (n + 1))).toNat - A095414 (A046413 (n + 1)).toNat

end

end A312213.P17414657814182848896

/-!
# A312214: Coordination sequence Gal.6.55.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312214, there is no canonical definition to state claims against.
-/

/-! ## A312214.P9678517572616053207

`A312655(n)-A323514(A104934(n))`
-/

namespace A312214.P9678517572616053207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312655 n - A323514 (A104934 n).toNat

end

end A312214.P9678517572616053207

/-! ## A312214.P1207545243022193242

`∑[A181819(∑[A128045(n+1)])]+n`
-/

namespace A312214.P1207545243022193242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A312214.P1207545243022193242

/-! ## A312214.P11795968732578250310

`A311509(n)+A046645(A118395(n))`
-/

namespace A312214.P11795968732578250310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311509 n + A046645 (A118395 n).toNat

end

end A312214.P11795968732578250310

/-! ## A312214.P16460974820002898236

`A312667(n)-A046660(A193235(n))`
-/

namespace A312214.P16460974820002898236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312667 n - A046660 (A193235 n).toNat

end

end A312214.P16460974820002898236

/-! ## A312214.P9830801092637795212

`A312969(n)-A056594(A242537(n))`
-/

namespace A312214.P9830801092637795212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312969 n - A056594 (A242537 n).toNat

end

end A312214.P9830801092637795212

/-!
# A312215: Coordination sequence Gal.6.479.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312215, there is no canonical definition to state claims against.
-/

/-! ## A312215.P7692816116878105081

`A311936(n)+A191818(A235937(n+1))`
-/

namespace A312215.P7692816116878105081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311936 n + A191818 (A235937 (n + 1)).toNat

end

end A312215.P7692816116878105081

/-! ## A312215.P3924007437718411501

`A316863(A000238(n+1))+A312179(n)`
-/

namespace A312215.P3924007437718411501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A000238 (n + 1)).toNat + A312179 n

end

end A312215.P3924007437718411501

/-! ## A312215.P17682486887925486451

`A276855(n)+A132004(A000032(2*(n+1)))`
-/

namespace A312215.P17682486887925486451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n + A132004 (A000032 (2 * (n + 1))).toNat

end

end A312215.P17682486887925486451

/-!
# A312216: Coordination sequence Gal.6.502.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312216, there is no canonical definition to state claims against.
-/

/-! ## A312216.P8849795563810916818

`A289281(∑[n]+2)+record[A170975(8*n)]`
-/

namespace A312216.P8849795563810916818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289281 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A312216.P8849795563810916818

/-!
# A312219: Coordination sequence Gal.6.506.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312219, there is no canonical definition to state claims against.
-/

/-! ## A312219.P4357265563039751721

`A173817(n+1)+A003313(A172025(n))`
-/

namespace A312219.P4357265563039751721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173817 (n + 1) + A003313 (A172025 n).toNat

end

end A312219.P4357265563039751721

/-!
# A312220: Coordination sequence Gal.5.153.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312220, there is no canonical definition to state claims against.
-/

/-! ## A312220.P14091429958758731242

`A312185(n)+A088722(A004117(n)+1)`
-/

namespace A312220.P14091429958758731242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312185 n + A088722 (A004117 n + 1).toNat

end

end A312220.P14091429958758731242

/-! ## A312220.P12459736267207135814

`A301299(n)+A275964(A192728(n+1))`
-/

namespace A312220.P12459736267207135814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A275964 (A192728 (n + 1)).toNat

end

end A312220.P12459736267207135814

/-! ## A312220.P9053239554624357129

`A312214(n)+A144625(A312222(3*n))`
-/

namespace A312220.P9053239554624357129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312214 n + A144625 (A312222 (3 * n)).toNat

end

end A312220.P9053239554624357129

/-! ## A312220.P88314990970137208

`A347706(A314930(2*(n+1)))+A312185(n)`
-/

namespace A312220.P88314990970137208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347706 (A314930 (2 * (n + 1))).toNat + A312185 n

end

end A312220.P88314990970137208

/-!
# A312221: Coordination sequence Gal.6.83.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312221, there is no canonical definition to state claims against.
-/

/-! ## A312221.P6002416539773706828

`A105970(A008458(n)-A330025(n)²)`
-/

namespace A312221.P6002416539773706828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A008458 n - A330025 n ^ 2).toNat

end

end A312221.P6002416539773706828

/-! ## A312221.P2479770357737787730

`A105970(A314251(n)+char[A250120(n)])`
-/

namespace A312221.P2479770357737787730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A314251 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A312221.P2479770357737787730

/-! ## A312221.P3673372857811201856

`A105970(A314252(n)+char[A250120(n)])`
-/

namespace A312221.P3673372857811201856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A314252 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A312221.P3673372857811201856

/-! ## A312221.P7064996833678624306

`A105970(A314253(n)+char[A250120(n)])`
-/

namespace A312221.P7064996833678624306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A314253 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A312221.P7064996833678624306

/-! ## A312221.P16598736407527911819

`A105970(A314254(n)+char[A250120(n)])`
-/

namespace A312221.P16598736407527911819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A314254 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A312221.P16598736407527911819

/-!
# A312222: Coordination sequence Gal.6.78.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312222, there is no canonical definition to state claims against.
-/

/-! ## A312222.P14470770028292926597

`A105970(A314251(n))`
-/

namespace A312222.P14470770028292926597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A314251 n).toNat

end

end A312222.P14470770028292926597

/-! ## A312222.P4235737981505684376

`A105970(A314252(n))`
-/

namespace A312222.P4235737981505684376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A314252 n).toNat

end

end A312222.P4235737981505684376

/-! ## A312222.P16442782338694081656

`A105970(A314253(n))`
-/

namespace A312222.P16442782338694081656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A314253 n).toNat

end

end A312222.P16442782338694081656

/-! ## A312222.P16800951406274400141

`A105970(A314254(n))`
-/

namespace A312222.P16800951406274400141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A314254 n).toNat

end

end A312222.P16800951406274400141

/-! ## A312222.P9877739626282754780

`A105970(A315547(n))`
-/

namespace A312222.P9877739626282754780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (A315547 n).toNat

end

end A312222.P9877739626282754780

/-!
# A312224: Coordination sequence Gal.6.304.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312224, there is no canonical definition to state claims against.
-/

/-! ## A312224.P7385286521466636884

`A312277(n)-A093492(A319404(n+1))`
-/

namespace A312224.P7385286521466636884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312277 n - A093492 (A319404 (n + 1)).toNat

end

end A312224.P7385286521466636884

/-! ## A312224.P1671494303731765109

`A296910(n)+2*A144193(A301289(n))`
-/

namespace A312224.P1671494303731765109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + 2 * A144193 (A301289 n).toNat

end

end A312224.P1671494303731765109

/-! ## A312224.P9994008855754325514

`A209864(A001950(n+1)-A271824(n+4))`
-/

namespace A312224.P9994008855754325514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209864 (A001950 (n + 1) - A271824 (n + 4)).toNat

end

end A312224.P9994008855754325514

/-! ## A312224.P9534100675628496370

`A053158(or(A032559(n+1), A062949(n+1)))`
-/

namespace A312224.P9534100675628496370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (Int.lor (A032559 (n + 1)) (A062949 (n + 1))).toNat

end

end A312224.P9534100675628496370

/-!
# A312225: Coordination sequence Gal.6.302.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312225, there is no canonical definition to state claims against.
-/

/-! ## A312225.P17239617387425954863

`A312235(n)-A106262(A111820(n))`
-/

namespace A312225.P17239617387425954863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312235 n - A106262 (A111820 n).toNat

end

end A312225.P17239617387425954863

/-! ## A312225.P6660365520280109119

`A312282(n)+A016389((n+1)²)-A106262(A111820(n))`
-/

namespace A312225.P6660365520280109119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312282 n + A016389 ((n + 1) ^ 2) - A106262 (A111820 n).toNat

end

end A312225.P6660365520280109119

/-!
# A312227: Coordination sequence Gal.6.303.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312227, there is no canonical definition to state claims against.
-/

/-! ## A312227.P11568578219602046528

`A036445(2*A312228(n))`
-/

namespace A312227.P11568578219602046528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (2 * A312228 n).toNat

end

end A312227.P11568578219602046528

/-! ## A312227.P8596907609620419225

`A312228(n)%A217059(n)`
-/

namespace A312227.P8596907609620419225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312228 n) (A217059 n)

end

end A312227.P8596907609620419225

/-! ## A312227.P2932300100234619821

`A312228(n)^A184974(n)!`
-/

namespace A312227.P2932300100234619821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312228 n ^ Nat.factorial (A184974 n).toNat

end

end A312227.P2932300100234619821

/-! ## A312227.P716977085079137539

`A312228(n)^A309485(n)!`
-/

namespace A312227.P716977085079137539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312228 n ^ Nat.factorial (A309485 n).toNat

end

end A312227.P716977085079137539

/-! ## A312227.P2165644425214822735

`A312228(n)+A000007(A092201(n))`
-/

namespace A312227.P2165644425214822735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312228 n + A000007 (A092201 n).toNat

end

end A312227.P2165644425214822735

/-!
# A312229: Coordination sequence Gal.4.111.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312229, there is no canonical definition to state claims against.
-/

/-! ## A312229.P6112581363415631094

`A312230(n)-A360071(A312233(2*n+1))`
-/

namespace A312229.P6112581363415631094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312230 n - A360071 (A312233 (2 * n + 1)).toNat

end

end A312229.P6112581363415631094

/-! ## A312229.P8358864400302341462

`A312230(n)-A000122(A325347(3*n+4))`
-/

namespace A312229.P8358864400302341462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312230 n - A000122 (A325347 (3 * n + 4)).toNat

end

end A312229.P8358864400302341462

/-!
# A312230: Coordination sequence Gal.6.60.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312230, there is no canonical definition to state claims against.
-/

/-! ## A312230.P6767612477860904723

`or(A023926(A087036(n)), A312229(n))`
-/

namespace A312230.P6767612477860904723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023926 (A087036 n).toNat) (A312229 n)

end

end A312230.P6767612477860904723

/-! ## A312230.P18321519441275773917

`A312229(n)+A000122(A325347(3*n+4))`
-/

namespace A312230.P18321519441275773917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312229 n + A000122 (A325347 (3 * n + 4)).toNat

end

end A312230.P18321519441275773917

/-! ## A312230.P16179355649865164203

`A312561(A032555(n+1)-A256660(n))`
-/

namespace A312230.P16179355649865164203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 (A032555 (n + 1) - A256660 n).toNat

end

end A312230.P16179355649865164203

/-! ## A312230.P10758746776679496393

`A312561(A032555(n+1)-A077053(n+1))`
-/

namespace A312230.P10758746776679496393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 (A032555 (n + 1) - A077053 (n + 1)).toNat

end

end A312230.P10758746776679496393

/-!
# A312232: Coordination sequence Gal.5.76.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312232, there is no canonical definition to state claims against.
-/

/-! ## A312232.P7052403726871703233

`A311694(n)+Δ[p?[A139551(n)]]`
-/

namespace A312232.P7052403726871703233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311694 n + (f1 (n + 1) - f1 n)

end

end A312232.P7052403726871703233

/-! ## A312232.P3405385683562198786

`A312261(n)-A010894(A312251(n+1))`
-/

namespace A312232.P3405385683562198786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312261 n - A010894 ((A312251 (n + 1)).toNat + 21)

end

end A312232.P3405385683562198786

/-! ## A312232.P2247959402936468633

`A312261(n)-A010894(A312256(n+1))`
-/

namespace A312232.P2247959402936468633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312261 n - A010894 ((A312256 (n + 1)).toNat + 21)

end

end A312232.P2247959402936468633

/-! ## A312232.P12397084723539243838

`A312236(n)-A037134(A148471(n))`
-/

namespace A312232.P12397084723539243838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312236 n - A037134 (A148471 n).toNat

end

end A312232.P12397084723539243838

/-! ## A312232.P12234751552849841712

`A312236(n)-A101031(A101031(n))`
-/

namespace A312232.P12234751552849841712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312236 n - A101031 (A101031 n).toNat

end

end A312232.P12234751552849841712

/-!
# A312233: Coordination sequence Gal.6.240.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312233, there is no canonical definition to state claims against.
-/

/-! ## A312233.P3944830866546899598

`A312265(n)+A016389((n+1)²)`
-/

namespace A312233.P3944830866546899598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312265 n + A016389 ((n + 1) ^ 2)

end

end A312233.P3944830866546899598

/-! ## A312233.P16329283844363417936

`A312282(n)+A016389((n+1)²)-char[6]`
-/

namespace A312233.P16329283844363417936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312282 n + A016389 ((n + 1) ^ 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312233.P16329283844363417936

/-! ## A312233.P7171547560590983306

`A312235(n)+A016389(A000070(n))`
-/

namespace A312233.P7171547560590983306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312235 n + A016389 (A000070 n).toNat

end

end A312233.P7171547560590983306

/-! ## A312233.P13527191340769517534

`A312235(n)-A375467(A372167(n))`
-/

namespace A312233.P13527191340769517534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312235 n - A375467 (A372167 n).toNat

end

end A312233.P13527191340769517534

/-! ## A312233.P9802045335396117033

`A312265(n)+A014354(A114974(n+1))`
-/

namespace A312233.P9802045335396117033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312265 n + A014354 (A114974 (n + 1)).toNat

end

end A312233.P9802045335396117033

/-!
# A312234: Coordination sequence Gal.6.142.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312234, there is no canonical definition to state claims against.
-/

/-! ## A312234.P5422149046610097198

`A312281(n)-A054025(A016755(n))`
-/

namespace A312234.P5422149046610097198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n - A054025 (A016755 n).toNat

end

end A312234.P5422149046610097198

/-! ## A312234.P17223190310461289738

`A312281(n)-A262805(A038308(n))`
-/

namespace A312234.P17223190310461289738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n - A262805 (A038308 n).toNat

end

end A312234.P17223190310461289738

/-! ## A312234.P582027804427124363

`A312277(n)+A178798(A055998(n))-char[4]`
-/

namespace A312234.P582027804427124363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312277 n + A178798 (A055998 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312234.P582027804427124363

/-! ## A312234.P14446244942696354036

`A312281(n)-A176723(A301684(2*n+1))`
-/

namespace A312234.P14446244942696354036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n - A176723 (A301684 (2 * n + 1)).toNat

end

end A312234.P14446244942696354036

/-! ## A312234.P7457569677750274484

`A312281(n)+A016389((n+1)²)`
-/

namespace A312234.P7457569677750274484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n + A016389 ((n + 1) ^ 2)

end

end A312234.P7457569677750274484

/-!
# A312235: Coordination sequence Gal.6.135.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312235, there is no canonical definition to state claims against.
-/

/-! ## A312235.P544197139972259138

`A312225(n)+A106262(A111820(n))`
-/

namespace A312235.P544197139972259138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312225 n + A106262 (A111820 n).toNat

end

end A312235.P544197139972259138

/-! ## A312235.P3460808945124155007

`A312282(n)-A051344(A329158(n+2))`
-/

namespace A312235.P3460808945124155007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312282 n - A051344 (A329158 (n + 2)).toNat

end

end A312235.P3460808945124155007

/-! ## A312235.P8213132505041975016

`A312282(n)+A016389((n+1)²)`
-/

namespace A312235.P8213132505041975016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312282 n + A016389 ((n + 1) ^ 2)

end

end A312235.P8213132505041975016

/-! ## A312235.P13778437290663127526

`A312233(n)+A225099(A105615(n))`
-/

namespace A312235.P13778437290663127526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312233 n + A225099 (A105615 n).toNat

end

end A312235.P13778437290663127526

/-!
# A312236: Coordination sequence Gal.6.235.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312236, there is no canonical definition to state claims against.
-/

/-! ## A312236.P735148953998949302

`A310838(n)+A010051(A037278(n+1))`
-/

namespace A312236.P735148953998949302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310838 n + A010051 (A037278 (n + 1)).toNat

end

end A312236.P735148953998949302

/-! ## A312236.P3575323710915233057

`A312283(n)+A016389((n+1)²)`
-/

namespace A312236.P3575323710915233057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312283 n + A016389 ((n + 1) ^ 2)

end

end A312236.P3575323710915233057

/-! ## A312236.P6779821200150320698

`A310843(n)+A010051(A094433(n))`
-/

namespace A312236.P6779821200150320698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310843 n + A010051 (A094433 n).toNat

end

end A312236.P6779821200150320698

/-! ## A312236.P8128729392031455765

`A310844(n)+A122840(A167750(n+3))`
-/

namespace A312236.P8128729392031455765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310844 n + A122840 (A167750 (n + 3)).toNat

end

end A312236.P8128729392031455765

/-! ## A312236.P14170955074644907218

`char[2]+A310842(n)+A000007(A000108(n))`
-/

namespace A312236.P14170955074644907218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A310842 n + A000007 (A000108 n).toNat)

end

end A312236.P14170955074644907218

/-!
# A312237: Coordination sequence Gal.5.70.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312237, there is no canonical definition to state claims against.
-/

/-! ## A312237.P14006023141780191312

`A036445(2*A312228(n))+char[4]`
-/

namespace A312237.P14006023141780191312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (2 * A312228 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312237.P14006023141780191312

/-! ## A312237.P13031640829265670679

`char[4]+A312228(n)%A217059(n)`
-/

namespace A312237.P13031640829265670679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A312228 n) (A217059 n)

end

end A312237.P13031640829265670679

/-! ## A312237.P5341815773207772336

`char[4]+A312228(n)^A184974(n)!`
-/

namespace A312237.P5341815773207772336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A312228 n ^ Nat.factorial (A184974 n).toNat

end

end A312237.P5341815773207772336

/-! ## A312237.P9362118840442159539

`char[4]+A312228(n)^A309485(n)!`
-/

namespace A312237.P9362118840442159539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A312228 n ^ Nat.factorial (A309485 n).toNat

end

end A312237.P9362118840442159539

/-! ## A312237.P13109879904505245510

`A312284(n)-A112765(A007469(n+1))`
-/

namespace A312237.P13109879904505245510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312284 n - A112765 (A007469 (n + 1)).toNat

end

end A312237.P13109879904505245510

/-!
# A312238: Coordination sequence Gal.6.292.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312238, there is no canonical definition to state claims against.
-/

/-! ## A312238.P2852760236631176822

`A212172(A008927(n+2))+A312265(n)+A016389((n+1)²)`
-/

namespace A312238.P2852760236631176822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212172 (A008927 (n + 2)).toNat + (A312265 n + A016389 ((n + 1) ^ 2))

end

end A312238.P2852760236631176822

/-! ## A312238.P5536584471021653659

`char[6]+A036445(2*A312228(n))+char[4]`
-/

namespace A312238.P5536584471021653659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A036445 (2 * A312228 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A312238.P5536584471021653659

/-! ## A312238.P12152234371994595925

`char[6]+char[4]+A312228(n)%A217059(n)`
-/

namespace A312238.P12152234371994595925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A312228 n) (A217059 n))

end

end A312238.P12152234371994595925

/-! ## A312238.P10117729466245167800

`char[6]+char[4]+A312228(n)^A184974(n)!`
-/

namespace A312238.P10117729466245167800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + A312228 n ^ Nat.factorial (A184974 n).toNat)

end

end A312238.P10117729466245167800

/-! ## A312238.P17785775250068973234

`char[6]+char[4]+A312228(n)^A309485(n)!`
-/

namespace A312238.P17785775250068973234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + A312228 n ^ Nat.factorial (A309485 n).toNat)

end

end A312238.P17785775250068973234

/-!
# A312239: Coordination sequence Gal.5.117.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312239, there is no canonical definition to state claims against.
-/

/-! ## A312239.P15588757316991984490

`A312233(n)+A079209(A336940(n))`
-/

namespace A312239.P15588757316991984490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312233 n + A079209 (A336940 n).toNat

end

end A312239.P15588757316991984490

/-! ## A312239.P5417137287192945779

`A312235(n)+A254001(A001226(n+1))`
-/

namespace A312239.P5417137287192945779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312235 n + A254001 (A001226 (n + 1)).toNat

end

end A312239.P5417137287192945779

/-! ## A312239.P1369562925516834752

`A023969(n)+A311671(n)+A023969(A053497(n))`
-/

namespace A312239.P1369562925516834752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n + (A311671 n + A023969 (A053497 n).toNat)

end

end A312239.P1369562925516834752

/-! ## A312239.P18016123555097361155

`A023969(n)+A311671(n)+A185284(A315028(n))`
-/

namespace A312239.P18016123555097361155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n + (A311671 n + A185284 (A315028 n).toNat)

end

end A312239.P18016123555097361155

/-!
# A312241: Coordination sequence Gal.6.284.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312241, there is no canonical definition to state claims against.
-/

/-! ## A312241.P5955840671729892518

`A310852(n)+A010873(A128417(3*(n+1)))`
-/

namespace A312241.P5955840671729892518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310852 n + A010873 (A128417 (3 * (n + 1))).toNat

end

end A312241.P5955840671729892518

/-! ## A312241.P11797999865925897324

`A337019(A137319(n+1))+A137319(n+1)`
-/

namespace A312241.P11797999865925897324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337019 (A137319 (n + 1)).toNat + A137319 (n + 1)

end

end A312241.P11797999865925897324

/-!
# A312242: Coordination sequence Gal.6.303.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312242, there is no canonical definition to state claims against.
-/

/-! ## A312242.P6472147606449166967

`A312315(n)+A056594(A038315(n))`
-/

namespace A312242.P6472147606449166967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312315 n + A056594 (A038315 n).toNat

end

end A312242.P6472147606449166967

/-! ## A312242.P4122098826690539214

`A312317(n)-A071086(A001333(n))`
-/

namespace A312242.P4122098826690539214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A071086 (A001333 n).toNat

end

end A312242.P4122098826690539214

/-! ## A312242.P16589222035883611368

`A312315(n)-A010894(A315303(n))`
-/

namespace A312242.P16589222035883611368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312315 n - A010894 ((A315303 n).toNat + 21)

end

end A312242.P16589222035883611368

/-! ## A312242.P3357326579200938448

`A312317(n)-A011731(A117701(n+1))`
-/

namespace A312242.P3357326579200938448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A011731 (A117701 (n + 1)).toNat

end

end A312242.P3357326579200938448

/-! ## A312242.P11187533028367172248

`A312317(n)-A008966(A249212(n+1))`
-/

namespace A312242.P11187533028367172248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A008966 (A249212 (n + 1)).toNat

end

end A312242.P11187533028367172248

/-!
# A312243: Coordination sequence Gal.4.69.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312243, there is no canonical definition to state claims against.
-/

/-! ## A312243.P28979182205802632

`A312319(n)-A010894(A315303(n))`
-/

namespace A312243.P28979182205802632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312319 n - A010894 ((A315303 n).toNat + 21)

end

end A312243.P28979182205802632

/-! ## A312243.P18363136810407436148

`record[A294186(n+1)]+A312315(n)-n-A065040(n)`
-/

namespace A312243.P18363136810407436148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A312315 n - (n : ℤ)) - A065040 n

end

end A312243.P18363136810407436148

/-! ## A312243.P14973392667043586469

`record[A294186(n+1)]+A312315(n)-n-A162641(2*n+1)`
-/

namespace A312243.P14973392667043586469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A312315 n - (n : ℤ)) - A162641 (2 * n + 1)

end

end A312243.P14973392667043586469

/-! ## A312243.P15809222317355337900

`A022882(A100475(n))+A312282(n)-A065040(n)`
-/

namespace A312243.P15809222317355337900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022882 (A100475 n).toNat + (A312282 n - A065040 n)

end

end A312243.P15809222317355337900

/-!
# A312245: Coordination sequence Gal.3.31.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312245, the canonical program `A312245.P9424474134865924466` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312245 has offset 0).

The definition of A312245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312245.P9424474134865924466

`A047263(n+1)+A311807(n)-A060464(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A312245

/-- `A047263(n+1)+A311807(n)-A060464(n+1)` -/
def P9424474134865924466.Spec : Prop :=
  ∀ n, P9424474134865924466.a n = A312245 n

theorem P9424474134865924466.correct : P9424474134865924466.Spec := by
  intro n
  simp only [A312245]

end A312245

/-! ## A312245.P194935459263761379

`2*A311807(n)-A311586(n)`
-/

namespace A312245.P194935459263761379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311807 n - A311586 n

end

end A312245.P194935459263761379

namespace A312245

/-- `2*A311807(n)-A311586(n)` -/
def P194935459263761379.Spec : Prop :=
  ∀ n, P194935459263761379.a n = A312245 n

end A312245

/-! ## A312245.P8535031444014099646

`A005843(A311807(n))-A311586(n)`
-/

namespace A312245.P8535031444014099646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311807 n).toNat - A311586 n

end

end A312245.P8535031444014099646

namespace A312245

/-- `A005843(A311807(n))-A311586(n)` -/
def P8535031444014099646.Spec : Prop :=
  ∀ n, P8535031444014099646.a n = A312245 n

end A312245

/-! ## A312245.P14971500720194027596

`A313952(n)-A047588(n+1)`
-/

namespace A312245.P14971500720194027596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313952 n - A047588 (n + 1)

end

end A312245.P14971500720194027596

namespace A312245

/-- `A313952(n)-A047588(n+1)` -/
def P14971500720194027596.Spec : Prop :=
  ∀ n, P14971500720194027596.a n = A312245 n

theorem P14971500720194027596.correct : P14971500720194027596.Spec := by
  intro n
  simp only [A312245, Nat.add_sub_cancel, A312245.P14971500720194027596.a, A312245.P9424474134865924466.a, A047263, A047263.P10177617567604490545.a, A047588, A047588.P5089271559851880253.a, A060464, A060464.P1238324434526818081.a, A311807, A311807.P4282728810707661845.f1, A311807.P4282728810707661845.a, A313952, A313952.P3220437394578326099.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312245

/-! ## A312245.P575898368697848986

`A250120(n)+A310372(n)-A314055(n)`
-/

namespace A312245.P575898368697848986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A310372 n - A314055 n)

end

end A312245.P575898368697848986

namespace A312245

/-- `A250120(n)+A310372(n)-A314055(n)` -/
def P575898368697848986.Spec : Prop :=
  ∀ n, P575898368697848986.a n = A312245 n

end A312245

/-! ## A312245.P13853051896317706240

`A313975(n)-sqrt(A117676(n))`
-/

namespace A312245.P13853051896317706240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A313975 n : ℝ) - Real.sqrt (A117676 n : ℝ)

end

end A312245.P13853051896317706240

namespace A312245

/-- `A313975(n)-sqrt(A117676(n))` -/
def P13853051896317706240.Spec : Prop :=
  ∀ n, P13853051896317706240.a n = (A312245 n : ℝ)

end A312245

/-! ## A312245.P14856701382771343638

`A313975(n)-A060464(n+1)`
-/

namespace A312245.P14856701382771343638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n - A060464 (n + 1)

end

end A312245.P14856701382771343638

namespace A312245

/-- `A313975(n)-A060464(n+1)` -/
def P14856701382771343638.Spec : Prop :=
  ∀ n, P14856701382771343638.a n = A312245 n

end A312245

/-! ## A312245.P4352073015309196337

`A008486(n)+A313975(n)-A311586(n)`
-/

namespace A312245.P4352073015309196337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A313975 n - A311586 n)

end

end A312245.P4352073015309196337

namespace A312245

/-- `A008486(n)+A313975(n)-A311586(n)` -/
def P4352073015309196337.Spec : Prop :=
  ∀ n, P4352073015309196337.a n = A312245 n

end A312245

/-! ## A312245.P298251017729859601

`lcm(2, A311366(2*n))/2`
-/

namespace A312245.P298251017729859601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A311366 (2 * n)) : ℚ) / 2

end

end A312245.P298251017729859601

namespace A312245

/-- `lcm(2, A311366(2*n))/2` -/
def P298251017729859601.Spec : Prop :=
  ∀ n, P298251017729859601.a n = (A312245 n : ℚ)

end A312245

/-! ## A312245.P10718570824538877098

`A004525(A311366(2*n))`
-/

namespace A312245.P10718570824538877098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311366 (2 * n)).toNat

end

end A312245.P10718570824538877098

namespace A312245

/-- `A004525(A311366(2*n))` -/
def P10718570824538877098.Spec : Prop :=
  ∀ n, P10718570824538877098.a n = A312245 n

end A312245

/-!
# A312246: Coordination sequence Gal.6.438.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312246, there is no canonical definition to state claims against.
-/

/-! ## A312246.P9429115618181524511

`or(A185284((5-n)²), A312245(n))`
-/

namespace A312246.P9429115618181524511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A312245 n)

end

end A312246.P9429115618181524511

/-! ## A312246.P3524290386428988199

`or(A010894(A214066(n)), A312245(n))`
-/

namespace A312246.P3524290386428988199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A214066 n).toNat + 21)) (A312245 n)

end

end A312246.P3524290386428988199

/-! ## A312246.P8806664057539689017

`or(A010894(A310992(n)), A312245(n))`
-/

namespace A312246.P8806664057539689017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A310992 n).toNat + 21)) (A312245 n)

end

end A312246.P8806664057539689017

/-! ## A312246.P6613466166000673460

`or(A010894(A312260(n)), A312245(n))`
-/

namespace A312246.P6613466166000673460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A312260 n).toNat + 21)) (A312245 n)

end

end A312246.P6613466166000673460

/-!
# A312247: Coordination sequence Gal.3.12.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312247, there is no canonical definition to state claims against.
-/

/-! ## A312247.P12978017427535469911

`A312245(n)+A184159(A171660(n))`
-/

namespace A312247.P12978017427535469911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312245 n + A184159 (A171660 n).toNat

end

end A312247.P12978017427535469911

/-! ## A312247.P2179666341778258298

`A312260(n)-A010894(A312251(n))`
-/

namespace A312247.P2179666341778258298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312260 n - A010894 ((A312251 n).toNat + 21)

end

end A312247.P2179666341778258298

/-! ## A312247.P18140494097699411617

`A312260(n)-A010894(A312256(n))`
-/

namespace A312247.P18140494097699411617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312260 n - A010894 ((A312256 n).toNat + 21)

end

end A312247.P18140494097699411617

/-! ## A312247.P14969997756241578315

`or(A000122(A178181(n)), A311180(n))`
-/

namespace A312247.P14969997756241578315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A178181 n).toNat) (A311180 n)

end

end A312247.P14969997756241578315

/-!
# A312248: Coordination sequence Gal.5.182.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312248, there is no canonical definition to state claims against.
-/

/-! ## A312248.P13050721768904188404

`2*A311686(n)-A311153(n)`
-/

namespace A312248.P13050721768904188404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311686 n - A311153 n

end

end A312248.P13050721768904188404

/-! ## A312248.P305622460885988687

`A005843(A311686(n))-A311153(n)`
-/

namespace A312248.P305622460885988687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311686 n).toNat - A311153 n

end

end A312248.P305622460885988687

/-! ## A312248.P7357912466614752086

`A123108(A311153(3*n)-A311153(n))`
-/

namespace A312248.P7357912466614752086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A311153 (3 * n) - A311153 n).toNat

end

end A312248.P7357912466614752086

/-! ## A312248.P10364402732363876927

`A004525(A311153(3*n)-A311153(n))+A000007(n)`
-/

namespace A312248.P10364402732363876927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311153 (3 * n) - A311153 n).toNat + A000007 n

end

end A312248.P10364402732363876927

/-! ## A312248.P2123809743726138390

`A004526(A311153(3*n)-A311153(n))+A000007(n)`
-/

namespace A312248.P2123809743726138390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311153 (3 * n) - A311153 n).toNat + A000007 n

end

end A312248.P2123809743726138390

/-! ## A312248.P7432697996778459395

`A186646(A000007(n)+A311153(3*n)-A311153(n))`
-/

namespace A312248.P7432697996778459395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (A000007 n + (A311153 (3 * n) - A311153 n)).toNat

end

end A312248.P7432697996778459395

/-!
# A312249: Coordination sequence Gal.6.412.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312249, there is no canonical definition to state claims against.
-/

/-! ## A312249.P11782288513849125645

`2*A311698(n)-A311222(n)`
-/

namespace A312249.P11782288513849125645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311698 n - A311222 n

end

end A312249.P11782288513849125645

/-! ## A312249.P16365924167275530864

`A005843(A311698(n))-A311222(n)`
-/

namespace A312249.P16365924167275530864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311698 n).toNat - A311222 n

end

end A312249.P16365924167275530864

/-! ## A312249.P9184063545755264186

`A028310(A311222(2*n)-A311222(n))`
-/

namespace A312249.P9184063545755264186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A311222 (2 * n) - A311222 n).toNat

end

end A312249.P9184063545755264186

/-! ## A312249.P9925446966630095160

`A000007(n)+A311222(2*n)-A311222(n)`
-/

namespace A312249.P9925446966630095160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A311222 (2 * n) - A311222 n)

end

end A312249.P9925446966630095160

/-! ## A312249.P2602912036425254519

`A311222(2*n)-A311222(n)%A086570(n)`
-/

namespace A312249.P2602912036425254519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311222 (2 * n) - Int.tmod (A311222 n) (A086570 n)

end

end A312249.P2602912036425254519

/-! ## A312249.P6848564294537219743

`A065033(2*n)-n+A311222(2*n)-A311222(n)`
-/

namespace A312249.P6848564294537219743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) - (n : ℤ) + (A311222 (2 * n) - A311222 n)

end

end A312249.P6848564294537219743

/-!
# A312250: Coordination sequence Gal.6.413.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312250, there is no canonical definition to state claims against.
-/

/-! ## A312250.P13731245324512817678

`A016825(n)-A000122(A242376(n))`
-/

namespace A312250.P13731245324512817678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A000122 (A242376 n).toNat

end

end A312250.P13731245324512817678

/-! ## A312250.P5015488709730852131

`A312249(n)+A010894(A047263(3*n+2))`
-/

namespace A312250.P5015488709730852131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312249 n + A010894 ((A047263 (3 * n + 2)).toNat + 21)

end

end A312250.P5015488709730852131

/-!
# A312251: Coordination sequence Gal.5.183.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312251, there is no canonical definition to state claims against.
-/

/-! ## A312251.P14889253159020646199

`A312249(n)+A010894(A005252(n))`
-/

namespace A312251.P14889253159020646199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312249 n + A010894 ((A005252 n).toNat + 21)

end

end A312251.P14889253159020646199

/-! ## A312251.P5235940890806519870

`A312250(n)+A010894(A005252(n))`
-/

namespace A312251.P5235940890806519870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312250 n + A010894 ((A005252 n).toNat + 21)

end

end A312251.P5235940890806519870

/-! ## A312251.P1488986899049656885

`A312249(n)+A010894(A312258(n))`
-/

namespace A312251.P1488986899049656885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312249 n + A010894 ((A312258 n).toNat + 21)

end

end A312251.P1488986899049656885

/-! ## A312251.P8289871244454396837

`A312249(n)+A010894(A312263(n))`
-/

namespace A312251.P8289871244454396837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312249 n + A010894 ((A312263 n).toNat + 21)

end

end A312251.P8289871244454396837

/-!
# A312252: Coordination sequence Gal.6.438.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312252, there is no canonical definition to state claims against.
-/

/-! ## A312252.P12108095916339795155

`A312253(A062399(n))`
-/

namespace A312252.P12108095916339795155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312253 (A062399 n).toNat

end

end A312252.P12108095916339795155

/-! ## A312252.P973051513993147104

`A312253(A120126(n))`
-/

namespace A312252.P973051513993147104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312253 (A120126 n).toNat

end

end A312252.P973051513993147104

/-! ## A312252.P2650658396502989860

`A312253(A351870(n))`
-/

namespace A312252.P2650658396502989860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312253 (A351870 n).toNat

end

end A312252.P2650658396502989860

/-! ## A312252.P1231648537442183608

`A312253(A001222(3^n))`
-/

namespace A312252.P1231648537442183608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312253 (A001222 (3 ^ n)).toNat

end

end A312252.P1231648537442183608

/-! ## A312252.P11817773539819421275

`A312253(A052409(3^n))`
-/

namespace A312252.P11817773539819421275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312253 (A052409 (3 ^ n)).toNat

end

end A312252.P11817773539819421275

/-!
# A312253: Coordination sequence Gal.3.32.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312253, there is no canonical definition to state claims against.
-/

/-! ## A312253.P563424031700341682

`or(A185284((5-n)²), A312252(n))`
-/

namespace A312253.P563424031700341682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 ((5 - (n : ℤ)) ^ 2).toNat) (A312252 n)

end

end A312253.P563424031700341682

/-! ## A312253.P18003154530048343039

`or(A010894(A214066(n)), A312252(n))`
-/

namespace A312253.P18003154530048343039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A214066 n).toNat + 21)) (A312252 n)

end

end A312253.P18003154530048343039

/-! ## A312253.P15758243048328359081

`or(A010894(A310992(n)), A312252(n))`
-/

namespace A312253.P15758243048328359081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A310992 n).toNat + 21)) (A312252 n)

end

end A312253.P15758243048328359081

/-! ## A312253.P9769314733967518946

`or(A010894(A312260(n)), A312252(n))`
-/

namespace A312253.P9769314733967518946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A312260 n).toNat + 21)) (A312252 n)

end

end A312253.P9769314733967518946

/-! ## A312253.P4719497917906479002

`A312252(n)+A010894(A339849(n+2))`
-/

namespace A312253.P4719497917906479002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312252 n + A010894 ((A339849 (n + 2)).toNat + 21)

end

end A312253.P4719497917906479002

/-!
# A312254: Coordination sequence Gal.6.394.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312254, there is no canonical definition to state claims against.
-/

/-! ## A312254.P11120183505120506657

`A092524(A312255(n))`
-/

namespace A312254.P11120183505120506657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A312255 n).toNat

end

end A312254.P11120183505120506657

/-! ## A312254.P15348909677764191155

`A312255(A004906(n+1))`
-/

namespace A312254.P15348909677764191155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312255 (A004906 (n + 1)).toNat

end

end A312254.P15348909677764191155

/-! ## A312254.P3253220425967171058

`A312255(A004917(n+1))`
-/

namespace A312254.P3253220425967171058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312255 (A004917 (n + 1)).toNat

end

end A312254.P3253220425967171058

/-! ## A312254.P16689507173980068474

`record[A312255(n)]%A016018(3*(n+1))`
-/

namespace A312254.P16689507173980068474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016018 (3 * (n + 1)))

end

end A312254.P16689507173980068474

/-! ## A312254.P14035741313433785453

`A312255(A062399(n))`
-/

namespace A312254.P14035741313433785453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312255 (A062399 n).toNat

end

end A312254.P14035741313433785453

/-!
# A312255: Coordination sequence Gal.6.395.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312255, there is no canonical definition to state claims against.
-/

/-! ## A312255.P7895587806043730799

`2*A311703(n)-A311235(n)`
-/

namespace A312255.P7895587806043730799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311703 n - A311235 n

end

end A312255.P7895587806043730799

/-! ## A312255.P15120716682201980133

`A005843(A311703(n))-A311235(n)`
-/

namespace A312255.P15120716682201980133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A311703 n).toNat - A311235 n

end

end A312255.P15120716682201980133

/-!
# A312256: Coordination sequence Gal.6.461.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312256, there is no canonical definition to state claims against.
-/

/-! ## A312256.P6036580260918082297

`A313161(n)-A001221(A187245(n))`
-/

namespace A312256.P6036580260918082297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313161 n - A001221 (A187245 n).toNat

end

end A312256.P6036580260918082297

/-! ## A312256.P12865817061948126236

`xor(A008579(n), A086134(A000110(n)))`
-/

namespace A312256.P12865817061948126236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008579 n) (A086134 (A000110 n).toNat)

end

end A312256.P12865817061948126236

/-! ## A312256.P5062870375707583050

`or(A183063(A006067(n+1)), A312250(n))`
-/

namespace A312256.P5062870375707583050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183063 (A006067 (n + 1)).toNat) (A312250 n)

end

end A312256.P5062870375707583050

/-!
# A312257: Coordination sequence Gal.6.176.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312257, there is no canonical definition to state claims against.
-/

/-! ## A312257.P15803691422794918486

`A312259(n)-A038189(A100097(n*A038189(n)))`
-/

namespace A312257.P15803691422794918486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312259 n - A038189 (A100097 ((n : ℤ) * A038189 n).toNat).toNat

end

end A312257.P15803691422794918486

/-! ## A312257.P7643234409207855924

`A312259(n)-A038189(A100097(n))`
-/

namespace A312257.P7643234409207855924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312259 n - A038189 (A100097 n).toNat

end

end A312257.P7643234409207855924

/-! ## A312257.P3687731793714147642

`A312259(n)-A309785(A058720(n+3))`
-/

namespace A312257.P3687731793714147642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312259 n - A309785 (A058720 (n + 3)).toNat

end

end A312257.P3687731793714147642

/-! ## A312257.P4248387767143652980

`A291154(2*n+1)-Δ[A064952(2*n+1)]`
-/

namespace A312257.P4248387767143652980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064952 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A312257.P4248387767143652980

/-! ## A312257.P5648397584662796922

`A312278(n)-A124761(A014486(n))`
-/

namespace A312257.P5648397584662796922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312278 n - A124761 (A014486 n).toNat

end

end A312257.P5648397584662796922

/-!
# A312258: Coordination sequence Gal.6.144.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312258, there is no canonical definition to state claims against.
-/

/-! ## A312258.P4776033332804262584

`A311807(n)-A162782(A141214(n))`
-/

namespace A312258.P4776033332804262584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n - A162782 (A141214 n).toNat

end

end A312258.P4776033332804262584

/-! ## A312258.P10333941404171034191

`A190460(n+1)-A276865(A190452(n))`
-/

namespace A312258.P10333941404171034191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190460 (n + 1) - A276865 (A190452 n).toNat

end

end A312258.P10333941404171034191

/-! ## A312258.P4613631137612222709

`A312418(n)-A186034(A299523(n+1))`
-/

namespace A312258.P4613631137612222709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312418 n - A186034 (A299523 (n + 1)).toNat

end

end A312258.P4613631137612222709

/-! ## A312258.P3199654521625069842

`A312724(n)-A180094(A000109(n+3))`
-/

namespace A312258.P3199654521625069842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312724 n - A180094 (A000109 (n + 3)).toNat

end

end A312258.P3199654521625069842

/-!
# A312259: Coordination sequence Gal.6.137.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312259, there is no canonical definition to state claims against.
-/

/-! ## A312259.P7751106931070879526

`A312257(n)+A276397(A343088(3*n+2))`
-/

namespace A312259.P7751106931070879526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312257 n + A276397 (A343088 (3 * n + 2)).toNat

end

end A312259.P7751106931070879526

/-! ## A312259.P14266499375629463585

`A312257(n)+A038189(A100097(n*A038189(n)))`
-/

namespace A312259.P14266499375629463585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312257 n + A038189 (A100097 ((n : ℤ) * A038189 n).toNat).toNat

end

end A312259.P14266499375629463585

/-! ## A312259.P17023579357170192919

`A312257(n)+A038189(A100097(n))`
-/

namespace A312259.P17023579357170192919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312257 n + A038189 (A100097 n).toNat

end

end A312259.P17023579357170192919

/-! ## A312259.P6937707571937571751

`A312257(n)+A124761(A121412(n))`
-/

namespace A312259.P6937707571937571751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312257 n + A124761 (A121412 n).toNat

end

end A312259.P6937707571937571751

/-! ## A312259.P15209594694905120294

`A312257(n)+A010052(A127820(n+1))`
-/

namespace A312259.P15209594694905120294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312257 n + A010052 (A127820 (n + 1)).toNat

end

end A312259.P15209594694905120294

/-!
# A312260: Coordination sequence Gal.6.177.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312260, there is no canonical definition to state claims against.
-/

/-! ## A312260.P8192808504270007659

`A312279(n)-A010894(A311180(n))`
-/

namespace A312260.P8192808504270007659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312279 n - A010894 ((A311180 n).toNat + 21)

end

end A312260.P8192808504270007659

/-! ## A312260.P15895625605184239004

`A312279(n)-A010894(A312245(n))`
-/

namespace A312260.P15895625605184239004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312279 n - A010894 ((A312245 n).toNat + 21)

end

end A312260.P15895625605184239004

/-! ## A312260.P17942968629728507397

`A312279(n)-A010894(A312252(n))`
-/

namespace A312260.P17942968629728507397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312279 n - A010894 ((A312252 n).toNat + 21)

end

end A312260.P17942968629728507397

/-! ## A312260.P4629175929491561121

`A312247(n)+A010894(A312251(n))`
-/

namespace A312260.P4629175929491561121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312247 n + A010894 ((A312251 n).toNat + 21)

end

end A312260.P4629175929491561121

/-! ## A312260.P4601339878670407937

`A312247(n)+A010894(A312256(n))`
-/

namespace A312260.P4601339878670407937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312247 n + A010894 ((A312256 n).toNat + 21)

end

end A312260.P4601339878670407937

/-!
# A312261: Coordination sequence Gal.5.72.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312261, there is no canonical definition to state claims against.
-/

/-! ## A312261.P15034686374035267505

`A312283(n)+A159075(A207411(n+1))`
-/

namespace A312261.P15034686374035267505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312283 n + A159075 (A207411 (n + 1)).toNat

end

end A312261.P15034686374035267505

/-! ## A312261.P763844316195031760

`record[and(A357175(2*n+1), A367226(n+1))]`
-/

namespace A312261.P763844316195031760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A357175 (2 * n + 1)) (A367226 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312261.P763844316195031760

/-! ## A312261.P5525426131368475295

`A312257(n)+A124761(A005449(n))`
-/

namespace A312261.P5525426131368475295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312257 n + A124761 (A005449 n).toNat

end

end A312261.P5525426131368475295

/-! ## A312261.P7453495822277804321

`A345452(n+1)-A188014(A001411(n))`
-/

namespace A312261.P7453495822277804321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1) - A188014 (A001411 n).toNat

end

end A312261.P7453495822277804321

/-!
# A312262: Coordination sequence Gal.6.187.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312262, there is no canonical definition to state claims against.
-/

/-! ## A312262.P7212364824255629378

`∑[A259652(A328990(n+1))]`
-/

namespace A312262.P7212364824255629378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (A328990 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312262.P7212364824255629378

/-! ## A312262.P1382516843430892123

`∑[A259652(∑[A000129(n+2)])]`
-/

namespace A312262.P1382516843430892123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312262.P1382516843430892123

/-! ## A312262.P10028551746981253233

`A313036(n)-A033665(A008031(n))`
-/

namespace A312262.P10028551746981253233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313036 n - A033665 (A008031 n).toNat

end

end A312262.P10028551746981253233

/-!
# A312263: Coordination sequence Gal.5.77.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312263, there is no canonical definition to state claims against.
-/

/-! ## A312263.P11612648180512946320

`A250120(n)-A048793(A052709(n))`
-/

namespace A312263.P11612648180512946320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A048793 (A052709 n).toNat

end

end A312263.P11612648180512946320

/-! ## A312263.P4063182959345329941

`A311711(n)+A188257(A165200(n))`
-/

namespace A312263.P4063182959345329941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311711 n + A188257 (A165200 n).toNat

end

end A312263.P4063182959345329941

/-! ## A312263.P6223114889958826031

`A250120(n)-A000120(A099155(n))`
-/

namespace A312263.P6223114889958826031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A000120 (A099155 n).toNat

end

end A312263.P6223114889958826031

/-! ## A312263.P4425410768669860158

`A250120(n)-A084115(A024718(n))`
-/

namespace A312263.P4425410768669860158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A084115 (A024718 n).toNat

end

end A312263.P4425410768669860158

/-! ## A312263.P18084837820495709746

`A250120(n)-A334440(A015519(n))`
-/

namespace A312263.P18084837820495709746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A334440 (A015519 n).toNat

end

end A312263.P18084837820495709746

/-!
# A312264: Coordination sequence Gal.4.60.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312264, there is no canonical definition to state claims against.
-/

/-! ## A312264.P15173153838748621652

`A312278(n)-A343006(A061886(n))`
-/

namespace A312264.P15173153838748621652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312278 n - A343006 (A061886 n).toNat

end

end A312264.P15173153838748621652

/-! ## A312264.P17429153878981050139

`A312277(A087051(n))-A057354(A051626(n+1))`
-/

namespace A312264.P17429153878981050139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312277 (A087051 n).toNat - A057354 (A051626 (n + 1)).toNat

end

end A312264.P17429153878981050139

/-! ## A312264.P18402368625019828650

`A312277(A227549(n+1))-A057354(A051626(n+1))`
-/

namespace A312264.P18402368625019828650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312277 (A227549 (n + 1)).toNat - A057354 (A051626 (n + 1)).toNat

end

end A312264.P18402368625019828650

/-! ## A312264.P13322434923223471706

`A053735(A007718(n+1))+3*n`
-/

namespace A312264.P13322434923223471706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A007718 (n + 1)).toNat + (3 * n : ℤ)

end

end A312264.P13322434923223471706

/-! ## A312264.P277231903895576232

`A348803(A061342(n+1))+A296910(n)`
-/

namespace A312264.P277231903895576232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348803 (A061342 (n + 1)).toNat + A296910 n

end

end A312264.P277231903895576232

/-!
# A312265: Coordination sequence Gal.6.160.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312265, there is no canonical definition to state claims against.
-/

/-! ## A312265.P828717371528205125

`A312282(n)-A225099(A105615(n))`
-/

namespace A312265.P828717371528205125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312282 n - A225099 (A105615 n).toNat

end

end A312265.P828717371528205125

/-! ## A312265.P9558200925722970757

`A312233(n)-A014354(A114974(n+1))`
-/

namespace A312265.P9558200925722970757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312233 n - A014354 (A114974 (n + 1)).toNat

end

end A312265.P9558200925722970757

/-! ## A312265.P1615032674736446247

`A312536(n)-A224965(A008927(n+1))`
-/

namespace A312265.P1615032674736446247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312536 n - A224965 (A008927 (n + 1)).toNat

end

end A312265.P1615032674736446247

/-! ## A312265.P2115023080307715551

`A312282(n)+A016389(A008574(3*n+2))`
-/

namespace A312265.P2115023080307715551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312282 n + A016389 (A008574 (3 * n + 2)).toNat

end

end A312265.P2115023080307715551

/-!
# A312266: Coordination sequence Gal.4.40.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312266, there is no canonical definition to state claims against.
-/

/-! ## A312266.P7204772079959869431

`A086303(n+1)-A067898(A192747(n+1))`
-/

namespace A312266.P7204772079959869431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1) - A067898 (A192747 (n + 1)).toNat

end

end A312266.P7204772079959869431

/-! ## A312266.P80988350633690307

`A033687(A261235(n))+4*n`
-/

namespace A312266.P80988350633690307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 (A261235 n).toNat + (4 * n : ℤ)

end

end A312266.P80988350633690307

/-! ## A312266.P16103879899330846926

`∩[A346130(n+1), A235036(n)]`
-/

namespace A312266.P16103879899330846926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235036 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A312266.P16103879899330846926

/-! ## A312266.P10460687372395728662

`record[gcd(A222673(n+1), A312302(n))]`
-/

namespace A312266.P10460687372395728662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A222673 (n + 1)) (A312302 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312266.P10460687372395728662

/-! ## A312266.P14899428472475662656

`or(A008574(n), A084888(round(5*2^n/3)))`
-/

namespace A312266.P14899428472475662656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A084888 (SequenceMachineLib.roundAway (5 * ((2 ^ n : ℚ) / 3))).toNat)

end

end A312266.P14899428472475662656

/-!
# A312267: Coordination sequence Gal.5.97.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312267, there is no canonical definition to state claims against.
-/

/-! ## A312267.P4807807447435999941

`A312273(n)-A088157(A135517(A107429(n+1)))`
-/

namespace A312267.P4807807447435999941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312273 n - A088157 (A135517 (A107429 (n + 1)).toNat).toNat

end

end A312267.P4807807447435999941

/-! ## A312267.P6620227017369420746

`A016825(n)-A126988(A038041(n+1))`
-/

namespace A312267.P6620227017369420746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A126988 (A038041 (n + 1)).toNat

end

end A312267.P6620227017369420746

/-! ## A312267.P3976348751944785971

`A312273(A062399(n)-A263764(n+1))`
-/

namespace A312267.P3976348751944785971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312273 (A062399 n - A263764 (n + 1)).toNat

end

end A312267.P3976348751944785971

/-! ## A312267.P2758612451997990877

`A312271(n)-A340998(A075648(n+2))`
-/

namespace A312267.P2758612451997990877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312271 n - A340998 ((A075648 (n + 2)).toNat + 140)

end

end A312267.P2758612451997990877

/-! ## A312267.P11263966292158076205

`A312278(n)-A000120(A056467(n+3))`
-/

namespace A312267.P11263966292158076205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312278 n - A000120 (A056467 (n + 3)).toNat

end

end A312267.P11263966292158076205

/-!
# A312268: Coordination sequence Gal.5.52.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312268, there is no canonical definition to state claims against.
-/

/-! ## A312268.P887973763123905578

`A312272(n)-A030216(A000700(7*n))`
-/

namespace A312268.P887973763123905578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312272 n - A030216 (A000700 (7 * n)).toNat

end

end A312268.P887973763123905578

/-! ## A312268.P2946903080265552307

`A312272(n)-val(A000584(n+1), A037229(n))`
-/

namespace A312268.P2946903080265552307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312272 n - (SequenceMachineLib.valuation (A000584 (n + 1)).toNat (A037229 n).toNat : ℤ)

end

end A312268.P2946903080265552307

/-! ## A312268.P12481665229848240750

`A209863(A003586(n+1))+A086801(n+2)`
-/

namespace A312268.P12481665229848240750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209863 (A003586 (n + 1)).toNat + A086801 (n + 2)

end

end A312268.P12481665229848240750

/-! ## A312268.P9418565341286127471

`A005843(2*n+1)-A000925(A000043(2*n+1))`
-/

namespace A312268.P9418565341286127471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * n + 1) - A000925 (A000043 (2 * n + 1)).toNat

end

end A312268.P9418565341286127471

/-! ## A312268.P9757326203035777670

`A312275(n*A287377(n))`
-/

namespace A312268.P9757326203035777670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312275 ((n : ℤ) * A287377 n).toNat

end

end A312268.P9757326203035777670

/-!
# A312269: Coordination sequence Gal.6.218.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312269, there is no canonical definition to state claims against.
-/

/-! ## A312269.P4818712055715170600

`A312271(n)-A122841(A022088(n+2))`
-/

namespace A312269.P4818712055715170600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312271 n - A122841 (A022088 (n + 2)).toNat

end

end A312269.P4818712055715170600

/-! ## A312269.P18218757150581570230

`A008574(n)+A004012(2^n)-A281154(A191113(n+1))`
-/

namespace A312269.P18218757150581570230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004012 (2 ^ n) - A281154 (A191113 (n + 1)).toNat

end

end A312269.P18218757150581570230

/-! ## A312269.P1998646104731964912

`A312271(n)-A055641(A052949(n+1))`
-/

namespace A312269.P1998646104731964912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312271 n - A055641 (A052949 (n + 1)).toNat

end

end A312269.P1998646104731964912

/-! ## A312269.P9095519207289080541

`A004767(n)-A004200(A030015(n))`
-/

namespace A312269.P9095519207289080541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A004200 (A030015 n).toNat

end

end A312269.P9095519207289080541

/-! ## A312269.P18042339753890017839

`A312270(A087051(n))`
-/

namespace A312269.P18042339753890017839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312270 (A087051 n).toNat

end

end A312269.P18042339753890017839

/-!
# A312270: Coordination sequence Gal.6.117.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312270, there is no canonical definition to state claims against.
-/

/-! ## A312270.P14854949392895999267

`A033762(A143894(n))+4*n`
-/

namespace A312270.P14854949392895999267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (A143894 n).toNat + (4 * n : ℤ)

end

end A312270.P14854949392895999267

/-! ## A312270.P1754577960464864778

`or(A008574(n), A042970(A077168(n)))`
-/

namespace A312270.P1754577960464864778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A042970 (A077168 n).toNat)

end

end A312270.P1754577960464864778

/-! ## A312270.P15047085313079366332

`or(A008574(n), A033762(A143894(n)))`
-/

namespace A312270.P15047085313079366332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A033762 (A143894 n).toNat)

end

end A312270.P15047085313079366332

/-! ## A312270.P10826404800252366963

`A008574(n)+A002262(A288403(n))`
-/

namespace A312270.P10826404800252366963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002262 (A288403 n).toNat

end

end A312270.P10826404800252366963

/-! ## A312270.P4227892691193432650

`A312271(n)-A055641(A052949(n))`
-/

namespace A312270.P4227892691193432650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312271 n - A055641 (A052949 n).toNat

end

end A312270.P4227892691193432650

/-!
# A312271: Coordination sequence Gal.6.116.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312271, there is no canonical definition to state claims against.
-/

/-! ## A312271.P12258957144455026643

`A312269(n)+A160018(A105868(2*(n+2)))`
-/

namespace A312271.P12258957144455026643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312269 n + A160018 (A105868 (2 * (n + 2))).toNat

end

end A312271.P12258957144455026643

/-! ## A312271.P1791425644162417521

`A008574(n)+A004012(2^n)`
-/

namespace A312271.P1791425644162417521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004012 (2 ^ n)

end

end A312271.P1791425644162417521

/-! ## A312271.P3499952680758150339

`record[xor(3, n)]-A003324(A048573(n))`
-/

namespace A312271.P3499952680758150339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - A003324 (A048573 n).toNat

end

end A312271.P3499952680758150339

/-! ## A312271.P439683311141155527

`A092524(A312272(n))`
-/

namespace A312271.P439683311141155527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092524 (A312272 n).toNat

end

end A312271.P439683311141155527

/-! ## A312271.P15048555530625879158

`A016813(n)-A101455(A050488(n))`
-/

namespace A312271.P15048555530625879158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A101455 (A050488 n).toNat

end

end A312271.P15048555530625879158

/-!
# A312272: Coordination sequence Gal.6.217.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312272, there is no canonical definition to state claims against.
-/

/-! ## A312272.P17822878711566996157

`A312268(n)+A030216(A000700(7*n))`
-/

namespace A312272.P17822878711566996157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312268 n + A030216 (A000700 (7 * n)).toNat

end

end A312272.P17822878711566996157

/-! ## A312272.P14576477834079295124

`A312268(n)+2*A295659(A006327(n+7))`
-/

namespace A312272.P14576477834079295124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312268 n + 2 * A295659 (A006327 (n + 7)).toNat

end

end A312272.P14576477834079295124

/-! ## A312272.P12234358052009273957

`or(A312268(n), A312270(n))%A208819(n+2)`
-/

namespace A312272.P12234358052009273957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A312268 n) (A312270 n)) (A208819 (n + 2))

end

end A312272.P12234358052009273957

/-!
# A312273: Coordination sequence Gal.5.51.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312273, there is no canonical definition to state claims against.
-/

/-! ## A312273.P10255913670559901567

`A312271(n)+A055641(A052949(n))²`
-/

namespace A312273.P10255913670559901567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312271 n + A055641 (A052949 n).toNat ^ 2

end

end A312273.P10255913670559901567

/-! ## A312273.P18055002145860639704

`A312276(n)-A321379(A105687(n+1))`
-/

namespace A312273.P18055002145860639704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312276 n - A321379 (A105687 (n + 1)).toNat

end

end A312273.P18055002145860639704

/-!
# A312274: Coordination sequence Gal.6.516.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312274, there is no canonical definition to state claims against.
-/

/-! ## A312274.P16383040419514654984

`or(A312273(n), A321936(A287744(n)))`
-/

namespace A312274.P16383040419514654984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312273 n) (A321936 (A287744 n).toNat)

end

end A312274.P16383040419514654984

/-! ## A312274.P9813260822280025825

`A312273(n)+A055641(A052949(n+1))`
-/

namespace A312274.P9813260822280025825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312273 n + A055641 (A052949 (n + 1)).toNat

end

end A312274.P9813260822280025825

/-! ## A312274.P15445823968099561956

`or(A107279(A207208(n+1)), A312273(n))`
-/

namespace A312274.P15445823968099561956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107279 (A207208 (n + 1)).toNat) (A312273 n)

end

end A312274.P15445823968099561956

/-! ## A312274.P2573480511172691847

`or(A010894(A008637(n)), A312272(n))`
-/

namespace A312274.P2573480511172691847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A008637 n).toNat + 21)) (A312272 n)

end

end A312274.P2573480511172691847

/-! ## A312274.P2424700849834187970

`or(A185255(A008486(n)), A312272(n))`
-/

namespace A312274.P2424700849834187970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185255 (A008486 n).toNat) (A312272 n)

end

end A312274.P2424700849834187970

/-!
# A312275: Coordination sequence Gal.5.96.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312275, there is no canonical definition to state claims against.
-/

/-! ## A312275.P3049542942793127447

`or(A100073(A046212(n+1)), A312266(n))`
-/

namespace A312275.P3049542942793127447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100073 (A046212 (n + 1)).toNat) (A312266 n)

end

end A312275.P3049542942793127447

/-! ## A312275.P13374122241764933332

`or(A312271(n), A331428(A089408(n)))`
-/

namespace A312275.P13374122241764933332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312271 n) (A331428 (A089408 n).toNat)

end

end A312275.P13374122241764933332

/-! ## A312275.P5312133658552255293

`A312271(n)+A073267(A324232(n+1))²`
-/

namespace A312275.P5312133658552255293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312271 n + A073267 (A324232 (n + 1)).toNat ^ 2

end

end A312275.P5312133658552255293

/-! ## A312275.P16840812674972898280

`eq[A040081(A046152(n+1)), A194591(n+1)]`
-/

namespace A312275.P16840812674972898280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A046152 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312275.P16840812674972898280

/-!
# A312276: Coordination sequence Gal.4.39.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312276, there is no canonical definition to state claims against.
-/

/-! ## A312276.P14153390058837817358

`A070824(A282004(n))+A008574(n)`
-/

namespace A312276.P14153390058837817358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A282004 n).toNat + A008574 n

end

end A312276.P14153390058837817358

/-! ## A312276.P7193158941956245253

`A070824(A282004(n))+A004277(2*n)`
-/

namespace A312276.P7193158941956245253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A282004 n).toNat + A004277 (2 * n)

end

end A312276.P7193158941956245253

/-! ## A312276.P2204103550392879033

`A070824(A282004(n))+record[A186731(2*(n+1))]`
-/

namespace A312276.P2204103550392879033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A282004 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312276.P2204103550392879033

/-! ## A312276.P5965016732681872463

`2*n+1+A070824(A282004(n))+record[A026741(n)]`
-/

namespace A312276.P5965016732681872463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A070824 (A282004 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A312276.P5965016732681872463

/-! ## A312276.P7759876889407585632

`A321379(A105687(n+1))+A312273(n)`
-/

namespace A312276.P7759876889407585632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (A105687 (n + 1)).toNat + A312273 n

end

end A312276.P7759876889407585632

/-!
# A312277: Coordination sequence Gal.6.431.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312277, there is no canonical definition to state claims against.
-/

/-! ## A312277.P3649147506770288796

`A312281(n)-A178798(A027379(n))`
-/

namespace A312277.P3649147506770288796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n - A178798 (A027379 n).toNat

end

end A312277.P3649147506770288796

/-! ## A312277.P15008662131487461151

`A312281(n)-A178798(A055998(n))`
-/

namespace A312277.P15008662131487461151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n - A178798 (A055998 n).toNat

end

end A312277.P15008662131487461151

/-! ## A312277.P11493276532471336426

`A312276(n)-A178798(A075427(n))`
-/

namespace A312277.P11493276532471336426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312276 n - A178798 (A075427 n).toNat

end

end A312277.P11493276532471336426

/-! ## A312277.P3979764115054010652

`or(A185255(A258939(n)), A312276(n))`
-/

namespace A312277.P3979764115054010652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185255 (A258939 n).toNat) (A312276 n)

end

end A312277.P3979764115054010652

/-!
# A312278: Coordination sequence Gal.5.244.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312278, there is no canonical definition to state claims against.
-/

/-! ## A312278.P4672346477347490190

`or(A137510(A196441(n+1)), A311335(n))`
-/

namespace A312278.P4672346477347490190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137510 (A196441 (n + 1)).toNat) (A311335 n)

end

end A312278.P4672346477347490190

/-! ## A312278.P16787667077166805775

`A312477(n)-A086937(A000959(2*(n+2)))`
-/

namespace A312278.P16787667077166805775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312477 n - A086937 (A000959 (2 * (n + 2))).toNat

end

end A312278.P16787667077166805775

/-! ## A312278.P9912571142621957275

`A130824(n)+A073184(A002523(n))`
-/

namespace A312278.P9912571142621957275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A073184 (A002523 n).toNat

end

end A312278.P9912571142621957275

/-! ## A312278.P10931323180656744599

`A343006(A061886(n))+A312264(n)`
-/

namespace A312278.P10931323180656744599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343006 (A061886 n).toNat + A312264 n

end

end A312278.P10931323180656744599

/-! ## A312278.P5312257000703568205

`A312276(n)+A033716(A185129(n+1))`
-/

namespace A312278.P5312257000703568205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312276 n + A033716 (A185129 (n + 1)).toNat

end

end A312278.P5312257000703568205

/-!
# A312279: Coordination sequence Gal.4.59.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312279, there is no canonical definition to state claims against.
-/

/-! ## A312279.P17434926499692856778

`A312260(n)+A010894(A311180(n))`
-/

namespace A312279.P17434926499692856778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312260 n + A010894 ((A311180 n).toNat + 21)

end

end A312279.P17434926499692856778

/-! ## A312279.P17888259666054263995

`A312260(n)+A010894(A312245(n))`
-/

namespace A312279.P17888259666054263995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312260 n + A010894 ((A312245 n).toNat + 21)

end

end A312279.P17888259666054263995

/-! ## A312279.P9058620758578511194

`A312260(n)+A010894(A312252(n))`
-/

namespace A312279.P9058620758578511194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312260 n + A010894 ((A312252 n).toNat + 21)

end

end A312279.P9058620758578511194

/-! ## A312279.P5363960210483777847

`A312260(n)+A010894(A312246(n))`
-/

namespace A312279.P5363960210483777847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312260 n + A010894 ((A312246 n).toNat + 21)

end

end A312279.P5363960210483777847

/-! ## A312279.P8924108299879620449

`A312260(n)+A010894(A312249(n))`
-/

namespace A312279.P8924108299879620449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312260 n + A010894 ((A312249 n).toNat + 21)

end

end A312279.P8924108299879620449

/-!
# A312280: Coordination sequence Gal.6.299.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312280, there is no canonical definition to state claims against.
-/

/-! ## A312280.P8569517548823958776

`A312476(n)-A093492(A319404(n+1))`
-/

namespace A312280.P8569517548823958776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312476 n - A093492 (A319404 (n + 1)).toNat

end

end A312280.P8569517548823958776

/-! ## A312280.P15493857829760662117

`or(A033716(A041984(n)), A312276(n))`
-/

namespace A312280.P15493857829760662117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033716 (A041984 n).toNat) (A312276 n)

end

end A312280.P15493857829760662117

/-! ## A312280.P14310255960512589300

`or(A033716(A041984(n)), A312277(n))`
-/

namespace A312280.P14310255960512589300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033716 (A041984 n).toNat) (A312277 n)

end

end A312280.P14310255960512589300

/-! ## A312280.P2236170699545840237

`xor(A010673(A036369(n+4)), A312410(n))`
-/

namespace A312280.P2236170699545840237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 (A036369 (n + 4)).toNat) (A312410 n)

end

end A312280.P2236170699545840237

/-! ## A312280.P13833477330975455127

`A312276(n)+A033716(A185129(n+1))²`
-/

namespace A312280.P13833477330975455127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312276 n + A033716 (A185129 (n + 1)).toNat ^ 2

end

end A312280.P13833477330975455127

/-!
# A312281: Coordination sequence Gal.6.145.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312281, there is no canonical definition to state claims against.
-/

/-! ## A312281.P5769707119287924811

`A312234(n)+A054025(A016755(n))`
-/

namespace A312281.P5769707119287924811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312234 n + A054025 (A016755 n).toNat

end

end A312281.P5769707119287924811

/-! ## A312281.P10082647997853439313

`A312277(n)+A178798(A027379(n))`
-/

namespace A312281.P10082647997853439313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312277 n + A178798 (A027379 n).toNat

end

end A312281.P10082647997853439313

/-! ## A312281.P15664877642809529152

`A312277(n)+A178798(A055998(n))`
-/

namespace A312281.P15664877642809529152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312277 n + A178798 (A055998 n).toNat

end

end A312281.P15664877642809529152

/-! ## A312281.P13088418047734030920

`A312234(n)+A105700(A005635(n))`
-/

namespace A312281.P13088418047734030920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312234 n + A105700 (A005635 n).toNat

end

end A312281.P13088418047734030920

/-! ## A312281.P18433803102789320716

`A310836(n)+A188294(A162426(n))`
-/

namespace A312281.P18433803102789320716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310836 n + A188294 (A162426 n).toNat

end

end A312281.P18433803102789320716

/-!
# A312282: Coordination sequence Gal.6.138.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312282, there is no canonical definition to state claims against.
-/

/-! ## A312282.P2181669267532628517

`A312265(n)-A016389(A322621(n))`
-/

namespace A312282.P2181669267532628517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312265 n - A016389 (A322621 n).toNat

end

end A312282.P2181669267532628517

/-! ## A312282.P4932250613058783630

`char[4]+A312225(n)+A106262(A111820(n))`
-/

namespace A312282.P4932250613058783630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A312225 n + A106262 (A111820 n).toNat)

end

end A312282.P4932250613058783630

/-! ## A312282.P7421044545777327935

`A312269(n)+A102037(A081172(n))`
-/

namespace A312282.P7421044545777327935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312269 n + A102037 (A081172 n).toNat

end

end A312282.P7421044545777327935

/-! ## A312282.P8795067112974788977

`A312265(n)+A225099(A105615(n))`
-/

namespace A312282.P8795067112974788977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312265 n + A225099 (A105615 n).toNat

end

end A312282.P8795067112974788977

/-!
# A312283: Coordination sequence Gal.6.161.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312283, there is no canonical definition to state claims against.
-/

/-! ## A312283.P7781093377427412285

`A312261(n)+A010894(A312251(n))`
-/

namespace A312283.P7781093377427412285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312261 n + A010894 ((A312251 n).toNat + 21)

end

end A312283.P7781093377427412285

/-! ## A312283.P5986581937294651624

`A312261(n)+A010894(A312256(n))`
-/

namespace A312283.P5986581937294651624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312261 n + A010894 ((A312256 n).toNat + 21)

end

end A312283.P5986581937294651624

/-! ## A312283.P8553653969697317018

`A310845(n)+A165560(A334394(n))`
-/

namespace A312283.P8553653969697317018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310845 n + A165560 (A334394 n).toNat

end

end A312283.P8553653969697317018

/-! ## A312283.P17818317706070742004

`A312281(n)+A178798(A027379(n)-1)`
-/

namespace A312283.P17818317706070742004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n + A178798 (A027379 n - 1).toNat

end

end A312283.P17818317706070742004

/-! ## A312283.P2337146315563081888

`A342000(A317712(n+5))+A310845(n)`
-/

namespace A312283.P2337146315563081888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342000 (A317712 (n + 5)).toNat + A310845 n

end

end A312283.P2337146315563081888

/-!
# A312284: Coordination sequence Gal.3.11.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312284, there is no canonical definition to state claims against.
-/

/-! ## A312284.P11692641714340505558

`char[4]+A036445(2*A312228(n))+char[4]`
-/

namespace A312284.P11692641714340505558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A036445 (2 * A312228 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A312284.P11692641714340505558

/-! ## A312284.P9258209605641183951

`char[4]+char[4]+A312228(n)%A217059(n)`
-/

namespace A312284.P9258209605641183951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + Int.tmod (A312228 n) (A217059 n))

end

end A312284.P9258209605641183951

/-! ## A312284.P2823146261341236333

`char[4]+char[4]+A312228(n)^A184974(n)!`
-/

namespace A312284.P2823146261341236333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + A312228 n ^ Nat.factorial (A184974 n).toNat)

end

end A312284.P2823146261341236333

/-! ## A312284.P18239198706144148138

`char[4]+char[4]+A312228(n)^A309485(n)!`
-/

namespace A312284.P18239198706144148138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + A312228 n ^ Nat.factorial (A309485 n).toNat)

end

end A312284.P18239198706144148138

/-! ## A312284.P6874779300190302598

`A312237(n)+A003849(A035599(n))`
-/

namespace A312284.P6874779300190302598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312237 n + A003849 (A035599 n).toNat

end

end A312284.P6874779300190302598

/-!
# A312285: Coordination sequence Gal.5.180.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312285, there is no canonical definition to state claims against.
-/

/-! ## A312285.P8240692307601783506

`or(A312283(A087051(n)), A312284(n))`
-/

namespace A312285.P8240692307601783506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312283 (A087051 n).toNat) (A312284 n)

end

end A312285.P8240692307601783506

/-! ## A312285.P11594837843195552477

`A001222(A111820(n))+A312282(n)+A016389((n+1)²)`
-/

namespace A312285.P11594837843195552477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A111820 n).toNat + (A312282 n + A016389 ((n + 1) ^ 2))

end

end A312285.P11594837843195552477

/-! ## A312285.P15721414341758381193

`A349294(A312267(n))`
-/

namespace A312285.P15721414341758381193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349294 (A312267 n).toNat

end

end A312285.P15721414341758381193

/-! ## A312285.P7651190895574569043

`A001414(A081294(n))+2^∑{e}[n+1, #]`
-/

namespace A312285.P7651190895574569043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A081294 n).toNat + (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)

end

end A312285.P7651190895574569043

/-! ## A312285.P6930779597253156814

`A034444(A127126(3*n+1))+record[lcm(2, n)]`
-/

namespace A312285.P6930779597253156814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A127126 (3 * n + 1)).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A312285.P6930779597253156814

/-!
# A312286: Coordination sequence Gal.6.241.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312286, there is no canonical definition to state claims against.
-/

/-! ## A312286.P15570845828684518284

`A312233(n)+A312723(n)-A312716(n)`
-/

namespace A312286.P15570845828684518284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312233 n + (A312723 n - A312716 n)

end

end A312286.P15570845828684518284

/-! ## A312286.P1347517057906017465

`A311686(n)+A287455(A000111(n))`
-/

namespace A312286.P1347517057906017465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311686 n + A287455 (A000111 n).toNat

end

end A312286.P1347517057906017465

/-! ## A312286.P649080083330775472

`A312443(n)-A214411(A017294(n))`
-/

namespace A312286.P649080083330775472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312443 n - A214411 (A017294 n).toNat

end

end A312286.P649080083330775472

/-! ## A312286.P4038836430617219468

`A312365(n)-A342019(A086611(n))`
-/

namespace A312286.P4038836430617219468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312365 n - A342019 (A086611 n).toNat

end

end A312286.P4038836430617219468

/-! ## A312286.P9070589646930285725

`A312290(n)-A107846(A090634(n+1))`
-/

namespace A312286.P9070589646930285725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312290 n - A107846 (A090634 (n + 1)).toNat

end

end A312286.P9070589646930285725

/-!
# A312287: Coordination sequence Gal.6.171.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312287, there is no canonical definition to state claims against.
-/

/-! ## A312287.P763694088886308723

`A311690(A001222(3^n))+A057354(A133265(n))`
-/

namespace A312287.P763694088886308723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311690 (A001222 (3 ^ n)).toNat + A057354 (A133265 n).toNat

end

end A312287.P763694088886308723

/-! ## A312287.P1202859000290223337

`∑[A357171(A001157(n+1)-n)]`
-/

namespace A312287.P1202859000290223337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357171 (A001157 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312287.P1202859000290223337

/-! ## A312287.P6907949886176865219

`A310856(n)+A224447(A014739(n))`
-/

namespace A312287.P6907949886176865219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310856 n + A224447 (A014739 n).toNat

end

end A312287.P6907949886176865219

/-! ## A312287.P10230771666328260640

`A311725(n)+A044941(A291029(n))`
-/

namespace A312287.P10230771666328260640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311725 n + A044941 (A291029 n).toNat

end

end A312287.P10230771666328260640

/-!
# A312288: Coordination sequence Gal.6.143.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312288, there is no canonical definition to state claims against.
-/

/-! ## A312288.P16601016299789323559

`A312289(n)-A055029(A017258(n))`
-/

namespace A312288.P16601016299789323559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n - A055029 (A017258 n).toNat

end

end A312288.P16601016299789323559

/-! ## A312288.P17959603652131066789

`A312289(n)-A178779(A154372(n))`
-/

namespace A312288.P17959603652131066789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n - A178779 (A154372 n).toNat

end

end A312288.P17959603652131066789

/-! ## A312288.P815736382188132606

`A310369(n)-A287385(A052960(n))`
-/

namespace A312288.P815736382188132606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 n - A287385 (A052960 n).toNat

end

end A312288.P815736382188132606

/-! ## A312288.P17158883397915992087

`A312289(n)-A079261(A325921(n))`
-/

namespace A312288.P17158883397915992087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n - A079261 (A325921 n).toNat

end

end A312288.P17158883397915992087

/-! ## A312288.P18362739221577502151

`A312289(n)-A186747(A351870(n))`
-/

namespace A312288.P18362739221577502151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n - A186747 (A351870 n).toNat

end

end A312288.P18362739221577502151

/-!
# A312289: Coordination sequence Gal.6.527.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312289, the canonical program `A312289.P7287197696662422831` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312289 has offset 0).

The definition of A312289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2611 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312289.P7287197696662422831

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=14, a(4)=16, a(5)=22, a(6)=26, a(7)=30, a(8)=34`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A312289

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P7287197696662422831.Spec : Prop :=
  ∀ n, P7287197696662422831.a n = A312289 n

theorem P7287197696662422831.correct : P7287197696662422831.Spec := by
  intro n
  simp only [A312289]

end A312289

/-! ## A312289.P15126358717865606624

`A310503(2*n)-6*n`
-/

namespace A312289.P15126358717865606624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 (2 * n) - (6 * n : ℤ)

end

end A312289.P15126358717865606624

namespace A312289

/-- `A310503(2*n)-6*n` -/
def P15126358717865606624.Spec : Prop :=
  ∀ n, P15126358717865606624.a n = A312289 n

end A312289

/-! ## A312289.P3442688105345079788

`A310341(n)+2*A238468(n)`
-/

namespace A312289.P3442688105345079788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310341 n + 2 * A238468 n

end

end A312289.P3442688105345079788

namespace A312289

/-- `A310341(n)+2*A238468(n)` -/
def P3442688105345079788.Spec : Prop :=
  ∀ n, P3442688105345079788.a n = A312289 n

theorem P3442688105345079788.correct : P3442688105345079788.Spec := by
  intro n
  simp only [A312289, Nat.add_sub_cancel, A312289.P3442688105345079788.a, A312289.P7287197696662422831.a, A238468, A238468.P4933202717561499868.f1, A238468.P4933202717561499868.a, A310341, A310341.P11035500024239819754.a, A234044, A234044.P13328901318595551424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312289

/-! ## A312289.P10985169546206599039

`A314674(n)-A175629(n)`
-/

namespace A312289.P10985169546206599039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n - A175629 n

end

end A312289.P10985169546206599039

namespace A312289

/-- `A314674(n)-A175629(n)` -/
def P10985169546206599039.Spec : Prop :=
  ∀ n, P10985169546206599039.a n = A312289 n

theorem P10985169546206599039.correct : P10985169546206599039.Spec := by
  intro n
  simp only [A312289, Nat.add_sub_cancel, A312289.P10985169546206599039.a, A312289.P7287197696662422831.a, A175629, A175629.P9242778360532826969.a, A314674, A314674.P17643702068041950173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A312289

/-! ## A312289.P1568456466804443248

`A312895(n)+A238468(n)`
-/

namespace A312289.P1568456466804443248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A238468 n

end

end A312289.P1568456466804443248

namespace A312289

/-- `A312895(n)+A238468(n)` -/
def P1568456466804443248.Spec : Prop :=
  ∀ n, P1568456466804443248.a n = A312289 n

end A312289

/-! ## A312289.P10793580226976499767

`2*A312895(n)-A310341(n)`
-/

namespace A312289.P10793580226976499767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312895 n - A310341 n

end

end A312289.P10793580226976499767

namespace A312289

/-- `2*A312895(n)-A310341(n)` -/
def P10793580226976499767.Spec : Prop :=
  ∀ n, P10793580226976499767.a n = A312289 n

end A312289

/-! ## A312289.P6901440149195850643

`A313982(n)-sqrt(A117676(n))`
-/

namespace A312289.P6901440149195850643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A313982 n : ℝ) - Real.sqrt (A117676 n : ℝ)

end

end A312289.P6901440149195850643

namespace A312289

/-- `A313982(n)-sqrt(A117676(n))` -/
def P6901440149195850643.Spec : Prop :=
  ∀ n, P6901440149195850643.a n = (A312289 n : ℝ)

end A312289

/-! ## A312289.P2703376223090830672

`A313982(n)-A060464(n+1)`
-/

namespace A312289.P2703376223090830672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313982 n - A060464 (n + 1)

end

end A312289.P2703376223090830672

namespace A312289

/-- `A313982(n)-A060464(n+1)` -/
def P2703376223090830672.Spec : Prop :=
  ∀ n, P2703376223090830672.a n = A312289 n

end A312289

/-! ## A312289.P2701373193177283632

`2*A313836(n)-A008458(n)`
-/

namespace A312289.P2701373193177283632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313836 n - A008458 n

end

end A312289.P2701373193177283632

namespace A312289

/-- `2*A313836(n)-A008458(n)` -/
def P2701373193177283632.Spec : Prop :=
  ∀ n, P2701373193177283632.a n = A312289 n

end A312289

/-! ## A312289.P16787373092616382258

`A103517(A313836(n)-A016777(n))`
-/

namespace A312289.P16787373092616382258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A313836 n - A016777 n).toNat

end

end A312289.P16787373092616382258

namespace A312289

/-- `A103517(A313836(n)-A016777(n))` -/
def P16787373092616382258.Spec : Prop :=
  ∀ n, P16787373092616382258.a n = A312289 n

end A312289

/-! ## A312289.P1402063688707993541

`A103517(A313836(n)%A016777(n))`
-/

namespace A312289.P1402063688707993541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (Int.tmod (A313836 n) (A016777 n)).toNat

end

end A312289.P1402063688707993541

namespace A312289

/-- `A103517(A313836(n)%A016777(n))` -/
def P1402063688707993541.Spec : Prop :=
  ∀ n, P1402063688707993541.a n = A312289 n

end A312289

/-! ## A312289.P6619264240500858444

`A008458(n)-A005843(A008458(n)-A313836(n))`
-/

namespace A312289.P6619264240500858444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A005843 (A008458 n - A313836 n).toNat

end

end A312289.P6619264240500858444

namespace A312289

/-- `A008458(n)-A005843(A008458(n)-A313836(n))` -/
def P6619264240500858444.Spec : Prop :=
  ∀ n, P6619264240500858444.a n = A312289 n

end A312289

/-! ## A312289.P732557058421065080

`A005843(A313836(n))-A008458(n)`
-/

namespace A312289.P732557058421065080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313836 n).toNat - A008458 n

end

end A312289.P732557058421065080

namespace A312289

/-- `A005843(A313836(n))-A008458(n)` -/
def P732557058421065080.Spec : Prop :=
  ∀ n, P732557058421065080.a n = A312289 n

end A312289

/-! ## A312289.P7610615341257556349

`A008706(A008706(2*n))-A312549(A008706(2*n))`
-/

namespace A312289.P7610615341257556349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008706 (2 * n)).toNat - A312549 (A008706 (2 * n)).toNat

end

end A312289.P7610615341257556349

namespace A312289

/-- `A008706(A008706(2*n))-A312549(A008706(2*n))` -/
def P7610615341257556349.Spec : Prop :=
  ∀ n, P7610615341257556349.a n = A312289 n

end A312289

/-!
# A312290: Coordination sequence Gal.6.136.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312290, there is no canonical definition to state claims against.
-/

/-! ## A312290.P2000645094981520053

`A007814(A346694(n+1))+A310504(n)-or(1, n)`
-/

namespace A312290.P2000645094981520053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A346694 (n + 1)).toNat + (A310504 n - (Nat.lor 1 n : ℤ))

end

end A312290.P2000645094981520053

/-! ## A312290.P2988796328060650217

`A250120(n)-A008687(A004686(n))`
-/

namespace A312290.P2988796328060650217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A008687 (A004686 n).toNat

end

end A312290.P2988796328060650217

/-! ## A312290.P12329169141602791229

`A312289(n)+A010894(A310398(n))`
-/

namespace A312290.P12329169141602791229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A010894 ((A310398 n).toNat + 21)

end

end A312290.P12329169141602791229

/-! ## A312290.P12755696701698968318

`A312289(n)+A010894(A313870(n))`
-/

namespace A312290.P12755696701698968318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A010894 ((A313870 n).toNat + 21)

end

end A312290.P12755696701698968318

/-! ## A312290.P8201231438696769645

`A312473(n)-A081120(A075252(3*n+4))`
-/

namespace A312290.P8201231438696769645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312473 n - A081120 (A075252 (3 * n + 4)).toNat

end

end A312290.P8201231438696769645

/-!
# A312291: Coordination sequence Gal.6.236.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312291, there is no canonical definition to state claims against.
-/

/-! ## A312291.P623196613192912855

`A179765(A182544(n+1))+4*n`
-/

namespace A312291.P623196613192912855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179765 (A182544 (n + 1)).toNat + (4 * n : ℤ)

end

end A312291.P623196613192912855

/-! ## A312291.P13066820699512057183

`or(A008574(n), A179765(A182544(n+1)))`
-/

namespace A312291.P13066820699512057183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A179765 (A182544 (n + 1)).toNat)

end

end A312291.P13066820699512057183

/-! ## A312291.P8888089340313336913

`A312292(n)-A181502(A229694(n+1))`
-/

namespace A312291.P8888089340313336913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312292 n - A181502 (A229694 (n + 1)).toNat

end

end A312291.P8888089340313336913

/-! ## A312291.P4541859431362921725

`A008579(n)-A333628(A081668(n))`
-/

namespace A312291.P4541859431362921725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A333628 (A081668 n).toNat

end

end A312291.P4541859431362921725

/-! ## A312291.P12549329312420017154

`A301670(n)+A275962(A029858(n+1))`
-/

namespace A312291.P12549329312420017154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A275962 (A029858 (n + 1)).toNat

end

end A312291.P12549329312420017154

/-!
# A312292: Coordination sequence Gal.6.300.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312292, there is no canonical definition to state claims against.
-/

/-! ## A312292.P15775916242560327078

`2*A312324(n)-A312333(n)`
-/

namespace A312292.P15775916242560327078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312324 n - A312333 n

end

end A312292.P15775916242560327078

/-! ## A312292.P5791162974974459321

`A005843(A312324(n))-A312333(n)`
-/

namespace A312292.P5791162974974459321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312324 n).toNat - A312333 n

end

end A312292.P5791162974974459321

/-! ## A312292.P10804704456441975408

`A312291(n)+A181502(A229694(n+1))`
-/

namespace A312292.P10804704456441975408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312291 n + A181502 (A229694 (n + 1)).toNat

end

end A312292.P10804704456441975408

/-! ## A312292.P13720776413041127643

`A181502(A229694(n+1))+A179765(A182544(n+1))+4*n`
-/

namespace A312292.P13720776413041127643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181502 (A229694 (n + 1)).toNat + (A179765 (A182544 (n + 1)).toNat + (4 * n : ℤ))

end

end A312292.P13720776413041127643

/-! ## A312292.P4600986774034348407

`A315888(n)-A105661(A130279(n+1))`
-/

namespace A312292.P4600986774034348407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315888 n - A105661 (A130279 (n + 1)).toNat

end

end A312292.P4600986774034348407

/-!
# A312293: Coordination sequence Gal.5.71.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312293, there is no canonical definition to state claims against.
-/

/-! ## A312293.P12198425998584381189

`A311344(A062399(n))+6%A085731(n+1)`
-/

namespace A312293.P12198425998584381189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 (A062399 n).toNat + Int.tmod 6 (A085731 (n + 1))

end

end A312293.P12198425998584381189

/-! ## A312293.P10338675779042969620

`A136166(A282308(n)+A136166(n+1))+A008574(n)`
-/

namespace A312293.P10338675779042969620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136166 (A282308 n + A136166 (n + 1)).toNat + A008574 n

end

end A312293.P10338675779042969620

/-! ## A312293.P5668072659180216960

`A364158(A364154(2*n+1))`
-/

namespace A312293.P5668072659180216960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364158 (A364154 (2 * n + 1)).toNat

end

end A312293.P5668072659180216960

/-! ## A312293.P3285915765983891902

`record[Δ[A000010(A133137(3*n+1))]]`
-/

namespace A312293.P3285915765983891902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A133137 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312293.P3285915765983891902

/-! ## A312293.P1613486429389746139

`gcd(A121978(n+1)!, A121982(n+1))`
-/

namespace A312293.P1613486429389746139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A121978 (n + 1)).toNat : ℤ) (A121982 (n + 1))

end

end A312293.P1613486429389746139

/-!
# A312294: Coordination sequence Gal.6.552.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312294, there is no canonical definition to state claims against.
-/

/-! ## A312294.P2945617001310396667

`A312295(n)-A179827(A006882(n))`
-/

namespace A312294.P2945617001310396667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 n - A179827 (A006882 n).toNat

end

end A312294.P2945617001310396667

/-! ## A312294.P15900865857690386742

`A312295(n)%A007222(n)`
-/

namespace A312294.P15900865857690386742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312295 n) (A007222 (n + 10))

end

end A312294.P15900865857690386742

/-! ## A312294.P3424972415413093552

`∏{e}[A000244(n), A312295(#)]`
-/

namespace A312294.P3424972415413093552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A312295 (Nat.factorization (f1 n).natAbs p)

end

end A312294.P3424972415413093552

/-! ## A312294.P6651437248693162093

`A312295(n)+A007814(∑[2^n])`
-/

namespace A312294.P6651437248693162093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 n + A007814 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A312294.P6651437248693162093

/-! ## A312294.P17367091531990280799

`A312295(A062399(n))`
-/

namespace A312294.P17367091531990280799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 (A062399 n).toNat

end

end A312294.P17367091531990280799

/-!
# A312295: Coordination sequence Gal.6.551.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312295, there is no canonical definition to state claims against.
-/

/-! ## A312295.P12094862820987450210

`A312294(n)+A179827(A006882(n))`
-/

namespace A312295.P12094862820987450210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312294 n + A179827 (A006882 n).toNat

end

end A312295.P12094862820987450210

/-!
# A312296: Coordination sequence Gal.6.278.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312296, there is no canonical definition to state claims against.
-/

/-! ## A312296.P8164153307919888705

`A312295(n)+A266502(A007837(n))`
-/

namespace A312296.P8164153307919888705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 n + A266502 (A007837 n).toNat

end

end A312296.P8164153307919888705

/-! ## A312296.P13358105789576875968

`A312295(n)+A098702(A250285(n))`
-/

namespace A312296.P13358105789576875968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 n + A098702 (A250285 n).toNat

end

end A312296.P13358105789576875968

/-! ## A312296.P14474743262432478102

`A312294(n)+A184974(A184974(n))`
-/

namespace A312296.P14474743262432478102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312294 n + A184974 (A184974 n).toNat

end

end A312296.P14474743262432478102

/-! ## A312296.P2322105039692010178

`A312295(n)+A184974(A184974(n))`
-/

namespace A312296.P2322105039692010178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 n + A184974 (A184974 n).toNat

end

end A312296.P2322105039692010178

/-! ## A312296.P5875749866960965213

`A312294(n)+A218530(A230090(n+1))`
-/

namespace A312296.P5875749866960965213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312294 n + A218530 (A230090 (n + 1)).toNat

end

end A312296.P5875749866960965213

/-!
# A312297: Coordination sequence Gal.6.293.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312297, there is no canonical definition to state claims against.
-/

/-! ## A312297.P12041442412229309131

`A250120(n)-A001221(A278391(n))`
-/

namespace A312297.P12041442412229309131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A278391 n).toNat

end

end A312297.P12041442412229309131

/-!
# A312298: Coordination sequence Gal.6.534.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312298, there is no canonical definition to state claims against.
-/

/-! ## A312298.P7641549451537342847

`A312299(n)-A095731(A005177(n))`
-/

namespace A312298.P7641549451537342847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312299 n - A095731 (A005177 n).toNat

end

end A312298.P7641549451537342847

/-!
# A312299: Coordination sequence Gal.4.114.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312299, there is no canonical definition to state claims against.
-/

/-! ## A312299.P4919147746527567847

`A001414(A055841(n))+A001316(n)`
-/

namespace A312299.P4919147746527567847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A055841 n).toNat + A001316 n

end

end A312299.P4919147746527567847

/-! ## A312299.P15728418304317437811

`A001414(A081294(n))+A001316(n)`
-/

namespace A312299.P15728418304317437811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A081294 n).toNat + A001316 n

end

end A312299.P15728418304317437811

/-! ## A312299.P6447652752506224767

`A130824(n)+A000005(A038183(n))`
-/

namespace A312299.P6447652752506224767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A000005 (A038183 n).toNat

end

end A312299.P6447652752506224767

/-! ## A312299.P3701994593098544543

`A312238(n)+A226463(A003946(n))`
-/

namespace A312299.P3701994593098544543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312238 n + A226463 (A003946 n).toNat

end

end A312299.P3701994593098544543

/-! ## A312299.P17686109217944378019

`A312238(n)+A189632(A148398(n))`
-/

namespace A312299.P17686109217944378019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312238 n + A189632 (A148398 n).toNat

end

end A312299.P17686109217944378019

