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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
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

/-!
# A312300: Coordination sequence Gal.4.24.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312300, there is no canonical definition to state claims against.
-/

/-! ## A312300.P831633858014131899

`∑[A000005(2^(n+1)*A033918(n+1)-1+n)]`
-/

namespace A312300.P831633858014131899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 ^ (n + 1) : ℤ) * A033918 (n + 1) - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312300.P831633858014131899

/-! ## A312300.P17648912969488087444

`A346130(A311738(n))-A004526(n)`
-/

namespace A312300.P17648912969488087444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A311738 n).toNat - A004526 n

end

end A312300.P17648912969488087444

/-! ## A312300.P15297193325521392334

`and(A061347(A000244(n)), A313158(n))`
-/

namespace A312300.P15297193325521392334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061347 (A000244 n).toNat) (A313158 n)

end

end A312300.P15297193325521392334

/-! ## A312300.P17110405972531470416

`and(A061347(A000244(n)), A314801(n))`
-/

namespace A312300.P17110405972531470416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061347 (A000244 n).toNat) (A314801 n)

end

end A312300.P17110405972531470416

/-! ## A312300.P10086815871730203152

`A057889(A301674(n)%A031991(n+1))`
-/

namespace A312300.P10086815871730203152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (Int.tmod (A301674 n) (A031991 (n + 1))).toNat

end

end A312300.P10086815871730203152

/-!
# A312301: Coordination sequence Gal.6.297.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312301, there is no canonical definition to state claims against.
-/

/-! ## A312301.P11836625268821318887

`A008579(n)-A001222(A340432(n)²)`
-/

namespace A312301.P11836625268821318887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A001222 (A340432 n ^ 2).toNat

end

end A312301.P11836625268821318887

/-! ## A312301.P13691760077500826185

`A311740(n)+A025426(A038205(n))`
-/

namespace A312301.P13691760077500826185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311740 n + A025426 (A038205 n).toNat

end

end A312301.P13691760077500826185

/-! ## A312301.P4958807155680405474

`A250120(n)-A023416(A108626(n))`
-/

namespace A312301.P4958807155680405474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A023416 (A108626 n).toNat

end

end A312301.P4958807155680405474

/-! ## A312301.P6126321196841237964

`A250120(n)-A000030(A357783(n))`
-/

namespace A312301.P6126321196841237964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A000030 (A357783 n).toNat

end

end A312301.P6126321196841237964

/-! ## A312301.P9644276875053612879

`A250120(n)-A023416(∑[A047085(n)])`
-/

namespace A312301.P9644276875053612879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A023416 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A312301.P9644276875053612879

/-!
# A312302: Coordination sequence Gal.6.298.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312302, there is no canonical definition to state claims against.
-/

/-! ## A312302.P12823490192487306019

`2*A312326(n)-A312335(n)`
-/

namespace A312302.P12823490192487306019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312326 n - A312335 n

end

end A312302.P12823490192487306019

/-! ## A312302.P13094975355378266532

`A005843(A312326(n))-A312335(n)`
-/

namespace A312302.P13094975355378266532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312326 n).toNat - A312335 n

end

end A312302.P13094975355378266532

/-! ## A312302.P6105777239043179810

`A250120(n)-A099563(A028303(2*n+1))`
-/

namespace A312302.P6105777239043179810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A099563 (A028303 (2 * n + 1)).toNat

end

end A312302.P6105777239043179810

/-! ## A312302.P15921063343212764666

`A144494(A213093(n))+A008574(n)`
-/

namespace A312302.P15921063343212764666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (A213093 n).toNat + A008574 n

end

end A312302.P15921063343212764666

/-! ## A312302.P16370784896641558074

`A311745(n)+A023533(A189316(n))`
-/

namespace A312302.P16370784896641558074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311745 n + A023533 (A189316 n).toNat

end

end A312302.P16370784896641558074

/-!
# A312303: Coordination sequence Gal.6.420.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312303, there is no canonical definition to state claims against.
-/

/-! ## A312303.P15107441974760373267

`lt[5*A178199(n+4), A177496(n+1)]`
-/

namespace A312303.P15107441974760373267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A178199 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A312303.P15107441974760373267

/-! ## A312303.P7452784271593377563

`A312305(n)-A102037(A081172(n))`
-/

namespace A312303.P7452784271593377563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312305 n - A102037 (A081172 n).toNat

end

end A312303.P7452784271593377563

/-! ## A312303.P2297708787642641766

`or(A010673(A094033(n)), A311366(n))`
-/

namespace A312303.P2297708787642641766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010673 (A094033 n).toNat) (A311366 n)

end

end A312303.P2297708787642641766

/-! ## A312303.P12199015894227136225

`eq[A035160(n+1), A270825(n)]`
-/

namespace A312303.P12199015894227136225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312303.P12199015894227136225

/-!
# A312304: Coordination sequence Gal.3.17.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312304, the canonical program `A312304.P14380419667614427901` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312304 has offset 0).

The definition of A312304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312304.P14380419667614427901

