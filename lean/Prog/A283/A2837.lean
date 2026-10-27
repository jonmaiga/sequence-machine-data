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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A283700: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 710", based on the 5-celled von Neumann neighborhood.

The programs for A283700, there is no canonical definition to state claims against.
-/

/-! ## A283700.P6339525202101614469

`A007088(A283702(n))`
-/

namespace A283700.P6339525202101614469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283702 n).toNat

end

end A283700.P6339525202101614469

/-! ## A283700.P8306242123661871080

`A305989(A283701(n))`
-/

namespace A283700.P8306242123661871080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283701 n).toNat

end

end A283700.P8306242123661871080

/-! ## A283700.P1083894930562612177

`A185544(2*A283702(n))`
-/

namespace A283700.P1083894930562612177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283702 n).toNat

end

end A283700.P1083894930562612177

/-! ## A283700.P7294762481172720708

`A185544(lcm(2, A283702(n)))`
-/

namespace A283700.P7294762481172720708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283702 n))

end

end A283700.P7294762481172720708

/-! ## A283700.P2508848150087805864

`A284537(n*gcd(11, n))`
-/

namespace A283700.P2508848150087805864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284537 (n * Nat.gcd 11 n)

end

end A283700.P2508848150087805864

/-!
# A283701: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 710", based on the 5-celled von Neumann neighborhood.

The programs for A283701, there is no canonical definition to state claims against.
-/

/-! ## A283701.P14891178547689933433

`and(A126646(n), A264618(A283702(n)))`
-/

namespace A283701.P14891178547689933433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283702 n).toNat)

end

end A283701.P14891178547689933433

/-! ## A283701.P4396009305706757278

`A057889(A283702(n))`
-/

namespace A283701.P4396009305706757278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283702 n).toNat

end

end A283701.P4396009305706757278

/-! ## A283701.P3334845454951044537

`A030101(2*A283702(n))`
-/

namespace A283701.P3334845454951044537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A283702 n).toNat

end

end A283701.P3334845454951044537

/-! ## A283701.P6709824587624773224

`A281589(2*A283702(n))`
-/

namespace A283701.P6709824587624773224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283702 n).toNat

end

end A283701.P6709824587624773224

/-! ## A283701.P2238292938064051661

`A325401(2*A283702(n))`
-/

namespace A283701.P2238292938064051661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283702 n).toNat

end

end A283701.P2238292938064051661

/-!
# A283702: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 710", based on the 5-celled von Neumann neighborhood.

The programs for A283702, there is no canonical definition to state claims against.
-/

/-! ## A283702.P10216842634165620379

`and(A126646(n), A264618(A283701(n)))`
-/

namespace A283702.P10216842634165620379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283701 n).toNat)

end

end A283702.P10216842634165620379

/-! ## A283702.P8423957991524710520

`A057889(A283701(n))`
-/

namespace A283702.P8423957991524710520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283701 n).toNat

end

end A283702.P8423957991524710520

/-! ## A283702.P939732764227226013

`A281589(2*A283701(n))`
-/

namespace A283702.P939732764227226013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283701 n).toNat

end

end A283702.P939732764227226013

/-! ## A283702.P13340812547278408458

`A325401(2*A283701(n))`
-/

namespace A283702.P13340812547278408458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283701 n).toNat

end

end A283702.P13340812547278408458

/-! ## A283702.P18358186644275061746

`A281589(lcm(2, A283701(n)))`
-/

namespace A283702.P18358186644275061746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A283701 n))

end

end A283702.P18358186644275061746

/-!
# A283703: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 718", based on the 5-celled von Neumann neighborhood.

The programs for A283703, there is no canonical definition to state claims against.
-/

/-! ## A283703.P6946508741618023334

`A007088(A283705(n))`
-/

namespace A283703.P6946508741618023334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283705 n).toNat

end

end A283703.P6946508741618023334

/-! ## A283703.P3992125859951072394

`A305989(A283706(n))`
-/

namespace A283703.P3992125859951072394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283706 n).toNat

end

end A283703.P3992125859951072394

/-!
# A283704: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 718", based on the 5-celled von Neumann neighborhood.

The programs for A283704, there is no canonical definition to state claims against.
-/

/-! ## A283704.P7276469009836422475

`A007088(A283706(n))`
-/

namespace A283704.P7276469009836422475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283706 n).toNat

end

end A283704.P7276469009836422475

/-! ## A283704.P2589381286153848122

`A305989(A283705(n))`
-/

namespace A283704.P2589381286153848122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283705 n).toNat

end

end A283704.P2589381286153848122

/-!
# A283705: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 718", based on the 5-celled von Neumann neighborhood.

The programs for A283705, there is no canonical definition to state claims against.
-/

/-! ## A283705.P3431273374013582864

`or(A220130(A034008(n)), A283587(n))`
-/

namespace A283705.P3431273374013582864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A220130 (A034008 n).toNat) (A283587 n)

end

end A283705.P3431273374013582864

/-! ## A283705.P9652927849147302050

`A057889(A283706(n))`
-/

namespace A283705.P9652927849147302050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283706 n).toNat

end

end A283705.P9652927849147302050

/-! ## A283705.P6030054779426846685

`A281589(2*A283706(n))`
-/

namespace A283705.P6030054779426846685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283706 n).toNat

end

end A283705.P6030054779426846685

/-! ## A283705.P12836043944854998121

`A325401(2*A283706(n))`
-/

namespace A283705.P12836043944854998121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283706 n).toNat

end

end A283705.P12836043944854998121

/-! ## A283705.P792758800492761646

`A281589(lcm(2, A283706(n)))`
-/

namespace A283705.P792758800492761646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A283706 n))

end

end A283705.P792758800492761646

/-!
# A283706: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 718", based on the 5-celled von Neumann neighborhood.

The programs for A283706, there is no canonical definition to state claims against.
-/

/-! ## A283706.P6411596810111605687

`A057889(A283705(n))`
-/

namespace A283706.P6411596810111605687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283705 n).toNat

end

end A283706.P6411596810111605687

/-! ## A283706.P1931615387976244761

`A281589(2*A283705(n))`
-/

namespace A283706.P1931615387976244761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A283705 n).toNat

end

end A283706.P1931615387976244761

/-! ## A283706.P9470556703991290836

`A325401(2*A283705(n))`
-/

namespace A283706.P9470556703991290836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A283705 n).toNat

end

end A283706.P9470556703991290836

/-! ## A283706.P12792258384497608696

`A281589(lcm(2, A283705(n)))`
-/

namespace A283706.P12792258384497608696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A283705 n))

end

end A283706.P12792258384497608696

/-! ## A283706.P13655734628861268471

`A030101(or(1, A283705(n)))`
-/

namespace A283706.P13655734628861268471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor 1 (A283705 n)).toNat

end

end A283706.P13655734628861268471

/-!
# A283707: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A283707, there is no canonical definition to state claims against.
-/

/-! ## A283707.P10606064859521622246

`A007088(A283709(n))`
-/

namespace A283707.P10606064859521622246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283709 n).toNat

end

end A283707.P10606064859521622246

/-! ## A283707.P4460825132165424949

`A007088(A290682(n)-A345164(2*(C(2, n)+1)))`
-/

namespace A283707.P4460825132165424949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290682 n - A345164 (2 * (Nat.choose 2 n + 1))).toNat

end

end A283707.P4460825132165424949

/-! ## A283707.P2944514524604108809

`A007088(A283650(n)+A290682(n)-A289098(n))`
-/

namespace A283707.P2944514524604108809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283650 n + (A290682 n - A289098 n)).toNat

end

end A283707.P2944514524604108809

/-! ## A283707.P15911309594991661034

`A007088(A283650(n)+A290198(n)-A290194(n))`
-/

namespace A283707.P15911309594991661034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283650 n + (A290198 n - A290194 n)).toNat

end

end A283707.P15911309594991661034

/-! ## A283707.P8362873838949505316

`A007088(A283650(n)-(A289098(n)-A290682(n)))`
-/

namespace A283707.P8362873838949505316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283650 n - (A289098 n - A290682 n)).toNat

end

end A283707.P8362873838949505316

/-!
# A283708: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A283708, there is no canonical definition to state claims against.
-/

/-! ## A283708.P2272637835747541643

`A305989(A283709(n)/A079882(n))`
-/

namespace A283708.P2272637835747541643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A283709 n : ℚ) / (A079882 n : ℚ))).toNat

end

end A283708.P2272637835747541643

/-! ## A283708.P4907144038485521965

`A305989(A283709(n))`
-/

namespace A283708.P4907144038485521965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283709 n).toNat

end

end A283708.P4907144038485521965

/-! ## A283708.P2839302316726285342

`A305989(A290682(n)-A345164(2*(C(2, n)+1)))`
-/

namespace A283708.P2839302316726285342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290682 n - A345164 (2 * (Nat.choose 2 n + 1))).toNat

end

end A283708.P2839302316726285342

/-! ## A283708.P4691869447079358880

`A305989(A283650(n)+A290682(n)-A289098(n))`
-/

namespace A283708.P4691869447079358880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283650 n + (A290682 n - A289098 n)).toNat

end

end A283708.P4691869447079358880

/-! ## A283708.P14149046080533153965

`A305989(A283650(n)+A290198(n)-A290194(n))`
-/

namespace A283708.P14149046080533153965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283650 n + (A290198 n - A290194 n)).toNat

end

end A283708.P14149046080533153965

/-!
# A283709: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

The programs for A283709, the canonical program `A283709.P12501239008037404575` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283709 has offset 0).

The definition of A283709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283709.P8941893068727622017

`A290682(n)-A345164(2*(C(2, n)+1))`
-/

namespace A283709.P8941893068727622017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 n - A345164 (2 * (Nat.choose 2 n + 1))

end

end A283709.P8941893068727622017

namespace A283709

/-- `A290682(n)-A345164(2*(C(2, n)+1))` -/
def P8941893068727622017.Spec : Prop :=
  ∀ n, P8941893068727622017.a n = A283709 n

end A283709

/-! ## A283709.P12501239008037404575

`A283650(n)+A290682(n)-A289098(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283709

/-- `A283650(n)+A290682(n)-A289098(n)` -/
def P12501239008037404575.Spec : Prop :=
  ∀ n, P12501239008037404575.a n = A283709 n

theorem P12501239008037404575.correct : P12501239008037404575.Spec := by
  intro n
  simp only [A283709]

end A283709

/-! ## A283709.P6178429762602163516

`A283650(n)+A290198(n)-A290194(n)`
-/

namespace A283709.P6178429762602163516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283650 n + (A290198 n - A290194 n)

end

end A283709.P6178429762602163516

namespace A283709

/-- `A283650(n)+A290198(n)-A290194(n)` -/
def P6178429762602163516.Spec : Prop :=
  ∀ n, P6178429762602163516.a n = A283709 n

end A283709

/-! ## A283709.P14143980985689916695

`A130543(n)+or(A130543(n), A283650(n))`
-/

namespace A283709.P14143980985689916695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n + Int.lor (A130543 n) (A283650 n)

end

end A283709.P14143980985689916695

namespace A283709

/-- `A130543(n)+or(A130543(n), A283650(n))` -/
def P14143980985689916695.Spec : Prop :=
  ∀ n, P14143980985689916695.a n = A283709 n

end A283709

/-! ## A283709.P17443436481273432845

`Δ[A130102(n+1)+A079882(C(3, n))]`
-/

namespace A283709.P17443436481273432845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130102 (n + 1) + A079882 (Nat.choose 3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283709.P17443436481273432845

namespace A283709

/-- `Δ[A130102(n+1)+A079882(C(3, n))]` -/
def P17443436481273432845.Spec : Prop :=
  ∀ n, P17443436481273432845.a n = A283709 n

end A283709

/-! ## A283709.P8656960988065732831

`A290682(n)-A286521(n+1)%A286521(n)`
-/

namespace A283709.P8656960988065732831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 n - Int.tmod (A286521 (n + 1)) (A286521 n)

end

end A283709.P8656960988065732831

namespace A283709

/-- `A290682(n)-A286521(n+1)%A286521(n)` -/
def P8656960988065732831.Spec : Prop :=
  ∀ n, P8656960988065732831.a n = A283709 n

end A283709

/-!
# A283710: The smallest square referenced in A124809.

The programs for A283710, there is no canonical definition to state claims against.
-/

/-! ## A283710.P14872650494330506150

`A283711(n+1)²`
-/

namespace A283710.P14872650494330506150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283711 (n + 1) ^ 2

end

end A283710.P14872650494330506150

/-! ## A283710.P18443673658578263332

`A283711(A000027(n+1))^2`
-/

namespace A283710.P18443673658578263332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283711 (A000027 (n + 1)).toNat ^ 2

end

end A283710.P18443673658578263332

/-! ## A283710.P4549840013752939750

`A000290(or(1, A283711(n+1)))`
-/

namespace A283710.P4549840013752939750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor 1 (A283711 (n + 1))).toNat

end

end A283710.P4549840013752939750

/-! ## A283710.P10248397813443843257

`A283711(A000027(n+1))*A283711(n+1)`
-/

namespace A283710.P10248397813443843257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283711 (A000027 (n + 1)).toNat * A283711 (n + 1)

end

end A283710.P10248397813443843257

/-! ## A283710.P9124185445242989138

`A283711(n+1)^A001222(A283670(n+1))`
-/

namespace A283710.P9124185445242989138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283711 (n + 1) : ℚ) ^ (A001222 (A283670 (n + 1)).toNat : ℤ)

end

end A283710.P9124185445242989138

/-! ## A283710.P602725998091297464

`A000290(2*A283711(n+1)-A283711(n+1))`
-/

namespace A283710.P602725998091297464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A283711 (n + 1) - A283711 (n + 1)).toNat

end

end A283710.P602725998091297464

/-! ## A283710.P3834854635171585711

`A283711(n+1)*A283711((n+1)%A022419(n))`
-/

namespace A283710.P3834854635171585711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283711 (n + 1) * A283711 (Int.tmod (n + 1 : ℤ) (A022419 n)).toNat

end

end A283710.P3834854635171585711

/-! ## A283710.P5035413941590759191

`A283711(n+1)%Δ[A022279(n)]*A283711(n+1)`
-/

namespace A283710.P5035413941590759191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283711 (n + 1)) (f1 (n + 1) - f1 n) * A283711 (n + 1)

end

end A283710.P5035413941590759191

/-! ## A283710.P4675143649223911598

`(A283711(n+1)*A283711(n+1))%Δ[A053137(n)]`
-/

namespace A283710.P4675143649223911598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283711 (n + 1) * A283711 (n + 1)) (f1 (n + 1) - f1 n)

end

end A283710.P4675143649223911598

/-! ## A283710.P2025949790018651943

`A283711(n+1)+A000010(A283711(n+1)*A283711(n+1))`
-/

namespace A283710.P2025949790018651943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283711 (n + 1) + A000010 (A283711 (n + 1) * A283711 (n + 1)).toNat

end

end A283710.P2025949790018651943

/-!
# A283711: Square root of the smallest square referenced in A124809 (Numbers of the form (square + 1) that are not squarefree).

The programs for A283711, there is no canonical definition to state claims against.
-/

/-! ## A283711.P8660592584233306359

`sqrt(A283710(n+1))`
-/

namespace A283711.P8660592584233306359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A283710 (n + 1) : ℝ)

end

end A283711.P8660592584233306359

/-! ## A283711.P11339279225792884216

`A006530(A283710(∑[n+1]-∑[n]))`
-/

namespace A283711.P11339279225792884216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A283710 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A283711.P11339279225792884216

/-! ## A283711.P17040537102452341304

`A020639(ceil(sin(n+1)²)*A283710(n+1))`
-/

namespace A283711.P17040537102452341304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌈Real.sin (n + 1 : ℝ) ^ 2⌉ * A283710 (n + 1)).toNat

end

end A283711.P17040537102452341304

/-! ## A283711.P10480855971518978019

`A020639(A283710(n+1)%A118464(n+1))`
-/

namespace A283711.P10480855971518978019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A283710 (n + 1)) (A118464 (n + 1))).toNat

end

end A283711.P10480855971518978019

/-! ## A283711.P10183715611543314037

`A020639(A283710(n+1))%A325604(n+1)`
-/

namespace A283711.P10183715611543314037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A283710 (n + 1)).toNat) (A325604 (n + 1))

end

end A283711.P10183715611543314037

/-! ## A283711.P10066943998804217478

`A020639(A283710(n+1)*A327832(2*n+1))`
-/

namespace A283711.P10066943998804217478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A283710 (n + 1) * A327832 (2 * n + 1)).toNat

end

end A283711.P10066943998804217478

/-! ## A283711.P1800302186738871075

`A006530(2*A283710(n+1))`
-/

namespace A283711.P1800302186738871075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A283710 (n + 1)).toNat

end

end A283711.P1800302186738871075

/-! ## A283711.P15016666238696642457

`A006530(A283710(n+1)+A283710(n+1))`
-/

namespace A283711.P15016666238696642457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A283710 (n + 1) + A283710 (n + 1)).toNat

end

end A283711.P15016666238696642457

/-! ## A283711.P3739955806787181211

`A097449(∑{p}[A283710(n+1), #])`
-/

namespace A283711.P3739955806787181211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A283711.P3739955806787181211

/-! ## A283711.P8264796719507503437

`A014963(A283710(Δ[n²]-n))`
-/

namespace A283711.P8264796719507503437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A283710 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A283711.P8264796719507503437

/-!
# A283712: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 758", based on the 5-celled von Neumann neighborhood.

The programs for A283712, there is no canonical definition to state claims against.
-/

/-! ## A283712.P14920988256691492182

`A007088(A283752(n))`
-/

namespace A283712.P14920988256691492182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283752 n).toNat

end

end A283712.P14920988256691492182

/-! ## A283712.P5339024665341792716

`A305989(A283905(n))`
-/

namespace A283712.P5339024665341792716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283905 n).toNat

end

end A283712.P5339024665341792716

/-! ## A283712.P17810657893275589438

`A185544(2*A283752(n))`
-/

namespace A283712.P17810657893275589438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283752 n).toNat

end

end A283712.P17810657893275589438

/-! ## A283712.P5599220164887803023

`A185544(lcm(2, A283752(n)))`
-/

namespace A283712.P5599220164887803023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283752 n))

end

end A283712.P5599220164887803023

/-! ## A283712.P10489080146891958517

`A185544(A283752(n)+A283752(n))`
-/

namespace A283712.P10489080146891958517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283752 n + A283752 n).toNat

end

end A283712.P10489080146891958517

/-!
# A283713: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 758", based on the 5-celled von Neumann neighborhood.

The programs for A283713, there is no canonical definition to state claims against.
-/

/-! ## A283713.P11990586890010358704

`A007088(A283905(n))`
-/

namespace A283713.P11990586890010358704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A283905 n).toNat

end

end A283713.P11990586890010358704

/-! ## A283713.P9423430485628738891

`A305989(A283752(n))`
-/

namespace A283713.P9423430485628738891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A283752 n).toNat

end

end A283713.P9423430485628738891

/-! ## A283713.P5747858339164387814

`A185544(2*A283905(n))`
-/

namespace A283713.P5747858339164387814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A283905 n).toNat

end

end A283713.P5747858339164387814

/-! ## A283713.P5631466225211422255

`A185544(lcm(2, A283905(n)))`
-/

namespace A283713.P5631466225211422255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A283905 n))

end

end A283713.P5631466225211422255

/-! ## A283713.P16971697746940196012

`A185544(A283905(n)+A283905(n))`
-/

namespace A283713.P16971697746940196012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A283905 n + A283905 n).toNat

end

end A283713.P16971697746940196012

/-!
# A283715: a(n) is the number of Carmichael numbers whose largest prime factor is prime(n).

The programs for A283715, there is no canonical definition to state claims against.
-/

/-! ## A283715.P10214161910319913852

`Δ[A280617(A028815(n))]`
-/