`A008579(n)-A004526(A088440(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312304

/-- `A008579(n)-A004526(A088440(n))` -/
def P14380419667614427901.Spec : Prop :=
  ∀ n, P14380419667614427901.a n = A312304 n

theorem P14380419667614427901.correct : P14380419667614427901.Spec := by
  intro n
  simp only [A312304]

end A312304

/-! ## A312304.P835253685727916102

`A008579(n)-A142150(A003815(n))`
-/

namespace A312304.P835253685727916102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A142150 (A003815 n).toNat

end

end A312304.P835253685727916102

namespace A312304

/-- `A008579(n)-A142150(A003815(n))` -/
def P835253685727916102.Spec : Prop :=
  ∀ n, P835253685727916102.a n = A312304 n

end A312304

/-! ## A312304.P10036453216072480634

`A008579(n)-A237420(A004525(n))`
-/

namespace A312304.P10036453216072480634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A237420 (A004525 n).toNat

end

end A312304.P10036453216072480634

namespace A312304

/-- `A008579(n)-A237420(A004525(n))` -/
def P10036453216072480634.Spec : Prop :=
  ∀ n, P10036453216072480634.a n = A312304 n

end A312304

/-! ## A312304.P15202386395726353952

`A008579(n)-A237420(A026741(n))`
-/

namespace A312304.P15202386395726353952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A237420 (A026741 n).toNat

end

end A312304.P15202386395726353952

namespace A312304

/-- `A008579(n)-A237420(A026741(n))` -/
def P15202386395726353952.Spec : Prop :=
  ∀ n, P15202386395726353952.a n = A312304 n

end A312304

/-! ## A312304.P6199252970864191872

`A008579(n)-A237420(A142150(n))`
-/

namespace A312304.P6199252970864191872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A237420 (A142150 n).toNat

end

end A312304.P6199252970864191872

namespace A312304

/-- `A008579(n)-A237420(A142150(n))` -/
def P6199252970864191872.Spec : Prop :=
  ∀ n, P6199252970864191872.a n = A312304 n

end A312304

/-! ## A312304.P254249570917340534

`A008579(n)-A237420(A186813(n))`
-/

namespace A312304.P254249570917340534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A237420 (A186813 n).toNat

end

end A312304.P254249570917340534

namespace A312304

/-- `A008579(n)-A237420(A186813(n))` -/
def P254249570917340534.Spec : Prop :=
  ∀ n, P254249570917340534.a n = A312304 n

end A312304

/-! ## A312304.P10470865784961132771

`A008579(n)-A237420(A237420(n)/2)`
-/

namespace A312304.P10470865784961132771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A237420 (SequenceMachineLib.roundAway ((A237420 n : ℚ) / 2)).toNat

end

end A312304.P10470865784961132771

namespace A312304

/-- `A008579(n)-A237420(A237420(n)/2)` -/
def P10470865784961132771.Spec : Prop :=
  ∀ n, P10470865784961132771.a n = A312304 n

end A312304

/-! ## A312304.P13397375998360140601

`A313321(n)-∑[(∑[n]+n)%2]`
-/

namespace A312304.P13397375998360140601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A312304.P13397375998360140601

namespace A312304

/-- `A313321(n)-∑[(∑[n]+n)%2]` -/
def P13397375998360140601.Spec : Prop :=
  ∀ n, P13397375998360140601.a n = A312304 n

end A312304

/-! ## A312304.P8201424727269229152

`A313321(n)-∑[A021913(n)]`
-/

namespace A312304.P8201424727269229152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312304.P8201424727269229152

namespace A312304

/-- `A313321(n)-∑[A021913(n)]` -/
def P8201424727269229152.Spec : Prop :=
  ∀ n, P8201424727269229152.a n = A312304 n

end A312304

/-! ## A312304.P8419387733823389831

`A313321(n)-Δ[A011848(n)]`
-/

namespace A312304.P8419387733823389831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - (f1 (n + 1) - f1 n)

end

end A312304.P8419387733823389831

namespace A312304

/-- `A313321(n)-Δ[A011848(n)]` -/
def P8419387733823389831.Spec : Prop :=
  ∀ n, P8419387733823389831.a n = A312304 n

end A312304

/-! ## A312304.P2825776986395000673

`A313321(n)-A004524(n+1)`
-/

namespace A312304.P2825776986395000673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A004524 (n + 1)

end

end A312304.P2825776986395000673

namespace A312304

/-- `A313321(n)-A004524(n+1)` -/
def P2825776986395000673.Spec : Prop :=
  ∀ n, P2825776986395000673.a n = A312304 n

end A312304

/-! ## A312304.P1604154623498736949

`A004525(n)+A313321(n)-n`
-/

namespace A312304.P1604154623498736949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313321 n - (n : ℤ))

end

end A312304.P1604154623498736949

namespace A312304

/-- `A004525(n)+A313321(n)-n` -/
def P1604154623498736949.Spec : Prop :=
  ∀ n, P1604154623498736949.a n = A312304 n

end A312304

/-!
# A312305: Coordination sequence Gal.5.122.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312305, there is no canonical definition to state claims against.
-/

/-! ## A312305.P2092109058805948530

`A312303(n)+A102037(A081172(n))`
-/

namespace A312305.P2092109058805948530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312303 n + A102037 (A081172 n).toNat

end

end A312305.P2092109058805948530

/-! ## A312305.P11205080197210426003

`A063917(A094015(n))`
-/

namespace A312305.P11205080197210426003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063917 (A094015 n).toNat

end

end A312305.P11205080197210426003

/-! ## A312305.P17046984163658496663

`A063917(A101653(n))`
-/

namespace A312305.P17046984163658496663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063917 (A101653 n).toNat

end

end A312305.P17046984163658496663

/-! ## A312305.P16827938903512535407

`A063917(2^A138390(n+1))`
-/

namespace A312305.P16827938903512535407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063917 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A138390 (n + 1) : ℤ))).toNat

end

end A312305.P16827938903512535407

/-! ## A312305.P7218558742355785396

`A312269(n)+A160018(A000332(n))`
-/

namespace A312305.P7218558742355785396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312269 n + A160018 (A000332 n).toNat

end

end A312305.P7218558742355785396

/-!
# A312306: Coordination sequence Gal.6.403.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312306, there is no canonical definition to state claims against.
-/

/-! ## A312306.P8895421871885618416

`A312560(n)-A249441(A005251(2*n))`
-/

namespace A312306.P8895421871885618416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312560 n - A249441 (A005251 (2 * n)).toNat

end

end A312306.P8895421871885618416

/-! ## A312306.P17409001798081610721

`∑[A136695(A240734(3*n+1))]`
-/

namespace A312306.P17409001798081610721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136695 (A240734 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312306.P17409001798081610721

/-! ## A312306.P4306260995459109470

`∑[A000005(A134478(∑[(n+2)*2^n]-1))]`
-/

namespace A312306.P4306260995459109470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312306.P4306260995459109470

/-! ## A312306.P1240723839522875548

`A008586(n)+A000120(A215587(n))`
-/

namespace A312306.P1240723839522875548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A000120 (A215587 n).toNat

end

end A312306.P1240723839522875548

/-! ## A312306.P3905533164887069785

`A312305(n)+A102037(A000332(n))`
-/

namespace A312306.P3905533164887069785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312305 n + A102037 (A000332 n).toNat

end

end A312306.P3905533164887069785

/-!
# A312307: Coordination sequence Gal.6.179.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312307, there is no canonical definition to state claims against.
-/

/-! ## A312307.P6742814207486469180

`A313537(n)-A049084(A248794(n+1))`
-/

namespace A312307.P6742814207486469180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n - A049084 (A248794 (n + 1)).toNat

end

end A312307.P6742814207486469180

/-!
# A312308: Coordination sequence Gal.6.405.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312308, there is no canonical definition to state claims against.
-/

/-! ## A312308.P1799094232042016806

`A312281(n)+A099475(A148305(n))`
-/

namespace A312308.P1799094232042016806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n + A099475 (A148305 n).toNat

end

end A312308.P1799094232042016806

/-! ## A312308.P12619515735895382386

`A312277(n)+A178798(A312277(2*n))`
-/

namespace A312308.P12619515735895382386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312277 n + A178798 (A312277 (2 * n)).toNat

end

end A312308.P12619515735895382386

/-!
# A312309: Coordination sequence Gal.4.49.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312309, there is no canonical definition to state claims against.
-/

/-! ## A312309.P4499139090416452720

`A312318(n)-A025468(A082730(n))`
-/

namespace A312309.P4499139090416452720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312318 n - A025468 (A082730 n).toNat

end

end A312309.P4499139090416452720

/-! ## A312309.P1521701371074904676

`A312316(n)+A102681(A001654(n))-A025468(n+4)`
-/

namespace A312309.P1521701371074904676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312316 n + A102681 (A001654 n).toNat - A025468 (n + 4)

end

end A312309.P1521701371074904676

/-! ## A312309.P6088918054736309522

`A312317(n)-A045698(A054963(n))`
-/

namespace A312309.P6088918054736309522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A045698 (A054963 n).toNat

end

end A312309.P6088918054736309522

/-! ## A312309.P13879054840775632027

`A312318(n)-A045698(A054963(n))`
-/

namespace A312309.P13879054840775632027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312318 n - A045698 (A054963 n).toNat

end

end A312309.P13879054840775632027

/-! ## A312309.P16431250809040594284

`A321895(A008458(n+4))+A312315(n)`
-/

namespace A312309.P16431250809040594284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321895 (A008458 (n + 4)).toNat + A312315 n

end

end A312309.P16431250809040594284

/-!
# A312310: Coordination sequence Gal.5.165.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312310, there is no canonical definition to state claims against.
-/

/-! ## A312310.P8753301322914997368

`A312281(n)+A001842(A088994(n))`
-/

namespace A312310.P8753301322914997368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n + A001842 (A088994 n).toNat

end

end A312310.P8753301322914997368

/-! ## A312310.P15053875731565754657

`A312287(n)+A118135(A245980(n))`
-/

namespace A312310.P15053875731565754657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312287 n + A118135 (A245980 n).toNat

end

end A312310.P15053875731565754657

/-! ## A312310.P11776895845825405834

`A310841(n)+A118135(A105505(n+1))`
-/

namespace A312310.P11776895845825405834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310841 n + A118135 (A105505 (n + 1)).toNat

end

end A312310.P11776895845825405834

/-! ## A312310.P8180883394027072847

`xor(A001221(A147346(n+1)), A312362(n))`
-/

namespace A312310.P8180883394027072847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A147346 (n + 1)).toNat) (A312362 n)

end

end A312310.P8180883394027072847

/-! ## A312310.P9700719510820301318

`xor(A001221(A147346(n+1)), A312363(n))`
-/

namespace A312310.P9700719510820301318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A147346 (n + 1)).toNat) (A312363 n)

end

end A312310.P9700719510820301318

/-!
# A312311: Coordination sequence Gal.5.106.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312311, there is no canonical definition to state claims against.
-/

/-! ## A312311.P10309906251118663264

`A312317(n)-A124761(A126120(n))`
-/

namespace A312311.P10309906251118663264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A124761 (A126120 n).toNat

end

end A312311.P10309906251118663264

/-! ## A312311.P2158157219925861355

`A310882(n)+A055641(A027437(n))-char[6]`
-/

namespace A312311.P2158157219925861355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A055641 (A027437 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312311.P2158157219925861355

/-! ## A312311.P13051956934800641659

`A310882(n)+A151933(A218952(n))-char[6]`
-/

namespace A312311.P13051956934800641659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A151933 (A218952 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312311.P13051956934800641659

/-! ## A312311.P7862113519246384047

`A310882(n)+A106222(A065726(n+1))-char[6]`
-/

namespace A312311.P7862113519246384047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A106222 (A065726 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312311.P7862113519246384047

/-!
# A312312: Coordination sequence Gal.6.397.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312312, there is no canonical definition to state claims against.
-/

/-! ## A312312.P8858150576028945197

`A312313(n)-A176723(A312333(2*n+3))`
-/

namespace A312312.P8858150576028945197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312313 n - A176723 (A312333 (2 * n + 3)).toNat

end

end A312312.P8858150576028945197

/-! ## A312312.P18091979925740751068

`A312313(n)-A011672(A294695(n))`
-/

namespace A312312.P18091979925740751068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312313 n - A011672 (A294695 n).toNat

end

end A312312.P18091979925740751068

/-! ## A312312.P9712811023619068348

`A312313(n)-A011672(A294707(n))`
-/

namespace A312312.P9712811023619068348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312313 n - A011672 (A294707 n).toNat

end

end A312312.P9712811023619068348

/-! ## A312312.P6180661007786901810

`A312313(n)-A025456(A002137(n))`
-/

namespace A312312.P6180661007786901810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312313 n - A025456 (A002137 n).toNat

end

end A312312.P6180661007786901810

/-!
# A312313: Coordination sequence Gal.6.163.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312313, there is no canonical definition to state claims against.
-/

/-! ## A312313.P2235389075946056973

`A312312(n)+A011672(A294695(n))`
-/

namespace A312313.P2235389075946056973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312312 n + A011672 (A294695 n).toNat

end

end A312313.P2235389075946056973

/-! ## A312313.P16781270942966635507

`A312312(n)+A011672(A294707(n))`
-/

namespace A312313.P16781270942966635507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312312 n + A011672 (A294707 n).toNat

end

end A312313.P16781270942966635507

/-! ## A312313.P11460919429235682026

`or(A079559(A174707(n+5)), A312312(n))`
-/

namespace A312313.P11460919429235682026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079559 (A174707 (n + 5)).toNat) (A312312 n)

end

end A312313.P11460919429235682026

/-! ## A312313.P14475429318562539418

`A335520(A312341(2*(n+1)))+A312312(n)`
-/

namespace A312313.P14475429318562539418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (A312341 (2 * (n + 1))).toNat + A312312 n

end

end A312313.P14475429318562539418

/-!
# A312314: Coordination sequence Gal.5.61.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312314, there is no canonical definition to state claims against.
-/

/-! ## A312314.P138713272689257265

`A310880(n)-A010815(A000740(n+3))`
-/

namespace A312314.P138713272689257265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310880 n - A010815 (A000740 (n + 3)).toNat

end

end A312314.P138713272689257265

/-! ## A312314.P12015135891036647914

`A312317(n)-A045698(A082730(n))`
-/

namespace A312314.P12015135891036647914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A045698 (A082730 n).toNat

end

end A312314.P12015135891036647914

/-! ## A312314.P17892272506134949658

`A312317(n)-A188371(A083404(n))`
-/

namespace A312314.P17892272506134949658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A188371 (A083404 n).toNat

end

end A312314.P17892272506134949658

/-! ## A312314.P14719548525831636044

`A312317(n)-A167688(A167710(n))`
-/

namespace A312314.P14719548525831636044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A167688 (A167710 n).toNat

end

end A312314.P14719548525831636044

/-! ## A312314.P15196259850807301534

`A312317(n)-A185293(A185285(n))`
-/

namespace A312314.P15196259850807301534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A185293 (A185285 n).toNat

end

end A312314.P15196259850807301534

/-!
# A312315: Coordination sequence Gal.6.227.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312315, there is no canonical definition to state claims against.
-/

/-! ## A312315.P7485192815696667134

`A312317(n)-A341758(A002881(n+1))`
-/

namespace A312315.P7485192815696667134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A341758 (A002881 (n + 1)).toNat

end

end A312315.P7485192815696667134

/-! ## A312315.P8316962807973935029

`A312317(n)-A055641(A124302(n))`
-/

namespace A312315.P8316962807973935029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A055641 (A124302 n).toNat

end

end A312315.P8316962807973935029

/-! ## A312315.P10845365862483229356

`A312317(n)-A107846(A255630(n))`
-/

namespace A312315.P10845365862483229356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A107846 (A255630 n).toNat

end

end A312315.P10845365862483229356

/-! ## A312315.P6823311267634684193

`A312317(n)-A250002(A166590(n+1))`
-/

namespace A312315.P6823311267634684193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A250002 (A166590 (n + 1)).toNat

end

end A312315.P6823311267634684193

/-! ## A312315.P15260760326333964302

`A312317(n)-A341540(A211490(n+1))`
-/

namespace A312315.P15260760326333964302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n - A341540 (A211490 (n + 1)).toNat

end

end A312315.P15260760326333964302

/-!
# A312316: Coordination sequence Gal.6.126.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312316, there is no canonical definition to state claims against.
-/

/-! ## A312316.P15275841721225637211

`A310878(n)+A034876(A000244(n))`
-/

namespace A312316.P15275841721225637211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n + A034876 (A000244 n).toNat

end

end A312316.P15275841721225637211

/-! ## A312316.P8418255768827141671

`A310878(n)+A185012(A001519(n))`
-/

namespace A312316.P8418255768827141671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n + A185012 (A001519 n).toNat

end

end A312316.P8418255768827141671

/-! ## A312316.P4220511264974385449

`A310878(n)+A185012(A001654(n))`
-/

namespace A312316.P4220511264974385449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310878 n + A185012 (A001654 n).toNat

end

end A312316.P4220511264974385449

/-! ## A312316.P6112298465061982480

`A312318(n)-A102681(A001654(n))`
-/

namespace A312316.P6112298465061982480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312318 n - A102681 (A001654 n).toNat

end

end A312316.P6112298465061982480

/-! ## A312316.P8547781006934684873

`A355911(A272044(n+1))`
-/

namespace A312316.P8547781006934684873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A272044 (n + 1)).toNat

end

end A312316.P8547781006934684873

/-!
# A312317: Coordination sequence Gal.6.122.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312317, there is no canonical definition to state claims against.
-/

/-! ## A312317.P11942321288477086892

`A310882(n)+A055641(A027437(n))`
-/

namespace A312317.P11942321288477086892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A055641 (A027437 n).toNat

end

end A312317.P11942321288477086892

/-! ## A312317.P9038520119463155431

`A312311(n)+A124761(A126120(n))`
-/

namespace A312317.P9038520119463155431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312311 n + A124761 (A126120 n).toNat

end

end A312317.P9038520119463155431

/-! ## A312317.P5484783657152552636

`A310882(n)+A151933(A218952(n))`
-/

namespace A312317.P5484783657152552636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A151933 (A218952 n).toNat

end

end A312317.P5484783657152552636

/-! ## A312317.P6396303469785007467

`A310882(n)+A106222(A065726(n+1))`
-/

namespace A312317.P6396303469785007467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 n + A106222 (A065726 (n + 1)).toNat

end

end A312317.P6396303469785007467

/-! ## A312317.P763899985609147342

`A312318(A087051(n))`
-/

namespace A312317.P763899985609147342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312318 (A087051 n).toNat

end

end A312317.P763899985609147342

/-!
# A312318: Coordination sequence Gal.6.223.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312318, there is no canonical definition to state claims against.
-/

/-! ## A312318.P11641555300579490825

`A310883(n)+A034876(A000244(n))`
-/

namespace A312318.P11641555300579490825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310883 n + A034876 (A000244 n).toNat

end

end A312318.P11641555300579490825

/-! ## A312318.P7013204782273293582

`A312316(n)+A102681(A001654(n))`
-/

namespace A312318.P7013204782273293582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312316 n + A102681 (A001654 n).toNat

end

end A312318.P7013204782273293582

/-! ## A312318.P15784921244799350106

`A312309(A025468(A082730(n))+n)`
-/

namespace A312318.P15784921244799350106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312309 (A025468 (A082730 n).toNat + (n : ℤ)).toNat

end

end A312318.P15784921244799350106

/-! ## A312318.P17618040785180778901

`A312317(n)+A010894(A359683(n))`
-/

namespace A312318.P17618040785180778901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n + A010894 ((A359683 n).toNat + 21)

end

end A312318.P17618040785180778901

/-!
# A312319: Coordination sequence Gal.5.57.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312319, there is no canonical definition to state claims against.
-/

/-! ## A312319.P13724590489219758361

`record[A294186(n+1)]+A312315(n)-n`
-/

namespace A312319.P13724590489219758361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A312315 n - (n : ℤ))

end

end A312319.P13724590489219758361

/-! ## A312319.P7874292539032086484

`A312282(n)+A022882(A100475(n))`
-/

namespace A312319.P7874292539032086484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312282 n + A022882 (A100475 n).toNat

end

end A312319.P7874292539032086484

/-!
# A312320: Coordination sequence Gal.5.102.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312320, there is no canonical definition to state claims against.
-/

/-! ## A312320.P8002670487183513272

`A310871(n)+A071906(A261235(n))`
-/

namespace A312320.P8002670487183513272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310871 n + A071906 (A261235 n).toNat

end

end A312320.P8002670487183513272

/-! ## A312320.P11925868586217192743

`A312315(n)+A185237((3-n)²)`
-/

namespace A312320.P11925868586217192743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312315 n + A185237 ((3 - (n : ℤ)) ^ 2).toNat

end

end A312320.P11925868586217192743

/-! ## A312320.P15677764839790484370

`A311754(n)+A064911(A000142(n))`
-/

namespace A312320.P15677764839790484370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311754 n + A064911 (A000142 n).toNat

end

end A312320.P15677764839790484370

/-! ## A312320.P8121218414361402837

`A310816(n)+A008683(A242167(n))`
-/

namespace A312320.P8121218414361402837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310816 n + A008683 (A242167 (n + 10)).toNat

end

end A312320.P8121218414361402837

/-! ## A312320.P9258080989852410289

`A028310(A312315(n)+A185237(3*n+1))`
-/

namespace A312320.P9258080989852410289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A312315 n + A185237 (3 * n + 1)).toNat

end

end A312320.P9258080989852410289

/-!
# A312321: Coordination sequence Gal.4.45.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312321, there is no canonical definition to state claims against.
-/

/-! ## A312321.P8038074921804646047

`A312335(n)-A010893(A194701(n+1))`
-/

namespace A312321.P8038074921804646047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312335 n - A010893 ((A194701 (n + 1)).toNat + 13)

end

end A312321.P8038074921804646047

/-! ## A312321.P6781444884404618866

`A312335(n)-A010893(A312335(n+1))`
-/

namespace A312321.P6781444884404618866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312335 n - A010893 ((A312335 (n + 1)).toNat + 13)

end

end A312321.P6781444884404618866

/-!
# A312322: Coordination sequence Gal.6.432.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312322, there is no canonical definition to state claims against.
-/

/-! ## A312322.P3685134602489175853

`A157477(A348231(n))`
-/

namespace A312322.P3685134602489175853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157477 (A348231 n).toNat

end

end A312322.P3685134602489175853

/-! ## A312322.P2511570943934708326

`A000005(A164908(n))+and(6, n^3)`
-/

namespace A312322.P2511570943934708326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A164908 n).toNat + (Nat.land 6 (n ^ 3) : ℤ)

end

end A312322.P2511570943934708326

/-! ## A312322.P16991177150507795591

`A348231(n)/A280560(∑[2^n]+3^n-2)`
-/

namespace A312322.P16991177150507795591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348231 n : ℚ) / (A280560 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((3 ^ n : ℤ) - 2)).toNat : ℚ)

end

end A312322.P16991177150507795591

/-! ## A312322.P9034977985887077300

`A048881(A005212(n))+A008574(n)`
-/

namespace A312322.P9034977985887077300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A005212 n).toNat + A008574 n

end

end A312322.P9034977985887077300

/-!
# A312324: Coordination sequence Gal.6.270.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312324, there is no canonical definition to state claims against.
-/

/-! ## A312324.P14781874987693337849

`(A312333(n)+A312292(n))/2`
-/

namespace A312324.P14781874987693337849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312333 n + A312292 n : ℚ) / 2

end

end A312324.P14781874987693337849

/-! ## A312324.P2118572315159482761

`A004525(A312333(n)+A312292(n))`
-/

namespace A312324.P2118572315159482761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312333 n + A312292 n).toNat

end

end A312324.P2118572315159482761

/-! ## A312324.P14319829125531349851

`A025480(A312333(n)+A312292(n))`
-/

namespace A312324.P14319829125531349851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312333 n + A312292 n).toNat

end

end A312324.P14319829125531349851

/-! ## A312324.P18248016534479263844

`A026741(A312333(n)+A312292(n))`
-/

namespace A312324.P18248016534479263844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312333 n + A312292 n).toNat

end

end A312324.P18248016534479263844

/-! ## A312324.P1334804436582023089

`A029578(A312333(n)+A312292(n))`
-/

namespace A312324.P1334804436582023089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A312333 n + A312292 n).toNat

end

end A312324.P1334804436582023089

/-! ## A312324.P15182753005532812189

`A032742(A312333(n)+A312292(n))`
-/

namespace A312324.P15182753005532812189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A312333 n + A312292 n).toNat

end

end A312324.P15182753005532812189

/-! ## A312324.P10006245180769681160

`A078898(A312333(n)+A312292(n))`
-/

namespace A312324.P10006245180769681160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A312333 n + A312292 n).toNat

end

end A312324.P10006245180769681160

/-! ## A312324.P3369759993029959681

`A110654(A312333(n)+A312292(n))`
-/

namespace A312324.P3369759993029959681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A312333 n + A312292 n).toNat

end

end A312324.P3369759993029959681

/-! ## A312324.P1903305213507618167

`A008619(A312292(n)+A312333(n)-1)`
-/

namespace A312324.P1903305213507618167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A312292 n + (A312333 n - 1)).toNat

end

end A312324.P1903305213507618167

/-! ## A312324.P14325527212303761165

`A008619(A312292(n)-(1-A312333(n)))`
-/

namespace A312324.P14325527212303761165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A312292 n - (1 - A312333 n)).toNat

end

end A312324.P14325527212303761165

/-! ## A312324.P13779847434895871761

`A110654(A312292(n)-(1-A312333(n)))`
-/

namespace A312324.P13779847434895871761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A312292 n - (1 - A312333 n)).toNat

end

end A312324.P13779847434895871761

/-! ## A312324.P11695137826081974818

`A001281(A312333(n)+A312292(n))`
-/

namespace A312324.P11695137826081974818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312333 n + A312292 n).toNat

end

end A312324.P11695137826081974818

/-! ## A312324.P2964838735301289999

`A004526(A312333(n)+A312292(n))`
-/

namespace A312324.P2964838735301289999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312333 n + A312292 n).toNat

end

end A312324.P2964838735301289999

/-!
# A312325: Coordination sequence Gal.4.65.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312325, there is no canonical definition to state claims against.
-/

/-! ## A312325.P10570438569037280221

`A137921(A007689(n))+record[lcm(2, n)]`
-/

namespace A312325.P10570438569037280221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137921 (A007689 n).toNat + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A312325.P10570438569037280221

/-! ## A312325.P4801743479497054577

`∑[A057820(A270831(3*(n+1))+1)+char[1]]`
-/

namespace A312325.P4801743479497054577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A270831 (3 * (n + 1)) + 1).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312325.P4801743479497054577

/-! ## A312325.P9023189173999892826

`A070824(A007689(n))+A008574(n)`
-/

namespace A312325.P9023189173999892826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A007689 n).toNat + A008574 n

end

end A312325.P9023189173999892826

/-! ## A312325.P8336293853086035653

`A053603(A304964(n))+A008574(n)`
-/

namespace A312325.P8336293853086035653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053603 (A304964 n).toNat + A008574 n

end

end A312325.P8336293853086035653

/-! ## A312325.P15654546884947506945

`A312289(n)+A070635(A048855(n))`
-/

namespace A312325.P15654546884947506945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A070635 (A048855 n).toNat

end

end A312325.P15654546884947506945

/-!
# A312326: Coordination sequence Gal.6.298.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312326, there is no canonical definition to state claims against.
-/

/-! ## A312326.P2181249929606022776

`(A312335(n)+A312302(n))/2`
-/

namespace A312326.P2181249929606022776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312335 n + A312302 n : ℚ) / 2

end

end A312326.P2181249929606022776

/-! ## A312326.P10567717408842412602

`A175126(A312335(n)+A312302(n))`
-/

namespace A312326.P10567717408842412602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A312335 n + A312302 n).toNat

end

end A312326.P10567717408842412602

/-! ## A312326.P4026417162460446954

`A004525(A312335(n)+A312302(n))`
-/

namespace A312326.P4026417162460446954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312335 n + A312302 n).toNat

end

end A312326.P4026417162460446954

/-! ## A312326.P3991688168932219933

`A004526(A312335(n)+A312302(n))`
-/

namespace A312326.P3991688168932219933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312335 n + A312302 n).toNat

end

end A312326.P3991688168932219933

/-! ## A312326.P294620472695087965

`A026741(A312335(n)+A312302(n))`
-/

namespace A312326.P294620472695087965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312335 n + A312302 n).toNat

end

end A312326.P294620472695087965

/-! ## A312326.P8157238708433355043

`A032742(A312335(n)+A312302(n))`
-/

namespace A312326.P8157238708433355043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A312335 n + A312302 n).toNat

end

end A312326.P8157238708433355043

/-! ## A312326.P13250692498590105395

`A065033(A312335(n)+A312302(n))`
-/

namespace A312326.P13250692498590105395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312335 n + A312302 n).toNat

end

end A312326.P13250692498590105395

/-! ## A312326.P5146555220689019675

`A110654(A312335(n)+A312302(n))`
-/

namespace A312326.P5146555220689019675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A312335 n + A312302 n).toNat

end

end A312326.P5146555220689019675

/-! ## A312326.P8874405011004017185

`A000463(A312302(n)+A312335(n)-1)`
-/

namespace A312326.P8874405011004017185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A312302 n + (A312335 n - 1)).toNat

end

end A312326.P8874405011004017185

/-! ## A312326.P15429283593660123277

`A000463(A312302(n)-(1-A312335(n)))`
-/

namespace A312326.P15429283593660123277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A312302 n - (1 - A312335 n)).toNat

end

end A312326.P15429283593660123277

/-! ## A312326.P13249408313409840048

`A065033(A312302(n)-(1-A312335(n)))`
-/

namespace A312326.P13249408313409840048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312302 n - (1 - A312335 n)).toNat

end

end A312326.P13249408313409840048

/-! ## A312326.P230242504398883879

`A110654(A312302(n)-(1-A312335(n)))`
-/

namespace A312326.P230242504398883879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A312302 n - (1 - A312335 n)).toNat

end

end A312326.P230242504398883879

/-! ## A312326.P7761803211666739522

`A002265(2*(A312335(n)+A312302(n)))`
-/

namespace A312326.P7761803211666739522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A312335 n + A312302 n)).toNat

end

end A312326.P7761803211666739522

/-!
# A312327: Coordination sequence Gal.6.27.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312327, there is no canonical definition to state claims against.
-/

/-! ## A312327.P4706391246584524196

`A008706(n)-A001222(A059195(n+1))`
-/

namespace A312327.P4706391246584524196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001222 (A059195 (n + 1)).toNat

end

end A312327.P4706391246584524196

/-! ## A312327.P14322629649946301439

`A311746(n)+A068933(A074048(n))`
-/

namespace A312327.P14322629649946301439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311746 n + A068933 (A074048 n).toNat

end

end A312327.P14322629649946301439

/-! ## A312327.P11152387216578395565

`A328828(A219263(n))+A008574(n)`
-/

namespace A312327.P11152387216578395565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328828 (A219263 n).toNat + A008574 n

end

end A312327.P11152387216578395565

/-! ## A312327.P16144512942650559815

`A325184(A183944(n+1))+3*n+A325184(A112987(n))+n`
-/

namespace A312327.P16144512942650559815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (A183944 (n + 1)).toNat + ((3 * n : ℤ) + (A325184 (A112987 n).toNat + (n : ℤ)))

end

end A312327.P16144512942650559815

/-!
# A312328: Coordination sequence Gal.6.257.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312328, there is no canonical definition to state claims against.
-/

/-! ## A312328.P12688789506530401609

`A313009(n)+A056594(A151417(n))`
-/

namespace A312328.P12688789506530401609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313009 n + A056594 (A151417 n).toNat

end

end A312328.P12688789506530401609

/-! ## A312328.P6276990520867554633

`and(A133705(A314726(n)), A312555(n))`
-/

namespace A312328.P6276990520867554633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133705 (A314726 n).toNat) (A312555 n)

end

end A312328.P6276990520867554633

/-! ## A312328.P14516890754386335700

`A152455(A139550(2*(n+2)))+2*n`
-/

namespace A312328.P14516890754386335700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152455 (A139550 (2 * (n + 2))).toNat + (2 * n : ℤ)

end

end A312328.P14516890754386335700

/-! ## A312328.P11708609938239813959

`A313886(n)-A001222(A054091(n))`
-/

namespace A312328.P11708609938239813959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313886 n - A001222 (A054091 n).toNat

end

end A312328.P11708609938239813959

/-!
# A312330: Coordination sequence Gal.5.170.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312330, there is no canonical definition to state claims against.
-/

/-! ## A312330.P14334631585003015194

`A328772(A053147(n+1))+2*n`
-/

namespace A312330.P14334631585003015194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 (A053147 (n + 1)).toNat + (2 * n : ℤ)

end

end A312330.P14334631585003015194

/-!
# A312332: Coordination sequence Gal.6.284.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312332, there is no canonical definition to state claims against.
-/

/-! ## A312332.P6771316615746947792

`A312276(n)+A033716(A041974(n))`
-/

namespace A312332.P6771316615746947792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312276 n + A033716 (A041974 n).toNat

end

end A312332.P6771316615746947792

/-! ## A312332.P9327311089754834226

`A312333(n)-A055641(A317652(n))`
-/

namespace A312332.P9327311089754834226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312333 n - A055641 (A317652 n).toNat

end

end A312332.P9327311089754834226

/-! ## A312332.P14983428192420650981

`A360677(A379307(n+1))+A312274(n)`
-/

namespace A312332.P14983428192420650981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360677 (A379307 (n + 1)).toNat + A312274 n

end

end A312332.P14983428192420650981

/-! ## A312332.P16026595304289389997

`A312333(n)-A185034(A185023(n+1))`
-/

namespace A312332.P16026595304289389997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312333 n - A185034 (A185023 (n + 1)).toNat

end

end A312332.P16026595304289389997

/-!
# A312333: Coordination sequence Gal.6.270.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312333, there is no canonical definition to state claims against.
-/

/-! ## A312333.P7278524436614472067

`2*A312324(n)-A312292(n)`
-/

namespace A312333.P7278524436614472067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312324 n - A312292 n

end

end A312333.P7278524436614472067

/-! ## A312333.P5973552027921731489

`A005843(A312324(n))-A312292(n)`
-/

namespace A312333.P5973552027921731489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312324 n).toNat - A312292 n

end

end A312333.P5973552027921731489

/-! ## A312333.P14427766685655430363

`A312317(n)+A063725(A071724(n))`
-/

namespace A312333.P14427766685655430363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n + A063725 (A071724 n).toNat

end

end A312333.P14427766685655430363

/-! ## A312333.P849906995254178372

`A312317(n)+A063725(A148947(n))`
-/

namespace A312333.P849906995254178372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 n + A063725 (A148947 n).toNat

end

end A312333.P849906995254178372

/-! ## A312333.P5355491354419488506

`A312332(n)+A055641(A317652(n))`
-/

namespace A312333.P5355491354419488506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312332 n + A055641 (A317652 n).toNat

end

end A312333.P5355491354419488506

/-!
# A312335: Coordination sequence Gal.6.163.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312335, there is no canonical definition to state claims against.
-/

/-! ## A312335.P2233347001362554387

`2*A312326(n)-A312302(n)`
-/

namespace A312335.P2233347001362554387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312326 n - A312302 n

end

end A312335.P2233347001362554387

/-! ## A312335.P887730532243325804

`A005843(A312326(n))-A312302(n)`
-/

namespace A312335.P887730532243325804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312326 n).toNat - A312302 n

end

end A312335.P887730532243325804

/-! ## A312335.P6284360895409420152

`A312321(n)+A010893(A194701(n+1))`
-/

namespace A312335.P6284360895409420152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312321 n + A010893 ((A194701 (n + 1)).toNat + 13)

end

end A312335.P6284360895409420152

/-!
# A312337: Coordination sequence Gal.6.433.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312337, there is no canonical definition to state claims against.
-/

/-! ## A312337.P581887285366542383

`A326029(A079435(n+1))+A165197(n+1)`
-/

namespace A312337.P581887285366542383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326029 (A079435 (n + 1)).toNat + A165197 (n + 1)

end

end A312337.P581887285366542383

/-!
# A312339: Coordination sequence Gal.6.376.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312339, there is no canonical definition to state claims against.
-/

/-! ## A312339.P9562406177145141652

`A312475(A087051(n))-4%A076112(n+1)`
-/

namespace A312339.P9562406177145141652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 (A087051 n).toNat - Int.tmod 4 (A076112 (n + 1))

end

end A312339.P9562406177145141652

/-! ## A312339.P12590681210319249882

`record[A187600(2*n+3)%A187579(n+1)]`
-/

namespace A312339.P12590681210319249882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187600 (2 * n + 3)) (A187579 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312339.P12590681210319249882

/-! ## A312339.P12035223252354619915

`eq[A001055(n+5), A027750(A219595(n+1))]`
-/

namespace A312339.P12035223252354619915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A219595 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312339.P12035223252354619915

/-! ## A312339.P12212827090316461488

`A189224(2*n+3)-A001285(A255585(2*(n+2)))`
-/

namespace A312339.P12212827090316461488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189224 (2 * n + 3) - A001285 (A255585 (2 * (n + 2))).toNat

end

end A312339.P12212827090316461488

/-!
# A312340: Coordination sequence Gal.6.286.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312340, there is no canonical definition to state claims against.
-/

/-! ## A312340.P5577328655819545832

`round(A311378(2*n)/2)`
-/

namespace A312340.P5577328655819545832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A311378 (2 * n) : ℚ) / 2)

end

end A312340.P5577328655819545832

/-! ## A312340.P7736303704019056912

`A311378(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A312340.P7736303704019056912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311378 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A312340.P7736303704019056912

/-! ## A312340.P8667479398877491238

`A311378(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A312340.P8667479398877491238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311378 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A312340.P8667479398877491238

/-! ## A312340.P6453927307244451266

`A311378(2*n)/A000034(A004273(n))`
-/

namespace A312340.P6453927307244451266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311378 (2 * n) : ℚ) / (A000034 (A004273 n).toNat : ℚ)

end

end A312340.P6453927307244451266

/-! ## A312340.P6896181000878885140

`A004525(A311378(2*n))`
-/

namespace A312340.P6896181000878885140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311378 (2 * n)).toNat

end

end A312340.P6896181000878885140

/-! ## A312340.P432932422938698005

`A110654(A311378(n+n))`
-/

namespace A312340.P432932422938698005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A311378 (n + n)).toNat

end

end A312340.P432932422938698005

/-! ## A312340.P10077650141971430813

`A004526(A311378(2*n)+1)`
-/

namespace A312340.P10077650141971430813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311378 (2 * n) + 1).toNat

end

end A312340.P10077650141971430813

/-!
# A312341: Coordination sequence Gal.5.173.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312341, there is no canonical definition to state claims against.
-/

/-! ## A312341.P12767452767192837140

`A311770(n)+A102681(A028909(n))`
-/

namespace A312341.P12767452767192837140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311770 n + A102681 (A028909 n).toNat

end

end A312341.P12767452767192837140

/-! ## A312341.P8017356458637373489

`A311685(n)+A033665(A000566(n))`
-/

namespace A312341.P8017356458637373489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311685 n + A033665 (A000566 n).toNat

end

end A312341.P8017356458637373489

/-! ## A312341.P15082562598040347173

`A310216(n)+A001221(A189940(n+1))`
-/

namespace A312341.P15082562598040347173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310216 n + A001221 (A189940 (n + 1)).toNat

end

end A312341.P15082562598040347173

/-! ## A312341.P2075275080164173368

`A301301(n)+A214411(A267180(n+1))`
-/

namespace A312341.P2075275080164173368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A214411 (A267180 (n + 1)).toNat

end

end A312341.P2075275080164173368

/-! ## A312341.P11229335449369312545

`A023416(A057777(n))+A005117(2*n+1)`
-/

namespace A312341.P11229335449369312545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A057777 n).toNat + A005117 (2 * n + 1)

end

end A312341.P11229335449369312545

/-!
# A312342: Coordination sequence Gal.6.290.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312342, there is no canonical definition to state claims against.
-/

/-! ## A312342.P1961225284353006419

`A250120(n)-A355737(A212585(n))`
-/

namespace A312342.P1961225284353006419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A355737 (A212585 n).toNat

end

end A312342.P1961225284353006419

/-! ## A312342.P4740139132565068940

`A351539(A351523(n+1))+A311780(n)`
-/

namespace A312342.P4740139132565068940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (A351523 (n + 1)).toNat + A311780 n

end

end A312342.P4740139132565068940

/-! ## A312342.P10731052293899141311

`A346130(A310771(n))`
-/

namespace A312342.P10731052293899141311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A310771 n).toNat

end

end A312342.P10731052293899141311

/-! ## A312342.P4169790637112909676

`A301672(n)+A050605(A024430(n))`
-/

namespace A312342.P4169790637112909676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A050605 (A024430 n).toNat

end

end A312342.P4169790637112909676

/-! ## A312342.P4317884027502735317

`A311778(n)+A185012(A104150(n))`
-/

namespace A312342.P4317884027502735317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311778 n + A185012 (A104150 n).toNat

end

end A312342.P4317884027502735317

/-!
# A312343: Coordination sequence Gal.6.290.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312343, there is no canonical definition to state claims against.
-/

/-! ## A312343.P7651221422148971225

`A313026(n)-A055641(A045850(3*n+2))`
-/

namespace A312343.P7651221422148971225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n - A055641 (A045850 (3 * n + 2)).toNat

end

end A312343.P7651221422148971225

/-! ## A312343.P7259091697639177758

`∑[A318928(A117564(2*(n+1))-1)]`
-/

namespace A312343.P7259091697639177758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (A117564 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312343.P7259091697639177758

/-! ## A312343.P4369801632524491972

`A311691(n)+A033665(A000566(n))`
-/

namespace A312343.P4369801632524491972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311691 n + A033665 (A000566 n).toNat

end

end A312343.P4369801632524491972

/-! ## A312343.P5803514769731938544

`A346130(A310771(n))+char[6]`
-/

namespace A312343.P5803514769731938544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A310771 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312343.P5803514769731938544

/-! ## A312343.P3280119113448234525

`A311782(n)+A010051(A001349(n))`
-/

namespace A312343.P3280119113448234525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311782 n + A010051 (A001349 n).toNat

end

end A312343.P3280119113448234525

/-!
# A312344: Coordination sequence Gal.6.23.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312344, there is no canonical definition to state claims against.
-/

/-! ## A312344.P11502951924124705853

`A249870(A352827(3*n+1)-A013947(n+1))`
-/

namespace A312344.P11502951924124705853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249870 (A352827 (3 * n + 1) - A013947 (n + 1)).toNat

end

end A312344.P11502951924124705853

/-! ## A312344.P17575453023459547688

`A008579(n)-A005091(A216025(n+1))`
-/

namespace A312344.P17575453023459547688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A005091 (A216025 (n + 1)).toNat

end

end A312344.P17575453023459547688

/-!
# A312345: Coordination sequence Gal.6.181.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312345, there is no canonical definition to state claims against.
-/

/-! ## A312345.P9720140887879477999

`A312258(n)+A028940(A129455(n))`
-/

namespace A312345.P9720140887879477999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312258 n + A028940 (A129455 n).toNat

end

end A312345.P9720140887879477999

/-! ## A312345.P16542621859047600201

`∑[A182985(∑[A026519(3*(n+1))])]`
-/

namespace A312345.P16542621859047600201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026519 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182985 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312345.P16542621859047600201

/-! ## A312345.P11446883935200890174

`∑[A232927(∑[A351868(2*n+3)])]`
-/

namespace A312345.P11446883935200890174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232927 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312345.P11446883935200890174

/-! ## A312345.P2048168123682312863

`A312444(n)-A037800(A087432(n))`
-/

namespace A312345.P2048168123682312863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312444 n - A037800 (A087432 n).toNat

end

end A312345.P2048168123682312863

/-! ## A312345.P11980013394197239789

`A307831(A255127(n+4))+A008586(n)`
-/

namespace A312345.P11980013394197239789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307831 (A255127 (n + 4)).toNat + A008586 n

end

end A312345.P11980013394197239789

/-!
# A312346: Coordination sequence Gal.5.161.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312346, there is no canonical definition to state claims against.
-/

/-! ## A312346.P17122530853764507278

`A312444(n)-A329313(A242527(n+1))`
-/

namespace A312346.P17122530853764507278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312444 n - A329313 (A242527 (n + 1)).toNat

end

end A312346.P17122530853764507278

/-! ## A312346.P3346085506230279095

`A078942(A134886(n+1))`
-/

namespace A312346.P3346085506230279095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078942 (A134886 (n + 1)).toNat

end

end A312346.P3346085506230279095

/-! ## A312346.P17254042160650805654

`A311764(n)+A287790(A058102(n))`
-/

namespace A312346.P17254042160650805654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311764 n + A287790 (A058102 n).toNat

end

end A312346.P17254042160650805654

/-! ## A312346.P4544245091235903953

`A311764(n)+A025441(A350881(n))`
-/

namespace A312346.P4544245091235903953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311764 n + A025441 (A350881 n).toNat

end

end A312346.P4544245091235903953

/-! ## A312346.P9083976991276053789

`A311790(A087051(n))+char[A067332(n)]`
-/

namespace A312346.P9083976991276053789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067332 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311790 (A087051 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A312346.P9083976991276053789

/-!
# A312347: Coordination sequence Gal.6.272.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312347, there is no canonical definition to state claims against.
-/

/-! ## A312347.P15764209132096885095

`A316863(A239667(n+1))+A311153(n)`
-/

namespace A312347.P15764209132096885095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A239667 (n + 1)).toNat + A311153 n

end

end A312347.P15764209132096885095

/-! ## A312347.P1088584338347260839

`A250120(n)-A353351(A010785(∑{e}[2*4^n, #]))`
-/

namespace A312347.P1088584338347260839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A353351 (A010785 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A312347.P1088584338347260839

/-! ## A312347.P17499427096922814873

`record[A312351(n)-A059076(n)]`
-/

namespace A312347.P17499427096922814873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312351 n - A059076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312347.P17499427096922814873

/-! ## A312347.P9927808450736992158

`xor(A311206(n), A334944((n+1)²))`
-/

namespace A312347.P9927808450736992158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A311206 n) (A334944 ((n + 1) ^ 2))

end

end A312347.P9927808450736992158

/-!
# A312348: Coordination sequence Gal.6.165.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312348, there is no canonical definition to state claims against.
-/

/-! ## A312348.P9173643747644301375

`A312473(n)-A107078(A003418(n))`
-/

namespace A312348.P9173643747644301375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312473 n - A107078 (A003418 n).toNat

end

end A312348.P9173643747644301375

/-! ## A312348.P8065813216222077841

`A312480(n)-A336469(A084057(n))`
-/

namespace A312348.P8065813216222077841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312480 n - A336469 (A084057 n).toNat

end

end A312348.P8065813216222077841

/-! ## A312348.P5469796482399805273

`A088231(A060735(n+1))+4*n`
-/

namespace A312348.P5469796482399805273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088231 (A060735 (n + 1)).toNat + (4 * n : ℤ)

end

end A312348.P5469796482399805273

/-! ## A312348.P9769957379234917384

`A311427(n)+A007949(A014137(n))`
-/

namespace A312348.P9769957379234917384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311427 n + A007949 (A014137 n).toNat

end

end A312348.P9769957379234917384

/-! ## A312348.P14375019853891742104

`A311805(n)+A024360(A293854(n))`
-/

namespace A312348.P14375019853891742104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311805 n + A024360 (A293854 n).toNat

end

end A312348.P14375019853891742104

/-!
# A312349: Coordination sequence Gal.6.185.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312349, there is no canonical definition to state claims against.
-/

/-! ## A312349.P11611404406868085873

`∑[A280521(∑[A115920(n+1)])]`
-/

namespace A312349.P11611404406868085873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280521 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312349.P11611404406868085873

/-! ## A312349.P6363373353979439849

`A311764(n)+A102675(A112521(n))`
-/

namespace A312349.P6363373353979439849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311764 n + A102675 (A112521 n).toNat

end

end A312349.P6363373353979439849

/-! ## A312349.P11343549702988662851

`A312353(n)-A000999(A327506(n))`
-/

namespace A312349.P11343549702988662851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312353 n - A000999 (A327506 n).toNat

end

end A312349.P11343549702988662851

/-! ## A312349.P9283145781463405512

`A312353(n)-A000999(A346920(n))`
-/

namespace A312349.P9283145781463405512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312353 n - A000999 (A346920 n).toNat

end

end A312349.P9283145781463405512

/-! ## A312349.P5248263575802920236

`A346127(A312447(n))-n`
-/

namespace A312349.P5248263575802920236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A312447 n).toNat - (n : ℤ)

end

end A312349.P5248263575802920236

/-!
# A312350: Coordination sequence Gal.6.420.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312350, there is no canonical definition to state claims against.
-/

/-! ## A312350.P16918319818876930584

`record[A008579(n)-A309713(n)]`
-/

namespace A312350.P16918319818876930584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A309713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312350.P16918319818876930584

/-! ## A312350.P12748368888799356686

`A337599(n)+A316863(A239667(n+1))+A311153(n)`
-/

namespace A312350.P12748368888799356686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 n + (A316863 (A239667 (n + 1)).toNat + A311153 n)

end

end A312350.P12748368888799356686

/-! ## A312350.P9328238263460539280

`A312352(n)-A048622(A042483(n))`
-/

namespace A312350.P9328238263460539280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312352 n - A048622 (A042483 n).toNat

end

end A312350.P9328238263460539280

/-! ## A312350.P17791523160991991641

`A312422(n)-A056563(A056570(n))`
-/

namespace A312350.P17791523160991991641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312422 n - A056563 (A056570 n).toNat

end

end A312350.P17791523160991991641

/-! ## A312350.P16291198842829243838

`A312360(n)-A083894(A149337(n))`
-/

namespace A312350.P16291198842829243838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312360 n - A083894 (A149337 n).toNat

end

end A312350.P16291198842829243838

/-!
# A312351: Coordination sequence Gal.6.188.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312351, there is no canonical definition to state claims against.
-/

/-! ## A312351.P8811074422981940011

`A310307(n)-A008683(A260498(n+1))`
-/

namespace A312351.P8811074422981940011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310307 n - A008683 (A260498 (n + 1)).toNat

end

end A312351.P8811074422981940011

/-! ## A312351.P4957164697917672966

`A365808(n+1)+A000120(A006542(n+4))`
-/

namespace A312351.P4957164697917672966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365808 (n + 1) + A000120 (A006542 (n + 4)).toNat

end

end A312351.P4957164697917672966

/-! ## A312351.P10237326030739124052

`A059076(n)+xor(A311206(n), A334944((n+1)²))`
-/

namespace A312351.P10237326030739124052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059076 n + Int.xor (A311206 n) (A334944 ((n + 1) ^ 2))

end

end A312351.P10237326030739124052

/-!
# A312352: Coordination sequence Gal.6.169.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312352, there is no canonical definition to state claims against.
-/

/-! ## A312352.P9480641532882895849

`A313692(n)-A001221(A150036(n))`
-/

namespace A312352.P9480641532882895849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313692 n - A001221 (A150036 n).toNat

end

end A312352.P9480641532882895849

/-! ## A312352.P12051640760307192355

`A250120(n)-A001221(A328296(n))`
-/

namespace A312352.P12051640760307192355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A328296 n).toNat

end

end A312352.P12051640760307192355

/-! ## A312352.P2463094017720558029

`or(A257994(A212323(n)), A311228(n))`
-/

namespace A312352.P2463094017720558029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257994 (A212323 n).toNat) (A311228 n)

end

end A312352.P2463094017720558029

/-! ## A312352.P1657435009589745091

`A311772(n)+A102675(A343937(n+1))`
-/

namespace A312352.P1657435009589745091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311772 n + A102675 (A343937 (n + 1)).toNat

end

end A312352.P1657435009589745091

/-! ## A312352.P11139437718726881541

`A250120(n)-A296139(A057468(n+1))`
-/

namespace A312352.P11139437718726881541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A296139 (A057468 (n + 1)).toNat

end

end A312352.P11139437718726881541

/-!
# A312353: Coordination sequence Gal.6.276.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312353, there is no canonical definition to state claims against.
-/

/-! ## A312353.P14097919557373021084

`A312426(n)+A232629(A028338(n))`
-/

namespace A312353.P14097919557373021084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312426 n + A232629 (A028338 n).toNat

end

end A312353.P14097919557373021084

/-! ## A312353.P15066328842439145658

`A250120(n)-A338652(A056698(n+1))`
-/

namespace A312353.P15066328842439145658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A338652 (A056698 (n + 1)).toNat

end

end A312353.P15066328842439145658

/-! ## A312353.P7077882054962608996

`A339213(n+1)+record[A117168(n+1)]`
-/

namespace A312353.P7077882054962608996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339213 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312353.P7077882054962608996

/-! ## A312353.P4583410073337902789

`A311860(n)+A086010(A013013(n))`
-/

namespace A312353.P4583410073337902789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311860 n + A086010 (A013013 n).toNat

end

end A312353.P4583410073337902789

/-! ## A312353.P4679059997290820045

`A312933(n)+A016331(A311651(n))`
-/

namespace A312353.P4679059997290820045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A016331 (A311651 n).toNat

end

end A312353.P4679059997290820045

/-!
# A312354: Coordination sequence Gal.6.291.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312354, there is no canonical definition to state claims against.
-/

/-! ## A312354.P12589638973471411920

`∑[A272314(∑[A084020(2*(n+1))])]`
-/

namespace A312354.P12589638973471411920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084020 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272314 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312354.P12589638973471411920

/-! ## A312354.P11575724558629521427

`A311868(n)+A016389(A018168(n))`
-/

namespace A312354.P11575724558629521427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311868 n + A016389 (A018168 n).toNat

end

end A312354.P11575724558629521427

/-! ## A312354.P15445439620373836648

`A311818(n)+A244415(A001764(n))`
-/

namespace A312354.P15445439620373836648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311818 n + A244415 (A001764 n).toNat

end

end A312354.P15445439620373836648

/-! ## A312354.P17477513562253558887

`A008706(n)-A001222(A150992(n))`
-/

namespace A312354.P17477513562253558887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001222 (A150992 n).toNat

end

end A312354.P17477513562253558887

/-! ## A312354.P9281969335090692032

`A016861(n)-A336695(A304824(n))`
-/

namespace A312354.P9281969335090692032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A336695 (A304824 n).toNat

end

end A312354.P9281969335090692032

/-!
# A312355: Coordination sequence Gal.5.164.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312355, there is no canonical definition to state claims against.
-/

/-! ## A312355.P4481642114935607209

`A353672(A023143(n+1))+A311703(n)`
-/

namespace A312355.P4481642114935607209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353672 (A023143 (n + 1)).toNat + A311703 n

end

end A312355.P4481642114935607209

/-! ## A312355.P4395010137706309655

`A085516(A311711(n))+A057354(n)`
-/

namespace A312355.P4395010137706309655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A311711 n).toNat + A057354 n

end

end A312355.P4395010137706309655

/-! ## A312355.P6366485992796717463

`A312106(n)+A131531(A061130(n))`
-/

namespace A312355.P6366485992796717463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312106 n + A131531 (A061130 n).toNat

end

end A312355.P6366485992796717463

/-! ## A312355.P9703210777637826512

`A250120(n)-A065339(A189713(n))`
-/

namespace A312355.P9703210777637826512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A065339 (A189713 n).toNat

end

end A312355.P9703210777637826512

/-!
# A312356: Coordination sequence Gal.6.429.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312356, there is no canonical definition to state claims against.
-/

/-! ## A312356.P14775409971085328890

`A347440(A111418(n))+A311842(n)`
-/

namespace A312356.P14775409971085328890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A111418 n).toNat + A311842 n

end

end A312356.P14775409971085328890

/-! ## A312356.P15071925350845711304

`A347440(A111418(n))+A311843(n)`
-/

namespace A312356.P15071925350845711304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A111418 n).toNat + A311843 n

end

end A312356.P15071925350845711304

/-! ## A312356.P5434109920330587290

`A347440(A111418(n))+A311846(n)`
-/

namespace A312356.P5434109920330587290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A111418 n).toNat + A311846 n

end

end A312356.P5434109920330587290

/-! ## A312356.P4949579254893259235