namespace A283715.P10214161910319913852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280617 (A028815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283715.P10214161910319913852

/-! ## A283715.P15794321699749047788

`Δ[A280617(p?[A001281(n)])]`
-/

namespace A283715.P15794321699749047788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280617 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283715.P15794321699749047788

/-! ## A283715.P17401604305699264386

`Δ[A280617(A008578(n+1))]`
-/

namespace A283715.P17401604305699264386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280617 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283715.P17401604305699264386

/-! ## A283715.P14295115527613632949

`Δ[A280617(A324050(n+1))]`
-/

namespace A283715.P14295115527613632949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280617 (A324050 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283715.P14295115527613632949

/-! ## A283715.P14117318696278473696

`Δ[A280617(record[A006530(n+1)])]`
-/

namespace A283715.P14117318696278473696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280617 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283715.P14117318696278473696

/-!
# A283716: Row n=3 of A283674.

The programs for A283716, the canonical program `A283716.P12325098652103205279` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283716 has offset 0).

The definition of A283716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283716.P12325098652103205279

`1+4^n+27^n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283716

/-- `1+4^n+27^n` -/
def P12325098652103205279.Spec : Prop :=
  ∀ n, (P12325098652103205279.a n : ℤ) = A283716 n

theorem P12325098652103205279.correct : P12325098652103205279.Spec := by
  intro n
  simp only [A283716]

end A283716

/-! ## A283716.P10403944145191992618

`A283674(A167614(n+2))`
-/

namespace A283716.P10403944145191992618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (A167614 (n + 2)).toNat

end

end A283716.P10403944145191992618

namespace A283716

/-- `A283674(A167614(n+2))` -/
def P10403944145191992618.Spec : Prop :=
  ∀ n, P10403944145191992618.a n = A283716 n

end A283716

/-! ## A283716.P12610472076218736329

`A283674(A141214(n)+6)`
-/

namespace A283716.P12610472076218736329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (A141214 n + 6).toNat

end

end A283716.P12610472076218736329

namespace A283716

/-- `A283674(A141214(n)+6)` -/
def P12610472076218736329.Spec : Prop :=
  ∀ n, P12610472076218736329.a n = A283716 n

end A283716

/-! ## A283716.P16131385930786663709

`A294758(A141214(n)+6)`
-/

namespace A283716.P16131385930786663709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294758 (A141214 n + 6).toNat

end

end A283716.P16131385930786663709

namespace A283716

/-- `A294758(A141214(n)+6)` -/
def P16131385930786663709.Spec : Prop :=
  ∀ n, P16131385930786663709.a n = A283716 n

end A283716

/-! ## A283716.P7049651717418074275

`A283674(A052905(n)+8)`
-/

namespace A283716.P7049651717418074275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (A052905 n + 8).toNat

end

end A283716.P7049651717418074275

namespace A283716

/-- `A283674(A052905(n)+8)` -/
def P7049651717418074275.Spec : Prop :=
  ∀ n, P7049651717418074275.a n = A283716 n

end A283716

/-!
# A283718: Numbers m such that sum of digits of 27*m is 27.

The programs for A283718, there is no canonical definition to state claims against.
-/

/-! ## A283718.P11958266605416168990

`A002264(∩[A279777(n+1), A008585(n)])`
-/

namespace A283718.P11958266605416168990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A283718.P11958266605416168990

/-! ## A283718.P4015842322361319660

`eq[7, A053837(27*n)]`
-/

namespace A283718.P4015842322361319660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053837 (27 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283718.P4015842322361319660

/-! ## A283718.P8260832216899033831

`eq[27, A007953(27*n)]`
-/

namespace A283718.P8260832216899033831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (27 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283718.P8260832216899033831

/-! ## A283718.P6436899313170374881

`lt[18, A007953(A305548(n))]`
-/

namespace A283718.P6436899313170374881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A305548 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283718.P6436899313170374881

/-! ## A283718.P3443864084934464888

`eq[3, A037833(A128470(n))]`
-/

namespace A283718.P3443864084934464888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A128470 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283718.P3443864084934464888

/-!
# A283719: Main diagonal of A283674.

The programs for A283719, there is no canonical definition to state claims against.
-/

/-! ## A283719.P15077558206534136086

`A283674(∑[4*n])`
-/

namespace A283719.P15077558206534136086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283674 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283719.P15077558206534136086

/-!
# A283720: Main diagonal of A283675.

The programs for A283720, there is no canonical definition to state claims against.
-/

/-! ## A283720.P13183011614408388229

`A283675(∑[4*n])`
-/

namespace A283720.P13183011614408388229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283720.P13183011614408388229

/-!
# A283721: Number of n X 3 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283721, there is no canonical definition to state claims against.
-/

/-! ## A283721.P5116844967774766728

`A283726(∑[n+3]+1)`
-/

namespace A283721.P5116844967774766728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283721.P5116844967774766728

/-! ## A283721.P5441955057197306582

`record[A283726(∑[A158416(n)])]`
-/

namespace A283721.P5441955057197306582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283721.P5441955057197306582

/-! ## A283721.P8339413262521902135

`record[A283726(A347633(n+1))]`
-/

namespace A283721.P8339413262521902135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283721.P8339413262521902135

/-! ## A283721.P14463000615274591891

`record[A283726(Δ[A054974(n+2)])]`
-/

namespace A283721.P14463000615274591891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283721.P14463000615274591891

/-! ## A283721.P4223718328339783000

`record[A283726(A193739(n+1)+n)]`
-/

namespace A283721.P4223718328339783000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A193739 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283721.P4223718328339783000

/-!
# A283722: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283722, there is no canonical definition to state claims against.
-/

/-! ## A283722.P18258888315505161464

`A283726(A141214(n+1))`
-/

namespace A283722.P18258888315505161464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A141214 (n + 1)).toNat

end

end A283722.P18258888315505161464

/-! ## A283722.P4887571487268331011

`A283726(A027379(n+2))`
-/

namespace A283722.P4887571487268331011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A027379 (n + 2)).toNat

end

end A283722.P4887571487268331011

/-! ## A283722.P7225640174996483689

`A283726(A055998(n+2))`
-/

namespace A283722.P7225640174996483689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A055998 (n + 2)).toNat

end

end A283722.P7225640174996483689

/-! ## A283722.P9092522022768815403

`A283726(A056000(n)+7)`
-/

namespace A283722.P9092522022768815403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A056000 n + 7).toNat

end

end A283722.P9092522022768815403

/-! ## A283722.P13737241516952740499

`A283726(eq[2, A054123(n)])`
-/

namespace A283722.P13737241516952740499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283722.P13737241516952740499

/-!
# A283723: Number of n X 5 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283723, there is no canonical definition to state claims against.
-/

/-! ## A283723.P1596706856212363625

`A283726(A046691(n+3))`
-/

namespace A283723.P1596706856212363625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A046691 (n + 3)).toNat

end

end A283723.P1596706856212363625

/-! ## A283723.P1401721927496812590

`A283726(eq[4, A054123(n)])`
-/

namespace A283723.P1401721927496812590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283723.P1401721927496812590

/-! ## A283723.P5328139725322481084

`A283726(eq[4, A193592(n)])`
-/

namespace A283723.P5328139725322481084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283723.P5328139725322481084

/-! ## A283723.P9588127314472394634

`A283726(eq[8, A166065(n)])`
-/

namespace A283723.P9588127314472394634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283723.P9588127314472394634

/-! ## A283723.P11248392056215755759

`A283726(Δ[A023545(n+1)])`
-/

namespace A283723.P11248392056215755759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (f1 (n + 1) - f1 n).toNat

end

end A283723.P11248392056215755759

/-!
# A283724: Number of nX6 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283724, there is no canonical definition to state claims against.
-/

/-! ## A283724.P8767223903497007066

`A283726(A052905(n+3))`
-/

namespace A283724.P8767223903497007066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A052905 (n + 3)).toNat

end

end A283724.P8767223903497007066

/-! ## A283724.P5270977492278595275

`A283726(A056119(n)+16)`
-/

namespace A283724.P5270977492278595275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A056119 n + 16).toNat

end

end A283724.P5270977492278595275

/-! ## A283724.P9845943517749909372

`A283726(eq[3, A219347(n)])`
-/

namespace A283724.P9845943517749909372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283724.P9845943517749909372

/-! ## A283724.P5287966971019544344

`A283726(eq[5, A193592(n)])`
-/

namespace A283724.P5287966971019544344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283724.P5287966971019544344

/-! ## A283724.P11365417106669142652

`A283726(eq[8, A185782(n+1)])`
-/

namespace A283724.P11365417106669142652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283724.P11365417106669142652

/-!
# A283725: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283725, there is no canonical definition to state claims against.
-/

/-! ## A283725.P11082102591679271746

`A283726(A055999(n+4))`
-/

namespace A283725.P11082102591679271746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A055999 (n + 4)).toNat

end

end A283725.P11082102591679271746

/-! ## A283725.P2758642891002998600

`A283726(eq[4, A219347(n)])`
-/

namespace A283725.P2758642891002998600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283725.P2758642891002998600

/-! ## A283725.P9103653547507493467

`A283726(eq[5, A332954(n)])`
-/

namespace A283725.P9103653547507493467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283725.P9103653547507493467

/-! ## A283725.P6352318672675107180

`A283726(eq[6, A193592(n)])`
-/

namespace A283725.P6352318672675107180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283725.P6352318672675107180

/-! ## A283725.P1855055800592265699

`A283726(A000124(n+7)-7)`
-/

namespace A283725.P1855055800592265699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A000124 (n + 7) - 7).toNat

end

end A283725.P1855055800592265699

/-!
# A283726: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283726, there is no canonical definition to state claims against.
-/

/-! ## A283726.P3233046518998714813

`A072089(A281400(n+1))`
-/

namespace A283726.P3233046518998714813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A281400 (n + 1)).toNat

end

end A283726.P3233046518998714813

/-! ## A283726.P5216219326810698829

`2*A007150(A329070(n))`
-/

namespace A283726.P5216219326810698829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007150 (A329070 n).toNat

end

end A283726.P5216219326810698829

/-! ## A283726.P1865269059819592929

`A126663(A281400(n+1)+2)`
-/

namespace A283726.P1865269059819592929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126663 (A281400 (n + 1) + 2).toNat

end

end A283726.P1865269059819592929

/-! ## A283726.P12036129648855497427

`A181015(n+1)%A035348(n+1)`
-/

namespace A283726.P12036129648855497427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181015 (n + 1)) (A035348 (n + 1))

end

end A283726.P12036129648855497427

/-! ## A283726.P11430074028949797000

`A000984(n)%A296561(A103371(n))`
-/

namespace A283726.P11430074028949797000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000984 n) (A296561 (A103371 n).toNat)

end

end A283726.P11430074028949797000

/-!
# A283727: Number of 2 X n 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283727, there is no canonical definition to state claims against.
-/

/-! ## A283727.P15464538975318563786

`A283726(∑[n+1]+2)`
-/

namespace A283727.P15464538975318563786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283727.P15464538975318563786

/-! ## A283727.P12987776200892063868

`lcm(2, A283726(A133263(n+1)))`
-/

namespace A283727.P12987776200892063868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A283726 (A133263 (n + 1)).toNat)

end

end A283727.P12987776200892063868

/-! ## A283727.P10156728117954848173

`A283726(A133263(n+1))+A011742(n)`
-/

namespace A283727.P10156728117954848173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A133263 (n + 1)).toNat + A011742 n

end

end A283727.P10156728117954848173

/-! ## A283727.P6431752744661443248

`A266072(2*n)*A283726(A133263(n+1))`
-/

namespace A283727.P6431752744661443248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 (2 * n) * A283726 (A133263 (n + 1)).toNat

end

end A283727.P6431752744661443248

/-! ## A283727.P2367596139105026835

`A283726(A133263(n+1))%A125687(n+1)`
-/

namespace A283727.P2367596139105026835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283726 (A133263 (n + 1)).toNat) (A125687 (n + 1))

end

end A283727.P2367596139105026835

/-!
# A283728: Number of 3Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283728, there is no canonical definition to state claims against.
-/

/-! ## A283728.P16957027352846852698

`A283726(∑[n+2]+4)`
-/

namespace A283728.P16957027352846852698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283728.P16957027352846852698

/-! ## A283728.P15775398908563802770

`A283726(A167614(n+1))+A185037(n)`
-/

namespace A283728.P15775398908563802770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A167614 (n + 1)).toNat + A185037 n

end

end A283728.P15775398908563802770

/-! ## A283728.P10402470855082461483

`A283726(A167614(n+1))%A016880(n)`
-/

namespace A283728.P10402470855082461483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283726 (A167614 (n + 1)).toNat) (A016880 n)

end

end A283728.P10402470855082461483

/-! ## A283728.P4806077879028179415

`lcm(A000034(n), A283726(A167614(n+1)))`
-/

namespace A283728.P4806077879028179415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A283726 (A167614 (n + 1)).toNat)

end

end A283728.P4806077879028179415

/-! ## A283728.P12320663768572007518

`and(A057428(n), A283726(A167614(n+1)))`
-/

namespace A283728.P12320663768572007518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A283726 (A167614 (n + 1)).toNat)

end

end A283728.P12320663768572007518

/-!
# A283729: Number of 4Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283729, there is no canonical definition to state claims against.
-/

/-! ## A283729.P11243298887440844806

`A283726(∑[n+3]+7)`
-/

namespace A283729.P11243298887440844806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A283729.P11243298887440844806

/-! ## A283729.P509833629473136539

`record[A283726(A130270(n+1)+4)]`
-/

namespace A283729.P509833629473136539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A130270 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283729.P509833629473136539

/-! ## A283729.P15913226156709916240

`A283726(A076027(n+5))%A114178(3*n+1)`
-/

namespace A283729.P15913226156709916240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283726 (A076027 (n + 5)).toNat) (A114178 (3 * n + 1))

end

end A283729.P15913226156709916240

/-!
# A283730: Number of 5Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283730, there is no canonical definition to state claims against.
-/

/-! ## A283730.P12874662905703946268

`A283726(A167499(n+3))`
-/

namespace A283730.P12874662905703946268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A167499 (n + 3)).toNat

end

end A283730.P12874662905703946268

/-! ## A283730.P11648676819399659064

`A283726(A155212(n)+13)`
-/

namespace A283730.P11648676819399659064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A155212 n + 13).toNat

end

end A283730.P11648676819399659064

/-! ## A283730.P13397595889798673195

`A283726(A056000(n)+15)`
-/

namespace A283730.P13397595889798673195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A056000 n + 15).toNat

end

end A283730.P13397595889798673195

/-! ## A283730.P3415643379157631705

`A283726(A141214(n+1)+8)`
-/

namespace A283730.P3415643379157631705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A141214 (n + 1) + 8).toNat

end

end A283730.P3415643379157631705

/-! ## A283730.P12617602658834207243

`A283726(A052905(n+1)+10)`
-/

namespace A283730.P12617602658834207243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A052905 (n + 1) + 10).toNat

end

end A283730.P12617602658834207243

/-!
# A283731: Number of 6Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283731, there is no canonical definition to state claims against.
-/

/-! ## A283731.P5726855770335812951

`A283726(A166136(n+4))`
-/

namespace A283731.P5726855770335812951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A166136 (n + 4)).toNat

end

end A283731.P5726855770335812951

/-! ## A283731.P3905475679975277095

`A283726(A056115(n)+21)`
-/

namespace A283731.P3905475679975277095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A056115 n + 21).toNat

end

end A283731.P3905475679975277095

/-! ## A283731.P5652849163313694793

`A283726(A000217(n+5)+6)`
-/

namespace A283731.P5652849163313694793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A000217 (n + 5) + 6).toNat

end

end A283731.P5652849163313694793

/-! ## A283731.P10421170541601328817

`A283726(eq[6, A130270(n+1)])`
-/

namespace A283731.P10421170541601328817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283731.P10421170541601328817

/-! ## A283731.P15965963784307561483

`A283726(eq[7, A131818(n+1)])`
-/

namespace A283731.P15965963784307561483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283731.P15965963784307561483

/-!
# A283732: Number of 7Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly one element.

The programs for A283732, there is no canonical definition to state claims against.
-/

/-! ## A283732.P322808758263010521

`A283726(A056119(n)+28)`
-/

namespace A283732.P322808758263010521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A056119 n + 28).toNat

end

end A283732.P322808758263010521

/-! ## A283732.P14541889324796864381

`A283726(eq[11, A066657(n)])`
-/

namespace A283732.P14541889324796864381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283732.P14541889324796864381

/-! ## A283732.P11907416530278627424

`A283726(A167499(n+5)+2)`
-/

namespace A283732.P11907416530278627424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (A167499 (n + 5) + 2).toNat

end

end A283732.P11907416530278627424

/-! ## A283732.P11921478135961756949

`A283726(eq[6, A002262(n)]+1)`
-/

namespace A283732.P11921478135961756949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A283732.P11921478135961756949

/-! ## A283732.P5354625213267913725

`A283726(eq[8, A131818(n+1)])`
-/

namespace A283732.P5354625213267913725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283732.P5354625213267913725

/-!
# A283733: a(n) = a(n-1) + 1 + floor(n*golden ratio), with a(0) = 1.

The programs for A283733, the canonical program `A283733.P3518314645998823892` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283733 has offset 0).

The definition of A283733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+1+floor(n*ϕ)` (program `A283733.P3518314645998823892`, by `A283733.P3518314645998823892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A283733.P3518314645998823892

`a(n-1)+1+floor(n*ϕ)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283733

/-- `a(n-1)+1+floor(n*ϕ)` -/
def P3518314645998823892.Spec : Prop :=
  ∀ n, P3518314645998823892.a n = A283733 n

theorem P3518314645998823892.correct : P3518314645998823892.Spec := by
  intro n
  simp only [A283733]

end A283733

/-! ## A283733.P17900549706429710958

`A054347(n)+n+1`
-/

namespace A283733.P17900549706429710958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n + (n : ℤ) + 1

end

end A283733.P17900549706429710958

namespace A283733

/-- `A054347(n)+n+1` -/
def P17900549706429710958.Spec : Prop :=
  ∀ n, P17900549706429710958.a n = A283733 n

end A283733

/-! ## A283733.P9279448956554015506

`∑[floor(ϕ*n)+1]`
-/

namespace A283733.P9279448956554015506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283733.P9279448956554015506

namespace A283733

/-- `∑[floor(ϕ*n)+1]` -/
def P9279448956554015506.Spec : Prop :=
  ∀ n, P9279448956554015506.a n = A283733 n

end A283733

/-! ## A283733.P2122787424812208417

`∑[floor(ϕ*n)]-xor(n, -1)`
-/

namespace A283733.P2122787424812208417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A283733.P2122787424812208417

namespace A283733

/-- `∑[floor(ϕ*n)]-xor(n, -1)` -/
def P2122787424812208417.Spec : Prop :=
  ∀ n, P2122787424812208417.a n = A283733 n

end A283733

/-! ## A283733.P18021128641504533941

`ceil(a(n-1)+ϕ*n)` with `a(0)=1`
-/

namespace A283733.P18021128641504533941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.goldenRatio * (n : ℝ)⌉

end

end A283733.P18021128641504533941

namespace A283733

/-- `ceil(a(n-1)+ϕ*n)` -/
def P18021128641504533941.Spec : Prop :=
  ∀ n, P18021128641504533941.a n = A283733 n

end A283733

/-! ## A283733.P3472855295286912546

`∑[floor(n/ϕ)]+C(n+2, 2)`
-/

namespace A283733.P3472855295286912546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 2) 2 : ℤ)

end

end A283733.P3472855295286912546

namespace A283733

/-- `∑[floor(n/ϕ)]+C(n+2, 2)` -/
def P3472855295286912546.Spec : Prop :=
  ∀ n, P3472855295286912546.a n = A283733 n

end A283733

/-! ## A283733.P15064454605662036028

`a(n-1)-floor(n/(1-ϕ))` with `a(0)=1`
-/

namespace A283733.P15064454605662036028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(n : ℝ) / (1 - Real.goldenRatio)⌋

end

end A283733.P15064454605662036028

namespace A283733

/-- `a(n-1)-floor(n/(1-ϕ))` -/
def P15064454605662036028.Spec : Prop :=
  ∀ n, P15064454605662036028.a n = A283733 n

end A283733

/-! ## A283733.P2876192274893718741

`∑[n+1-a(a(n-1))]+∑[n]` with `a(0)=1, a(1)=1`
-/

namespace A283733.P2876192274893718741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n + 1 : ℤ) - f1 (f1 (n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A283733.P2876192274893718741

namespace A283733

/-- `∑[n+1-a(a(n-1))]+∑[n]` -/
def P2876192274893718741.Spec : Prop :=
  ∀ n, P2876192274893718741.a n = A283733 n

end A283733

/-! ## A283733.P14233286020194227578

`∑[A004956(n)]+1`
-/

namespace A283733.P14233286020194227578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283733.P14233286020194227578

namespace A283733

/-- `∑[A004956(n)]+1` -/
def P14233286020194227578.Spec : Prop :=
  ∀ n, P14233286020194227578.a n = A283733 n

end A283733

/-! ## A283733.P10415120500861064489

`A283969(n)-∑[n]`
-/

namespace A283733.P10415120500861064489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283969 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A283733.P10415120500861064489

namespace A283733

/-- `A283969(n)-∑[n]` -/
def P10415120500861064489.Spec : Prop :=
  ∀ n, P10415120500861064489.a n = A283733 n

end A283733

/-! ## A283733.P11570032460326790555

`∑[A004957(n)-n]+1`
-/

namespace A283733.P11570032460326790555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A283733.P11570032460326790555

namespace A283733

/-- `∑[A004957(n)-n]+1` -/
def P11570032460326790555.Spec : Prop :=
  ∀ n, P11570032460326790555.a n = A283733 n

end A283733

/-! ## A283733.P8264204420128183289

`A088207(n)+∑[1-n]`
-/

namespace A283733.P8264204420128183289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283733.P8264204420128183289

namespace A283733

/-- `A088207(n)+∑[1-n]` -/
def P8264204420128183289.Spec : Prop :=
  ∀ n, P8264204420128183289.a n = A283733 n

end A283733

/-! ## A283733.P7563915862639726679

`∑[A189662(n+1)]-n`
-/

namespace A283733.P7563915862639726679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A283733.P7563915862639726679

namespace A283733

/-- `∑[A189662(n+1)]-n` -/
def P7563915862639726679.Spec : Prop :=
  ∀ n, P7563915862639726679.a n = A283733 n

end A283733

/-! ## A283733.P9590522320318222155

`A026351(n)+a(n-1)` with `a(0)=1`
-/

namespace A283733.P9590522320318222155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026351 n + a (n - 1)

end

end A283733.P9590522320318222155

namespace A283733

/-- `A026351(n)+a(n-1)` -/
def P9590522320318222155.Spec : Prop :=
  ∀ n, P9590522320318222155.a n = A283733 n

end A283733

/-! ## A283733.P9742405846647220896

`∑[A099267(n+1)]-(n+1)`
-/

namespace A283733.P9742405846647220896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A283733.P9742405846647220896

namespace A283733

/-- `∑[A099267(n+1)]-(n+1)` -/
def P9742405846647220896.Spec : Prop :=
  ∀ n, P9742405846647220896.a n = A283733 n

end A283733

/-! ## A283733.P17168660118034065663

`∑[A007066(n+1)-n]-n`
-/

namespace A283733.P17168660118034065663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A283733.P17168660118034065663

namespace A283733

/-- `∑[A007066(n+1)-n]-n` -/
def P17168660118034065663.Spec : Prop :=
  ∀ n, P17168660118034065663.a n = A283733 n

end A283733

/-! ## A283733.P2125879508770008416

`(n+1)²-∑[A189663(n+1)]`
-/

namespace A283733.P2125879508770008416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283733.P2125879508770008416

namespace A283733

/-- `(n+1)²-∑[A189663(n+1)]` -/
def P2125879508770008416.Spec : Prop :=
  ∀ n, P2125879508770008416.a n = A283733 n

end A283733

/-! ## A283733.P1577474145685039586

`∑[A284624(n+1)]-(n+1)²`
-/

namespace A283733.P1577474145685039586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A283733.P1577474145685039586

namespace A283733

/-- `∑[A284624(n+1)]-(n+1)²` -/
def P1577474145685039586.Spec : Prop :=
  ∀ n, P1577474145685039586.a n = A283733 n

end A283733

/-! ## A283733.P6821832338791449801

`∑[comp[A001950(n+1)]]+1+n`
-/

namespace A283733.P6821832338791449801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A283733.P6821832338791449801

namespace A283733

/-- `∑[comp[A001950(n+1)]]+1+n` -/
def P6821832338791449801.Spec : Prop :=
  ∀ n, (P6821832338791449801.a n : ℤ) = A283733 n

end A283733

/-!
# A283734: Rank array, R, of the golden ratio, read by antidiagonals downwards.

The programs for A283734, there is no canonical definition to state claims against.
-/

/-! ## A283734.P16896651900396370408

`A167267(A038722(n+1)%A005502(n))`
-/

namespace A283734.P16896651900396370408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167267 (Int.tmod (A038722 (n + 1)) (A005502 n)).toNat

end

end A283734.P16896651900396370408

/-! ## A283734.P15578048389247466394

`A185284(A059268(n))+A087465(n)`
-/

namespace A283734.P15578048389247466394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A059268 n).toNat + A087465 n

end

end A283734.P15578048389247466394

/-! ## A283734.P4938233966668742199

`A247714(n)+A185284(A059268(n))`
-/

namespace A283734.P4938233966668742199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 n + A185284 (A059268 n).toNat

end

end A283734.P4938233966668742199

/-! ## A283734.P14609534272410290518

`A185284(A059268(n))-(A185284(n)-A087465(n))`
-/

namespace A283734.P14609534272410290518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A059268 n).toNat - (A185284 n - A087465 n)

end

end A283734.P14609534272410290518

/-! ## A283734.P9616448716399692638

`A185284(A059268(n))-(A185284(n)-A247714(n))`
-/

namespace A283734.P9616448716399692638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A059268 n).toNat - (A185284 n - A247714 n)

end

end A283734.P9616448716399692638

/-!
# A283735: Expansion of 10 in base Pi.

The programs for A283735, there is no canonical definition to state claims against.
-/

/-! ## A283735.P17833549397010213443

`A321102(xor(A073060(n), A212996(n)))`
-/

namespace A283735.P17833549397010213443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321102 (Int.xor (A073060 n) (A212996 n)).toNat

end

end A283735.P17833549397010213443

/-!
# A283736: Semisimple numbers: positive integers having exactly one reduced phi-partition.

The programs for A283736, there is no canonical definition to state claims against.
-/

/-! ## A283736.P1419934273161754654

`eq[1, A283530(n+1)]+1`
-/

namespace A283736.P1419934273161754654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283736.P1419934273161754654

/-! ## A283736.P9354546154184220448

`eq[1, A283530(n^floor(atan(n)))]`
-/

namespace A283736.P9354546154184220448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283736.P9354546154184220448

/-! ## A283736.P8240773252408702409

`∪[p?[2*n+1], A283320(n+1)]`
-/

namespace A283736.P8240773252408702409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A283736.P8240773252408702409

/-! ## A283736.P2198523079275730954

`eq[1, A283530(A028310(n))]`
-/

namespace A283736.P2198523079275730954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283736.P2198523079275730954

/-! ## A283736.P4205540596616444366