`A325873(A140303(n))+A311842(n)`
-/

namespace A312356.P4949579254893259235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325873 (A140303 n).toNat + A311842 n

end

end A312356.P4949579254893259235

/-! ## A312356.P13579270138382616914

`A325873(A140303(n))+A311843(n)`
-/

namespace A312356.P13579270138382616914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325873 (A140303 n).toNat + A311843 n

end

end A312356.P13579270138382616914

/-!
# A312357: Coordination sequence Gal.6.423.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312357, there is no canonical definition to state claims against.
-/

/-! ## A312357.P3854984622125068943

`A312353(n)+A278478(A203407(n+1))`
-/

namespace A312357.P3854984622125068943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312353 n + A278478 (A203407 (n + 1)).toNat

end

end A312357.P3854984622125068943

/-! ## A312357.P2705412393997899664

`A311884(n)+A101688(A120305(n))`
-/

namespace A312357.P2705412393997899664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311884 n + A101688 (A120305 n).toNat

end

end A312357.P2705412393997899664

/-! ## A312357.P14264104561343573846

`A301293(n)+A074290(A214761(n))`
-/

namespace A312357.P14264104561343573846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A074290 (A214761 n).toNat

end

end A312357.P14264104561343573846

/-! ## A312357.P15695517938573875746

`A311890(n)+A185012(A096647(n))`
-/

namespace A312357.P15695517938573875746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311890 n + A185012 (A096647 n).toNat

end

end A312357.P15695517938573875746

/-! ## A312357.P4265863115197529073

`A311851(n)+A007814(A283314(n))`
-/

namespace A312357.P4265863115197529073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311851 n + A007814 (A283314 n).toNat

end

end A312357.P4265863115197529073

/-!
# A312358: Coordination sequence Gal.4.119.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312358, there is no canonical definition to state claims against.
-/

/-! ## A312358.P16742670289414744922

`A311710(n)+A083025(A018020(n))`
-/

namespace A312358.P16742670289414744922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311710 n + A083025 (A018020 n).toNat

end

end A312358.P16742670289414744922

/-! ## A312358.P11413213557025470911

`A311896(A087051(n))+char[3]`
-/

namespace A312358.P11413213557025470911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311896 (A087051 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312358.P11413213557025470911

/-! ## A312358.P12072460304047725400

`A311896(A227549(n+1))+char[3]`
-/

namespace A312358.P12072460304047725400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311896 (A227549 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312358.P12072460304047725400

/-! ## A312358.P18048383061832824730

`A311895(n)+A025441(A000108(n))`
-/

namespace A312358.P18048383061832824730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311895 n + A025441 (A000108 n).toNat

end

end A312358.P18048383061832824730

/-! ## A312358.P2394218633671154706

`A311896(n)+A025441(A000108(n))`
-/

namespace A312358.P2394218633671154706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311896 n + A025441 (A000108 n).toNat

end

end A312358.P2394218633671154706

/-!
# A312359: Coordination sequence Gal.5.175.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312359, there is no canonical definition to state claims against.
-/

/-! ## A312359.P10015568984481197892

`A312555(n)-A046929(A001256(n))`
-/

namespace A312359.P10015568984481197892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n - A046929 (A001256 n).toNat

end

end A312359.P10015568984481197892

/-!
# A312360: Coordination sequence Gal.6.528.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312360, there is no canonical definition to state claims against.
-/

/-! ## A312360.P7863240615647265889

`A311463(n)+A033665(A191706(n+1))`
-/

namespace A312360.P7863240615647265889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311463 n + A033665 (A191706 (n + 1)).toNat

end

end A312360.P7863240615647265889

/-! ## A312360.P9408803600028788477

`A310779(n)+A001221(A005651(n))`
-/

namespace A312360.P9408803600028788477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310779 n + A001221 (A005651 n).toNat

end

end A312360.P9408803600028788477

/-! ## A312360.P8677433484450977484

`A311701(n)+A086016(A000245(n))`
-/

namespace A312360.P8677433484450977484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311701 n + A086016 (A000245 n).toNat

end

end A312360.P8677433484450977484

/-! ## A312360.P86976747168255020

`A008579(n)-A180160(A001040(n))`
-/

namespace A312360.P86976747168255020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A180160 (A001040 n).toNat

end

end A312360.P86976747168255020

/-! ## A312360.P7192273918373622870

`A250120(n)-A008687(A103435(n))`
-/

namespace A312360.P7192273918373622870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A008687 (A103435 n).toNat

end

end A312360.P7192273918373622870

/-!
# A312361: Coordination sequence Gal.5.79.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312361, there is no canonical definition to state claims against.
-/

/-! ## A312361.P4422104463013029044

`A014017(A213225(n))+A008579(n)`
-/

namespace A312361.P4422104463013029044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A213225 n).toNat + A008579 n

end

end A312361.P4422104463013029044

/-! ## A312361.P13906674354753993187

`A311230(n)+A283735(A299474(n))`
-/

namespace A312361.P13906674354753993187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311230 n + A283735 (A299474 n).toNat

end

end A312361.P13906674354753993187

/-! ## A312361.P16961718860215390830

`A008579(n)-A337690(A156733(n))`
-/

namespace A312361.P16961718860215390830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A337690 (A156733 n).toNat

end

end A312361.P16961718860215390830

/-! ## A312361.P13034366047554535870

`A008579(n)-A287530(A240978(n))`
-/

namespace A312361.P13034366047554535870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A287530 (A240978 n).toNat

end

end A312361.P13034366047554535870

/-! ## A312361.P4493374145554934981

`A312504(n)-A025456(A260878(n))`
-/

namespace A312361.P4493374145554934981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312504 n - A025456 (A260878 n).toNat

end

end A312361.P4493374145554934981

/-!
# A312362: Coordination sequence Gal.6.305.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312362, there is no canonical definition to state claims against.
-/

/-! ## A312362.P5283967550476597507

`A312365(n)-A117444(A255376(n))`
-/

namespace A312362.P5283967550476597507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312365 n - A117444 (A255376 n).toNat

end

end A312362.P5283967550476597507

/-! ## A312362.P1012159443143546639

`A313090(A227549(n+1))-A025480(n)`
-/

namespace A312362.P1012159443143546639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313090 (A227549 (n + 1)).toNat - A025480 n

end

end A312362.P1012159443143546639

/-! ## A312362.P15535255679769617650

`xor(A025480(A227549(n+1)), A313090(n))`
-/

namespace A312362.P15535255679769617650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025480 (A227549 (n + 1)).toNat) (A313090 n)

end

end A312362.P15535255679769617650

/-! ## A312362.P11554674247656905941

`record[A312363(n)]%A129829(3*n+4)`
-/

namespace A312362.P11554674247656905941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A129829 (3 * n + 4))

end

end A312362.P11554674247656905941

/-! ## A312362.P8486093006250963026

`A312363(n)%A005408(A036447(n))`
-/

namespace A312362.P8486093006250963026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A312363 n) (A005408 (A036447 n).toNat)

end

end A312362.P8486093006250963026

/-!
# A312364: Coordination sequence Gal.6.436.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312364, there is no canonical definition to state claims against.
-/

/-! ## A312364.P4381071205770207856

`A314826(n)-A011695(A183508(n+1))`
-/

namespace A312364.P4381071205770207856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314826 n - A011695 (A183508 (n + 1)).toNat

end

end A312364.P4381071205770207856

/-! ## A312364.P3012291770812177557