`A020725(eq[1, A283530(n+1)])`
-/

namespace A283736.P4205540596616444366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283736.P4205540596616444366

/-! ## A283736.P7201413560490171243

`A065475(eq[1, A283530(n+1)])`
-/

namespace A283736.P7201413560490171243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283736.P7201413560490171243

/-! ## A283736.P6436643399593266563

`A114637(eq[1, A283530(n+1)])`
-/

namespace A283736.P6436643399593266563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283736.P6436643399593266563

/-! ## A283736.P5586525932058178380

`eq[1, A283530(A233583(n+1))]`
-/

namespace A283736.P5586525932058178380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283736.P5586525932058178380

/-! ## A283736.P18286921386899178092

`eq[1, A283530(A065033(2*n))]`
-/

namespace A283736.P18286921386899178092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283530 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283736.P18286921386899178092

/-! ## A283736.P5627470315715624842

`∪[A065091(n+1), A283320(n+1)]`
-/

namespace A283736.P5627470315715624842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283736.P5627470315715624842

/-!
# A283737: Numbers with digit sum 13 that are multiples of 13.

The programs for A283737, the canonical program `A283737.P2852708590030688587` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283737 has offset 1).

The definition of A283737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283737.P2695893793542976712

`∩[A052020(n+1), A143164(n+1)]`
-/

namespace A283737.P2695893793542976712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283737.P2695893793542976712

namespace A283737

/-- `∩[A052020(n+1), A143164(n+1)]` -/
def P2695893793542976712.Spec : Prop :=
  ∀ n, (P2695893793542976712.a n : ℤ) = A283737 (n + 1)

end A283737

/-! ## A283737.P10868625406794482204

`∩[A062713(n+1), A143164(n+1)]`
-/

namespace A283737.P10868625406794482204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283737.P10868625406794482204

namespace A283737

/-- `∩[A062713(n+1), A143164(n+1)]` -/
def P10868625406794482204.Spec : Prop :=
  ∀ n, (P10868625406794482204.a n : ℤ) = A283737 (n + 1)

end A283737

/-! ## A283737.P2852708590030688587

`∩[A085370(n+1), A143164(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A283737

/-- `∩[A085370(n+1), A143164(n+1)]` -/
def P2852708590030688587.Spec : Prop :=
  ∀ n, (P2852708590030688587.a n : ℤ) = A283737 (n + 1)

theorem P2852708590030688587.correct : P2852708590030688587.Spec := by
  intro n
  simp only [A283737, Nat.add_sub_cancel]

end A283737

/-! ## A283737.P10708861628594389612

`∩[A143164(n+1), A008595(n)]`
-/

namespace A283737.P10708861628594389612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283737.P10708861628594389612

namespace A283737

/-- `∩[A143164(n+1), A008595(n)]` -/
def P10708861628594389612.Spec : Prop :=
  ∀ n, (P10708861628594389612.a n : ℤ) = A283737 (n + 1)

end A283737

/-! ## A283737.P15668976974318027479

`∩[A143164(n+1), A168105(n)]`
-/

namespace A283737.P15668976974318027479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168105 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283737.P15668976974318027479

namespace A283737

/-- `∩[A143164(n+1), A168105(n)]` -/
def P15668976974318027479.Spec : Prop :=
  ∀ n, (P15668976974318027479.a n : ℤ) = A283737 (n + 1)

end A283737

/-! ## A283737.P17132886088307705965

`∩[A005349(n+1), A143164(n+1)]`
-/

namespace A283737.P17132886088307705965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283737.P17132886088307705965

namespace A283737

/-- `∩[A005349(n+1), A143164(n+1)]` -/
def P17132886088307705965.Spec : Prop :=
  ∀ n, (P17132886088307705965.a n : ℤ) = A283737 (n + 1)

end A283737

/-! ## A283737.P16721896542126047184

`∩[A143164(n+1), A180477(n+1)]`
-/

namespace A283737.P16721896542126047184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283737.P16721896542126047184

namespace A283737

/-- `∩[A143164(n+1), A180477(n+1)]` -/
def P16721896542126047184.Spec : Prop :=
  ∀ n, (P16721896542126047184.a n : ℤ) = A283737 (n + 1)

end A283737

/-! ## A283737.P15570848929249902324

`A245062(eq[12, A193592(n)])`
-/

namespace A283737.P15570848929249902324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283737.P15570848929249902324

namespace A283737

/-- `A245062(eq[12, A193592(n)])` -/
def P15570848929249902324.Spec : Prop :=
  ∀ n, P15570848929249902324.a n = A283737 (n + 1)

end A283737

/-! ## A283737.P9871321778969790684

`A245062(eq[15, A219347(n)])`
-/

namespace A283737.P9871321778969790684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283737.P9871321778969790684

namespace A283737

/-- `A245062(eq[15, A219347(n)])` -/
def P9871321778969790684.Spec : Prop :=
  ∀ n, P9871321778969790684.a n = A283737 (n + 1)

end A283737

/-! ## A283737.P12164431095541647897

`A245062(A005408(n)+eq[23, A066657(n)])`
-/

namespace A283737.P12164431095541647897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (A005408 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A283737.P12164431095541647897

namespace A283737

/-- `A245062(A005408(n)+eq[23, A066657(n)])` -/
def P12164431095541647897.Spec : Prop :=
  ∀ n, P12164431095541647897.a n = A283737 (n + 1)

end A283737

/-!
# A283742: Numbers with digit sum 11 that are multiples of 11.

The programs for A283742, there is no canonical definition to state claims against.
-/

/-! ## A283742.P9135519593100172673

`11*A279771(n+1)`
-/

namespace A283742.P9135519593100172673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A279771 (n + 1)

end

end A283742.P9135519593100172673

/-! ## A283742.P15340064829135515110

`∩[A032945(n+1), A166311(n+1)]`
-/

namespace A283742.P15340064829135515110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P15340064829135515110

/-! ## A283742.P8320089627501608660

`∩[A166311(n+1), A216995(n+1)]`
-/

namespace A283742.P8320089627501608660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P8320089627501608660

/-! ## A283742.P6928861601348704492

`∩[A052020(n+1), A166311(n+1)]`
-/

namespace A283742.P6928861601348704492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P6928861601348704492

/-! ## A283742.P11361783486912425605

`∩[A062713(n+1), A166311(n+1)]`
-/

namespace A283742.P11361783486912425605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P11361783486912425605

/-! ## A283742.P877289188425261510

`∩[A052020(n+1), A216995(n+1)]`
-/

namespace A283742.P877289188425261510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P877289188425261510

/-! ## A283742.P12363400901816068082

`∩[A062713(n+1), A216995(n+1)]`
-/

namespace A283742.P12363400901816068082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P12363400901816068082

/-! ## A283742.P13669085093449218194

`∩[A032945(n+1), A061880(n+1)]`
-/

namespace A283742.P13669085093449218194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P13669085093449218194

/-! ## A283742.P16394395117682475690

`∩[A061880(n+1), A166311(n+1)]`
-/

namespace A283742.P16394395117682475690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P16394395117682475690

/-! ## A283742.P3867180634445423742

`∩[A085370(n+1), A166311(n+1)]`
-/

namespace A283742.P3867180634445423742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283742.P3867180634445423742

/-!
# A283744: Nonprime numbers k such that k divides sigma(k^2) - 1.

The programs for A283744, there is no canonical definition to state claims against.
-/

/-! ## A283744.P5059175361801334401

`filter[A283599(n+1), A005171(#)]`
-/

namespace A283744.P5059175361801334401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A283744.P5059175361801334401

/-! ## A283744.P16026911056159961859

`∩[A205783(n+1), A283599(n+1)]`
-/

namespace A283744.P16026911056159961859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283744.P16026911056159961859

/-! ## A283744.P15595471598853327059

`∩[A018252(n+1), A283599(n+1)]`
-/

namespace A283744.P15595471598853327059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283744.P15595471598853327059

/-! ## A283744.P549106930966803236

`∩[A056653(n+1), A283599(n+1)]`
-/

namespace A283744.P549106930966803236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283744.P549106930966803236

/-! ## A283744.P15866636688105059565

`∩[A092671(n+1), A283599(n+1)]`
-/

namespace A283744.P15866636688105059565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A283744.P15866636688105059565

/-!
# A283745: a(n) = least m such that 1/(n+1) < f(m) < 1/n, where f(m) = fractional part of m*(golden ratio).

The programs for A283745, there is no canonical definition to state claims against.
-/

/-! ## A283745.P6953454127733215659

`A283738(∑[n+1])`
-/

namespace A283745.P6953454127733215659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283738 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283745.P6953454127733215659

/-! ## A283745.P9001431445159332632

`A194832(n*A180292(n+3)+1)`
-/

namespace A283745.P9001431445159332632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194832 ((n : ℤ) * A180292 (n + 3) + 1).toNat

end

end A283745.P9001431445159332632

/-! ## A283745.P9638333131629297260

`A326626(n)+A283738(A025747(n))`
-/

namespace A283745.P9638333131629297260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A283738 (A025747 n).toNat

end

end A283745.P9638333131629297260

/-! ## A283745.P7586068954309899378

`A326626(n)+A283738(A261422(n))`
-/

namespace A283745.P7586068954309899378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A283738 (A261422 n).toNat

end

end A283745.P7586068954309899378

/-! ## A283745.P18093882449434978252

`A283738(A025747(n))%A090288(n)`
-/

namespace A283745.P18093882449434978252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283738 (A025747 n).toNat) (A090288 n)

end

end A283745.P18093882449434978252

/-!
# A283746: a(n) = least m such that (n-1)/n < f(m) < n/(n+1), where f(m) = fractional part of m*(golden ratio).

The programs for A283746, there is no canonical definition to state claims against.
-/

/-! ## A283746.P15881301671334054269

`A283739(∑[n+1])`
-/

namespace A283746.P15881301671334054269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283739 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283746.P15881301671334054269

/-! ## A283746.P4333131958086877400

`A283739(A025747(n))+char[10]`
-/

namespace A283746.P4333131958086877400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283739 (A025747 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A283746.P4333131958086877400

/-! ## A283746.P16219725288786862044

`A326626(n)+A283739(A025747(n))`
-/

namespace A283746.P16219725288786862044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A283739 (A025747 n).toNat

end

end A283746.P16219725288786862044

/-! ## A283746.P1456505282977673172

`A326626(n)+A283739(A261422(n))`
-/

namespace A283746.P1456505282977673172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A283739 (A261422 n).toNat

end

end A283746.P1456505282977673172

/-! ## A283746.P155988802332533299

`A283739(A261422(n))%A089298(n)`
-/

namespace A283746.P155988802332533299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283739 (A261422 n).toNat) (A089298 n)

end

end A283746.P155988802332533299

/-!
# A283747: a(n) = least m such that 1/2^(n+1) < f(m) < 1/2^n, where f(m) = fractional part of m*(golden ratio).

The programs for A283747, there is no canonical definition to state claims against.
-/

/-! ## A283747.P8516514461142559113

`A283740(∑[n+1])`
-/

namespace A283747.P8516514461142559113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283740 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283747.P8516514461142559113

/-! ## A283747.P17822710212611377606

`A283740(A025747(n))+A011745(n)`
-/

namespace A283747.P17822710212611377606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283740 (A025747 n).toNat + A011745 n

end

end A283747.P17822710212611377606

/-! ## A283747.P17474195863873936964

`A326626(n)+A283740(A025747(n))`
-/

namespace A283747.P17474195863873936964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A283740 (A025747 n).toNat

end

end A283747.P17474195863873936964

/-! ## A283747.P16198752586704543136

`gcd(A000038(n), A283740(A025747(n)))`
-/

namespace A283747.P16198752586704543136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A283740 (A025747 n).toNat)

end

end A283747.P16198752586704543136

/-! ## A283747.P836131899738462356

`lcm(A033999(n), A283740(A025747(n)))`
-/

namespace A283747.P836131899738462356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A283740 (A025747 n).toNat)

end

end A283747.P836131899738462356

/-!
# A283748: a(n) = least m such that (2^n-1)/2^n < f(m) < (2*2^n-1)/2^(n+1), where f(m) = fractional part of m*(golden ratio).

The programs for A283748, there is no canonical definition to state claims against.
-/

/-! ## A283748.P9682660563677878394

`A283741(∑[n+1])`
-/

namespace A283748.P9682660563677878394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283748.P9682660563677878394

/-! ## A283748.P10000442043715486930

`A000027(A283741(C(n+2, 2)))`
-/

namespace A283748.P10000442043715486930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A283741 (Nat.choose (n + 2) 2)).toNat

end

end A283748.P10000442043715486930

/-! ## A283748.P13532211959615093882

`A283741(A025747(n))+A011745(n)`
-/

namespace A283748.P13532211959615093882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283741 (A025747 n).toNat + A011745 n

end

end A283748.P13532211959615093882

/-! ## A283748.P15907023747025421243

`A326626(n)+A283741(A025747(n))`
-/

namespace A283748.P15907023747025421243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A283741 (A025747 n).toNat

end

end A283748.P15907023747025421243

/-! ## A283748.P13584580996220509888

`A326626(n)+A283741(A261422(n))`
-/

namespace A283748.P13584580996220509888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A283741 (A261422 n).toNat

end

end A283748.P13584580996220509888

/-!
# A283750: a(n) = n^2 XOR (n + 1)^2.

The programs for A283750, the canonical program `A283750.P14339234963322821075` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283750 has offset 0).

The definition of A283750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283750.P14339234963322821075

`xor(n², (n+1)²)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283750

/-- `xor(n², (n+1)²)` -/
def P14339234963322821075.Spec : Prop :=
  ∀ n, (P14339234963322821075.a n : ℤ) = A283750 n

theorem P14339234963322821075.correct : P14339234963322821075.Spec := by
  intro n
  simp only [A283750]

end A283750

/-! ## A283750.P17398066429967606303

`or(1, xor(xor(n, -1)², n²))`
-/

namespace A283750.P17398066429967606303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (Int.xor (Int.xor (n : ℤ) (-1) ^ 2) (n ^ 2 : ℤ))

end

end A283750.P17398066429967606303

namespace A283750

/-- `or(1, xor(xor(n, -1)², n²))` -/
def P17398066429967606303.Spec : Prop :=
  ∀ n, P17398066429967606303.a n = A283750 n

end A283750

/-! ## A283750.P11953813104962162060

`or(1, xor((n+1)^2, n^2))`
-/

namespace A283750.P11953813104962162060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.xor ((n + 1) ^ 2) (n ^ 2))

end

end A283750.P11953813104962162060

namespace A283750

/-- `or(1, xor((n+1)^2, n^2))` -/
def P11953813104962162060.Spec : Prop :=
  ∀ n, (P11953813104962162060.a n : ℤ) = A283750 n

end A283750

/-! ## A283750.P7160575410369657436

`xor(2, xor(xor(n, -1)², n²))-2`
-/

namespace A283750.P7160575410369657436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor (Int.xor (n : ℤ) (-1) ^ 2) (n ^ 2 : ℤ)) - 2

end

end A283750.P7160575410369657436

namespace A283750

/-- `xor(2, xor(xor(n, -1)², n²))-2` -/
def P7160575410369657436.Spec : Prop :=
  ∀ n, P7160575410369657436.a n = A283750 n

end A283750

/-! ## A283750.P16355547361409590981

`-xor(-2, xor(xor(n, -1)², n²))`
-/

namespace A283750.P16355547361409590981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-2) (Int.xor (Int.xor (n : ℤ) (-1) ^ 2) (n ^ 2 : ℤ))

end

end A283750.P16355547361409590981

namespace A283750

/-- `-xor(-2, xor(xor(n, -1)², n²))` -/
def P16355547361409590981.Spec : Prop :=
  ∀ n, P16355547361409590981.a n = A283750 n

end A283750

/-! ## A283750.P17801951504152381306

`abs(xor(n*(n+1)-n, (n+1)*(n+1)))`
-/

namespace A283750.P17801951504152381306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((n * (n + 1) : ℤ) - (n : ℤ)) ((n + 1) * (n + 1) : ℤ)|

end

end A283750.P17801951504152381306

namespace A283750

/-- `abs(xor(n*(n+1)-n, (n+1)*(n+1)))` -/
def P17801951504152381306.Spec : Prop :=
  ∀ n, P17801951504152381306.a n = A283750 n

end A283750

/-! ## A283750.P16443330510193607727

`A000027(xor(A000290(n+1), A000290(n)))`
-/

namespace A283750.P16443330510193607727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor (A000290 (n + 1)) (A000290 n)).toNat

end

end A283750.P16443330510193607727

namespace A283750

/-- `A000027(xor(A000290(n+1), A000290(n)))` -/
def P16443330510193607727.Spec : Prop :=
  ∀ n, P16443330510193607727.a n = A283750 n

end A283750

/-! ## A283750.P7122470797379985434

`A000265(xor(A059100(n+1), A059100(n)))`
-/

namespace A283750.P7122470797379985434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor (A059100 (n + 1)) (A059100 n)).toNat

end

end A283750.P7122470797379985434

namespace A283750

/-- `A000265(xor(A059100(n+1), A059100(n)))` -/
def P7122470797379985434.Spec : Prop :=
  ∀ n, P7122470797379985434.a n = A283750 n

end A283750

/-!
# A283752: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 758", based on the 5-celled von Neumann neighborhood.

The programs for A283752, the canonical program `A283752.P6878466421051132066` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283752 has offset 0).

The definition of A283752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283752.P6878466421051132066

`a(n-1)+16*a(n-4)-16*a(n-5)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=13, a(4)=21, a(5)=53, a(6)=93, a(7)=205, a(8)=381`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283752

/-- `a(n-1)+16*a(n-4)-16*a(n-5)` -/
def P6878466421051132066.Spec : Prop :=
  ∀ n, P6878466421051132066.a n = A283752 n

theorem P6878466421051132066.correct : P6878466421051132066.Spec := by
  intro n
  simp only [A283752]

end A283752

/-! ## A283752.P4543169292650809623

`or(A014682(a(n-1)), A283646(n))` with `a(0)=1`
-/

namespace A283752.P4543169292650809623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A014682 (a (n - 1)).toNat) (A283646 n)

end

end A283752.P4543169292650809623

namespace A283752

/-- `or(A014682(a(n-1)), A283646(n))` -/
def P4543169292650809623.Spec : Prop :=
  ∀ n, P4543169292650809623.a n = A283752 n

end A283752

/-! ## A283752.P5626302609477680616

`and(A126646(n), A264618(A283905(n)))`
-/

namespace A283752.P5626302609477680616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A264618 (A283905 n).toNat)

end

end A283752.P5626302609477680616

namespace A283752

/-- `and(A126646(n), A264618(A283905(n)))` -/
def P5626302609477680616.Spec : Prop :=
  ∀ n, P5626302609477680616.a n = A283752 n

end A283752

/-! ## A283752.P8915754136658908307

`and(A264618(A283905(n)), A284481(n))`
-/

namespace A283752.P8915754136658908307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A264618 (A283905 n).toNat) (A284481 n)

end

end A283752.P8915754136658908307

namespace A283752

/-- `and(A264618(A283905(n)), A284481(n))` -/
def P8915754136658908307.Spec : Prop :=
  ∀ n, P8915754136658908307.a n = A283752 n

end A283752

/-! ## A283752.P163909214349148618

`A057889(A283905(n))`
-/

namespace A283752.P163909214349148618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A283905 n).toNat

end

end A283752.P163909214349148618

namespace A283752

/-- `A057889(A283905(n))` -/
def P163909214349148618.Spec : Prop :=
  ∀ n, P163909214349148618.a n = A283752 n

end A283752

/-!
# A283754: The smallest number k such that k*2^n mod 3^n = 1.

The programs for A283754, the canonical program `A283754.P11188148731217616046` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283754 has offset 1).

The definition of A283754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283754.P11188148731217616046

`(((3^(n+1)+1)/2)^(n+1))%(3^(n+1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283754

/-- `(((3^(n+1)+1)/2)^(n+1))%(3^(n+1))` -/
def P11188148731217616046.Spec : Prop :=
  ∀ n, P11188148731217616046.a n = A283754 (n + 1)

theorem P11188148731217616046.correct : P11188148731217616046.Spec := by
  intro n
  simp only [A283754, Nat.add_sub_cancel]

end A283754

/-! ## A283754.P11879833300766000232

`A259987(n+1)/2^(n+1)`
-/

namespace A283754.P11879833300766000232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259987 (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A283754.P11879833300766000232

namespace A283754

/-- `A259987(n+1)/2^(n+1)` -/
def P11879833300766000232.Spec : Prop :=
  ∀ n, P11879833300766000232.a n = (A283754 (n + 1) : ℚ)

end A283754

/-! ## A283754.P4911096703413523635

`∑[6^n*A055620(n)]/A000079(n+1)`
-/

namespace A283754.P4911096703413523635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A055620 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A283754.P4911096703413523635

namespace A283754

/-- `∑[6^n*A055620(n)]/A000079(n+1)` -/
def P4911096703413523635.Spec : Prop :=
  ∀ n, P4911096703413523635.a n = (A283754 (n + 1) : ℚ)

end A283754

/-! ## A283754.P14679811958453180327

`A214883(n+1)/A016090(n+1)*A259987(n+1)`
-/

namespace A283754.P14679811958453180327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214883 (n + 1) : ℚ) / (A016090 (n + 1) : ℚ) * (A259987 (n + 1) : ℚ)

end

end A283754.P14679811958453180327

namespace A283754

/-- `A214883(n+1)/A016090(n+1)*A259987(n+1)` -/
def P14679811958453180327.Spec : Prop :=
  ∀ n, P14679811958453180327.a n = (A283754 (n + 1) : ℚ)

end A283754

/-! ## A283754.P17304540504123670970

`A014682(A259987(n+1)/A000079(n))`
-/

namespace A283754.P17304540504123670970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A259987 (n + 1) : ℚ) / (A000079 n : ℚ))).toNat

end

end A283754.P17304540504123670970

namespace A283754

/-- `A014682(A259987(n+1)/A000079(n))` -/
def P17304540504123670970.Spec : Prop :=
  ∀ n, P17304540504123670970.a n = A283754 (n + 1)

end A283754

/-!
# A283758: Numbers whose sum of divisors is equal to the product of the number of divisors of their k first powers, for some k.

The programs for A283758, there is no canonical definition to state claims against.
-/

/-! ## A283758.P8619146473515060726

`A344151(A278600(n)+1)`
-/

namespace A283758.P8619146473515060726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344151 (A278600 n + 1).toNat

end

end A283758.P8619146473515060726

/-!
# A283760: Expansion of (Sum_{i>=1} x^prime(i))*(Sum_{j>=1} x^(j^3)).

The programs for A283760, there is no canonical definition to state claims against.
-/

/-! ## A283760.P14248736012685886881

`A302354(n+1)-char[eq[1, ∑{e}[n+1, #]]]`
-/

namespace A283760.P14248736012685886881
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A283760.P14248736012685886881

/-! ## A283760.P5533669143165892409

`A302354(n+1)-Δ[A230980(n)]`
-/

namespace A283760.P5533669143165892409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - (f1 (n + 1) - f1 n)

end

end A283760.P5533669143165892409

/-! ## A283760.P7274873274061721362

`A302354(n+1)-A010051(n+1)`
-/

namespace A283760.P7274873274061721362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - A010051 (n + 1)

end

end A283760.P7274873274061721362

/-! ## A283760.P2300028316202155106

`A302354(n+1)-A129950(n+1)²`
-/

namespace A283760.P2300028316202155106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - A129950 (n + 1) ^ 2

end

end A283760.P2300028316202155106

/-! ## A283760.P3117965125630528354