`A162781(A310954(2*n))+A315274(n)-2*A004525(n)`
-/

namespace A312364.P3012291770812177557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162781 (A310954 (2 * n)).toNat + (A315274 n - 2 * A004525 n)

end

end A312364.P3012291770812177557

/-! ## A312364.P7361572840269747350

`A311807(n)+A101637(A001550(n))`
-/

namespace A312364.P7361572840269747350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A101637 (A001550 n).toNat

end

end A312364.P7361572840269747350

/-! ## A312364.P4634168874336882226

`or(A311405(n), A332006(A346101(n)))`
-/

namespace A312364.P4634168874336882226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311405 n) (A332006 (A346101 n).toNat)

end

end A312364.P4634168874336882226

/-! ## A312364.P4220895680354105094

`A320143(3*n+1)+A083025(A055797(n))`
-/

namespace A312364.P4220895680354105094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320143 (3 * n + 1) + A083025 (A055797 n).toNat

end

end A312364.P4220895680354105094

/-!
# A312365: Coordination sequence Gal.6.530.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312365, there is no canonical definition to state claims against.
-/

/-! ## A312365.P18378367793775711792

`A312366(n)-A070176(A146376(n+1))`
-/

namespace A312365.P18378367793775711792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312366 n - A070176 (A146376 (n + 1)).toNat

end

end A312365.P18378367793775711792

/-! ## A312365.P14229979425609437750

`A353849(n²)+A310238(n)`
-/

namespace A312365.P14229979425609437750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (n ^ 2) + A310238 n

end

end A312365.P14229979425609437750

/-! ## A312365.P7671163526145812011

`A311791(n)+A202238(A005317(n))`
-/

namespace A312365.P7671163526145812011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311791 n + A202238 (A005317 n).toNat

end

end A312365.P7671163526145812011

/-!
# A312366: Coordination sequence Gal.4.90.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312366, there is no canonical definition to state claims against.
-/

/-! ## A312366.P2095980955667162386

`A312365(n)+A070176(A146376(n+1))`
-/

namespace A312366.P2095980955667162386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312365 n + A070176 (A146376 (n + 1)).toNat

end

end A312366.P2095980955667162386

/-! ## A312366.P14467766179103575023

`A120508(A314272(n)+1)+A070176(A146376(n+1))`
-/

namespace A312366.P14467766179103575023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120508 (A314272 n + 1).toNat + A070176 (A146376 (n + 1)).toNat

end

end A312366.P14467766179103575023

/-! ## A312366.P16291641580874169200

`A312518(n)-A186748(A034583(n))`
-/

namespace A312366.P16291641580874169200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312518 n - A186748 (A034583 n).toNat

end

end A312366.P16291641580874169200

/-! ## A312366.P8100131389048766599

`A313027(n)-A268643(A074032(n+1))`
-/

namespace A312366.P8100131389048766599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313027 n - A268643 (A074032 (n + 1)).toNat

end

end A312366.P8100131389048766599

/-! ## A312366.P17768100664149419196

`A250120(n)-A080345(A263993(n))`
-/

namespace A312366.P17768100664149419196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A080345 (A263993 n).toNat

end

end A312366.P17768100664149419196

/-!
# A312367: Coordination sequence Gal.6.172.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312367, there is no canonical definition to state claims against.
-/

/-! ## A312367.P5000821333742520529

`A250120(n)-A001221(A110740(n+1))`
-/

namespace A312367.P5000821333742520529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A110740 (n + 1)).toNat

end

end A312367.P5000821333742520529

/-! ## A312367.P14369375669999292479

`A250120(n)-A001221(A363404(3*(n+1)))`
-/

namespace A312367.P14369375669999292479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A363404 (3 * (n + 1))).toNat

end

end A312367.P14369375669999292479

/-! ## A312367.P3085203345811445970

`A311932(n)+A119395(A057280(n))`
-/

namespace A312367.P3085203345811445970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311932 n + A119395 (A057280 n).toNat

end

end A312367.P3085203345811445970

/-! ## A312367.P18388686384590071663

`A313041(n)-A288858(A163087(n))`
-/

namespace A312367.P18388686384590071663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313041 n - A288858 (A163087 n).toNat

end

end A312367.P18388686384590071663

/-! ## A312367.P918613852598770296

`A250120(n)-A001221(A197159(n+1))`
-/

namespace A312367.P918613852598770296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A197159 (n + 1)).toNat

end

end A312367.P918613852598770296

/-!
# A312368: Coordination sequence Gal.5.235.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312368, there is no canonical definition to state claims against.
-/

/-! ## A312368.P2172334318701477597

`A325280(A305785(n))+A311825(n)`
-/

namespace A312368.P2172334318701477597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (A305785 n).toNat + A311825 n

end

end A312368.P2172334318701477597

/-! ## A312368.P6748169556168771970

`A312530(n)-A284627(A048694(n))`
-/

namespace A312368.P6748169556168771970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312530 n - A284627 (A048694 n).toNat

end

end A312368.P6748169556168771970

/-! ## A312368.P5541426954691560738

`A301676(n)+A128834(A243122(n+7))`
-/

namespace A312368.P5541426954691560738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301676 n + A128834 (A243122 (n + 7)).toNat

end

end A312368.P5541426954691560738

/-! ## A312368.P1356562698472264333

`xor(A008683(A254260(n+1)), A312294(n))`
-/

namespace A312368.P1356562698472264333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A254260 (n + 1)).toNat) (A312294 n)

end

end A312368.P1356562698472264333

/-! ## A312368.P17788347502425778535

`char[A207419(n+1)]+A310841(n)+A025455(A001287(n))`
-/

namespace A312368.P17788347502425778535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207419 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A310841 n + A025455 (A001287 (n + 10)).toNat)

end

end A312368.P17788347502425778535

/-!
# A312370: Coordination sequence Gal.6.243.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312370, there is no canonical definition to state claims against.
-/

/-! ## A312370.P13570957294992480901

`A008574(n)+A001222(A324486(n))`
-/

namespace A312370.P13570957294992480901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A324486 n).toNat

end

end A312370.P13570957294992480901

/-! ## A312370.P11470143569283989137

`A328391(A041673(n))+A008574(n)`
-/

namespace A312370.P11470143569283989137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328391 (A041673 n).toNat + A008574 n

end

end A312370.P11470143569283989137

/-! ## A312370.P3405859161588788667

`A008706(n)-A007895(A094706(n))`
-/

namespace A312370.P3405859161588788667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A007895 (A094706 n).toNat

end

end A312370.P3405859161588788667

/-! ## A312370.P8999008511566989757

`A250120(n)-A001221(A086611(n))`
-/

namespace A312370.P8999008511566989757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A086611 n).toNat

end

end A312370.P8999008511566989757

/-! ## A312370.P16091551237834064981

`A250120(n)-A326702(A059973(n))`
-/

namespace A312370.P16091551237834064981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A326702 (A059973 n).toNat

end

end A312370.P16091551237834064981

/-!
# A312371: Coordination sequence Gal.6.279.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312371, there is no canonical definition to state claims against.
-/

/-! ## A312371.P15882468892240770439

`or(A304455(A032210(n)), A312292(n))`
-/

namespace A312371.P15882468892240770439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A304455 (A032210 n).toNat) (A312292 n)

end

end A312371.P15882468892240770439

/-! ## A312371.P2746268766236511302

`A313049(n)+A056594(A255837(n))`
-/

namespace A312371.P2746268766236511302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313049 n + A056594 (A255837 n).toNat

end

end A312371.P2746268766236511302

/-! ## A312371.P6849715169371974517

`A179871(n+1)+A001222(A054719(n))`
-/

namespace A312371.P6849715169371974517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179871 (n + 1) + A001222 (A054719 n).toNat

end

end A312371.P6849715169371974517

/-!
# A312372: Coordination sequence Gal.6.520.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312372, there is no canonical definition to state claims against.
-/

/-! ## A312372.P11636280530238805129

`A250120(n)-A001221(A199149(3*n+2))`
-/

namespace A312372.P11636280530238805129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A199149 (3 * n + 2)).toNat

end

end A312372.P11636280530238805129

/-! ## A312372.P9076191024197576965

`A312609(n)-A282355(A268188(2*n+3))`
-/

namespace A312372.P9076191024197576965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312609 n - A282355 (A268188 (2 * n + 3)).toNat

end

end A312372.P9076191024197576965

/-! ## A312372.P4023574328467928238

`A313219(n)-A001221(n+1)*A001221(A149669(n))`
-/

namespace A312372.P4023574328467928238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313219 n - A001221 (n + 1) * A001221 (A149669 n).toNat

end

end A312372.P4023574328467928238

/-! ## A312372.P16262032069002653207

`record[Δ[floor(2/acot(n))²]%A084829(n+1)]`
-/

namespace A312372.P16262032069002653207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A084829 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312372.P16262032069002653207

/-! ## A312372.P306714811028812088

`A342515(2*A311961(n))`
-/

namespace A312372.P306714811028812088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (2 * A311961 n).toNat

end

end A312372.P306714811028812088

/-!
# A312373: Coordination sequence Gal.5.236.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312373, there is no canonical definition to state claims against.
-/

/-! ## A312373.P2898964616519025099

`or(A237705(A032559(n+1)), A312372(n))`
-/

namespace A312373.P2898964616519025099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A237705 (A032559 (n + 1)).toNat) (A312372 n)

end

end A312373.P2898964616519025099

/-!
# A312374: Coordination sequence Gal.6.147.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312374, there is no canonical definition to state claims against.
-/

/-! ## A312374.P12817456993547940692

`A312499(n)+A014022(A014006(n+1))`
-/

namespace A312374.P12817456993547940692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312499 n + A014022 (A014006 (n + 1)).toNat

end

end A312374.P12817456993547940692

/-! ## A312374.P11651934926423439644

`A374684(A039828(n+1))+A083031(n+1)`
-/

namespace A312374.P11651934926423439644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (A039828 (n + 1)).toNat + A083031 (n + 1)

end

end A312374.P11651934926423439644

/-! ## A312374.P12885339287263289618

`A008574(n)+A001222(A213093(n))`
-/

namespace A312374.P12885339287263289618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A213093 n).toNat

end

end A312374.P12885339287263289618

/-! ## A312374.P16627127532432064255

`A312376(n)-A025458(A000296(n))`
-/

namespace A312374.P16627127532432064255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312376 n - A025458 (A000296 n).toNat

end

end A312374.P16627127532432064255

/-! ## A312374.P1150800870157551642

`A312375(n)-A219071(A185143(n))`
-/

namespace A312374.P1150800870157551642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312375 n - A219071 (A185143 n).toNat

end

end A312374.P1150800870157551642

/-!
# A312375: Coordination sequence Gal.6.140.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312375, there is no canonical definition to state claims against.
-/

/-! ## A312375.P11824028492841635409

`A250120(n)-A087116(A246604(n))`
-/

namespace A312375.P11824028492841635409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A087116 (A246604 n).toNat

end

end A312375.P11824028492841635409

/-! ## A312375.P16237615341855620893

`A250120(n)-A334440(A014138(n))`
-/

namespace A312375.P16237615341855620893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A334440 (A014138 n).toNat

end

end A312375.P16237615341855620893

/-! ## A312375.P12427791663634068927

`xor(A185284(A311336(n)), A312376(n))`
-/

namespace A312375.P12427791663634068927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A311336 n).toNat) (A312376 n)

end

end A312375.P12427791663634068927

/-! ## A312375.P17922126587130531002

`A311742(n)+A021913(A000512(n+2))`
-/

namespace A312375.P17922126587130531002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 n + A021913 (A000512 (n + 2)).toNat

end

end A312375.P17922126587130531002

/-! ## A312375.P12823029362082343928

`A250120(n)-A102669(A084898(n+1))`
-/

namespace A312375.P12823029362082343928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A102669 (A084898 (n + 1)).toNat

end

end A312375.P12823029362082343928

/-!
# A312376: Coordination sequence Gal.6.238.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312376, there is no canonical definition to state claims against.
-/

/-! ## A312376.P3291807372703768847

`A311742(n)+A118953(A104684(n))`
-/

namespace A312376.P3291807372703768847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 n + A118953 (A104684 n).toNat

end

end A312376.P3291807372703768847

/-! ## A312376.P17392690823504172604

`A343632(n²+n)+A311735(n)`
-/

namespace A312376.P17392690823504172604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (n ^ 2 + n) + A311735 n

end

end A312376.P17392690823504172604

/-! ## A312376.P14546902832834702569

`A008579(n)-A086017(A036289(n))`
-/

namespace A312376.P14546902832834702569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A086017 (A036289 n).toNat

end

end A312376.P14546902832834702569

/-! ## A312376.P1959312102150193636

`A008579(n)-A324870(A001998(n))`
-/

namespace A312376.P1959312102150193636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A324870 (A001998 n).toNat

end

end A312376.P1959312102150193636

/-! ## A312376.P4153245039925805405

`A008579(n)-A079978(A289501(n))`
-/

namespace A312376.P4153245039925805405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A079978 (A289501 n).toNat

end

end A312376.P4153245039925805405

/-!
# A312377: Coordination sequence Gal.5.236.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312377, there is no canonical definition to state claims against.
-/

/-! ## A312377.P14455528313924690430

`A312503(n)-A008683(A249212(n+1))`
-/

namespace A312377.P14455528313924690430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312503 n - A008683 (A249212 (n + 1)).toNat

end

end A312377.P14455528313924690430

/-! ## A312377.P6729704425969480887

`xor(2*A185284(A311336(n)), A312376(n))`
-/

namespace A312377.P6729704425969480887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A185284 (A311336 n).toNat) (A312376 n)

end

end A312377.P6729704425969480887

/-! ## A312377.P9099350233060409348

`A008579(n)-A025466(A003418(n))-A008683(A249212(n+1))`
-/

namespace A312377.P9099350233060409348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A025466 (A003418 n).toNat - A008683 (A249212 (n + 1)).toNat