`A302354(n+1)-char[A006093(n+1)]`
-/

namespace A283760.P3117965125630528354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283760.P3117965125630528354

/-! ## A283760.P3129025945965922775

`A302354(n+1)-char[A057237(n+1)]`
-/

namespace A283760.P3129025945965922775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283760.P3129025945965922775

/-! ## A283760.P17274701193573297975

`A302354(n+1)-char[record[A000010(n+1)]]`
-/

namespace A283760.P17274701193573297975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283760.P17274701193573297975

/-! ## A283760.P12190190762027964293

`A302354(n+1)-char[A000040(n+1)-1]`
-/

namespace A283760.P12190190762027964293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283760.P12190190762027964293

/-! ## A283760.P10303234802161829192

`A302354(n+1)-char[A006530(n+2)-1]`
-/

namespace A283760.P10303234802161829192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283760.P10303234802161829192

/-! ## A283760.P12416966456271639186

`A302354(n+1)-A001222(A089026(n+1))`
-/

namespace A283760.P12416966456271639186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - A001222 (A089026 (n + 1)).toNat

end

end A283760.P12416966456271639186

/-! ## A283760.P8058197050042919404

`A302354(n+1)-A000007(A191558(n+1))`
-/

namespace A283760.P8058197050042919404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - A000007 (A191558 (n + 1)).toNat

end

end A283760.P8058197050042919404

/-! ## A283760.P12511663879604637987

`A302354(n+1)-A131742(A074823(n+1))`
-/

namespace A283760.P12511663879604637987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - A131742 (A074823 (n + 1)).toNat

end

end A283760.P12511663879604637987

/-! ## A283760.P13983404759191301553

`A302354(n+1)-char[A000010(A014963(n+1))]`
-/

namespace A283760.P13983404759191301553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283760.P13983404759191301553

/-! ## A283760.P5137253893039596289

`A302354(n+1)-A033683(A000005(n+1)-1)`
-/

namespace A283760.P5137253893039596289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - A033683 (A000005 (n + 1) - 1).toNat

end

end A283760.P5137253893039596289

/-! ## A283760.P17374014114639808971

`A302354(n+1)-A007431(C(2, A000005(n+1)))`
-/

namespace A283760.P17374014114639808971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - A007431 (Nat.choose 2 (A000005 (n + 1)).toNat)

end

end A283760.P17374014114639808971

/-! ## A283760.P16251799868881477720

`A302354(n+1)-∑{d}[A001222(n+1), A008683(#)]`
-/

namespace A283760.P16251799868881477720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A283760.P16251799868881477720

/-! ## A283760.P12664644282261586432

`A302354(n+1)-char[A000203(A014963(n+2))-2]`
-/

namespace A283760.P12664644282261586432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A014963 (n + 2)).toNat - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283760.P12664644282261586432

/-! ## A283760.P15703618806609055969

`A302354(n+1)-A008683(2^A001222(n+1)+8)`
-/

namespace A283760.P15703618806609055969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) - A008683 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ) + 8)).toNat

end

end A283760.P15703618806609055969

/-! ## A283760.P15475166957382506255

`A302354(n+1)+A365167(n+1)-A365126(n+1)`
-/

namespace A283760.P15475166957382506255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302354 (n + 1) + (A365167 (n + 1) - A365126 (n + 1))

end

end A283760.P15475166957382506255

/-!
# A283762: Expansion of (x + Sum_{k>=1} x^prime(k))^3.

The programs for A283762, there is no canonical definition to state claims against.
-/

/-! ## A283762.P17434059001053608269

`A347745(n)-A347744(n)`
-/

namespace A283762.P17434059001053608269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347745 n - A347744 n

end

end A283762.P17434059001053608269

/-!
# A283764: a(0) = 0; a(1) = 1; a(2*n) = sigma(a(n)), a(2*n+1) = sigma(a(n)+a(n+1)).

The programs for A283764, there is no canonical definition to state claims against.
-/

/-! ## A283764.P2900520334113078972

`A283166(2*n)`
-/

namespace A283764.P2900520334113078972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283166 (2 * n)

end

end A283764.P2900520334113078972

/-! ## A283764.P345729567001635539

`xor(1, xor(1, A283166(n+n)))`
-/

namespace A283764.P345729567001635539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A283166 (n + n)))

end

end A283764.P345729567001635539

/-! ## A283764.P14435523052868990590

`A283166(n+n)+A000007(n+1)`
-/

namespace A283764.P14435523052868990590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283166 (n + n) + A000007 (n + 1)

end

end A283764.P14435523052868990590

/-! ## A283764.P8571412289355021552

`A283166(n+n)+A217221(A217221(n))`
-/

namespace A283764.P8571412289355021552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283166 (n + n) + A217221 (A217221 n).toNat

end

end A283764.P8571412289355021552

/-! ## A283764.P2522757000804718004

`A283166(n+n)+A265260(n+1+n)`
-/

namespace A283764.P2522757000804718004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283166 (n + n) + A265260 (n + 1 + n)

end

end A283764.P2522757000804718004

/-! ## A283764.P7680032355818674132

`∑{d}[A283166(n), #]`
-/

namespace A283764.P7680032355818674132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283166 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A283764.P7680032355818674132

/-! ## A283764.P17565989154723470231

`A283166(n+n)%A000712(n)`
-/

namespace A283764.P17565989154723470231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283166 (n + n)) (A000712 n)

end

end A283764.P17565989154723470231

/-!
# A283765: Numbers k such that L(k) is even, where L = A000201 = lower Wythoff sequence.

The programs for A283765, the canonical program `A283765.P16087326815428208377` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283765 has offset 1).

The definition of A283765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283765.P16087326815428208377

`eq[1, ceil(ϕ*n)%2]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283765

/-- `eq[1, ceil(ϕ*n)%2]` -/
def P16087326815428208377.Spec : Prop :=
  ∀ n, (P16087326815428208377.a n : ℤ) = A283765 (n + 1)

theorem P16087326815428208377.correct : P16087326815428208377.Spec := by
  intro n
  simp only [A283765, Nat.add_sub_cancel]

end A283765

/-! ## A283765.P17605694352304953870

`eq[1, gcd(4, ceil(ϕ*n))]`
-/

namespace A283765.P17605694352304953870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283765.P17605694352304953870

namespace A283765

/-- `eq[1, gcd(4, ceil(ϕ*n))]` -/
def P17605694352304953870.Spec : Prop :=
  ∀ n, (P17605694352304953870.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P3308020769601743602

`eq[1, and(1, floor(n/ϕ²))]`
-/

namespace A283765.P3308020769601743602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283765.P3308020769601743602

namespace A283765

/-- `eq[1, and(1, floor(n/ϕ²))]` -/
def P3308020769601743602.Spec : Prop :=
  ∀ n, (P3308020769601743602.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P1086706556100024875

`lt[2, A020639(floor(ϕ*n)+1)]`
-/

namespace A283765.P1086706556100024875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊Real.goldenRatio * (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283765.P1086706556100024875

namespace A283765

/-- `lt[2, A020639(floor(ϕ*n)+1)]` -/
def P1086706556100024875.Spec : Prop :=
  ∀ n, (P1086706556100024875.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P627312401302673922

`lt[1, A328570(n-ceil(n/ϕ))]`
-/

namespace A283765.P627312401302673922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 ((n : ℤ) - ⌈(n : ℝ) / Real.goldenRatio⌉).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283765.P627312401302673922

namespace A283765

/-- `lt[1, A328570(n-ceil(n/ϕ))]` -/
def P627312401302673922.Spec : Prop :=
  ∀ n, (P627312401302673922.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P13668489078624589509

`lt[A093178(floor(ϕ*n)), n]`
-/

namespace A283765.P13668489078624589509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283765.P13668489078624589509

namespace A283765

/-- `lt[A093178(floor(ϕ*n)), n]` -/
def P13668489078624589509.Spec : Prop :=
  ∀ n, (P13668489078624589509.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P2581866733761575808

`lt[A085002(n+1), 1]+1`
-/

namespace A283765.P2581866733761575808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283765.P2581866733761575808

namespace A283765

/-- `lt[A085002(n+1), 1]+1` -/
def P2581866733761575808.Spec : Prop :=
  ∀ n, (P2581866733761575808.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P11346286022096132652

`lt[A035337(n)%2, 1]+1`
-/

namespace A283765.P11346286022096132652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035337 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283765.P11346286022096132652

namespace A283765

/-- `lt[A035337(n)%2, 1]+1` -/
def P11346286022096132652.Spec : Prop :=
  ∀ n, (P11346286022096132652.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P3660469921472713815

`lt[A035340(n)%2, 1]+1`
-/

namespace A283765.P3660469921472713815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035340 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283765.P3660469921472713815

namespace A283765

/-- `lt[A035340(n)%2, 1]+1` -/
def P3660469921472713815.Spec : Prop :=
  ∀ n, (P3660469921472713815.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P17108292564911182040

`eq[1, A073097(A195170(n))+1]`
-/

namespace A283765.P17108292564911182040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 (A195170 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283765.P17108292564911182040

namespace A283765

/-- `eq[1, A073097(A195170(n))+1]` -/
def P17108292564911182040.Spec : Prop :=
  ∀ n, (P17108292564911182040.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P6419807815224346857

`eq[1, A040001(A004956(n)+2)]`
-/

namespace A283765.P6419807815224346857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A004956 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283765.P6419807815224346857

namespace A283765

/-- `eq[1, A040001(A004956(n)+2)]` -/
def P6419807815224346857.Spec : Prop :=
  ∀ n, (P6419807815224346857.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P13745744988442895188

`eq[1, A019426(A026351(n)-1)]`
-/

namespace A283765.P13745744988442895188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A026351 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283765.P13745744988442895188

namespace A283765

/-- `eq[1, A019426(A026351(n)-1)]` -/
def P13745744988442895188.Spec : Prop :=
  ∀ n, (P13745744988442895188.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P2802434264679639420

`eq[1, A019429(A026351(n)-1)]`
-/

namespace A283765.P2802434264679639420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A026351 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283765.P2802434264679639420

namespace A283765

/-- `eq[1, A019429(A026351(n)-1)]` -/
def P2802434264679639420.Spec : Prop :=
  ∀ n, (P2802434264679639420.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P4382954342295278078

`eq[2, A020639(A000201(n+1))]+1`
-/

namespace A283765.P4382954342295278078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000201 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283765.P4382954342295278078

namespace A283765

/-- `eq[2, A020639(A000201(n+1))]+1` -/
def P4382954342295278078.Spec : Prop :=
  ∀ n, (P4382954342295278078.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P14600106579367491955

`lt[2, A020639(A000201(n+1)+1)]+1`
-/

namespace A283765.P14600106579367491955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000201 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283765.P14600106579367491955

namespace A283765

/-- `lt[2, A020639(A000201(n+1)+1)]+1` -/
def P14600106579367491955.Spec : Prop :=
  ∀ n, (P14600106579367491955.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P12104526875661862995

`eq[2, A040008(A040008(n)+A026351(n))]`
-/

namespace A283765.P12104526875661862995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (A040008 n + A026351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283765.P12104526875661862995

namespace A283765

/-- `eq[2, A040008(A040008(n)+A026351(n))]` -/
def P12104526875661862995.Spec : Prop :=
  ∀ n, (P12104526875661862995.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P11506410646738962967

`eq[2, A040024(A040024(n)+A026351(n))]`
-/

namespace A283765.P11506410646738962967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 (A040024 n + A026351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283765.P11506410646738962967

namespace A283765

/-- `eq[2, A040024(A040024(n)+A026351(n))]` -/
def P11506410646738962967.Spec : Prop :=
  ∀ n, (P11506410646738962967.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P13766471154213248571

`lt[0, A131730(A189663(n+1))]`
-/

namespace A283765.P13766471154213248571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131730 (A189663 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283765.P13766471154213248571

namespace A283765

/-- `lt[0, A131730(A189663(n+1))]` -/
def P13766471154213248571.Spec : Prop :=
  ∀ n, (P13766471154213248571.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P17725868245642669777

`eq[A085002(n+1), A188432(n+1)]`
-/

namespace A283765.P17725868245642669777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283765.P17725868245642669777

namespace A283765

/-- `eq[A085002(n+1), A188432(n+1)]` -/
def P17725868245642669777.Spec : Prop :=
  ∀ n, (P17725868245642669777.a n : ℤ) = A283765 (n + 1)

end A283765

/-! ## A283765.P3275176424389219973

`eq[2, A020639(A007066(n+1)+n)]`
-/

namespace A283765.P3275176424389219973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007066 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283765.P3275176424389219973

namespace A283765

/-- `eq[2, A020639(A007066(n+1)+n)]` -/
def P3275176424389219973.Spec : Prop :=
  ∀ n, (P3275176424389219973.a n : ℤ) = A283765 (n + 1)

end A283765

/-!
# A283766: Numbers k such that L(k) is odd, where L = A000201 = lower Wythoff sequence.

The programs for A283766, the canonical program `A283766.P13369118954386203946` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283766 has offset 1).

The definition of A283766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283766.P8692828286295522679

`eq[1, floor(ϕ*n)%2]`
-/

namespace A283766.P8692828286295522679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (n : ℝ)⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283766.P8692828286295522679

namespace A283766

/-- `eq[1, floor(ϕ*n)%2]` -/
def P8692828286295522679.Spec : Prop :=
  ∀ n, (P8692828286295522679.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P7268446670314438932

`eq[1, gcd(2, floor(ϕ*n))]`
-/

namespace A283766.P7268446670314438932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283766.P7268446670314438932

namespace A283766

/-- `eq[1, gcd(2, floor(ϕ*n))]` -/
def P7268446670314438932.Spec : Prop :=
  ∀ n, (P7268446670314438932.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P7240391396287578454

`eq[1, and(1, floor(ϕ*n))]`
-/

namespace A283766.P7240391396287578454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283766.P7240391396287578454

namespace A283766

/-- `eq[1, and(1, floor(ϕ*n))]` -/
def P7240391396287578454.Spec : Prop :=
  ∀ n, (P7240391396287578454.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P9969292340511150289

`lt[(floor(ϕ*n)+1)%2, 1]`
-/

namespace A283766.P9969292340511150289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊Real.goldenRatio * (n : ℝ)⌋ + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283766.P9969292340511150289

namespace A283766

/-- `lt[(floor(ϕ*n)+1)%2, 1]` -/
def P9969292340511150289.Spec : Prop :=
  ∀ n, (P9969292340511150289.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P11103964893551150730

`eq[2, A020639(floor(ϕ*n)+1)]`
-/

namespace A283766.P11103964893551150730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊Real.goldenRatio * (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283766.P11103964893551150730

namespace A283766

/-- `eq[2, A020639(floor(ϕ*n)+1)]` -/
def P11103964893551150730.Spec : Prop :=
  ∀ n, (P11103964893551150730.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P13369118954386203946

`lt[1, A135561(2-A005206(n)+n)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A283766

/-- `lt[1, A135561(2-A005206(n)+n)]+1` -/
def P13369118954386203946.Spec : Prop :=
  ∀ n, (P13369118954386203946.a n : ℤ) = A283766 (n + 1)

theorem P13369118954386203946.correct : P13369118954386203946.Spec := by
  intro n
  simp only [A283766, Nat.add_sub_cancel]

end A283766

/-! ## A283766.P14115290905281117550

`eq[1, A085002(n+1)]+1`
-/

namespace A283766.P14115290905281117550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283766.P14115290905281117550

namespace A283766

/-- `eq[1, A085002(n+1)]+1` -/
def P14115290905281117550.Spec : Prop :=
  ∀ n, (P14115290905281117550.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P3838655588252045846

`filter[A001961(n+1), A085002(#)]`
-/

namespace A283766.P3838655588252045846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085002 (f1 j).toNat = 1) n)

end

end A283766.P3838655588252045846

namespace A283766

/-- `filter[A001961(n+1), A085002(#)]` -/
def P3838655588252045846.Spec : Prop :=
  ∀ n, P3838655588252045846.a n = A283766 (n + 1)

end A283766

/-! ## A283766.P17256578952911661488

`filter[A001963(n+1), A085002(#)]`
-/

namespace A283766.P17256578952911661488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085002 (f1 j).toNat = 1) n)

end

end A283766.P17256578952911661488

namespace A283766

/-- `filter[A001963(n+1), A085002(#)]` -/
def P17256578952911661488.Spec : Prop :=
  ∀ n, P17256578952911661488.a n = A283766 (n + 1)

end A283766

/-! ## A283766.P2272486477504107195

`filter[A184514(n+1), A085002(#)]`
-/

namespace A283766.P2272486477504107195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085002 (f1 j).toNat = 1) n)

end

end A283766.P2272486477504107195

namespace A283766

/-- `filter[A184514(n+1), A085002(#)]` -/
def P2272486477504107195.Spec : Prop :=
  ∀ n, P2272486477504107195.a n = A283766 (n + 1)

end A283766

/-! ## A283766.P16784551628025628218

`filter[A184516(n+1), A085002(#)]`
-/

namespace A283766.P16784551628025628218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085002 (f1 j).toNat = 1) n)

end

end A283766.P16784551628025628218

namespace A283766

/-- `filter[A184516(n+1), A085002(#)]` -/
def P16784551628025628218.Spec : Prop :=
  ∀ n, P16784551628025628218.a n = A283766 (n + 1)

end A283766

/-! ## A283766.P3676788251313571919

`filter[A005206(2*n+1), A085002(#)]`
-/

namespace A283766.P3676788251313571919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085002 (f1 j).toNat = 1) n)

end

end A283766.P3676788251313571919

namespace A283766

/-- `filter[A005206(2*n+1), A085002(#)]` -/
def P3676788251313571919.Spec : Prop :=
  ∀ n, P3676788251313571919.a n = A283766 (n + 1)

end A283766

/-! ## A283766.P4996003152390426731

`eq[A085002(n+1), A096270(n)]`
-/

namespace A283766.P4996003152390426731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283766.P4996003152390426731

namespace A283766

/-- `eq[A085002(n+1), A096270(n)]` -/
def P4996003152390426731.Spec : Prop :=
  ∀ n, (P4996003152390426731.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P3478448621274984643

`eq[1, A019426(A026351(n))]`
-/

namespace A283766.P3478448621274984643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A026351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283766.P3478448621274984643

namespace A283766

/-- `eq[1, A019426(A026351(n))]` -/
def P3478448621274984643.Spec : Prop :=
  ∀ n, (P3478448621274984643.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P15157431700780718362

`eq[2, A040001(A004956(n))]`
-/

namespace A283766.P15157431700780718362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A004956 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283766.P15157431700780718362

namespace A283766

/-- `eq[2, A040001(A004956(n))]` -/
def P15157431700780718362.Spec : Prop :=
  ∀ n, (P15157431700780718362.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P496151447718336691

`eq[1, A010127(A026351(n)+1)]`
-/

namespace A283766.P496151447718336691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A026351 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283766.P496151447718336691

namespace A283766

/-- `eq[1, A010127(A026351(n)+1)]` -/
def P496151447718336691.Spec : Prop :=
  ∀ n, (P496151447718336691.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P11079578705791539993

`eq[1, A191329(A026351(n)+1)]`
-/

namespace A283766.P11079578705791539993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A026351 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283766.P11079578705791539993

namespace A283766

/-- `eq[1, A191329(A026351(n)+1)]` -/
def P11079578705791539993.Spec : Prop :=
  ∀ n, (P11079578705791539993.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P17464219280163422899

`eq[1, A019429(A026351(n)+2)]`
-/

namespace A283766.P17464219280163422899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A026351 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283766.P17464219280163422899

namespace A283766

/-- `eq[1, A019429(A026351(n)+2)]` -/
def P17464219280163422899.Spec : Prop :=
  ∀ n, (P17464219280163422899.a n : ℤ) = A283766 (n + 1)

end A283766

/-! ## A283766.P2475483329945750365

`record[A120873(2*n+1)]`
-/

namespace A283766.P2475483329945750365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283766.P2475483329945750365

namespace A283766

/-- `record[A120873(2*n+1)]` -/
def P2475483329945750365.Spec : Prop :=
  ∀ n, P2475483329945750365.a n = A283766 (n + 1)

end A283766

/-!
# A283767: Numbers k such that U(k) is even, where U = A001950 = upper Wythoff sequence.

The programs for A283767, the canonical program `A283767.P7767198059280804537` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283767 has offset 1).

The definition of A283767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283767.P12156009017122266258

`eq[1, ceil(n/ϕ)%2]`
-/

namespace A283767.P12156009017122266258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) / Real.goldenRatio⌉ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283767.P12156009017122266258

namespace A283767

/-- `eq[1, ceil(n/ϕ)%2]` -/
def P12156009017122266258.Spec : Prop :=
  ∀ n, (P12156009017122266258.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P17323580846038838

`eq[1, gcd(4, ceil(n/ϕ))]`
-/

namespace A283767.P17323580846038838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283767.P17323580846038838

namespace A283767

/-- `eq[1, gcd(4, ceil(n/ϕ))]` -/
def P17323580846038838.Spec : Prop :=
  ∀ n, (P17323580846038838.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P17520711250142945297

`eq[1, and(1, -ceil(n/ϕ))]`
-/

namespace A283767.P17520711250142945297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-⌈(n : ℝ) / Real.goldenRatio⌉)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283767.P17520711250142945297

namespace A283767

/-- `eq[1, and(1, -ceil(n/ϕ))]` -/
def P17520711250142945297.Spec : Prop :=
  ∀ n, (P17520711250142945297.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P7767198059280804537

`lt[A005206(n)%2, 1]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283767

/-- `lt[A005206(n)%2, 1]+1` -/
def P7767198059280804537.Spec : Prop :=
  ∀ n, (P7767198059280804537.a n : ℤ) = A283767 (n + 1)

theorem P7767198059280804537.correct : P7767198059280804537.Spec := by
  intro n
  simp only [A283767, Nat.add_sub_cancel]

end A283767

/-! ## A283767.P9402713473006558579

`lt[4, A020639(3*ceil(n/ϕ)+2)]`
-/

namespace A283767.P9402713473006558579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * ⌈(n : ℝ) / Real.goldenRatio⌉ + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283767.P9402713473006558579

namespace A283767

/-- `lt[4, A020639(3*ceil(n/ϕ)+2)]` -/
def P9402713473006558579.Spec : Prop :=
  ∀ n, (P9402713473006558579.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P5396301840318980250

`∪[A066096(2*n+1), A066096(2*n)+1]`
-/

namespace A283767.P5396301840318980250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (2 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283767.P5396301840318980250

namespace A283767

/-- `∪[A066096(2*n+1), A066096(2*n)+1]` -/
def P5396301840318980250.Spec : Prop :=
  ∀ n, (P5396301840318980250.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P14585928550068905849

`∪[A026351(2*n+1)-1, A026351(2*n)]`
-/

namespace A283767.P14585928550068905849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283767.P14585928550068905849

namespace A283767

/-- `∪[A026351(2*n+1)-1, A026351(2*n)]` -/
def P14585928550068905849.Spec : Prop :=
  ∀ n, (P14585928550068905849.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P3549090224446564118

`∪[A000201(2*n+1), A000201(2*(n+1))+1]`
-/

namespace A283767.P3549090224446564118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * (n + 1)) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283767.P3549090224446564118

namespace A283767

/-- `∪[A000201(2*n+1), A000201(2*(n+1))+1]` -/
def P3549090224446564118.Spec : Prop :=
  ∀ n, (P3549090224446564118.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P15759492213488937132

`eq[A114986(n), A171587(n)]`
-/

namespace A283767.P15759492213488937132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171587 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283767.P15759492213488937132

namespace A283767

/-- `eq[A114986(n), A171587(n)]` -/
def P15759492213488937132.Spec : Prop :=
  ∀ n, (P15759492213488937132.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P14632178522944108918

`eq[1, A000035(A004956(n)-n)]`
-/

namespace A283767.P14632178522944108918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004956 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283767.P14632178522944108918

namespace A283767

/-- `eq[1, A000035(A004956(n)-n)]` -/
def P14632178522944108918.Spec : Prop :=
  ∀ n, (P14632178522944108918.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P4196301465574109776

`eq[1, A088705(A004956(n)-n)]`
-/

namespace A283767.P4196301465574109776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A004956 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283767.P4196301465574109776

namespace A283767

/-- `eq[1, A088705(A004956(n)-n)]` -/
def P4196301465574109776.Spec : Prop :=
  ∀ n, (P4196301465574109776.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P14330976536138108628

`eq[2, A000034(A004956(n)-n)]`
-/

namespace A283767.P14330976536138108628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004956 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283767.P14330976536138108628

namespace A283767

/-- `eq[2, A000034(A004956(n)-n)]` -/
def P14330976536138108628.Spec : Prop :=
  ∀ n, (P14330976536138108628.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P32337124227001702

`lt[n*A010673(A060143(n)), n]`
-/

namespace A283767.P32337124227001702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010673 (A060143 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283767.P32337124227001702

namespace A283767

/-- `lt[n*A010673(A060143(n)), n]` -/
def P32337124227001702.Spec : Prop :=
  ∀ n, (P32337124227001702.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P10123215490177422102

`lt[1, A019430(A019446(n+1))]+1`
-/

namespace A283767.P10123215490177422102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A019446 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283767.P10123215490177422102

namespace A283767

/-- `lt[1, A019430(A019446(n+1))]+1` -/
def P10123215490177422102.Spec : Prop :=
  ∀ n, (P10123215490177422102.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P18276485659309907133

`eq[A040003(A026351(n)+1), A040003(n)]`
-/

namespace A283767.P18276485659309907133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 (A026351 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283767.P18276485659309907133

namespace A283767

/-- `eq[A040003(A026351(n)+1), A040003(n)]` -/
def P18276485659309907133.Spec : Prop :=
  ∀ n, (P18276485659309907133.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P16494979323390985295

`eq[A040008(A026351(n)+1), A040008(n)]`
-/

namespace A283767.P16494979323390985295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (A026351 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283767.P16494979323390985295

namespace A283767

/-- `eq[A040008(A026351(n)+1), A040008(n)]` -/
def P16494979323390985295.Spec : Prop :=
  ∀ n, (P16494979323390985295.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P12762098733254988663

`eq[A040024(A026351(n)+1), A040024(n)]`
-/

namespace A283767.P12762098733254988663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 (A026351 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283767.P12762098733254988663

namespace A283767

/-- `eq[A040024(A026351(n)+1), A040024(n)]` -/
def P12762098733254988663.Spec : Prop :=
  ∀ n, (P12762098733254988663.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P4432494075731302750

`eq[A040035(A026351(n)+1), A040035(n)]`
-/

namespace A283767.P4432494075731302750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 (A026351 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283767.P4432494075731302750

namespace A283767

/-- `eq[A040035(A026351(n)+1), A040035(n)]` -/
def P4432494075731302750.Spec : Prop :=
  ∀ n, (P4432494075731302750.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P3359860239301676461

`eq[2, A040001(A004956(n))*A040001(n)]`
-/

namespace A283767.P3359860239301676461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A004956 n).toNat * A040001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283767.P3359860239301676461

namespace A283767

/-- `eq[2, A040001(A004956(n))*A040001(n)]` -/
def P3359860239301676461.Spec : Prop :=
  ∀ n, (P3359860239301676461.a n : ℤ) = A283767 (n + 1)

end A283767

/-! ## A283767.P12836053628328511325

`record[(n+1)^and(1, A285679(n+2))]`
-/

namespace A283767.P12836053628328511325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.land 1 (A285679 (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283767.P12836053628328511325

namespace A283767

/-- `record[(n+1)^and(1, A285679(n+2))]` -/
def P12836053628328511325.Spec : Prop :=
  ∀ n, P12836053628328511325.a n = (A283767 (n + 1) : ℚ)

end A283767

/-!
# A283768: Numbers k such that U(k) is odd, where U = A001950 = upper Wythoff sequence.

The programs for A283768, the canonical program `A283768.P4981395873337742799` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283768 has offset 1).

The definition of A283768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283768.P6093234995700074008

`eq[1, floor(n/ϕ)%2]`
-/

namespace A283768.P6093234995700074008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) / Real.goldenRatio⌋ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283768.P6093234995700074008

namespace A283768

/-- `eq[1, floor(n/ϕ)%2]` -/
def P6093234995700074008.Spec : Prop :=
  ∀ n, (P6093234995700074008.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P9589925103236936906

`eq[1, gcd(2, floor(n/ϕ))]`
-/

namespace A283768.P9589925103236936906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283768.P9589925103236936906

namespace A283768

/-- `eq[1, gcd(2, floor(n/ϕ))]` -/
def P9589925103236936906.Spec : Prop :=
  ∀ n, (P9589925103236936906.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P13168826991310403606

`eq[1, and(1, floor(n/ϕ))]`
-/

namespace A283768.P13168826991310403606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283768.P13168826991310403606

namespace A283768

/-- `eq[1, and(1, floor(n/ϕ))]` -/
def P13168826991310403606.Spec : Prop :=
  ∀ n, (P13168826991310403606.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P11097770109392817056

`comp[ceil(ϕ*n)-n%2]`
-/

namespace A283768.P11097770109392817056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉ - ((n % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A283768.P11097770109392817056

namespace A283768

/-- `comp[ceil(ϕ*n)-n%2]` -/
def P11097770109392817056.Spec : Prop :=
  ∀ n, (P11097770109392817056.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P4981395873337742799

`eq[1, A005206(n)%2]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283768

/-- `eq[1, A005206(n)%2]+1` -/
def P4981395873337742799.Spec : Prop :=
  ∀ n, (P4981395873337742799.a n : ℤ) = A283768 (n + 1)

theorem P4981395873337742799.correct : P4981395873337742799.Spec := by
  intro n
  simp only [A283768, Nat.add_sub_cancel]

end A283768

/-! ## A283768.P10378058775854826136

`eq[2, A020639(floor(n/ϕ)+1)]`
-/

namespace A283768.P10378058775854826136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(n : ℝ) / Real.goldenRatio⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283768.P10378058775854826136

namespace A283768

/-- `eq[2, A020639(floor(n/ϕ)+1)]` -/
def P10378058775854826136.Spec : Prop :=
  ∀ n, (P10378058775854826136.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P7890370449411155993

`lt[2, A020639(floor(ϕ*n+n+2))]`
-/

namespace A283768.P7890370449411155993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊Real.goldenRatio * (n : ℝ) + (n + 2 : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283768.P7890370449411155993

namespace A283768

/-- `lt[2, A020639(floor(ϕ*n+n+2))]` -/
def P7890370449411155993.Spec : Prop :=
  ∀ n, (P7890370449411155993.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P13260600537074877514

`eq[2, A020639(A003622(n+1))]+1`
-/

namespace A283768.P13260600537074877514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003622 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283768.P13260600537074877514

namespace A283768

/-- `eq[2, A020639(A003622(n+1))]+1` -/
def P13260600537074877514.Spec : Prop :=
  ∀ n, (P13260600537074877514.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P1722972597993875169

`∪[A000201(2*n+1)+1, A000201(2*(n+1))]`
-/

namespace A283768.P1722972597993875169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A283768.P1722972597993875169

namespace A283768

/-- `∪[A000201(2*n+1)+1, A000201(2*(n+1))]` -/
def P1722972597993875169.Spec : Prop :=
  ∀ n, (P1722972597993875169.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P2234433337079271682

`eq[1, A019426(A026351(n)-n)]`
-/

namespace A283768.P2234433337079271682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A026351 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283768.P2234433337079271682

namespace A283768

/-- `eq[1, A019426(A026351(n)-n)]` -/
def P2234433337079271682.Spec : Prop :=
  ∀ n, (P2234433337079271682.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P727407299423003694

`eq[1, A019429(A026351(n)-n)]`
-/

namespace A283768.P727407299423003694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A026351 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283768.P727407299423003694

namespace A283768

/-- `eq[1, A019429(A026351(n)-n)]` -/
def P727407299423003694.Spec : Prop :=
  ∀ n, (P727407299423003694.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P5370761069898025435

`lt[2, A020639(A001950(n+1))]+1`
-/

namespace A283768.P5370761069898025435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283768.P5370761069898025435

namespace A283768

/-- `lt[2, A020639(A001950(n+1))]+1` -/
def P5370761069898025435.Spec : Prop :=
  ∀ n, (P5370761069898025435.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P1602700775441595496

`lt[A019430(A019446(n+1)), 2]+1`
-/

namespace A283768.P1602700775441595496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A019446 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283768.P1602700775441595496

namespace A283768

/-- `lt[A019430(A019446(n+1)), 2]+1` -/
def P1602700775441595496.Spec : Prop :=
  ∀ n, (P1602700775441595496.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P889063224526990347

`eq[A040008(A026351(n)), A040008(n)]`
-/

namespace A283768.P889063224526990347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 (A026351 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283768.P889063224526990347

namespace A283768

/-- `eq[A040008(A026351(n)), A040008(n)]` -/
def P889063224526990347.Spec : Prop :=
  ∀ n, (P889063224526990347.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P8110921209901737925

`eq[A040024(A026351(n)), A040024(n)]`
-/

namespace A283768.P8110921209901737925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 (A026351 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283768.P8110921209901737925

namespace A283768

/-- `eq[A040024(A026351(n)), A040024(n)]` -/
def P8110921209901737925.Spec : Prop :=
  ∀ n, (P8110921209901737925.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P14965345637083047100

`eq[A040035(A026351(n)), A040035(n)]`
-/

namespace A283768.P14965345637083047100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 (A026351 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283768.P14965345637083047100

namespace A283768

/-- `eq[A040035(A026351(n)), A040035(n)]` -/
def P14965345637083047100.Spec : Prop :=
  ∀ n, (P14965345637083047100.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P5195032571865431248

`eq[2, A040001(A004957(n))]`
-/

namespace A283768.P5195032571865431248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A004957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283768.P5195032571865431248

namespace A283768

/-- `eq[2, A040001(A004957(n))]` -/
def P5195032571865431248.Spec : Prop :=
  ∀ n, (P5195032571865431248.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P12216371106822180097

`eq[2, A040001(A004956(n)+n)]`
-/

namespace A283768.P12216371106822180097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A004956 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283768.P12216371106822180097

namespace A283768

/-- `eq[2, A040001(A004956(n)+n)]` -/
def P12216371106822180097.Spec : Prop :=
  ∀ n, (P12216371106822180097.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P15264632932202414744

`lt[0, A007814(A195121(n)+1)]`
-/

namespace A283768.P15264632932202414744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A195121 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283768.P15264632932202414744

namespace A283768

/-- `lt[0, A007814(A195121(n)+1)]` -/
def P15264632932202414744.Spec : Prop :=
  ∀ n, (P15264632932202414744.a n : ℤ) = A283768 (n + 1)

end A283768

/-! ## A283768.P17173758593022287987

`lt[A195140(A195121(n)), A195125(n)]`
-/

namespace A283768.P17173758593022287987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A195121 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195125 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283768.P17173758593022287987

namespace A283768

/-- `lt[A195140(A195121(n)), A195125(n)]` -/
def P17173758593022287987.Spec : Prop :=
  ∀ n, (P17173758593022287987.a n : ℤ) = A283768 (n + 1)

end A283768

/-!
# A283769: Numbers k such that L(k) = 0 mod 3, where L = A000201 = lower Wythoff sequence.

The programs for A283769, the canonical program `A283769.P13518902980728892546` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283769 has offset 1).

The definition of A283769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283769.P13518902980728892546

`eq[1, ceil(ϕ*n)%3]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283769

/-- `eq[1, ceil(ϕ*n)%3]` -/
def P13518902980728892546.Spec : Prop :=
  ∀ n, (P13518902980728892546.a n : ℤ) = A283769 (n + 1)

theorem P13518902980728892546.correct : P13518902980728892546.Spec := by
  intro n
  simp only [A283769, Nat.add_sub_cancel]

end A283769

/-! ## A283769.P4817593662864285154

`eq[0, A359378(A035338(n))]+1`
-/

namespace A283769.P4817593662864285154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359378 (A035338 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283769.P4817593662864285154

namespace A283769

/-- `eq[0, A359378(A035338(n))]+1` -/
def P4817593662864285154.Spec : Prop :=
  ∀ n, (P4817593662864285154.a n : ℤ) = A283769 (n + 1)

end A283769

/-! ## A283769.P1542649338344372440

`eq[A000007(n), A102283(A195121(n))]`
-/

namespace A283769.P1542649338344372440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A195121 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283769.P1542649338344372440

namespace A283769

/-- `eq[A000007(n), A102283(A195121(n))]` -/
def P1542649338344372440.Spec : Prop :=
  ∀ n, (P1542649338344372440.a n : ℤ) = A283769 (n + 1)

end A283769

/-! ## A283769.P11634018836684186920

`record[A026272(3*n+1)+1]`
-/

namespace A283769.P11634018836684186920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (3 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283769.P11634018836684186920

namespace A283769

/-- `record[A026272(3*n+1)+1]` -/
def P11634018836684186920.Spec : Prop :=
  ∀ n, P11634018836684186920.a n = A283769 (n + 1)

end A283769

/-! ## A283769.P11750652822384299428

`record[A026242(3*(n+1))]`
-/

namespace A283769.P11750652822384299428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283769.P11750652822384299428

namespace A283769

/-- `record[A026242(3*(n+1))]` -/
def P11750652822384299428.Spec : Prop :=
  ∀ n, P11750652822384299428.a n = A283769 (n + 1)

end A283769

/-! ## A283769.P18067872533464974839

`eq[A004956(n), A080782(A026351(n))]`
-/

namespace A283769.P18067872533464974839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A026351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283769.P18067872533464974839

namespace A283769

/-- `eq[A004956(n), A080782(A026351(n))]` -/
def P18067872533464974839.Spec : Prop :=
  ∀ n, (P18067872533464974839.a n : ℤ) = A283769 (n + 1)

end A283769

/-! ## A283769.P5114809192853968610

`eq[A000007(n), A100050(A060143(n)+n)]`
-/

namespace A283769.P5114809192853968610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (A060143 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283769.P5114809192853968610

namespace A283769

/-- `eq[A000007(n), A100050(A060143(n)+n)]` -/
def P5114809192853968610.Spec : Prop :=
  ∀ n, (P5114809192853968610.a n : ℤ) = A283769 (n + 1)

end A283769

/-! ## A283769.P13076180977566299997

`lt[A109614(2*A026351(n)), A026351(n)]`
-/

namespace A283769.P13076180977566299997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (2 * A026351 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283769.P13076180977566299997

namespace A283769

/-- `lt[A109614(2*A026351(n)), A026351(n)]` -/
def P13076180977566299997.Spec : Prop :=
  ∀ n, (P13076180977566299997.a n : ℤ) = A283769 (n + 1)

end A283769

/-! ## A283769.P15721241525431006524

`lt[A256626(4*(A000201(n+1)+1)), 0]+1`
-/

namespace A283769.P15721241525431006524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (4 * (A000201 (n + 1) + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283769.P15721241525431006524

namespace A283769

/-- `lt[A256626(4*(A000201(n+1)+1)), 0]+1` -/
def P15721241525431006524.Spec : Prop :=
  ∀ n, (P15721241525431006524.a n : ℤ) = A283769 (n + 1)

end A283769

/-!
# A283770: Numbers k such that L(k) = 1 mod 3, where L = A000201 = lower Wythoff sequence.

The programs for A283770, the canonical program `A283770.P4661854305289588242` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283770 has offset 1).

The definition of A283770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283770.P4661854305289588242

`eq[1, floor(ϕ*n)%3]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283770

/-- `eq[1, floor(ϕ*n)%3]` -/
def P4661854305289588242.Spec : Prop :=
  ∀ n, (P4661854305289588242.a n : ℤ) = A283770 (n + 1)

theorem P4661854305289588242.correct : P4661854305289588242.Spec := by
  intro n
  simp only [A283770, Nat.add_sub_cancel]

end A283770

/-! ## A283770.P13771859067020634478

`lt[1, ceil(ϕ*n)%3]`
-/

namespace A283770.P13771859067020634478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.goldenRatio * (n : ℝ)⌉ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283770.P13771859067020634478

namespace A283770

/-- `lt[1, ceil(ϕ*n)%3]` -/
def P13771859067020634478.Spec : Prop :=
  ∀ n, (P13771859067020634478.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P16335082523422159723

`eq[5, A004956(n)%3+3]`
-/

namespace A283770.P16335082523422159723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004956 n) 3 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283770.P16335082523422159723

namespace A283770

/-- `eq[5, A004956(n)%3+3]` -/
def P16335082523422159723.Spec : Prop :=
  ∀ n, (P16335082523422159723.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P13919805965477783503

`record[or(n+1, (n-A003623(n+1))%3)]`
-/

namespace A283770.P13919805965477783503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (Int.tmod ((n : ℤ) - A003623 (n + 1)) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283770.P13919805965477783503

namespace A283770

/-- `record[or(n+1, (n-A003623(n+1))%3)]` -/
def P13919805965477783503.Spec : Prop :=
  ∀ n, P13919805965477783503.a n = A283770 (n + 1)

end A283770

/-! ## A283770.P10228054308606981109

`eq[1, dr(A000217(A000201(n+1)))]+1`
-/

namespace A283770.P10228054308606981109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000217 (A000201 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A283770.P10228054308606981109

namespace A283770

/-- `eq[1, dr(A000217(A000201(n+1)))]+1` -/
def P10228054308606981109.Spec : Prop :=
  ∀ n, (P10228054308606981109.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P1600265682196550881

`eq[2, A010872(A195121(n))]`
-/

namespace A283770.P1600265682196550881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A195121 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283770.P1600265682196550881

namespace A283770

/-- `eq[2, A010872(A195121(n))]` -/
def P1600265682196550881.Spec : Prop :=
  ∀ n, (P1600265682196550881.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P16274512470657643789

`eq[1, A102283(A026351(n)-1)]`
-/

namespace A283770.P16274512470657643789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A026351 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283770.P16274512470657643789

namespace A283770

/-- `eq[1, A102283(A026351(n)-1)]` -/
def P16274512470657643789.Spec : Prop :=
  ∀ n, (P16274512470657643789.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P9184002746048843729

`record[A003603(A000201(3*n+1))]`
-/

namespace A283770.P9184002746048843729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A000201 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283770.P9184002746048843729

namespace A283770

/-- `record[A003603(A000201(3*n+1))]` -/
def P9184002746048843729.Spec : Prop :=
  ∀ n, P9184002746048843729.a n = A283770 (n + 1)

end A283770

/-! ## A283770.P9997974520005846213

`lt[A109614(A026351(n)), A026351(n)]`
-/

namespace A283770.P9997974520005846213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A026351 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283770.P9997974520005846213

namespace A283770

/-- `lt[A109614(A026351(n)), A026351(n)]` -/
def P9997974520005846213.Spec : Prop :=
  ∀ n, (P9997974520005846213.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P12397182558571697506

`eq[A004956(n), A080782(A004956(n)+1)]`
-/

namespace A283770.P12397182558571697506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A004956 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283770.P12397182558571697506

namespace A283770

/-- `eq[A004956(n), A080782(A004956(n)+1)]` -/
def P12397182558571697506.Spec : Prop :=
  ∀ n, (P12397182558571697506.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P5540432202532386102

`record[A003603(A001950(3*n+1))]`
-/

namespace A283770.P5540432202532386102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A001950 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283770.P5540432202532386102

namespace A283770

/-- `record[A003603(A001950(3*n+1))]` -/
def P5540432202532386102.Spec : Prop :=
  ∀ n, P5540432202532386102.a n = A283770 (n + 1)

end A283770

/-! ## A283770.P10099585853615017899

`eq[1, A102283(2*A195121(n))]`
-/

namespace A283770.P10099585853615017899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * A195121 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283770.P10099585853615017899

namespace A283770

/-- `eq[1, A102283(2*A195121(n))]` -/
def P10099585853615017899.Spec : Prop :=
  ∀ n, (P10099585853615017899.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P1769912268733070247

`lt[1, A099838(2*floor(ϕ*n)+1)]`
-/

namespace A283770.P1769912268733070247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099838 (2 * ⌊Real.goldenRatio * (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283770.P1769912268733070247

namespace A283770

/-- `lt[1, A099838(2*floor(ϕ*n)+1)]` -/
def P1769912268733070247.Spec : Prop :=
  ∀ n, (P1769912268733070247.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P13568046799764539666

`eq[1, A102283(2*A026351(n))]`
-/

namespace A283770.P13568046799764539666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * A026351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283770.P13568046799764539666

namespace A283770

/-- `eq[1, A102283(2*A026351(n))]` -/
def P13568046799764539666.Spec : Prop :=
  ∀ n, (P13568046799764539666.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P16982456984013345516

`lt[A256626(2*(A000201(n+1)+1)), 0]+1`
-/

namespace A283770.P16982456984013345516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 (2 * (A000201 (n + 1) + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283770.P16982456984013345516

namespace A283770

/-- `lt[A256626(2*(A000201(n+1)+1)), 0]+1` -/
def P16982456984013345516.Spec : Prop :=
  ∀ n, (P16982456984013345516.a n : ℤ) = A283770 (n + 1)

end A283770

/-! ## A283770.P14648136243734791184

`record[A003603(A003623(3*n+1))]`
-/

namespace A283770.P14648136243734791184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A003623 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283770.P14648136243734791184

namespace A283770

/-- `record[A003603(A003623(3*n+1))]` -/
def P14648136243734791184.Spec : Prop :=
  ∀ n, P14648136243734791184.a n = A283770 (n + 1)

end A283770

/-! ## A283770.P6388688463254428042

`record[A003603(A101864(3*n+1))]`
-/

namespace A283770.P6388688463254428042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A101864 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283770.P6388688463254428042

namespace A283770

/-- `record[A003603(A101864(3*n+1))]` -/
def P6388688463254428042.Spec : Prop :=
  ∀ n, P6388688463254428042.a n = A283770 (n + 1)

end A283770

/-! ## A283770.P11213669408313859960

`record[A003603(A134864(3*n+1))]`
-/

namespace A283770.P11213669408313859960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A134864 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283770.P11213669408313859960

namespace A283770

/-- `record[A003603(A134864(3*n+1))]` -/
def P11213669408313859960.Spec : Prop :=
  ∀ n, P11213669408313859960.a n = A283770 (n + 1)

end A283770

/-!
# A283771: Numbers k such that L(k) = 2 mod 3, where L = A000201 = lower Wythoff sequence.

The programs for A283771, the canonical program `A283771.P6400894254700234399` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283771 has offset 1).

The definition of A283771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283771.P6400894254700234399

`eq[1, (A004956(n)-2)%3]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283771

/-- `eq[1, (A004956(n)-2)%3]` -/
def P6400894254700234399.Spec : Prop :=
  ∀ n, (P6400894254700234399.a n : ℤ) = A283771 (n + 1)

theorem P6400894254700234399.correct : P6400894254700234399.Spec := by
  intro n
  simp only [A283771, Nat.add_sub_cancel]

end A283771

/-! ## A283771.P14248869649674377652

`eq[ceil(ϕ*n)%3, A000007(n)]`
-/

namespace A283771.P14248869649674377652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.goldenRatio * (n : ℝ)⌉ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283771.P14248869649674377652

namespace A283771

/-- `eq[ceil(ϕ*n)%3, A000007(n)]` -/
def P14248869649674377652.Spec : Prop :=
  ∀ n, (P14248869649674377652.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P4206828061401190529

`eq[2, (A004957(n)-(n+1))%3]`
-/

namespace A283771.P4206828061401190529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004957 n - (n + 1 : ℤ)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283771.P4206828061401190529

namespace A283771

/-- `eq[2, (A004957(n)-(n+1))%3]` -/
def P4206828061401190529.Spec : Prop :=
  ∀ n, (P4206828061401190529.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P2981970201082155116

`eq[A096270(n), A393579(n+1)]`
-/

namespace A283771.P2981970201082155116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283771.P2981970201082155116

namespace A283771

/-- `eq[A096270(n), A393579(n+1)]` -/
def P2981970201082155116.Spec : Prop :=
  ∀ n, (P2981970201082155116.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P7103236462113928561

`eq[lcm(3, A026351(n)), A026351(n)]`
-/

namespace A283771.P7103236462113928561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A026351 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283771.P7103236462113928561

namespace A283771

/-- `eq[lcm(3, A026351(n)), A026351(n)]` -/
def P7103236462113928561.Spec : Prop :=
  ∀ n, (P7103236462113928561.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P2400919852597990993

`eq[1, A010872(A195121(n))]`
-/

namespace A283771.P2400919852597990993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A195121 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283771.P2400919852597990993

namespace A283771

/-- `eq[1, A010872(A195121(n))]` -/
def P2400919852597990993.Spec : Prop :=
  ∀ n, (P2400919852597990993.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P930399561601975972

`record[A026242(3*n+8)]`
-/

namespace A283771.P930399561601975972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (3 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283771.P930399561601975972

namespace A283771

/-- `record[A026242(3*n+8)]` -/
def P930399561601975972.Spec : Prop :=
  ∀ n, P930399561601975972.a n = A283771 (n + 1)

end A283771

/-! ## A283771.P3104145187801479360

`lt[1, lt[A329130(n), n+1]%3]`
-/

namespace A283771.P3104145187801479360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329130 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283771.P3104145187801479360

namespace A283771

/-- `lt[1, lt[A329130(n), n+1]%3]` -/
def P3104145187801479360.Spec : Prop :=
  ∀ n, (P3104145187801479360.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P413586377815600407

`eq[0, A102283(A026351(n))]`
-/

namespace A283771.P413586377815600407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A026351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283771.P413586377815600407

namespace A283771

/-- `eq[0, A102283(A026351(n))]` -/
def P413586377815600407.Spec : Prop :=
  ∀ n, (P413586377815600407.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P3766979259578004278

`lt[A109614(A026351(n)+2), n]`
-/

namespace A283771.P3766979259578004278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (A026351 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283771.P3766979259578004278

namespace A283771

/-- `lt[A109614(A026351(n)+2), n]` -/
def P3766979259578004278.Spec : Prop :=
  ∀ n, (P3766979259578004278.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P9118903546256884450

`eq[A080782(A026351(n))+1, A004956(n)]`
-/

namespace A283771.P9118903546256884450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A026351 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283771.P9118903546256884450

namespace A283771

/-- `eq[A080782(A026351(n))+1, A004956(n)]` -/
def P9118903546256884450.Spec : Prop :=
  ∀ n, (P9118903546256884450.a n : ℤ) = A283771 (n + 1)

end A283771

/-! ## A283771.P15607267622547925638

`lt[A101040(n+1), A099837(A214971(n+1)+n)]`
-/

namespace A283771.P15607267622547925638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A214971 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283771.P15607267622547925638

namespace A283771

/-- `lt[A101040(n+1), A099837(A214971(n+1)+n)]` -/
def P15607267622547925638.Spec : Prop :=
  ∀ n, (P15607267622547925638.a n : ℤ) = A283771 (n + 1)

end A283771

/-!
# A283772: Numbers k such that U(k) = 0 mod 3, where U = A001950 = upper Wythoff sequence.

The programs for A283772, the canonical program `A283772.P13159893543690945890` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283772 has offset 1).

The definition of A283772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283772.P4280723276340420820

`eq[3, A020639(2*ceil(n*ϕ²)+1)]`
-/

namespace A283772.P4280723276340420820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283772.P4280723276340420820

namespace A283772

/-- `eq[3, A020639(2*ceil(n*ϕ²)+1)]` -/
def P4280723276340420820.Spec : Prop :=
  ∀ n, (P4280723276340420820.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P13159893543690945890

`eq[1, A004957(n)%3]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283772

/-- `eq[1, A004957(n)%3]` -/
def P13159893543690945890.Spec : Prop :=
  ∀ n, (P13159893543690945890.a n : ℤ) = A283772 (n + 1)

theorem P13159893543690945890.correct : P13159893543690945890.Spec := by
  intro n
  simp only [A283772, Nat.add_sub_cancel]

end A283772

/-! ## A283772.P8757231438402565425

`lt[A288713(n+1)%3, 1]`
-/

namespace A283772.P8757231438402565425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288713 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283772.P8757231438402565425

namespace A283772

/-- `lt[A288713(n+1)%3, 1]` -/
def P8757231438402565425.Spec : Prop :=
  ∀ n, (P8757231438402565425.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P4872629946661254342

`eq[2, (n-A060145(n))%3]`
-/

namespace A283772.P4872629946661254342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A060145 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283772.P4872629946661254342

namespace A283772

/-- `eq[2, (n-A060145(n))%3]` -/
def P4872629946661254342.Spec : Prop :=
  ∀ n, (P4872629946661254342.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P375579593910798436

`eq[0, A001950(n+1)%3]+1`
-/

namespace A283772.P375579593910798436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283772.P375579593910798436

namespace A283772

/-- `eq[0, A001950(n+1)%3]+1` -/
def P375579593910798436.Spec : Prop :=
  ∀ n, (P375579593910798436.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P8887768024962132036

`eq[1, A026274(n+1)%3]+2`
-/

namespace A283772.P8887768024962132036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026274 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A283772.P8887768024962132036

namespace A283772

/-- `eq[1, A026274(n+1)%3]+2` -/
def P8887768024962132036.Spec : Prop :=
  ∀ n, (P8887768024962132036.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P16280568124243780981

`eq[A000007(n), A100050(n-A060143(n))]`
-/

namespace A283772.P16280568124243780981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 ((n : ℤ) - A060143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283772.P16280568124243780981

namespace A283772

/-- `eq[A000007(n), A100050(n-A060143(n))]` -/
def P16280568124243780981.Spec : Prop :=
  ∀ n, (P16280568124243780981.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P8793863116835537941

`eq[A000007(n), A102283(A195121(n)-n)]`
-/

namespace A283772.P8793863116835537941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A195121 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283772.P8793863116835537941

namespace A283772

/-- `eq[A000007(n), A102283(A195121(n)-n)]` -/
def P8793863116835537941.Spec : Prop :=
  ∀ n, (P8793863116835537941.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P9890280798300395063

`eq[A020639(A288713(n+1)), A157532(n+1)]`
-/

namespace A283772.P9890280798300395063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288713 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283772.P9890280798300395063

namespace A283772

/-- `eq[A020639(A288713(n+1)), A157532(n+1)]` -/
def P9890280798300395063.Spec : Prop :=
  ∀ n, (P9890280798300395063.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P9050779994454265988

`eq[2, A004956(A004956(n))%3]`
-/

namespace A283772.P9050779994454265988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004956 (A004956 n).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283772.P9050779994454265988

namespace A283772

/-- `eq[2, A004956(A004956(n))%3]` -/
def P9050779994454265988.Spec : Prop :=
  ∀ n, (P9050779994454265988.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P7136847349408104909

`lt[A109614(floor(ϕ*n)+2+n), n+1]`
-/

namespace A283772.P7136847349408104909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (⌊Real.goldenRatio * (n : ℝ)⌋ + 2 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283772.P7136847349408104909

namespace A283772

/-- `lt[A109614(floor(ϕ*n)+2+n), n+1]` -/
def P7136847349408104909.Spec : Prop :=
  ∀ n, (P7136847349408104909.a n : ℤ) = A283772 (n + 1)

end A283772

/-! ## A283772.P12615386051358932030

`lt[A347633(A001950(n+1)), 2]+1`
-/

namespace A283772.P12615386051358932030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (A001950 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283772.P12615386051358932030

namespace A283772

/-- `lt[A347633(A001950(n+1)), 2]+1` -/
def P12615386051358932030.Spec : Prop :=
  ∀ n, (P12615386051358932030.a n : ℤ) = A283772 (n + 1)

end A283772

/-!
# A283773: Numbers k such that U(k) = 1 mod 3, where U = A001950 = upper Wythoff sequence.

The programs for A283773, the canonical program `A283773.P13307734796289270731` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283773 has offset 1).

The definition of A283773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283773.P13307734796289270731

`lt[1, abs(2-(n-floor(n/ϕ)+1)%3)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283773

/-- `lt[1, abs(2-(n-floor(n/ϕ)+1)%3)]` -/
def P13307734796289270731.Spec : Prop :=
  ∀ n, (P13307734796289270731.a n : ℤ) = A283773 (n + 1)

theorem P13307734796289270731.correct : P13307734796289270731.Spec := by
  intro n
  simp only [A283773, Nat.add_sub_cancel]

end A283773

/-! ## A283773.P9586469138897287679

`eq[2, A004957(n)%3]`
-/

namespace A283773.P9586469138897287679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004957 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283773.P9586469138897287679

namespace A283773

/-- `eq[2, A004957(n)%3]` -/
def P9586469138897287679.Spec : Prop :=
  ∀ n, (P9586469138897287679.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P16232387956713634635

`eq[5, dr(A284395(n+1))]`
-/

namespace A283773.P16232387956713634635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A284395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283773.P16232387956713634635

namespace A283773

/-- `eq[5, dr(A284395(n+1))]` -/
def P16232387956713634635.Spec : Prop :=
  ∀ n, (P16232387956713634635.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P13588748622503785905

`eq[2, A288709(n+1)%3]`
-/

namespace A283773.P13588748622503785905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288709 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283773.P13588748622503785905

namespace A283773

/-- `eq[2, A288709(n+1)%3]` -/
def P13588748622503785905.Spec : Prop :=
  ∀ n, (P13588748622503785905.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P10156511398209801755

`eq[3, gcd(3, A007066(n+1))]`
-/

namespace A283773.P10156511398209801755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A007066 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283773.P10156511398209801755

namespace A283773

/-- `eq[3, gcd(3, A007066(n+1))]` -/
def P10156511398209801755.Spec : Prop :=
  ∀ n, (P10156511398209801755.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P11641502173421469952

`eq[2, (A004956(n)+n)%3]`
-/

namespace A283773.P11641502173421469952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004956 n + (n : ℤ)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283773.P11641502173421469952

namespace A283773

/-- `eq[2, (A004956(n)+n)%3]` -/
def P11641502173421469952.Spec : Prop :=
  ∀ n, (P11641502173421469952.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P11291579409385405189

`eq[2, (n-A060143(n))%3]`
-/

namespace A283773.P11291579409385405189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A060143 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283773.P11291579409385405189

namespace A283773

/-- `eq[2, (n-A060143(n))%3]` -/
def P11291579409385405189.Spec : Prop :=
  ∀ n, (P11291579409385405189.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P17522443030623758894

`eq[1, A001950(n+1)%3]+1`
-/

namespace A283773.P17522443030623758894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283773.P17522443030623758894

namespace A283773

/-- `eq[1, A001950(n+1)%3]+1` -/
def P17522443030623758894.Spec : Prop :=
  ∀ n, (P17522443030623758894.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P13494716043309937493

`lt[2, A187340(A187329(n))]`
-/

namespace A283773.P13494716043309937493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187340 (A187329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283773.P13494716043309937493

namespace A283773

/-- `lt[2, A187340(A187329(n))]` -/
def P13494716043309937493.Spec : Prop :=
  ∀ n, (P13494716043309937493.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P4306272441188990424

`eq[1, A010875(A288709(n+1)+2)]`
-/

namespace A283773.P4306272441188990424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A288709 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283773.P4306272441188990424

namespace A283773

/-- `eq[1, A010875(A288709(n+1)+2)]` -/
def P4306272441188990424.Spec : Prop :=
  ∀ n, (P4306272441188990424.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P15143887160221118185

`eq[1, A020639(A284621(n+1))-2]`
-/

namespace A283773.P15143887160221118185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A284621 (n + 1)).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283773.P15143887160221118185

namespace A283773

/-- `eq[1, A020639(A284621(n+1))-2]` -/
def P15143887160221118185.Spec : Prop :=
  ∀ n, (P15143887160221118185.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P14208198862521842119

`eq[A102283(n), A102283(A195121(n)+1)]`
-/

namespace A283773.P14208198862521842119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A195121 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283773.P14208198862521842119

namespace A283773

/-- `eq[A102283(n), A102283(A195121(n)+1)]` -/
def P14208198862521842119.Spec : Prop :=
  ∀ n, (P14208198862521842119.a n : ℤ) = A283773 (n + 1)

end A283773

/-! ## A283773.P2836298930827516798

`record[A003603(A008486(n+2))]`
-/

namespace A283773.P2836298930827516798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A008486 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283773.P2836298930827516798

namespace A283773

/-- `record[A003603(A008486(n+2))]` -/
def P2836298930827516798.Spec : Prop :=
  ∀ n, P2836298930827516798.a n = A283773 (n + 1)

end A283773

/-!
# A283774: Numbers k such that U(k) == 2 mod 3, where U = A001950 = upper Wythoff sequence.

The programs for A283774, the canonical program `A283774.P14228486931551571778` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283774 has offset 1).

The definition of A283774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283774.P14228486931551571778

`eq[1, (n-A060143(n))%3]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283774

/-- `eq[1, (n-A060143(n))%3]` -/
def P14228486931551571778.Spec : Prop :=
  ∀ n, (P14228486931551571778.a n : ℤ) = A283774 (n + 1)

theorem P14228486931551571778.correct : P14228486931551571778.Spec := by
  intro n
  simp only [A283774, Nat.add_sub_cancel]

end A283774

/-! ## A283774.P17208026850839586547

`eq[1, A283234(n+1)%3]+1`
-/

namespace A283774.P17208026850839586547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283234 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283774.P17208026850839586547

namespace A283774

/-- `eq[1, A283234(n+1)%3]+1` -/
def P17208026850839586547.Spec : Prop :=
  ∀ n, (P17208026850839586547.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P5427903403755666870

`eq[2, A001950(n+1)%3]+1`
-/

namespace A283774.P5427903403755666870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283774.P5427903403755666870

namespace A283774

/-- `eq[2, A001950(n+1)%3]+1` -/
def P5427903403755666870.Spec : Prop :=
  ∀ n, (P5427903403755666870.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P15120431693061917924

`eq[1, A102283(A195121(n)-n)]`
-/

namespace A283774.P15120431693061917924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A195121 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283774.P15120431693061917924

namespace A283774

/-- `eq[1, A102283(A195121(n)-n)]` -/
def P15120431693061917924.Spec : Prop :=
  ∀ n, (P15120431693061917924.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P9776701620069946079

`lt[5, dr(A284395(n+1))]`
-/

namespace A283774.P9776701620069946079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A284395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283774.P9776701620069946079

namespace A283774

/-- `lt[5, dr(A284395(n+1))]` -/
def P9776701620069946079.Spec : Prop :=
  ∀ n, (P9776701620069946079.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P4114248937700616888

`eq[1, A288709(n+1)%3]`
-/

namespace A283774.P4114248937700616888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288709 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283774.P4114248937700616888

namespace A283774

/-- `eq[1, A288709(n+1)%3]` -/
def P4114248937700616888.Spec : Prop :=
  ∀ n, (P4114248937700616888.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P5893688764520731502

`eq[1, (n-A060145(n))%3]`
-/

namespace A283774.P5893688764520731502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A060145 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283774.P5893688764520731502

namespace A283774

/-- `eq[1, (n-A060145(n))%3]` -/
def P5893688764520731502.Spec : Prop :=
  ∀ n, (P5893688764520731502.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P9545615579851783152

`eq[1, A010875(A288709(n+1))]`
-/

namespace A283774.P9545615579851783152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A288709 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283774.P9545615579851783152

namespace A283774

/-- `eq[1, A010875(A288709(n+1))]` -/
def P9545615579851783152.Spec : Prop :=
  ∀ n, (P9545615579851783152.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P97816588296120357

`eq[A001950(n+1)%3, A001468(n)]`
-/

namespace A283774.P97816588296120357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (n + 1)) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283774.P97816588296120357

namespace A283774

/-- `eq[A001950(n+1)%3, A001468(n)]` -/
def P97816588296120357.Spec : Prop :=
  ∀ n, (P97816588296120357.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P31051641782508513

`eq[A102283(A026351(n)-n), A102283(n)]`
-/

namespace A283774.P31051641782508513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A026351 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283774.P31051641782508513

namespace A283774

/-- `eq[A102283(A026351(n)-n), A102283(n)]` -/
def P31051641782508513.Spec : Prop :=
  ∀ n, (P31051641782508513.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P737385007809561821

`eq[A020639(A288713(n+1)+2), A157532(n+1)]`
-/

namespace A283774.P737385007809561821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A288713 (n + 1) + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283774.P737385007809561821

namespace A283774

/-- `eq[A020639(A288713(n+1)+2), A157532(n+1)]` -/
def P737385007809561821.Spec : Prop :=
  ∀ n, (P737385007809561821.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P10221650070787352973

`eq[A102283(n+1), A102283(A195121(n))]`
-/

namespace A283774.P10221650070787352973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A195121 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283774.P10221650070787352973

namespace A283774

/-- `eq[A102283(n+1), A102283(A195121(n))]` -/
def P10221650070787352973.Spec : Prop :=
  ∀ n, (P10221650070787352973.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P13733070848110899413

`eq[A102283(2*n), A102283(A026351(n))]`
-/

namespace A283774.P13733070848110899413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A026351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283774.P13733070848110899413

namespace A283774

/-- `eq[A102283(2*n), A102283(A026351(n))]` -/
def P13733070848110899413.Spec : Prop :=
  ∀ n, (P13733070848110899413.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P8392982034667037756

`record[A050411(3*n+2)%(floor(ϕ*n)+2)]`
-/

namespace A283774.P8392982034667037756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050411 (3 * n + 2)) (⌊Real.goldenRatio * (n : ℝ)⌋ + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283774.P8392982034667037756

namespace A283774

/-- `record[A050411(3*n+2)%(floor(ϕ*n)+2)]` -/
def P8392982034667037756.Spec : Prop :=
  ∀ n, P8392982034667037756.a n = A283774 (n + 1)

end A283774

/-! ## A283774.P3907245672902037945

`eq[0, A163810(A004957(n))]`
-/

namespace A283774.P3907245672902037945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A004957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283774.P3907245672902037945

namespace A283774

/-- `eq[0, A163810(A004957(n))]` -/
def P3907245672902037945.Spec : Prop :=
  ∀ n, (P3907245672902037945.a n : ℤ) = A283774 (n + 1)

end A283774

/-! ## A283774.P17187888716458348052

`record[A016789(n)-A002251(A016789(n))]`
-/

namespace A283774.P17187888716458348052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A002251 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283774.P17187888716458348052

namespace A283774

/-- `record[A016789(n)-A002251(A016789(n))]` -/
def P17187888716458348052.Spec : Prop :=
  ∀ n, P17187888716458348052.a n = A283774 (n + 1)

end A283774

/-! ## A283774.P15678317449894126068

`lt[1, A099837(A214971(n+1)-n)]`
-/

namespace A283774.P15678317449894126068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A214971 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283774.P15678317449894126068

namespace A283774

/-- `lt[1, A099837(A214971(n+1)-n)]` -/
def P15678317449894126068.Spec : Prop :=
  ∀ n, (P15678317449894126068.a n : ℤ) = A283774 (n + 1)

end A283774

/-!
# A283775: Numbers k such that floor(k*sqrt(3)) is even.

The programs for A283775, there is no canonical definition to state claims against.
-/

/-! ## A283775.P16948985646690185660

`lt[1, A329900(ceil(n*sqrt(3))+1)]`
-/

namespace A283775.P16948985646690185660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (⌈(n : ℝ) * Real.sqrt (3 : ℝ)⌉ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283775.P16948985646690185660

/-! ## A283775.P15234171927313677355

`eq[0, val(A198081(n+1), 2)]+1`
-/

namespace A283775.P15234171927313677355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A198081 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A283775.P15234171927313677355

/-! ## A283775.P14733642578290204889

`eq[1, A010137(A198081(n))]`
-/

namespace A283775.P14733642578290204889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (A198081 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P14733642578290204889

/-! ## A283775.P3399951555483351630

`eq[2, A020639(A022838(n+1))]+1`
-/

namespace A283775.P3399951555483351630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022838 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283775.P3399951555483351630

/-! ## A283775.P16801592760112874124

`eq[2, A020639(A195120(n+1))]+1`
-/

namespace A283775.P16801592760112874124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A195120 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283775.P16801592760112874124

/-! ## A283775.P3558682689205084901

`lt[A195120(n), A195140(A195120(n))]`
-/

namespace A283775.P3558682689205084901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A195120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283775.P3558682689205084901

/-! ## A283775.P15568303616126078148

`lt[A014682(A198081(n)+1), A198081(n)]`
-/

namespace A283775.P15568303616126078148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A198081 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283775.P15568303616126078148

/-! ## A283775.P5237176896216367073

`eq[2, A020639(A080590(n+1))]`
-/

namespace A283775.P5237176896216367073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080590 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P5237176896216367073

/-! ## A283775.P17751238204300117978

`lt[2, A020639(A080590(n+1)+1)]`
-/

namespace A283775.P17751238204300117978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080590 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283775.P17751238204300117978

/-! ## A283775.P14736717394660771315

`eq[2, A020639(A215781(n)+1+n)]`
-/

namespace A283775.P14736717394660771315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215781 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P14736717394660771315

/-! ## A283775.P9559346533148154102

`lt[2, A020639(3*comp[A054406(n+1)]+1)]`
-/

namespace A283775.P9559346533148154102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283775.P9559346533148154102

/-! ## A283775.P3593195463667175398

`eq[1, A000035(n)+A000035(A215781(n))]`
-/

namespace A283775.P3593195463667175398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000035 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P3593195463667175398

/-! ## A283775.P8951053011716827530

`eq[1, A059841(n)+A059841(A215781(n))]`
-/

namespace A283775.P8951053011716827530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A059841 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P8951053011716827530

/-! ## A283775.P10509007814640004031

`eq[2, A000034(n)*A000034(A215781(n))]`
-/

namespace A283775.P10509007814640004031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A000034 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P10509007814640004031

/-! ## A283775.P7664068553257218502

`eq[2, A040001(n)*A040001(A215781(n))]`
-/

namespace A283775.P7664068553257218502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A040001 (A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P7664068553257218502

/-! ## A283775.P5692604393816404791

`lt[2, A020639(A003512(n+1)-A007538(n+1))]`
-/

namespace A283775.P5692604393816404791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003512 (n + 1) - A007538 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283775.P5692604393816404791

/-! ## A283775.P9933310098575134764

`eq[A000035(n), A133872(2*A215781(n))]`
-/

namespace A283775.P9933310098575134764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (2 * A215781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283775.P9933310098575134764

/-! ## A283775.P13015142459610196001

`lt[1, A260738(comp[A054406(n+1)]+1)]`
-/

namespace A283775.P13015142459610196001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283775.P13015142459610196001

/-! ## A283775.P6770608331285551549

`eq[1, A006519(A198081(n)+2)]`
-/

namespace A283775.P6770608331285551549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A198081 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P6770608331285551549

/-! ## A283775.P13730129706104361334

`eq[1, A027642(A198081(n)+2)]`
-/

namespace A283775.P13730129706104361334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A198081 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283775.P13730129706104361334

/-!
# A283776: Numbers k such that floor(k*sqrt(3)) is odd.

The programs for A283776, the canonical program `A283776.P160697927852129727` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283776 has offset 1).

The definition of A283776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283776.P13171408486486161502

`eq[1, A257261(ceil(n*(2-sqrt(3))))]`
-/

namespace A283776.P13171408486486161502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257261 ⌈(n : ℝ) * (2 - Real.sqrt (3 : ℝ))⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283776.P13171408486486161502

namespace A283776

/-- `eq[1, A257261(ceil(n*(2-sqrt(3))))]` -/
def P13171408486486161502.Spec : Prop :=
  ∀ n, (P13171408486486161502.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P160697927852129727

`lt[val(A022838(n+1), 2), 1]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283776

/-- `lt[val(A022838(n+1), 2), 1]+1` -/
def P160697927852129727.Spec : Prop :=
  ∀ n, (P160697927852129727.a n : ℤ) = A283776 (n + 1)

theorem P160697927852129727.correct : P160697927852129727.Spec := by
  intro n
  simp only [A283776, Nat.add_sub_cancel]

end A283776

/-! ## A283776.P4378235028365843506

`record[(n+1)/exp(and(1, A180123(n+1)))]`
-/

namespace A283776.P4378235028365843506
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.exp (Int.land 1 (A180123 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283776.P4378235028365843506

namespace A283776

/-- `record[(n+1)/exp(and(1, A180123(n+1)))]` -/
def P4378235028365843506.Spec : Prop :=
  ∀ n, P4378235028365843506.a n = (A283776 (n + 1) : ℝ)

end A283776

/-! ## A283776.P7928791480781168195

`eq[1, A076826(A195120(n))]`
-/

namespace A283776.P7928791480781168195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A195120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283776.P7928791480781168195

namespace A283776

/-- `eq[1, A076826(A195120(n))]` -/
def P7928791480781168195.Spec : Prop :=
  ∀ n, (P7928791480781168195.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P8075484841471657639

`eq[1, A055396(A195120(n)+1)]`
-/

namespace A283776.P8075484841471657639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A195120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283776.P8075484841471657639

namespace A283776

/-- `eq[1, A055396(A195120(n)+1)]` -/
def P8075484841471657639.Spec : Prop :=
  ∀ n, (P8075484841471657639.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P34057280570342123

`eq[2, A020639(A188069(n+1))]`
-/

namespace A283776.P34057280570342123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A188069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283776.P34057280570342123

namespace A283776

/-- `eq[2, A020639(A188069(n+1))]` -/
def P34057280570342123.Spec : Prop :=
  ∀ n, (P34057280570342123.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P2770007722310066597

`eq[2, A020639(A195120(n)+1)]`
-/

namespace A283776.P2770007722310066597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A195120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283776.P2770007722310066597

namespace A283776

/-- `eq[2, A020639(A195120(n)+1)]` -/
def P2770007722310066597.Spec : Prop :=
  ∀ n, (P2770007722310066597.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P2187631744882593541

`lt[2, A020639(A080590(n+1))]`
-/

namespace A283776.P2187631744882593541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080590 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283776.P2187631744882593541

namespace A283776

/-- `lt[2, A020639(A080590(n+1))]` -/
def P2187631744882593541.Spec : Prop :=
  ∀ n, (P2187631744882593541.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P14111486287959254984

`lt[A014682(A198081(n)), 2*n]`
-/

namespace A283776.P14111486287959254984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A198081 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283776.P14111486287959254984

namespace A283776

/-- `lt[A014682(A198081(n)), 2*n]` -/
def P14111486287959254984.Spec : Prop :=
  ∀ n, (P14111486287959254984.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P7366652967019985549

`lt[2, A020639(A003512(n+1))]+1`
-/

namespace A283776.P7366652967019985549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003512 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283776.P7366652967019985549

namespace A283776

/-- `lt[2, A020639(A003512(n+1))]+1` -/
def P7366652967019985549.Spec : Prop :=
  ∀ n, (P7366652967019985549.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P13615355247619763075

`lt[n+1, A000265(comp[A054406(n+1)]+2)]`
-/

namespace A283776.P13615355247619763075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283776.P13615355247619763075

namespace A283776

/-- `lt[n+1, A000265(comp[A054406(n+1)]+2)]` -/
def P13615355247619763075.Spec : Prop :=
  ∀ n, (P13615355247619763075.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P8689195795929772043

`eq[A040001(n)², A228826(A215781(n))²]`
-/

namespace A283776.P8689195795929772043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A215781 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283776.P8689195795929772043

namespace A283776

/-- `eq[A040001(n)², A228826(A215781(n))²]` -/
def P8689195795929772043.Spec : Prop :=
  ∀ n, (P8689195795929772043.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P274180042070170829

`eq[1, A001511(A022838(n+1))]+1`
-/

namespace A283776.P274180042070170829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A022838 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283776.P274180042070170829

namespace A283776

/-- `eq[1, A001511(A022838(n+1))]+1` -/
def P274180042070170829.Spec : Prop :=
  ∀ n, (P274180042070170829.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P9676051362552923255

`lt[A035363(A054088(n+1)-(n+1)), 2]+1`
-/

namespace A283776.P9676051362552923255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A054088 (n + 1) - (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283776.P9676051362552923255

namespace A283776

/-- `lt[A035363(A054088(n+1)-(n+1)), 2]+1` -/
def P9676051362552923255.Spec : Prop :=
  ∀ n, (P9676051362552923255.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P12896629384370818784

`eq[1, A027642(A198081(n)+1)]`
-/

namespace A283776.P12896629384370818784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (A198081 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283776.P12896629384370818784

namespace A283776

/-- `eq[1, A027642(A198081(n)+1)]` -/
def P12896629384370818784.Spec : Prop :=
  ∀ n, (P12896629384370818784.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P4994460503397991876

`lt[n, A029578(A198081(n)+1)]`
-/

namespace A283776.P4994460503397991876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A198081 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283776.P4994460503397991876

namespace A283776

/-- `lt[n, A029578(A198081(n)+1)]` -/
def P4994460503397991876.Spec : Prop :=
  ∀ n, (P4994460503397991876.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P877472863843674660

`lt[A030123(n), 2*A266286(A198081(n))]`
-/

namespace A283776.P877472863843674660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266286 (A198081 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283776.P877472863843674660

namespace A283776

/-- `lt[A030123(n), 2*A266286(A198081(n))]` -/
def P877472863843674660.Spec : Prop :=
  ∀ n, (P877472863843674660.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P15801125440359014176

`lt[n, A266286(A198081(n))-A029578(n)]`
-/

namespace A283776.P15801125440359014176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266286 (A198081 n).toNat - A029578 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283776.P15801125440359014176

namespace A283776

/-- `lt[n, A266286(A198081(n))-A029578(n)]` -/
def P15801125440359014176.Spec : Prop :=
  ∀ n, (P15801125440359014176.a n : ℤ) = A283776 (n + 1)

end A283776

/-! ## A283776.P5128579763627799563

`eq[1, and(1, A172475(2*n))]`
-/

namespace A283776.P5128579763627799563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A172475 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283776.P5128579763627799563

namespace A283776

/-- `eq[1, and(1, A172475(2*n))]` -/
def P5128579763627799563.Spec : Prop :=
  ∀ n, (P5128579763627799563.a n : ℤ) = A283776 (n + 1)

end A283776

/-!
# A283777: Numbers k such that floor(k*e) is even.

The programs for A283777, the canonical program `A283777.P2253580379995022249` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283777 has offset 1).

The definition of A283777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283777.P2253580379995022249

`eq[1, ceil(e*n)%2]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283777

/-- `eq[1, ceil(e*n)%2]` -/
def P2253580379995022249.Spec : Prop :=
  ∀ n, (P2253580379995022249.a n : ℤ) = A283777 (n + 1)

theorem P2253580379995022249.correct : P2253580379995022249.Spec := by
  intro n
  simp only [A283777, Nat.add_sub_cancel]

end A283777

/-! ## A283777.P8658268688100919029

`eq[1, gcd(2, ceil(e*n))]`
-/

namespace A283777.P8658268688100919029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈Real.exp 1 * (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283777.P8658268688100919029

namespace A283777

/-- `eq[1, gcd(2, ceil(e*n))]` -/
def P8658268688100919029.Spec : Prop :=
  ∀ n, (P8658268688100919029.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P10658792044684876376

`eq[1, and(1, ceil(e*n))]`
-/

namespace A283777.P10658792044684876376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.exp 1 * (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283777.P10658792044684876376

namespace A283777

/-- `eq[1, and(1, ceil(e*n))]` -/
def P10658792044684876376.Spec : Prop :=
  ∀ n, (P10658792044684876376.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P17850378314082428825

`comp[A283778(n+1)-1]+1`
-/

namespace A283777.P17850378314082428825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283778 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A283777.P17850378314082428825

namespace A283777

/-- `comp[A283778(n+1)-1]+1` -/
def P17850378314082428825.Spec : Prop :=
  ∀ n, (P17850378314082428825.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P8118822764205784552

`record[(n+1)/exp(A022843(n+1)%2)]`
-/

namespace A283777.P8118822764205784552
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.exp (Int.tmod (A022843 (n + 1)) 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283777.P8118822764205784552

namespace A283777

/-- `record[(n+1)/exp(A022843(n+1)%2)]` -/
def P8118822764205784552.Spec : Prop :=
  ∀ n, P8118822764205784552.a n = (A283777 (n + 1) : ℝ)

end A283777

/-! ## A283777.P7711355115322539640

`lt[2, A020639(A022843(n)+1)]`
-/

namespace A283777.P7711355115322539640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022843 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283777.P7711355115322539640

namespace A283777

/-- `lt[2, A020639(A022843(n)+1)]` -/
def P7711355115322539640.Spec : Prop :=
  ∀ n, (P7711355115322539640.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P11152318719521201884

`eq[and(1, A022843(n)), A000007(n)]`
-/

namespace A283777.P11152318719521201884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A022843 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283777.P11152318719521201884

namespace A283777

/-- `eq[and(1, A022843(n)), A000007(n)]` -/
def P11152318719521201884.Spec : Prop :=
  ∀ n, (P11152318719521201884.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P380873555402408282

`lt[A106617(floor(e*n))-n, n]`
-/

namespace A283777.P380873555402408282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 ⌊Real.exp 1 * (n : ℝ)⌋.toNat - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283777.P380873555402408282

namespace A283777

/-- `lt[A106617(floor(e*n))-n, n]` -/
def P380873555402408282.Spec : Prop :=
  ∀ n, (P380873555402408282.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P7306900865172250396

`lt[A059029(A022843(n)), A022843(2*n)]`
-/

namespace A283777.P7306900865172250396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (A022843 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283777.P7306900865172250396

namespace A283777

/-- `lt[A059029(A022843(n)), A022843(2*n)]` -/
def P7306900865172250396.Spec : Prop :=
  ∀ n, (P7306900865172250396.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P7680160387089656923

`lt[0, A035464(A022843(n)+2)]`
-/

namespace A283777.P7680160387089656923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035464 (A022843 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283777.P7680160387089656923

namespace A283777

/-- `lt[0, A035464(A022843(n)+2)]` -/
def P7680160387089656923.Spec : Prop :=
  ∀ n, (P7680160387089656923.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P11016495670922990574

`lt[1, A286254(A022843(n+1)+2)]+1`
-/

namespace A283777.P11016495670922990574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286254 (A022843 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283777.P11016495670922990574

namespace A283777

/-- `lt[1, A286254(A022843(n+1)+2)]+1` -/
def P11016495670922990574.Spec : Prop :=
  ∀ n, (P11016495670922990574.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P281631777855859664

`eq[1, A059841(A022843(n)+A006093(n+1))]`
-/

namespace A283777.P281631777855859664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A022843 n + A006093 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283777.P281631777855859664

namespace A283777

/-- `eq[1, A059841(A022843(n)+A006093(n+1))]` -/
def P281631777855859664.Spec : Prop :=
  ∀ n, (P281631777855859664.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P11941893363820353043

`lt[A166120(A184589(abs(1-n)+1)+1), 3]`
-/

namespace A283777.P11941893363820353043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166120 (A184589 (|1 - (n : ℤ)| + 1).toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283777.P11941893363820353043

namespace A283777

/-- `lt[A166120(A184589(abs(1-n)+1)+1), 3]` -/
def P11941893363820353043.Spec : Prop :=
  ∀ n, (P11941893363820353043.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P1145288419535866117

`lt[A131575(A022843(n)), 1]`
-/

namespace A283777.P1145288419535866117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (A022843 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283777.P1145288419535866117

namespace A283777

/-- `lt[A131575(A022843(n)), 1]` -/
def P1145288419535866117.Spec : Prop :=
  ∀ n, (P1145288419535866117.a n : ℤ) = A283777 (n + 1)

end A283777

/-! ## A283777.P11425697698982341891

`record[n+1-A131575(∑[A276859(n+1)])]`
-/

namespace A283777.P11425697698982341891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A131575 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283777.P11425697698982341891

namespace A283777

/-- `record[n+1-A131575(∑[A276859(n+1)])]` -/
def P11425697698982341891.Spec : Prop :=
  ∀ n, P11425697698982341891.a n = A283777 (n + 1)

end A283777

/-!
# A283778: Numbers k such that floor(k*e) is odd.

The programs for A283778, the canonical program `A283778.P12873959629954449215` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283778 has offset 1).

The definition of A283778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283778.P12873959629954449215

`eq[1, floor(e*n)%2]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283778

/-- `eq[1, floor(e*n)%2]` -/
def P12873959629954449215.Spec : Prop :=
  ∀ n, (P12873959629954449215.a n : ℤ) = A283778 (n + 1)

theorem P12873959629954449215.correct : P12873959629954449215.Spec := by
  intro n
  simp only [A283778, Nat.add_sub_cancel]

end A283778

/-! ## A283778.P7275210402281487246

`eq[1, gcd(2, floor(e*n))]`
-/

namespace A283778.P7275210402281487246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283778.P7275210402281487246

namespace A283778

/-- `eq[1, gcd(2, floor(e*n))]` -/
def P7275210402281487246.Spec : Prop :=
  ∀ n, (P7275210402281487246.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P7967493064566365575

`eq[1, and(1, floor(e*n))]`
-/

namespace A283778.P7967493064566365575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283778.P7967493064566365575

namespace A283778

/-- `eq[1, and(1, floor(e*n))]` -/
def P7967493064566365575.Spec : Prop :=
  ∀ n, (P7967493064566365575.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P17202798148844130361

`lt[(floor(e*n)+1)%2, 1]`
-/

namespace A283778.P17202798148844130361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊Real.exp 1 * (n : ℝ)⌋ + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A283778.P17202798148844130361

namespace A283778

/-- `lt[(floor(e*n)+1)%2, 1]` -/
def P17202798148844130361.Spec : Prop :=
  ∀ n, (P17202798148844130361.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P4393327052411638323

`eq[1, A372544(n+1)]+1`
-/

namespace A283778.P4393327052411638323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283778.P4393327052411638323

namespace A283778

/-- `eq[1, A372544(n+1)]+1` -/
def P4393327052411638323.Spec : Prop :=
  ∀ n, (P4393327052411638323.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P9956490200786098796

`eq[2, A020639(A022843(n)+1)]`
-/

namespace A283778.P9956490200786098796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022843 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283778.P9956490200786098796

namespace A283778

/-- `eq[2, A020639(A022843(n)+1)]` -/
def P9956490200786098796.Spec : Prop :=
  ∀ n, (P9956490200786098796.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P16227411552791876952

`lt[2, A020639(A022843(n)+2)]`
-/

namespace A283778.P16227411552791876952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022843 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283778.P16227411552791876952

namespace A283778

/-- `lt[2, A020639(A022843(n)+2)]` -/
def P16227411552791876952.Spec : Prop :=
  ∀ n, (P16227411552791876952.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P3285517583984309040

`eq[0, A001222(val(A022843(n)+2, 2)+1)]`
-/

namespace A283778.P3285517583984309040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.valuation (A022843 n + 2).toNat 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283778.P3285517583984309040

namespace A283778

/-- `eq[0, A001222(val(A022843(n)+2, 2)+1)]` -/
def P3285517583984309040.Spec : Prop :=
  ∀ n, (P3285517583984309040.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P7458478985720301130

`lt[1, A260738(A184589(n+1)+1)]+1`
-/

namespace A283778.P7458478985720301130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (A184589 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A283778.P7458478985720301130

namespace A283778

/-- `lt[1, A260738(A184589(n+1)+1)]+1` -/
def P7458478985720301130.Spec : Prop :=
  ∀ n, (P7458478985720301130.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P7696047432120736531

`lt[4, A177499(floor(e*n))]`
-/

namespace A283778.P7696047432120736531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 ⌊Real.exp 1 * (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283778.P7696047432120736531

namespace A283778

/-- `lt[4, A177499(floor(e*n))]` -/
def P7696047432120736531.Spec : Prop :=
  ∀ n, (P7696047432120736531.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P501189947987132814

`eq[floor(e*n)+1, A038608(floor(e*n)+1)]`
-/

namespace A283778.P501189947987132814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋ + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (⌊Real.exp 1 * (n : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283778.P501189947987132814

namespace A283778

/-- `eq[floor(e*n)+1, A038608(floor(e*n)+1)]` -/
def P501189947987132814.Spec : Prop :=
  ∀ n, (P501189947987132814.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P6137768869930597963

`eq[2, A000034(A022843(n))]`
-/

namespace A283778.P6137768869930597963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A022843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283778.P6137768869930597963

namespace A283778

/-- `eq[2, A000034(A022843(n))]` -/
def P6137768869930597963.Spec : Prop :=
  ∀ n, (P6137768869930597963.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P9464097693986988018

`eq[1, A059841(A022843(n)+1)]`
-/

namespace A283778.P9464097693986988018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A022843 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283778.P9464097693986988018

namespace A283778

/-- `eq[1, A059841(A022843(n)+1)]` -/
def P9464097693986988018.Spec : Prop :=
  ∀ n, (P9464097693986988018.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P16933572982599531056

`lt[1, A286254(A022843(n)+1)]`
-/

namespace A283778.P16933572982599531056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286254 (A022843 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283778.P16933572982599531056

namespace A283778

/-- `lt[1, A286254(A022843(n)+1)]` -/
def P16933572982599531056.Spec : Prop :=
  ∀ n, (P16933572982599531056.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P530389057459214186

`lt[A022843(n+1), A059029(A022843(n))]`
-/

namespace A283778.P530389057459214186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (A022843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283778.P530389057459214186

namespace A283778

/-- `lt[A022843(n+1), A059029(A022843(n))]` -/
def P530389057459214186.Spec : Prop :=
  ∀ n, (P530389057459214186.a n : ℤ) = A283778 (n + 1)

end A283778

/-! ## A283778.P11405103476558518015

`lt[A035464(n+1), A035464(A022843(n)+1)]`
-/

namespace A283778.P11405103476558518015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035464 (A022843 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A283778.P11405103476558518015

namespace A283778

/-- `lt[A035464(n+1), A035464(A022843(n)+1)]` -/
def P11405103476558518015.Spec : Prop :=
  ∀ n, (P11405103476558518015.a n : ℤ) = A283778 (n + 1)

end A283778

/-!
# A283779: Number of n X 3 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283779, there is no canonical definition to state claims against.
-/

/-! ## A283779.P5667243875561468530

`A283784(∑[n+3]+1)`
-/

namespace A283779.P5667243875561468530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A283779.P5667243875561468530

/-! ## A283779.P17478119554100050209

`record[A283784(A101881(n))]`
-/

namespace A283779.P17478119554100050209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283779.P17478119554100050209

/-! ## A283779.P10242895402090351404

`record[A185018(n)*A283784(n+1)]`
-/

namespace A283779.P10242895402090351404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A283784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283779.P10242895402090351404

/-! ## A283779.P5079085628234585419

`record[gcd(A230614(n+1), A283784(n+1))]`
-/

namespace A283779.P5079085628234585419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230614 (n + 1)) (A283784 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283779.P5079085628234585419

/-! ## A283779.P2986661705470540364

`record[lcm(A141679(n+1), A283784(n+1))]`
-/

namespace A283779.P2986661705470540364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141679 (n + 1)) (A283784 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283779.P2986661705470540364

/-!
# A283780: Number of nX4 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283780, there is no canonical definition to state claims against.
-/

/-! ## A283780.P17052278558362992156

`A283784(A141214(n+1))`
-/

namespace A283780.P17052278558362992156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A141214 (n + 1)).toNat

end

end A283780.P17052278558362992156

/-! ## A283780.P3203500852613541085

`A283784(A027379(n+2))`
-/

namespace A283780.P3203500852613541085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A027379 (n + 2)).toNat

end

end A283780.P3203500852613541085

/-! ## A283780.P17874414633536172276

`A283784(A155212(n)+5)`
-/

namespace A283780.P17874414633536172276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A155212 n + 5).toNat

end

end A283780.P17874414633536172276

/-! ## A283780.P15007133450331870747

`A283784(A056000(n)+7)`
-/

namespace A283780.P15007133450331870747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A056000 n + 7).toNat

end

end A283780.P15007133450331870747

/-! ## A283780.P7932925337307276266

`A283784(eq[2, A220062(n)])`
-/

namespace A283780.P7932925337307276266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283780.P7932925337307276266

/-!
# A283781: Number of n X 5 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283781, there is no canonical definition to state claims against.
-/

/-! ## A283781.P12380281457378911173

`A283784(Δ[A264443(n)])`
-/

namespace A283781.P12380281457378911173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (f1 (n + 1) - f1 n).toNat

end

end A283781.P12380281457378911173

/-! ## A283781.P3237171746141969687

`A283784(A056115(n)+11)`
-/

namespace A283781.P3237171746141969687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A056115 n + 11).toNat

end

end A283781.P3237171746141969687

/-! ## A283781.P5984858740040468487

`A283784(eq[4, A193592(n)])`
-/

namespace A283781.P5984858740040468487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283781.P5984858740040468487

/-! ## A283781.P5770394527245945092

`A283784(eq[8, A140996(n)])`
-/

namespace A283781.P5770394527245945092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283781.P5770394527245945092

/-! ## A283781.P320726208051839056

`A283784(Δ[A023545(n+1)])`
-/

namespace A283781.P320726208051839056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (f1 (n + 1) - f1 n).toNat

end

end A283781.P320726208051839056

/-!
# A283782: Number of nX6 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283782, there is no canonical definition to state claims against.
-/

/-! ## A283782.P559977568658741347

`A283784(eq[3, A219347(n)])`
-/

namespace A283782.P559977568658741347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283782.P559977568658741347

/-! ## A283782.P9421736323608625438

`A283784(eq[5, A193592(n)])`
-/

namespace A283782.P9421736323608625438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283782.P9421736323608625438

/-! ## A283782.P14886195399813411310

`A283784(eq[6, A200370(n+1)])`
-/

namespace A283782.P14886195399813411310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283782.P14886195399813411310

/-! ## A283782.P8511558752710220611

`A283784(eq[16, A057728(n+1)])`
-/

namespace A283782.P8511558752710220611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283782.P8511558752710220611

/-! ## A283782.P10715938970062344889

`A283784(Δ[Δ[A006504(n+1)]])`
-/

namespace A283782.P10715938970062344889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (f1 (n + 1) - f1 n).toNat

end

end A283782.P10715938970062344889

/-!
# A283783: Number of nX7 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283783, there is no canonical definition to state claims against.
-/

/-! ## A283783.P15355936185546878567

`A283784(eq[4, A219347(n)])`
-/

namespace A283783.P15355936185546878567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283783.P15355936185546878567

/-! ## A283783.P5724464430145291923

`A283784(eq[6, A193592(n)])`
-/

namespace A283783.P5724464430145291923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283783.P5724464430145291923

/-! ## A283783.P11744992945685903563

`A283784(A000217(n+7)-6)`
-/

namespace A283783.P11744992945685903563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A000217 (n + 7) - 6).toNat

end

end A283783.P11744992945685903563

/-! ## A283783.P9530030357627663338

`A283784(eq[3, A316074(n+1)])`
-/

namespace A283783.P9530030357627663338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283783.P9530030357627663338

/-! ## A283783.P4158962520695476084

`A283784(eq[7, A200370(n+1)])`
-/

namespace A283783.P4158962520695476084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283783.P4158962520695476084

/-!
# A283784: T(n,k)=Number of nXk 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283784, there is no canonical definition to state claims against.
-/

/-! ## A283784.P14023068343484455051

`A000203(A346412(n+1))%A008292(n+1)`
-/

namespace A283784.P14023068343484455051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A346412 (n + 1)).toNat) (A008292 (n + 1))

end

end A283784.P14023068343484455051

/-! ## A283784.P15114888919272802267

`A016911(A237890(2*n+1))%A008292(n+1)`
-/

namespace A283784.P15114888919272802267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016911 (A237890 (2 * n + 1)).toNat) (A008292 (n + 1))

end

end A283784.P15114888919272802267

/-!
# A283785: Number of 2Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283785, there is no canonical definition to state claims against.
-/

/-! ## A283785.P16429674792729476439

`A283784(∑[n+1]+2)`
-/

namespace A283785.P16429674792729476439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A283785.P16429674792729476439

/-! ## A283785.P6818599462756427647

`A057427(n)*A283784(A133263(n+1))`
-/

namespace A283785.P6818599462756427647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A283784 (A133263 (n + 1)).toNat

end

end A283785.P6818599462756427647

/-! ## A283785.P12241842895703130300

`A283784(A133263(n+1))%A282305(n)`
-/

namespace A283785.P12241842895703130300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283784 (A133263 (n + 1)).toNat) (A282305 n)

end

end A283785.P12241842895703130300

/-! ## A283785.P6867694257991641880

`A153683(n+1)*A283784(A133263(n+1))`
-/

namespace A283785.P6867694257991641880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153683 (n + 1) * A283784 (A133263 (n + 1)).toNat

end

end A283785.P6867694257991641880

/-! ## A283785.P2192772904348047786

`A283784(A133263(n+1))+char[A207050(n+1)]`
-/

namespace A283785.P2192772904348047786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207050 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A283785.P2192772904348047786

/-!
# A283786: Number of 3Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283786, there is no canonical definition to state claims against.
-/

/-! ## A283786.P3445071984159919633

`A283784(∑[n+2]+4)`
-/

namespace A283786.P3445071984159919633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A283786.P3445071984159919633

/-! ## A283786.P5931310396792144638

`A283784(A167614(n+1))+A025443(n)`
-/

namespace A283786.P5931310396792144638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A167614 (n + 1)).toNat + A025443 n

end

end A283786.P5931310396792144638

/-! ## A283786.P10950231232594317160

`A054977(n)*A283784(A167614(n+1))`
-/

namespace A283786.P10950231232594317160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A283784 (A167614 (n + 1)).toNat

end

end A283786.P10950231232594317160

/-! ## A283786.P4284381485413116531

`A057427(n)*A283784(A167614(n+1))`
-/

namespace A283786.P4284381485413116531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A283784 (A167614 (n + 1)).toNat

end

end A283786.P4284381485413116531

/-! ## A283786.P5569418084570348357

`A139551(n)*A283784(A167614(n+1))`
-/

namespace A283786.P5569418084570348357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A283784 (A167614 (n + 1)).toNat

end

end A283786.P5569418084570348357

/-!
# A283787: Number of 4Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283787, there is no canonical definition to state claims against.
-/

/-! ## A283787.P14129091324234967320

`A283784(A141214(n)+7)`
-/

namespace A283787.P14129091324234967320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A141214 n + 7).toNat

end

end A283787.P14129091324234967320

/-! ## A283787.P10667088529905388598

`A283784(A052905(n)+9)`
-/

namespace A283787.P10667088529905388598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A052905 n + 9).toNat

end

end A283787.P10667088529905388598

/-! ## A283787.P4877243708061451802

`A283784(A055999(n)+10)`
-/

namespace A283787.P4877243708061451802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A055999 n + 10).toNat

end

end A283787.P4877243708061451802

/-! ## A283787.P2109351084835939380

`A283784(A167614(n+2)+1)`
-/

namespace A283787.P2109351084835939380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A167614 (n + 2) + 1).toNat

end

end A283787.P2109351084835939380

/-! ## A283787.P10866136981338280105

`A283784(A034856(n+2)+6)`
-/

namespace A283787.P10866136981338280105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A034856 (n + 2) + 6).toNat

end

end A283787.P10866136981338280105

/-!
# A283788: Number of 5Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283788, there is no canonical definition to state claims against.
-/

/-! ## A283788.P10215790640068126643

`A283784(C(n+5, 2)+5)`
-/

namespace A283788.P10215790640068126643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (Nat.choose (n + 5) 2 + 5)

end

end A283788.P10215790640068126643

/-! ## A283788.P2202928872266099271

`A283784(eq[7, A066657(n)])`
-/

namespace A283788.P2202928872266099271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283788.P2202928872266099271

/-! ## A283788.P10970163913329763227

`A283784(A141214(n+1)+8)`
-/

namespace A283788.P10970163913329763227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A141214 (n + 1) + 8).toNat

end

end A283788.P10970163913329763227

/-! ## A283788.P2069895350968016653

`A283784(A051936(n+4)+14)`
-/

namespace A283788.P2069895350968016653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A051936 (n + 4) + 14).toNat

end

end A283788.P2069895350968016653

/-! ## A283788.P15433615427048563592

`A283784(eq[4, A002262(n)]+1)`
-/

namespace A283788.P15433615427048563592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A283788.P15433615427048563592

/-!
# A283789: Number of 6Xn 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283789, there is no canonical definition to state claims against.
-/

/-! ## A283789.P15238708799847571833

`A283784(A056115(n)+21)`
-/

namespace A283789.P15238708799847571833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A056115 n + 21).toNat

end

end A283789.P15238708799847571833

/-! ## A283789.P6619219440596653015

`A283784(Δ[A264443(n)]+10)`
-/

namespace A283789.P6619219440596653015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (f1 (n + 1) - f1 n + 10).toNat

end

end A283789.P6619219440596653015

/-! ## A283789.P14485407902043311458

`A283784(A000217(n+5)+6)`
-/

namespace A283789.P14485407902043311458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A000217 (n + 5) + 6).toNat

end

end A283789.P14485407902043311458

/-! ## A283789.P11458653488595917427

`A283784(A056000(n+1)+16)`
-/

namespace A283789.P11458653488595917427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A056000 (n + 1) + 16).toNat

end

end A283789.P11458653488595917427

/-! ## A283789.P16750548376445998868

`A283784(eq[5, A002262(n)]+1)`
-/

namespace A283789.P16750548376445998868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A283789.P16750548376445998868

/-!
# A283790: Number of 7 X n 0..1 arrays with no 1 equal to more than two of its horizontal, diagonal and antidiagonal neighbors, with the exception of exactly two elements.

The programs for A283790, there is no canonical definition to state claims against.
-/

/-! ## A283790.P16139497697701319874

`A283784(eq[11, A066657(n)])`
-/

namespace A283790.P16139497697701319874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283790.P16139497697701319874

/-! ## A283790.P14755786059671470071

`A283784(A133263(n+6)+5)`
-/

namespace A283790.P14755786059671470071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A133263 (n + 6) + 5).toNat

end

end A283790.P14755786059671470071

/-! ## A283790.P8768580677082940815

`A283784(A027379(n+4)+10)`
-/

namespace A283790.P8768580677082940815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (A027379 (n + 4) + 10).toNat

end

end A283790.P8768580677082940815

/-! ## A283790.P17430330777558218728

`A283784(eq[6, A002262(n)]+1)`
-/

namespace A283790.P17430330777558218728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A283790.P17430330777558218728

/-! ## A283790.P8212733329346968899

`A283784(eq[8, A131818(n+1)])`
-/

namespace A283790.P8212733329346968899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283790.P8212733329346968899

/-!
# A283793: Number of elements formable in <= n steps, starting with 4 elements, combining 2 elements into a new element at each step.

The programs for A283793, the canonical program `A283793.P14570688585890162009` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283793 has offset 0).

The definition of A283793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A283793.P14570688585890162009

`4+a(n-1)*(a(n-1)+1)/2` with `a(0)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A283793

/-- `4+a(n-1)*(a(n-1)+1)/2` -/
def P14570688585890162009.Spec : Prop :=
  ∀ n, P14570688585890162009.a n = (A283793 n : ℚ)

end A283793

/-! ## A283793.P15632248811113657262

`C(a(n-1)+1, 2)+4` with `a(0)=4`
-/

namespace A283793.P15632248811113657262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.choose (a (n - 1) + 1) 2 + 4

end

end A283793.P15632248811113657262

namespace A283793

/-- `C(a(n-1)+1, 2)+4` -/
def P15632248811113657262.Spec : Prop :=
  ∀ n, (P15632248811113657262.a n : ℤ) = A283793 n

end A283793

/-! ## A283793.P3880635902827597767

`(a(n-1)+a(n-1)²)/2+4` with `a(0)=4`
-/

namespace A283793.P3880635902827597767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2 + 4

end

end A283793.P3880635902827597767

namespace A283793

/-- `(a(n-1)+a(n-1)²)/2+4` -/
def P3880635902827597767.Spec : Prop :=
  ∀ n, P3880635902827597767.a n = (A283793 n : ℚ)

end A283793

/-!
# A283794: Positions of 1 in A288375; complement of A288625.

The programs for A283794, the canonical program `A283794.P5491480845354649629` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283794 has offset 1).

The definition of A283794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283794.P9945012571306664064

`A288602(n+1)-1`
-/

namespace A283794.P9945012571306664064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288602 (n + 1) - 1

end

end A283794.P9945012571306664064

namespace A283794

/-- `A288602(n+1)-1` -/
def P9945012571306664064.Spec : Prop :=
  ∀ n, P9945012571306664064.a n = A283794 (n + 1)

theorem P9945012571306664064.correct : P9945012571306664064.Spec := by
  intro n
  simp only [A283794, Nat.add_sub_cancel, A283794.P9945012571306664064.a, A283794.P5491480845354649629.f1, A283794.P5491480845354649629.a, A288602, A288602.P9324771817530744836.a, A288931, A288931.P14639471004149022968.f1, A288931.P14639471004149022968.f2, A288931.P14639471004149022968.a, A288929, A288929.P9658926497667176175.f2, A288929.P9658926497667176175.f1, A288929.P9658926497667176175.a, A219641, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A283794

/-! ## A283794.P5491480845354649629

`A288931(Δ[n²])-n`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A283794

/-- `A288931(Δ[n²])-n` -/
def P5491480845354649629.Spec : Prop :=
  ∀ n, P5491480845354649629.a n = A283794 (n + 1)

theorem P5491480845354649629.correct : P5491480845354649629.Spec := by
  intro n
  simp only [A283794, Nat.add_sub_cancel]

end A283794

/-! ## A283794.P5920654868881422847

`eq[1, A288375(n+1)]+1`
-/

namespace A283794.P5920654868881422847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283794.P5920654868881422847

namespace A283794

/-- `eq[1, A288375(n+1)]+1` -/
def P5920654868881422847.Spec : Prop :=
  ∀ n, (P5920654868881422847.a n : ℤ) = A283794 (n + 1)

end A283794

/-! ## A283794.P3948415894788003444

`lt[0, A288600(n+1)]`
-/

namespace A283794.P3948415894788003444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A283794.P3948415894788003444

namespace A283794

/-- `lt[0, A288600(n+1)]` -/
def P3948415894788003444.Spec : Prop :=
  ∀ n, (P3948415894788003444.a n : ℤ) = A283794 (n + 1)

end A283794

/-! ## A283794.P8308218391132416832

`eq[1, A288600(n+2)]+1`
-/

namespace A283794.P8308218391132416832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283794.P8308218391132416832

namespace A283794

/-- `eq[1, A288600(n+2)]+1` -/
def P8308218391132416832.Spec : Prop :=
  ∀ n, (P8308218391132416832.a n : ℤ) = A283794 (n + 1)

end A283794

/-! ## A283794.P1425645654862894163

`A023443(A288602(n+1))`
-/

namespace A283794.P1425645654862894163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288602 (n + 1)).toNat

end

end A283794.P1425645654862894163

namespace A283794

/-- `A023443(A288602(n+1))` -/
def P1425645654862894163.Spec : Prop :=
  ∀ n, P1425645654862894163.a n = A283794 (n + 1)

end A283794

/-! ## A283794.P16419247860904374159

`A028310(eq[1, A288600(n+1)])`
-/

namespace A283794.P16419247860904374159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A283794.P16419247860904374159

namespace A283794

/-- `A028310(eq[1, A288600(n+1)])` -/
def P16419247860904374159.Spec : Prop :=
  ∀ n, P16419247860904374159.a n = A283794 (n + 1)

end A283794

/-! ## A283794.P7227696761303624256

`eq[A054977(n), A288600(n+1)]`
-/

namespace A283794.P7227696761303624256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283794.P7227696761303624256

namespace A283794

/-- `eq[A054977(n), A288600(n+1)]` -/
def P7227696761303624256.Spec : Prop :=
  ∀ n, (P7227696761303624256.a n : ℤ) = A283794 (n + 1)

end A283794

/-! ## A283794.P1984562231800513131

`eq[A158388(n), A288600(n+1)]`
-/

namespace A283794.P1984562231800513131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283794.P1984562231800513131

namespace A283794

/-- `eq[A158388(n), A288600(n+1)]` -/
def P1984562231800513131.Spec : Prop :=
  ∀ n, (P1984562231800513131.a n : ℤ) = A283794 (n + 1)

end A283794

/-! ## A283794.P6989996302162472323

`eq[A288600(n+1), A329684(n)]`
-/

namespace A283794.P6989996302162472323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283794.P6989996302162472323

namespace A283794

/-- `eq[A288600(n+1), A329684(n)]` -/
def P6989996302162472323.Spec : Prop :=
  ∀ n, (P6989996302162472323.a n : ℤ) = A283794 (n + 1)

end A283794

/-! ## A283794.P10457678075525468284

`record[A008619(n)*A288375(A008619(n))]`
-/

namespace A283794.P10457678075525468284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A288375 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283794.P10457678075525468284

namespace A283794

/-- `record[A008619(n)*A288375(A008619(n))]` -/
def P10457678075525468284.Spec : Prop :=
  ∀ n, P10457678075525468284.a n = A283794 (n + 1)

end A283794

/-!
# A283795: Triangle T(n,k) read by rows: the number of q-circulant n X n {0,1}-matrices where each row sum and each column sum equals k.

The programs for A283795, there is no canonical definition to state claims against.
-/

/-! ## A283795.P11613685398146367174

`A331902(A119687(n))+A000010(A008459(n))`
-/

namespace A283795.P11613685398146367174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331902 (A119687 n).toNat + A000010 (A008459 n).toNat

end

end A283795.P11613685398146367174

/-! ## A283795.P5712939597908167422

`A331902(A119687(n))+A000010(A177944(n))`
-/

namespace A283795.P5712939597908167422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331902 (A119687 n).toNat + A000010 (A177944 n).toNat

end

end A283795.P5712939597908167422

/-! ## A283795.P15637337454392055642

`A331902(A119687(n))+A000010(A007318(n)²)`
-/

namespace A283795.P15637337454392055642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331902 (A119687 n).toNat + A000010 (A007318 n ^ 2).toNat

end

end A283795.P15637337454392055642

/-! ## A283795.P15571973730976570273

`A004738(A178048(n))`
-/

namespace A283795.P15571973730976570273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A178048 n).toNat

end

end A283795.P15571973730976570273

/-!
# A283796: Triangle T(n,k) read by rows: the number of symmetric q-circulant n X n {0,1}-matrices where each row and each column sum equals k.

The programs for A283796, there is no canonical definition to state claims against.
-/

/-! ## A283796.P9268121366184247579

`A035280(A176427(n)%A065091(n+1))`
-/

namespace A283796.P9268121366184247579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035280 (Int.tmod (A176427 n) (A065091 (n + 1))).toNat

end

end A283796.P9268121366184247579

/-! ## A283796.P2228575164284500730

`A003972(A048766(A056941(n)+A029618(n)))`
-/

namespace A283796.P2228575164284500730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A048766 (A056941 n + A029618 n).toNat).toNat

end

end A283796.P2228575164284500730

/-! ## A283796.P12375414146658179077

`A035280(A176427(n))`
-/

namespace A283796.P12375414146658179077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035280 (A176427 n).toNat

end

end A283796.P12375414146658179077

/-! ## A283796.P18160096696779717810

`A145339(A099594(n))`
-/

namespace A283796.P18160096696779717810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145339 (A099594 n).toNat

end

end A283796.P18160096696779717810

/-! ## A283796.P12827313895909009841

`A216452(A168619(n))`
-/

namespace A283796.P12827313895909009841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216452 (A168619 n).toNat

end

end A283796.P12827313895909009841

/-!
# A283797: Triangle T(n,k) read by rows: The number of q-circulant n X n {0,1}-matrices where each column sum, each row sum and the trace equal k.

The programs for A283797, there is no canonical definition to state claims against.
-/

/-! ## A283797.P13770093099281333443

`A004199(A173075(n)!)`
-/

namespace A283797.P13770093099281333443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004199 (Nat.factorial (A173075 n).toNat)

end

end A283797.P13770093099281333443

/-! ## A283797.P4667844704831937345

`A132896(A022171(n)+6)`
-/

namespace A283797.P4667844704831937345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132896 (A022171 n + 6).toNat

end

end A283797.P4667844704831937345

/-! ## A283797.P3611056501243160394

`A053830(A059441(n+1)^3)`
-/

namespace A283797.P3611056501243160394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A059441 (n + 1) ^ 3).toNat

end

end A283797.P3611056501243160394

/-! ## A283797.P7069796807328410962

`and(A024766(2*n+3), A059441(n+1))`
-/

namespace A283797.P7069796807328410962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024766 (2 * n + 3)) (A059441 (n + 1))

end

end A283797.P7069796807328410962

/-! ## A283797.P5152889455046214632

`A319654(A059441(n+1)^A305161(n))`
-/

namespace A283797.P5152889455046214632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319654 (SequenceMachineLib.roundAway ((A059441 (n + 1) : ℚ) ^ (A305161 n : ℤ))).toNat

end

end A283797.P5152889455046214632

/-!
# A283798: Triangle T(n,k) read by rows: the number of symmetric q-circulant n X n {0,1}-matrices where each column sum, each row sum and the trace equal k.

The programs for A283798, there is no canonical definition to state claims against.
-/

/-! ## A283798.P16720605405053379437

`and(A007318(n), A071904(A340591(n)))`
-/

namespace A283798.P16720605405053379437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A071904 (A340591 n).toNat)

end

end A283798.P16720605405053379437

/-! ## A283798.P18257869097423211609

`and(A045609(n+3), A067049(n))`
-/

namespace A283798.P18257869097423211609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045609 (n + 3)) (A067049 n)

end

end A283798.P18257869097423211609

/-! ## A283798.P375446642299650109

`and(A007318(n), A004139(A142467(n)))`
-/

namespace A283798.P375446642299650109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A004139 (A142467 n).toNat)

end

end A283798.P375446642299650109

/-! ## A283798.P4938204724401887296

`and(A007318(n), A167901(A082105(n)))`
-/

namespace A283798.P4938204724401887296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 n) (A167901 (A082105 n).toNat)

end

end A283798.P4938204724401887296

/-! ## A283798.P12899317232006640649

`and(A081577(n), A307720(A022168(n)))`
-/

namespace A283798.P12899317232006640649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081577 n) (A307720 (A022168 n).toNat)

end

end A283798.P12899317232006640649

/-!
# A283799: Number of dispersed Dyck prefixes of length 2n and height n.

The programs for A283799, the canonical program `A283799.P17285316347300436378` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A283799 has offset 0).

The definition of A283799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A283799.P17285316347300436378

`A114752(n+1)*A369082(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A283799

/-- `A114752(n+1)*A369082(n)` -/
def P17285316347300436378.Spec : Prop :=
  ∀ n, P17285316347300436378.a n = A283799 n

theorem P17285316347300436378.correct : P17285316347300436378.Spec := by
  intro n
  simp only [A283799]

end A283799

/-! ## A283799.P8532913409994367891

`A379822(A007590(n+1))`
-/

namespace A283799.P8532913409994367891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379822 (A007590 (n + 1)).toNat

end

end A283799.P8532913409994367891

namespace A283799

/-- `A379822(A007590(n+1))` -/
def P8532913409994367891.Spec : Prop :=
  ∀ n, P8532913409994367891.a n = A283799 n

end A283799

/-! ## A283799.P11123390453473467712

`A282869(∑[4*n])`
-/

namespace A283799.P11123390453473467712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A283799.P11123390453473467712

namespace A283799

/-- `A282869(∑[4*n])` -/
def P11123390453473467712.Spec : Prop :=
  ∀ n, P11123390453473467712.a n = A283799 n

end A283799

/-! ## A283799.P5269109470003194251

`record[A282869(n*A008619(n))]`
-/

namespace A283799.P5269109470003194251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282869 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283799.P5269109470003194251

namespace A283799

/-- `record[A282869(n*A008619(n))]` -/
def P5269109470003194251.Spec : Prop :=
  ∀ n, P5269109470003194251.a n = A283799 n

end A283799

/-! ## A283799.P167824476480627122

`record[A282869(n*A028242(n))]`
-/

namespace A283799.P167824476480627122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282869 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283799.P167824476480627122

namespace A283799

/-- `record[A282869(n*A028242(n))]` -/
def P167824476480627122.Spec : Prop :=
  ∀ n, P167824476480627122.a n = A283799 n

end A283799

/-! ## A283799.P292282753532035093

`record[A282869(gcd(n, A114327(n)))]`
-/

namespace A283799.P292282753532035093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282869 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283799.P292282753532035093

namespace A283799

/-- `record[A282869(gcd(n, A114327(n)))]` -/
def P292282753532035093.Spec : Prop :=
  ∀ n, P292282753532035093.a n = A283799 n

end A283799

/-! ## A283799.P10842841104319166741

`A282869(A046092(n))%(5*3^n)`
-/

namespace A283799.P10842841104319166741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282869 (A046092 n).toNat) (5 * 3 ^ n : ℤ)

end

end A283799.P10842841104319166741

namespace A283799

/-- `A282869(A046092(n))%(5*3^n)` -/
def P10842841104319166741.Spec : Prop :=
  ∀ n, P10842841104319166741.a n = A283799 n

end A283799

/-! ## A283799.P8366758410703271115

`record[A282869(A028242(n²))]`
-/

namespace A283799.P8366758410703271115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282869 (A028242 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A283799.P8366758410703271115

namespace A283799

/-- `record[A282869(A028242(n²))]` -/
def P8366758410703271115.Spec : Prop :=
  ∀ n, P8366758410703271115.a n = A283799 n

end A283799