end

end A312377.P9099350233060409348

/-! ## A312377.P4285754964114741428

`A008579(n)-A325135(A052953(n))-A008683(A249212(n+1))`
-/

namespace A312377.P4285754964114741428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A325135 (A052953 n).toNat - A008683 (A249212 (n + 1)).toNat

end

end A312377.P4285754964114741428

/-! ## A312377.P16479418953203803525

`A008579(n)-A275964(A181809(n+1))-A008683(A249212(n+1))`
-/

namespace A312377.P16479418953203803525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A275964 (A181809 (n + 1)).toNat - A008683 (A249212 (n + 1)).toNat

end

end A312377.P16479418953203803525

/-!
# A312378: Coordination sequence Gal.5.74.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312378, there is no canonical definition to state claims against.
-/

/-! ## A312378.P8439157368596893036

`A311971(n)+A010051(A149439(n))`
-/

namespace A312378.P8439157368596893036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311971 n + A010051 (A149439 n).toNat

end

end A312378.P8439157368596893036

/-! ## A312378.P15943325256460542860

`A312374(n)+A033909(A192953(n))`
-/

namespace A312378.P15943325256460542860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312374 n + A033909 (A192953 n).toNat

end

end A312378.P15943325256460542860

/-! ## A312378.P244215710095168825

`A311971(n)+A287382(A080017(n))`
-/

namespace A312378.P244215710095168825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311971 n + A287382 (A080017 n).toNat

end

end A312378.P244215710095168825

/-! ## A312378.P6902399420388103599

`xor(A025458(A000296(n)), A312376(n))`
-/

namespace A312378.P6902399420388103599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025458 (A000296 n).toNat) (A312376 n)

end

end A312378.P6902399420388103599

/-! ## A312378.P3203142768677310213

`A312374(n)+A000122(A248068(n+1))`
-/

namespace A312378.P3203142768677310213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312374 n + A000122 (A248068 (n + 1)).toNat

end

end A312378.P3203142768677310213

/-!
# A312379: Coordination sequence Gal.5.119.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312379, there is no canonical definition to state claims against.
-/

/-! ## A312379.P537155394712454071

`A312499(n)+A014064(A014005(n))`
-/

namespace A312379.P537155394712454071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312499 n + A014064 (A014005 n).toNat

end

end A312379.P537155394712454071

/-! ## A312379.P4894497961382079181

`xor(A188297(A146643(n+1)), A312375(n))`
-/

namespace A312379.P4894497961382079181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A188297 (A146643 (n + 1)).toNat) (A312375 n)

end

end A312379.P4894497961382079181

/-! ## A312379.P14115738450053352482

`A312499(n)+A014053(A187027(3*n+2))`
-/

namespace A312379.P14115738450053352482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312499 n + A014053 (A187027 (3 * n + 2)).toNat

end

end A312379.P14115738450053352482

/-! ## A312379.P10115566888914511024

`A343632(A069905(n))+A343632(n²+n)+A311735(n)`
-/

namespace A312379.P10115566888914511024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (A069905 n).toNat + (A343632 (n ^ 2 + n) + A311735 n)

end

end A312379.P10115566888914511024

/-! ## A312379.P8698237975903876829

`A312375(n)+A286349(A312373(2*(n+2)))`
-/

namespace A312379.P8698237975903876829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312375 n + A286349 (A312373 (2 * (n + 2))).toNat

end

end A312379.P8698237975903876829

/-!
# A312380: Coordination sequence Gal.5.29.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312380, there is no canonical definition to state claims against.
-/

/-! ## A312380.P8355685069946918427

`A310861(n)+A055641(A001873(n))`
-/

namespace A312380.P8355685069946918427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 n + A055641 (A001873 n).toNat

end

end A312380.P8355685069946918427

/-! ## A312380.P14272937969167613472

`A310860(n)+A066829(A000088(n))`
-/

namespace A312380.P14272937969167613472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310860 n + A066829 (A000088 n).toNat

end

end A312380.P14272937969167613472

/-! ## A312380.P17710275562273244007

`A310861(n)+A008683(A269311(n+1))`
-/

namespace A312380.P17710275562273244007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 n + A008683 (A269311 (n + 1)).toNat

end

end A312380.P17710275562273244007

/-! ## A312380.P9436292047678104858

`A312513(n)-A223730(A327702(n+1))`
-/

namespace A312380.P9436292047678104858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312513 n - A223730 (A327702 (n + 1)).toNat

end

end A312380.P9436292047678104858

/-! ## A312380.P14259474694096301738

`A310861(n*A287377(n))+Δ[A057354(n)]`
-/

namespace A312380.P14259474694096301738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310861 ((n : ℤ) * A287377 n).toNat + (f1 (n + 1) - f1 n)

end

end A312380.P14259474694096301738

/-!
# A312381: Coordination sequence Gal.6.406.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312381, there is no canonical definition to state claims against.
-/

/-! ## A312381.P640764640887748458

`∑[dr(A077063(A142199(3*n+2)))]`
-/

namespace A312381.P640764640887748458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A077063 (A142199 (3 * n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312381.P640764640887748458

/-! ## A312381.P1814133312343037554

`A311807(n)+A124764(A241727(n))`
-/

namespace A312381.P1814133312343037554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A124764 (A241727 (n + 45)).toNat

end

end A312381.P1814133312343037554

/-! ## A312381.P13175610505726589924

`A313045(n)-A266070(A007051(n))`
-/

namespace A312381.P13175610505726589924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n - A266070 (A007051 n).toNat

end

end A312381.P13175610505726589924

/-! ## A312381.P10298437000946885543

`A312295(n)+A179827(A000991(3*n+1))`
-/

namespace A312381.P10298437000946885543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312295 n + A179827 (A000991 (3 * n + 1)).toNat

end

end A312381.P10298437000946885543

/-! ## A312381.P5095040717722473168

`A189729(3*n+2)-A000120(A091307(n+1))`
-/

namespace A312381.P5095040717722473168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189729 (3 * n + 2) - A000120 (A091307 (n + 1)).toNat

end

end A312381.P5095040717722473168

/-!
# A312382: Coordination sequence Gal.5.166.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312382, there is no canonical definition to state claims against.
-/

/-! ## A312382.P170559343089118065

`A312529(n)-A224447(A085570(n))`
-/

namespace A312382.P170559343089118065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312529 n - A224447 (A085570 n).toNat

end

end A312382.P170559343089118065

/-! ## A312382.P10778016773755840156

`A250120(n)-A001221(A149979(n))`
-/

namespace A312382.P10778016773755840156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A149979 n).toNat

end

end A312382.P10778016773755840156

/-! ## A312382.P18415838462752152208

`A315403(n)-A319420(A055998(n))`
-/

namespace A312382.P18415838462752152208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315403 n - A319420 (A055998 n).toNat

end

end A312382.P18415838462752152208

/-! ## A312382.P10442744443877767578

`A250120(n)-A337178(A084589(n+1))`
-/

namespace A312382.P10442744443877767578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A337178 (A084589 (n + 1)).toNat

end

end A312382.P10442744443877767578

/-! ## A312382.P304162982376752274

`A072154(2*n)-A001221(A149979(n))`
-/

namespace A312382.P304162982376752274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A001221 (A149979 n).toNat

end

end A312382.P304162982376752274

/-!
# A312383: Coordination sequence Gal.6.551.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312383, there is no canonical definition to state claims against.
-/

/-! ## A312383.P5290007732411920664

`A312561(n)-A111858(A301338(n+3))`
-/

namespace A312383.P5290007732411920664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A111858 (A301338 (n + 3)).toNat

end

end A312383.P5290007732411920664

/-! ## A312383.P291055667485043409

`A111660(2*A312547(n))`
-/

namespace A312383.P291055667485043409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A312547 n).toNat

end

end A312383.P291055667485043409

/-! ## A312383.P12976429045036158585

`A111660(2*A312548(n))`
-/

namespace A312383.P12976429045036158585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A312548 n).toNat

end

end A312383.P12976429045036158585

/-! ## A312383.P14966344758062981569

`A111660(A312548(n)+A312547(n))`
-/

namespace A312383.P14966344758062981569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A312548 n + A312547 n).toNat

end

end A312383.P14966344758062981569

/-! ## A312383.P7457870333259793414

`A145204(n+1)+A043541(A007051(n+1))`
-/

namespace A312383.P7457870333259793414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1) + A043541 (A007051 (n + 1)).toNat

end

end A312383.P7457870333259793414

/-!
# A312384: Coordination sequence Gal.6.552.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312384, there is no canonical definition to state claims against.
-/

/-! ## A312384.P8758414266612904283

`or(A105700(A191797(n)), A312356(n))`
-/

namespace A312384.P8758414266612904283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105700 (A191797 n).toNat) (A312356 n)

end

end A312384.P8758414266612904283

/-! ## A312384.P3853195740863476608

`A312289(n)+A230632(A000704(n))`
-/

namespace A312384.P3853195740863476608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A230632 (A000704 n).toNat

end

end A312384.P3853195740863476608

/-! ## A312384.P12844397631720352454

`or(A001222(A327019(n)), A312289(n))`
-/

namespace A312384.P12844397631720352454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A327019 n).toNat) (A312289 n)

end

end A312384.P12844397631720352454

/-! ## A312384.P14256985860131126664

`A312289(n)+A179762(A045992(n)+1)`
-/

namespace A312384.P14256985860131126664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A179762 (A045992 n + 1).toNat

end

end A312384.P14256985860131126664

/-! ## A312384.P905115541646962902

`∑[A033940(A000931(2*(n+2))²)]`
-/

namespace A312384.P905115541646962902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033940 (A000931 (2 * (n + 2)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312384.P905115541646962902

/-!
# A312385: Coordination sequence Gal.4.87.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312385, there is no canonical definition to state claims against.
-/

/-! ## A312385.P3629643519866277527

`∑[A001511(A000203(or(1, 3^n+1-2^n)))]`
-/

namespace A312385.P3629643519866277527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000203 (Int.lor 1 ((3 ^ n : ℤ) + (1 - (2 ^ n : ℤ)))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312385.P3629643519866277527

/-! ## A312385.P15319641263448702042

`A250120(n)-A165034(A005001(n))`
-/

namespace A312385.P15319641263448702042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A165034 (A005001 n).toNat

end

end A312385.P15319641263448702042

/-! ## A312385.P3154244209371915125

`A250120(n)-A001221(A179606(n))`
-/

namespace A312385.P3154244209371915125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A179606 n).toNat

end

end A312385.P3154244209371915125

/-! ## A312385.P12586503442978692091

`A250120(n)-A087117(A168607(n))`
-/

namespace A312385.P12586503442978692091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A087117 (A168607 n).toNat

end

end A312385.P12586503442978692091

/-! ## A312385.P14591552230928974154

`A250120(n)-A001222(A273607(n))`
-/

namespace A312385.P14591552230928974154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001222 (A273607 n).toNat

end

end A312385.P14591552230928974154

/-!
# A312386: Coordination sequence Gal.6.306.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312386, there is no canonical definition to state claims against.
-/

/-! ## A312386.P17781313719527465640

`A311915(n)+A102673(A000682(n+1))`
-/

namespace A312386.P17781313719527465640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311915 n + A102673 (A000682 (n + 1)).toNat

end

end A312386.P17781313719527465640

/-! ## A312386.P15447021060547455761

`A311916(n)+A102673(A000682(n+1))`
-/

namespace A312386.P15447021060547455761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311916 n + A102673 (A000682 (n + 1)).toNat

end

end A312386.P15447021060547455761

/-! ## A312386.P11856459700580538156

`A311917(n)+A102673(A000682(n+1))`
-/

namespace A312386.P11856459700580538156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311917 n + A102673 (A000682 (n + 1)).toNat

end

end A312386.P11856459700580538156

/-! ## A312386.P17197155274613756101

`A311918(n)+A102673(A000682(n+1))`
-/

namespace A312386.P17197155274613756101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311918 n + A102673 (A000682 (n + 1)).toNat

end

end A312386.P17197155274613756101

/-! ## A312386.P4292339708783939131

`A250120(n)-A035232(A034899(n))`
-/

namespace A312386.P4292339708783939131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A035232 (A034899 n).toNat

end

end A312386.P4292339708783939131

/-!
# A312387: Coordination sequence Gal.6.301.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312387, there is no canonical definition to state claims against.
-/

/-! ## A312387.P11943028506651077245

`A250120(n)-A007968(A120071(n))`
-/

namespace A312387.P11943028506651077245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A007968 (A120071 n).toNat

end

end A312387.P11943028506651077245

/-! ## A312387.P8839642650853808321

`A250120(n)-A241918(A026598(n))`
-/

namespace A312387.P8839642650853808321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A241918 (A026598 n).toNat

end

end A312387.P8839642650853808321

/-! ## A312387.P9434017345382811023

`A250120(n)-A257024(A019320(n))`
-/

namespace A312387.P9434017345382811023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A257024 (A019320 n).toNat

end

end A312387.P9434017345382811023

/-! ## A312387.P18410804523508459316

`A250120(n)-A333381(A014260(n))`
-/

namespace A312387.P18410804523508459316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A333381 (A014260 n).toNat

end

end A312387.P18410804523508459316

/-! ## A312387.P8732246709090102374

`A250120(n)-A357180(A000045(n))`
-/

namespace A312387.P8732246709090102374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A357180 (A000045 n).toNat

end

end A312387.P8732246709090102374

/-!
# A312388: Coordination sequence Gal.6.388.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312388, there is no canonical definition to state claims against.
-/

/-! ## A312388.P6248621753742808805

`A315088(n)-A001221(A001075(n))`
-/

namespace A312388.P6248621753742808805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315088 n - A001221 (A001075 n).toNat

end

end A312388.P6248621753742808805

/-! ## A312388.P9309261281388724714

`A313839(n)-A001221(A007854(n))`
-/

namespace A312388.P9309261281388724714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313839 n - A001221 (A007854 n).toNat

end

end A312388.P9309261281388724714

/-! ## A312388.P13828101729138137721

`A301680(n)-A128538(A000110(n))`
-/

namespace A312388.P13828101729138137721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n - A128538 (A000110 n).toNat

end

end A312388.P13828101729138137721

/-! ## A312388.P6619323836442634624

`A314123(n)-A001222(A150889(n))`
-/

namespace A312388.P6619323836442634624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n - A001222 (A150889 n).toNat

end

end A312388.P6619323836442634624

/-! ## A312388.P10759497703435446238

`A312556(n)-A322338(A087709(n+1))`
-/

namespace A312388.P10759497703435446238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 n - A322338 (A087709 (n + 1)).toNat

end

end A312388.P10759497703435446238

/-!
# A312389: Coordination sequence Gal.6.316.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312389, there is no canonical definition to state claims against.
-/

/-! ## A312389.P1930199019493150045

`A119930(A047464(n+1))+n`
-/

namespace A312389.P1930199019493150045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119930 (A047464 (n + 1)).toNat + (n : ℤ)

end

end A312389.P1930199019493150045

/-! ## A312389.P10098212482711523190

`A175427(A313957(n))+1-n`
-/

namespace A312389.P10098212482711523190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A313957 n).toNat + (1 - (n : ℤ))

end

end A312389.P10098212482711523190

/-! ## A312389.P1343104073520365877

`A311719(n)+A055734(A000110(n))`
-/

namespace A312389.P1343104073520365877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311719 n + A055734 (A000110 n).toNat

end

end A312389.P1343104073520365877

/-! ## A312389.P18061920690631926977

`A313831(n)-A001222(A150997(n))`
-/

namespace A312389.P18061920690631926977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A001222 (A150997 n).toNat

end

end A312389.P18061920690631926977

/-!
# A312390: Coordination sequence Gal.6.372.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312390, there is no canonical definition to state claims against.
-/

/-! ## A312390.P15815057153191702083

`A301726(n)-A317751(A154638(n))`
-/

namespace A312390.P15815057153191702083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - A317751 (A154638 n).toNat

end

end A312390.P15815057153191702083

/-! ## A312390.P8265977882954559270

`A311724(n)+A255361(A319207(n+1))`
-/

namespace A312390.P8265977882954559270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311724 n + A255361 (A319207 (n + 1)).toNat

end

end A312390.P8265977882954559270

/-! ## A312390.P5376417832109641314

`A114994(3*n+2)-A087117(A000467(n+1))`
-/

namespace A312390.P5376417832109641314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 (3 * n + 2) - A087117 (A000467 (n + 1)).toNat

end

end A312390.P5376417832109641314

/-!
# A312391: Coordination sequence Gal.6.552.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312391, there is no canonical definition to state claims against.
-/

/-! ## A312391.P6257874498682789670

`A311900(n)+A122879(A000108(n))`
-/

namespace A312391.P6257874498682789670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311900 n + A122879 (A000108 n).toNat

end

end A312391.P6257874498682789670

/-! ## A312391.P12485559970444888331

`A343023(A299123(n+1))+A310882(n)`
-/

namespace A312391.P12485559970444888331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A299123 (n + 1)).toNat + A310882 n

end

end A312391.P12485559970444888331

/-! ## A312391.P8722366225938658456

`A111660(A312334(n)+A250120(n))`
-/

namespace A312391.P8722366225938658456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A312334 n + A250120 n).toNat

end

end A312391.P8722366225938658456

/-! ## A312391.P5452807802377669149

`A312392(n-A178798(A008930(n)))`
-/

namespace A312391.P5452807802377669149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312392 ((n : ℤ) - A178798 (A008930 n).toNat).toNat

end

end A312391.P5452807802377669149

/-! ## A312391.P1292708824293613206

`A312392(n-A025466(A279107(n)))`
-/

namespace A312391.P1292708824293613206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312392 ((n : ℤ) - A025466 (A279107 n).toNat).toNat

end

end A312391.P1292708824293613206

/-!
# A312392: Coordination sequence Gal.6.551.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312392, there is no canonical definition to state claims against.
-/

/-! ## A312392.P7251907773436930589

`eq[A067255(n+1), A228351(A304894(n+5))]`
-/

namespace A312392.P7251907773436930589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A304894 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312392.P7251907773436930589

/-! ## A312392.P1457518222612687811

`record[and(A143940(n+4), A329405(n+1))]`
-/

namespace A312392.P1457518222612687811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143940 (n + 4)) (A329405 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312392.P1457518222612687811

/-! ## A312392.P9046721221864011880

`A312391(n)+A025456(A054962(n))`
-/

namespace A312392.P9046721221864011880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312391 n + A025456 (A054962 n).toNat

end

end A312392.P9046721221864011880

/-! ## A312392.P6723416547769303282

`A312391(n)+A178798(A008930(n))`
-/

namespace A312392.P6723416547769303282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312391 n + A178798 (A008930 n).toNat

end

end A312392.P6723416547769303282

/-! ## A312392.P3336100964821593062

`A312391(n)+A025466(A279107(n))`
-/

namespace A312392.P3336100964821593062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312391 n + A025466 (A279107 n).toNat

end

end A312392.P3336100964821593062

/-!
# A312393: Coordination sequence Gal.6.432.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312393, there is no canonical definition to state claims against.
-/

/-! ## A312393.P9872287527632556288

`A059921(∑[dr(A203966(n+1))])`
-/

namespace A312393.P9872287527632556288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A203966 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A312393.P9872287527632556288

/-! ## A312393.P13042043529665114314

`A311941(n)+A053603(A109437(n))`
-/

namespace A312393.P13042043529665114314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311941 n + A053603 (A109437 n).toNat

end

end A312393.P13042043529665114314

/-! ## A312393.P15339160429552857576

`A311175(n)+A279210(A263611(n+1))`
-/

namespace A312393.P15339160429552857576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311175 n + A279210 (A263611 (n + 1)).toNat

end

end A312393.P15339160429552857576

/-! ## A312393.P11209997710746312491

`A344609(3*n+2)-A128834(A328429(n))`
-/

namespace A312393.P11209997710746312491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (3 * n + 2) - A128834 (A328429 n).toNat

end

end A312393.P11209997710746312491

/-! ## A312393.P2527262770272956709

`A325600(3*n+2)-A324029(A322467(2*n+3))`
-/

namespace A312393.P2527262770272956709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325600 (3 * n + 2) - A324029 (A322467 (2 * n + 3)).toNat

end

end A312393.P2527262770272956709

/-!
# A312394: Coordination sequence Gal.5.249.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312394, there is no canonical definition to state claims against.
-/

/-! ## A312394.P375946642230418051

`∑[A122458(A001047(n))+1]`
-/

namespace A312394.P375946642230418051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A001047 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312394.P375946642230418051

/-! ## A312394.P6277292922389140070

`A342515(2*A311844(n))+char[5]`
-/

namespace A312394.P6277292922389140070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (2 * A311844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A312394.P6277292922389140070

/-! ## A312394.P9127206721589430104

`A312395(n)-A125005(A005316(n))`
-/

namespace A312394.P9127206721589430104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312395 n - A125005 (A005316 n).toNat

end

end A312394.P9127206721589430104

/-!
# A312395: Coordination sequence Gal.6.306.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312395, there is no canonical definition to state claims against.
-/

/-! ## A312395.P2431286930168856118

`A312567(n)-A127322(A256060(n))`
-/

namespace A312395.P2431286930168856118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312567 n - A127322 (A256060 n).toNat

end

end A312395.P2431286930168856118

/-! ## A312395.P16818882718102337342

`A311203(n)+A001222(A130278(n))`
-/

namespace A312395.P16818882718102337342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311203 n + A001222 (A130278 n).toNat

end

end A312395.P16818882718102337342

/-! ## A312395.P2998954226729798982

`A312394(n)+A125005(A005316(n))`
-/

namespace A312395.P2998954226729798982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312394 n + A125005 (A005316 n).toNat

end

end A312395.P2998954226729798982

/-! ## A312395.P18402727734056255984

`A360635(A093968(n))+A067031(n)`
-/

namespace A312395.P18402727734056255984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360635 (A093968 n).toNat + A067031 n

end

end A312395.P18402727734056255984

/-! ## A312395.P359641311030881718

`A311733(n)+A124764(A299474(n))`
-/

namespace A312395.P359641311030881718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311733 n + A124764 (A299474 n).toNat

end

end A312395.P359641311030881718

/-!
# A312396: Coordination sequence Gal.6.301.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312396, there is no canonical definition to state claims against.
-/

/-! ## A312396.P5683646852049367646

`A313045(n)-A074290(A294449(n+1))`
-/

namespace A312396.P5683646852049367646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n - A074290 (A294449 (n + 1)).toNat

end

end A312396.P5683646852049367646

/-! ## A312396.P11226511374754788004

`A314848(n)-A347617(A162761(n+1))`
-/

namespace A312396.P11226511374754788004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A347617 (A162761 (n + 1)).toNat

end

end A312396.P11226511374754788004

/-! ## A312396.P9677211048216546815

`A312564(n)-A056170(A033489(n+2))`
-/

namespace A312396.P9677211048216546815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312564 n - A056170 (A033489 (n + 2)).toNat

end

end A312396.P9677211048216546815

/-! ## A312396.P8394843882272449887

`A313045(n)+A074290(A294449(n+1)+1)`
-/

namespace A312396.P8394843882272449887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313045 n + A074290 (A294449 (n + 1) + 1).toNat

end

end A312396.P8394843882272449887

/-! ## A312396.P13642018695707126416

`filter[A129618(3*n+1), A118251(#)]`
-/

namespace A312396.P13642018695707126416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118251 (f1 j).toNat = 1) n)

end

end A312396.P13642018695707126416

/-!
# A312397: Coordination sequence Gal.6.417.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312397, there is no canonical definition to state claims against.
-/

/-! ## A312397.P13012974470252917895

`A312561(n)-A037880(A257520(n))`
-/

namespace A312397.P13012974470252917895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n - A037880 (A257520 n).toNat

end

end A312397.P13012974470252917895

/-! ## A312397.P3552259656912771537

`A250120(n)-A083025(A064383(3*(n+1)))`
-/

namespace A312397.P3552259656912771537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A083025 (A064383 (3 * (n + 1))).toNat

end

end A312397.P3552259656912771537

/-! ## A312397.P2677934562339054885

`A047486(A008486(n)+1)-A083025(A064383(3*(n+1)))`
-/

namespace A312397.P2677934562339054885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A083025 (A064383 (3 * (n + 1))).toNat

end

end A312397.P2677934562339054885

/-! ## A312397.P10418432260512802936

`A047486(A033627(n+2))-A083025(A064383(3*(n+1)))`
-/

namespace A312397.P10418432260512802936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A033627 (n + 2)).toNat - A083025 (A064383 (3 * (n + 1))).toNat

end

end A312397.P10418432260512802936

/-! ## A312397.P13863406933267031846

`A047363(2*n+1)+A028310(2*n)-A083025(A064383(3*(n+1)))`
-/

namespace A312397.P13863406933267031846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (2 * n + 1) + A028310 (2 * n) - A083025 (A064383 (3 * (n + 1))).toNat

end

end A312397.P13863406933267031846

/-!
# A312398: Coordination sequence Gal.6.416.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312398, there is no canonical definition to state claims against.
-/

/-! ## A312398.P6664038462238366963

`xor(A001221(A149669(n)), A313219(n))`
-/

namespace A312398.P6664038462238366963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A149669 n).toNat) (A313219 n)

end

end A312398.P6664038462238366963

/-! ## A312398.P647895492220744495

`A250120(n)-A160381(A001788(n))`
-/

namespace A312398.P647895492220744495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A160381 (A001788 n).toNat

end

end A312398.P647895492220744495

/-! ## A312398.P15790101497971307872

`A250120(n)-A302354(A325864(n))`
-/

namespace A312398.P15790101497971307872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A302354 (A325864 n).toNat

end

end A312398.P15790101497971307872

/-! ## A312398.P4863884334449216002

`A315037(n)-A001221(A123437(n+1))`
-/

namespace A312398.P4863884334449216002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315037 n - A001221 (A123437 (n + 1)).toNat

end

end A312398.P4863884334449216002

/-! ## A312398.P1993733239162477106

`A250120(n)-A255317(A063493(n+5))`
-/

namespace A312398.P1993733239162477106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A255317 (A063493 (n + 5)).toNat

end

end A312398.P1993733239162477106

/-!
# A312399: Coordination sequence Gal.6.214.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312399, there is no canonical definition to state claims against.
-/

/-! ## A312399.P15841984111442345602

`xor(A250120(n), A346009(A011784(n+1)))`
-/

namespace A312399.P15841984111442345602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A346009 (A011784 (n + 1)).toNat)

end

end A312399.P15841984111442345602

/-! ## A312399.P5220688961818204157

`xor(A250120(n), A376885(A000032(2*n+1)))`
-/

namespace A312399.P5220688961818204157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A376885 (A000032 (2 * n + 1)).toNat)

end

end A312399.P5220688961818204157

/-! ## A312399.P12343155338404381843

`xor(A250120(n), A322306(A293231(2*n+1)))`
-/

namespace A312399.P12343155338404381843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A250120 n) (A322306 (A293231 (2 * n + 1)).toNat)

end

end A312399.P12343155338404381843

/-! ## A312399.P13001183376157698794

`xor(A326987(2*n+1)%A350947(3*n+1), A250120(n))`
-/

namespace A312399.P13001183376157698794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A326987 (2 * n + 1)) (A350947 (3 * n + 1))) (A250120 n)

end

end A312399.P13001183376157698794

/-! ## A312399.P11320821662521852155

`A315014(n)-A066829(A270447(n))`
-/

namespace A312399.P11320821662521852155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315014 n - A066829 (A270447 n).toNat

end

end A312399.P11320821662521852155

