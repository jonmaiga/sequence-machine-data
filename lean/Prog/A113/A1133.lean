import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C002
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
# A113300: Sum of even-indexed terms of tribonacci numbers.

The programs for A113300, the canonical program `A113300.P5991573924320681842` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113300 has offset 0).

The definition of A113300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113300.P5991573924320681842

`3*a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113300

/-- `3*a(n-1)+a(n-2)+a(n-3)` -/
def P5991573924320681842.Spec : Prop :=
  ∀ n, (P5991573924320681842.a n : ℤ) = A113300 n

theorem P5991573924320681842.correct : P5991573924320681842.Spec := by
  intro n
  simp only [A113300]

end A113300

/-! ## A113300.P5138329353251738104

`ogf(-x/(-1+3x+x^2+x^3))`
-/

namespace A113300.P5138329353251738104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -1, -1] n

end

end A113300.P5138329353251738104

namespace A113300

/-- `ogf(-x/(-1+3x+x^2+x^3))` -/
def P5138329353251738104.Spec : Prop :=
  ∀ n, P5138329353251738104.a n = A113300 n

end A113300

/-! ## A113300.P1210843155146711384

`∑[A099463(n)]`
-/

namespace A113300.P1210843155146711384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113300.P1210843155146711384

namespace A113300

/-- `∑[A099463(n)]` -/
def P1210843155146711384.Spec : Prop :=
  ∀ n, P1210843155146711384.a n = A113300 n

end A113300

/-! ## A113300.P13568400344655412329

`A075111(2*n)`
-/

namespace A113300.P13568400344655412329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075111 (2 * n)

end

end A113300.P13568400344655412329

namespace A113300

/-- `A075111(2*n)` -/
def P13568400344655412329.Spec : Prop :=
  ∀ n, P13568400344655412329.a n = A113300 n

end A113300

/-! ## A113300.P16652047906381711678

`∑[A000073(2*n)]`
-/

namespace A113300.P16652047906381711678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113300.P16652047906381711678

namespace A113300

/-- `∑[A000073(2*n)]` -/
def P16652047906381711678.Spec : Prop :=
  ∀ n, P16652047906381711678.a n = A113300 n

end A113300

/-! ## A113300.P16221353582854427941

`∑[A114952(4*n)]`
-/

namespace A113300.P16221353582854427941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113300.P16221353582854427941

namespace A113300

/-- `∑[A114952(4*n)]` -/
def P16221353582854427941.Spec : Prop :=
  ∀ n, P16221353582854427941.a n = A113300 n

end A113300

/-! ## A113300.P12229117991189613887

`∑[A034803(3*(n+1))]`
-/

namespace A113300.P12229117991189613887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034803 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113300.P12229117991189613887

namespace A113300

/-- `∑[A034803(3*(n+1))]` -/
def P12229117991189613887.Spec : Prop :=
  ∀ n, P12229117991189613887.a n = A113300 n

end A113300

/-! ## A113300.P159036491855767766

`∑[A112476(2*n)-1]`
-/

namespace A113300.P159036491855767766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113300.P159036491855767766

namespace A113300

/-- `∑[A112476(2*n)-1]` -/
def P159036491855767766.Spec : Prop :=
  ∀ n, P159036491855767766.a n = A113300 n

end A113300

/-! ## A113300.P818197447933125950

`A325473(2*n)-A028310(n)`
-/

namespace A113300.P818197447933125950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (2 * n) - A028310 n

end

end A113300.P818197447933125950

namespace A113300

/-- `A325473(2*n)-A028310(n)` -/
def P818197447933125950.Spec : Prop :=
  ∀ n, P818197447933125950.a n = A113300 n

end A113300

/-! ## A113300.P14151614930376296863

`A325473(2*n)-(A000007(n)+n)`
-/

namespace A113300.P14151614930376296863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (2 * n) - (A000007 n + (n : ℤ))

end

end A113300.P14151614930376296863

namespace A113300

/-- `A325473(2*n)-(A000007(n)+n)` -/
def P14151614930376296863.Spec : Prop :=
  ∀ n, P14151614930376296863.a n = A113300 n

end A113300

/-! ## A113300.P2040896698128492699

`∑[A338192(2*n)-A000045(2*n)]`
-/

namespace A113300.P2040896698128492699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338192 (2 * n) - A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113300.P2040896698128492699

namespace A113300

/-- `∑[A338192(2*n)-A000045(2*n)]` -/
def P2040896698128492699.Spec : Prop :=
  ∀ n, P2040896698128492699.a n = A113300 n

end A113300

/-! ## A113300.P10007308349489430278

`A325473(2*n)+1-A233583(n+2)`
-/

namespace A113300.P10007308349489430278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (2 * n) + (1 - A233583 (n + 2))

end

end A113300.P10007308349489430278

namespace A113300

/-- `A325473(2*n)+1-A233583(n+2)` -/
def P10007308349489430278.Spec : Prop :=
  ∀ n, P10007308349489430278.a n = A113300 n

end A113300

/-! ## A113300.P6807827082696059598

`A000073(2*n)+A001590(2*n)/2`
-/

namespace A113300.P6807827082696059598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 (2 * n) : ℚ) + (A001590 (2 * n) : ℚ) / 2

end

end A113300.P6807827082696059598

namespace A113300

/-- `A000073(2*n)+A001590(2*n)/2` -/
def P6807827082696059598.Spec : Prop :=
  ∀ n, P6807827082696059598.a n = (A113300 n : ℚ)

end A113300

/-! ## A113300.P15655826295256997087

`A325473(A004277(n))+n-A004277(n)`
-/

namespace A113300.P15655826295256997087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (A004277 n).toNat + ((n : ℤ) - A004277 n)

end

end A113300.P15655826295256997087

namespace A113300

/-- `A325473(A004277(n))+n-A004277(n)` -/
def P15655826295256997087.Spec : Prop :=
  ∀ n, P15655826295256997087.a n = A113300 n

end A113300

/-! ## A113300.P2112381372277790752

`A231057(n+1)/2`
-/

namespace A113300.P2112381372277790752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231057 (n + 1) : ℚ) / 2

end

end A113300.P2112381372277790752

namespace A113300

/-- `A231057(n+1)/2` -/
def P2112381372277790752.Spec : Prop :=
  ∀ n, P2112381372277790752.a n = (A113300 n : ℚ)

end A113300

/-! ## A113300.P8839317533850125119

`∑[A354784(2*n)/2]`
-/

namespace A113300.P8839317533850125119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113300.P8839317533850125119

namespace A113300

/-- `∑[A354784(2*n)/2]` -/
def P8839317533850125119.Spec : Prop :=
  ∀ n, P8839317533850125119.a n = (A113300 n : ℚ)

end A113300

/-! ## A113300.P2442744511894302711

`Δ[A192804(2*n)/2]`
-/

namespace A113300.P2442744511894302711
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192804 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113300.P2442744511894302711

namespace A113300

/-- `Δ[A192804(2*n)/2]` -/
def P2442744511894302711.Spec : Prop :=
  ∀ n, P2442744511894302711.a n = (A113300 n : ℚ)

end A113300

/-! ## A113300.P10960901584984902379

`A001590(2*(n+1))/2`
-/

namespace A113300.P10960901584984902379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001590 (2 * (n + 1)) : ℚ) / 2

end

end A113300.P10960901584984902379

namespace A113300

/-- `A001590(2*(n+1))/2` -/
def P10960901584984902379.Spec : Prop :=
  ∀ n, P10960901584984902379.a n = (A113300 n : ℚ)

end A113300

/-! ## A113300.P14687096323572828370

`A034804(3*(n+1))/2`
-/

namespace A113300.P14687096323572828370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034804 (3 * (n + 1)) : ℚ) / 2

end

end A113300.P14687096323572828370

namespace A113300

/-- `A034804(3*(n+1))/2` -/
def P14687096323572828370.Spec : Prop :=
  ∀ n, P14687096323572828370.a n = (A113300 n : ℚ)

end A113300

/-! ## A113300.P18228714984629403343

`A073717(n)-a(n-1)` with `a(0)=0`
-/

namespace A113300.P18228714984629403343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A073717 n - a (n - 1)

end

end A113300.P18228714984629403343

namespace A113300

/-- `A073717(n)-a(n-1)` -/
def P18228714984629403343.Spec : Prop :=
  ∀ n, P18228714984629403343.a n = A113300 n

end A113300

/-!
# A113301: Sum of odd-indexed terms of tribonacci numbers.

The programs for A113301, the canonical program `A113301.P16055748990782076607` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113301 has offset 0).

The definition of A113301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113301.P16055748990782076607

`4*a(n-1)-2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=18`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113301

/-- `4*a(n-1)-2*a(n-2)-a(n-4)` -/
def P16055748990782076607.Spec : Prop :=
  ∀ n, P16055748990782076607.a n = A113301 n

theorem P16055748990782076607.correct : P16055748990782076607.Spec := by
  intro n
  simp only [A113301]

end A113301

/-! ## A113301.P12978537962665970097

`ogf((x+x^2)/(1-4x+2x^2+x^4))`
-/

namespace A113301.P12978537962665970097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -4, 2, 0, 1] n

end

end A113301.P12978537962665970097

namespace A113301

/-- `ogf((x+x^2)/(1-4x+2x^2+x^4))` -/
def P12978537962665970097.Spec : Prop :=
  ∀ n, P12978537962665970097.a n = A113301 n

end A113301

/-! ## A113301.P14239867654272076384

`∑[3*a(n-1)+a(n-2)+a(n-3)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A113301.P14239867654272076384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  3 * f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P14239867654272076384

namespace A113301

/-- `∑[3*a(n-1)+a(n-2)+a(n-3)]` -/
def P14239867654272076384.Spec : Prop :=
  ∀ n, (P14239867654272076384.a n : ℤ) = A113301 n

end A113301

/-! ## A113301.P4333779551192944013

`∑[A073717(n)]`
-/

namespace A113301.P4333779551192944013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P4333779551192944013

namespace A113301

/-- `∑[A073717(n)]` -/
def P4333779551192944013.Spec : Prop :=
  ∀ n, P4333779551192944013.a n = A113301 n

end A113301

/-! ## A113301.P10987156133821957796

`∑[A326329(n+1)]`
-/

namespace A113301.P10987156133821957796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P10987156133821957796

namespace A113301

/-- `∑[A326329(n+1)]` -/
def P10987156133821957796.Spec : Prop :=
  ∀ n, P10987156133821957796.a n = A113301 n

end A113301

/-! ## A113301.P11349712430987098054

`∑[A075536(2*n)]`
-/

namespace A113301.P11349712430987098054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075536 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P11349712430987098054

namespace A113301

/-- `∑[A075536(2*n)]` -/
def P11349712430987098054.Spec : Prop :=
  ∀ n, P11349712430987098054.a n = A113301 n

end A113301

/-! ## A113301.P12294756740571689534

`∑[A000073(Δ[n²])]`
-/

namespace A113301.P12294756740571689534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P12294756740571689534

namespace A113301

/-- `∑[A000073(Δ[n²])]` -/
def P12294756740571689534.Spec : Prop :=
  ∀ n, P12294756740571689534.a n = A113301 n

end A113301

/-! ## A113301.P8303775236871091235

`∑[A114952(4*n+3)]`
-/

namespace A113301.P8303775236871091235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114952 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P8303775236871091235

namespace A113301

/-- `∑[A114952(4*n+3)]` -/
def P8303775236871091235.Spec : Prop :=
  ∀ n, P8303775236871091235.a n = A113301 n

end A113301

/-! ## A113301.P4916898544718120629

`A325473(Δ[n²])-(n+1)`
-/

namespace A113301.P4916898544718120629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A113301.P4916898544718120629

namespace A113301

/-- `A325473(Δ[n²])-(n+1)` -/
def P4916898544718120629.Spec : Prop :=
  ∀ n, P4916898544718120629.a n = A113301 n

end A113301

/-! ## A113301.P618511171806260258

`∑[A112476(2*n+1)+1]`
-/

namespace A113301.P618511171806260258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P618511171806260258

namespace A113301

/-- `∑[A112476(2*n+1)+1]` -/
def P618511171806260258.Spec : Prop :=
  ∀ n, P618511171806260258.a n = A113301 n

end A113301

/-! ## A113301.P8630305299431271199

`∑[A354784(2*n+1)/2]`
-/

namespace A113301.P8630305299431271199
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354784 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P8630305299431271199

namespace A113301

/-- `∑[A354784(2*n+1)/2]` -/
def P8630305299431271199.Spec : Prop :=
  ∀ n, P8630305299431271199.a n = (A113301 n : ℚ)

end A113301

/-! ## A113301.P18052262852248197984

`A089068(2*n)-a(n-1)` with `a(0)=0`
-/

namespace A113301.P18052262852248197984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A089068 (2 * n) - a (n - 1)

end

end A113301.P18052262852248197984

namespace A113301

/-- `A089068(2*n)-a(n-1)` -/
def P18052262852248197984.Spec : Prop :=
  ∀ n, P18052262852248197984.a n = A113301 n

end A113301

/-! ## A113301.P14998601372268023937

`A075536(n+n)+a(n-1)` with `a(0)=0`
-/

namespace A113301.P14998601372268023937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A075536 (n + n) + a (n - 1)

end

end A113301.P14998601372268023937

namespace A113301

/-- `A075536(n+n)+a(n-1)` -/
def P14998601372268023937.Spec : Prop :=
  ∀ n, P14998601372268023937.a n = A113301 n

end A113301

/-! ## A113301.P1159692714565755688

`∑[record[A000073(A026741(n))]]`
-/

namespace A113301.P1159692714565755688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P1159692714565755688

namespace A113301

/-- `∑[record[A000073(A026741(n))]]` -/
def P1159692714565755688.Spec : Prop :=
  ∀ n, P1159692714565755688.a n = A113301 n

end A113301

/-! ## A113301.P12386037158442222199

`A008937(2*n)-A113300(n)`
-/

namespace A113301.P12386037158442222199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (2 * n) - A113300 n

end

end A113301.P12386037158442222199

namespace A113301

/-- `A008937(2*n)-A113300(n)` -/
def P12386037158442222199.Spec : Prop :=
  ∀ n, P12386037158442222199.a n = A113301 n

end A113301

/-! ## A113301.P10699908883630906238

`∑[2*A113300(n)-A099463(n)]`
-/

namespace A113301.P10699908883630906238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113300 n - A099463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P10699908883630906238

namespace A113301

/-- `∑[2*A113300(n)-A099463(n)]` -/
def P10699908883630906238.Spec : Prop :=
  ∀ n, P10699908883630906238.a n = A113301 n

end A113301

/-! ## A113301.P15626470773956337595

`∑[A000073(A254667(2*n+1))]-1`
-/

namespace A113301.P15626470773956337595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A254667 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A113301.P15626470773956337595

namespace A113301

/-- `∑[A000073(A254667(2*n+1))]-1` -/
def P15626470773956337595.Spec : Prop :=
  ∀ n, P15626470773956337595.a n = A113301 n

end A113301

/-! ## A113301.P2220492086386193134

`∑[A001590(2*n)+A000073(2*n)]`
-/

namespace A113301.P2220492086386193134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (2 * n) + A000073 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P2220492086386193134

namespace A113301

/-- `∑[A001590(2*n)+A000073(2*n)]` -/
def P2220492086386193134.Spec : Prop :=
  ∀ n, P2220492086386193134.a n = A113301 n

end A113301

/-! ## A113301.P7488922420907168829

`∑[A214727(2*n)-A000213(2*n)]`
-/

namespace A113301.P7488922420907168829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (2 * n) - A000213 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113301.P7488922420907168829

namespace A113301

/-- `∑[A214727(2*n)-A000213(2*n)]` -/
def P7488922420907168829.Spec : Prop :=
  ∀ n, P7488922420907168829.a n = A113301 n

end A113301

/-! ## A113301.P15997627399514876662

`A075111(2*n+1)-A133872(2*n)`
-/

namespace A113301.P15997627399514876662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075111 (2 * n + 1) - A133872 (2 * n)

end

end A113301.P15997627399514876662

namespace A113301

/-- `A075111(2*n+1)-A133872(2*n)` -/
def P15997627399514876662.Spec : Prop :=
  ∀ n, P15997627399514876662.a n = A113301 n

end A113301

/-!
# A113302: Number of k such that prime(n) divides T(k), the central trinomial coefficient A002426(k), with 0

The programs for A113302, there is no canonical definition to state claims against.
-/

/-! ## A113302.P7601746524253809020

`A001222(A017996(n))*A331238(n+1)`
-/

namespace A113302.P7601746524253809020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017996 n).toNat * A331238 (n + 1)

end

end A113302.P7601746524253809020

/-! ## A113302.P870016225100663065

`and(n-7*floor(n/10), A055642(A005179(n+1)))`
-/

namespace A113302.P870016225100663065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 7 * ⌊(n : ℚ) / 10⌋) (A055642 (A005179 (n + 1)).toNat)

end

end A113302.P870016225100663065

/-! ## A113302.P15471848452032549686

`and(n-7*floor(n/10), A055642(A037019(n+1)))`
-/

namespace A113302.P15471848452032549686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 7 * ⌊(n : ℚ) / 10⌋) (A055642 (A037019 (n + 1)).toNat)

end

end A113302.P15471848452032549686

/-!
# A113304: Primes that divide some central trinomial coefficient, A002426.

The programs for A113304, there is no canonical definition to state claims against.
-/

/-! ## A113304.P2573731093920954742

`A065091(lt[0, A113302(n+1)])`
-/

namespace A113304.P2573731093920954742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A113304.P2573731093920954742

/-! ## A113304.P2194778896137127573

`A065091(lt[1, A113303(n+1)])`
-/

namespace A113304.P2194778896137127573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A113304.P2194778896137127573

/-! ## A113304.P17041496697785456969

`A000040(lt[0, A113302(n+1)]+1)`
-/

namespace A113304.P17041496697785456969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A113304.P17041496697785456969

/-! ## A113304.P10272611945393680148

`A000040(lt[0, A113303(n+1)]+1)`
-/

namespace A113304.P10272611945393680148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A113304.P10272611945393680148

/-! ## A113304.P8822755651438733925

`A006093(lt[0, A113302(n+1)]+1)+1`
-/

namespace A113304.P8822755651438733925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 1

end

end A113304.P8822755651438733925

/-!
# A113305: Primes that do not divide any central trinomial coefficient, A002426.

The programs for A113305, there is no canonical definition to state claims against.
-/

/-! ## A113305.P13702185386397192184

`p?[comp[A113304(n+1)]]`
-/

namespace A113305.P13702185386397192184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113304 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113305.P13702185386397192184

/-! ## A113305.P14311399673681212472

`A000040(lt[A113303(n+1), 1]+1)`
-/

namespace A113305.P14311399673681212472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113303 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A113305.P14311399673681212472

/-! ## A113305.P1542926986021975971

`record[gcd(A000040(n+1), A113303(n+1))]`
-/

namespace A113305.P1542926986021975971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A113303 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113305.P1542926986021975971

/-! ## A113305.P12928438737462721773

`record[(A113935(n+1)-3)/(A113303(n+1)+1)]`
-/

namespace A113305.P12928438737462721773
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113935 (n + 1) - 3 : ℚ) / (A113303 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113305.P12928438737462721773

/-! ## A113305.P8470353635497170936

`A000040(eq[A113302(n+1), A113303(n+1)]+1)`
-/

namespace A113305.P8470353635497170936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A113305.P8470353635497170936

/-! ## A113305.P11334762095766785449

`A000040(eq[3, A113304(A113303(n+1)+1)]+1)`
-/

namespace A113305.P11334762095766785449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113304 (A113303 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A113305.P11334762095766785449

/-! ## A113305.P9095080217339958129

`p?[(A113303(n+1)+1)*record[A020639(n+2)]]`
-/

namespace A113305.P9095080217339958129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113303 (n + 1) + 1) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113305.P9095080217339958129

/-!
# A113306: Expansion of q * f(-q, -q^11) / f(-q^5, -q^7) in powers of q where f(, ) is Ramanujan's general theta function.

The programs for A113306, there is no canonical definition to state claims against.
-/

/-! ## A113306.P5245187793913999101

`A001222(A052938(A050293(n)))*A014674(n)`
-/

namespace A113306.P5245187793913999101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052938 (A050293 n).toNat).toNat * A014674 n

end

end A113306.P5245187793913999101

/-!
# A113308: a(n) = the number of finite sequences of positive integers {b(k)} where (product b(k))* (sum b(k)) = n. Different orderings of the same integers are counted separately.

The programs for A113308, there is no canonical definition to state claims against.
-/

/-! ## A113308.P1095843680474523875

`A343228(A083711(n+1))+A102683(A166102(n+1))`
-/

namespace A113308.P1095843680474523875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A083711 (n + 1)).toNat + A102683 (A166102 (n + 1)).toNat

end

end A113308.P1095843680474523875

/-! ## A113308.P11743114063888317280

`A343228(A083711(n+1))^A007318(A264430(n))`
-/

namespace A113308.P11743114063888317280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343228 (A083711 (n + 1)).toNat : ℚ) ^ (A007318 (A264430 n).toNat : ℤ)

end

end A113308.P11743114063888317280

/-! ## A113308.P9027763112408630298

`A343228(A083711(n+1))^A014963(A179248(n+1))`
-/

namespace A113308.P9027763112408630298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343228 (A083711 (n + 1)).toNat : ℚ) ^ (A014963 (A179248 (n + 1)).toNat : ℤ)

end

end A113308.P9027763112408630298

/-! ## A113308.P16209230576976721041

`A070939(A352964(A328337(n+1)²))`
-/

namespace A113308.P16209230576976721041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A352964 (A328337 (n + 1) ^ 2).toNat).toNat

end

end A113308.P16209230576976721041

/-! ## A113308.P15128469063634042972

`A279119(n+1)+A247026(A352472(n+1))`
-/

namespace A113308.P15128469063634042972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (n + 1) + A247026 (A352472 (n + 1)).toNat

end

end A113308.P15128469063634042972

/-!
# A113309: a(n) = the number of finite sequences of positive integers {b(k)} where (product b(k)) * (sum b(k)) = n. Different orderings of the same sequence {b(k)} are not counted separately.

The programs for A113309, there is no canonical definition to state claims against.
-/

/-! ## A113309.P9388728941625024076

`A337135(n+1)+A025465(A178516(n+1))`
-/

namespace A113309.P9388728941625024076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (n + 1) + A025465 (A178516 (n + 1)).toNat

end

end A113309.P9388728941625024076

/-! ## A113309.P16472036497100702797

`A337135(A290641(n+1))%A341992(n+2)`
-/

namespace A113309.P16472036497100702797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337135 (A290641 (n + 1)).toNat) (A341992 (n + 2))

end

end A113309.P16472036497100702797

/-! ## A113309.P14429877330025033611

`A337135(A290641(n+1))^(A121709(n+1)%2)`
-/

namespace A113309.P14429877330025033611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337135 (A290641 (n + 1)).toNat : ℚ) ^ (Int.tmod (A121709 (n + 1)) 2 : ℤ)

end

end A113309.P14429877330025033611

/-! ## A113309.P1230871038892056028

`A006466(A008778(n))*A337135(A290641(n+1))`
-/

namespace A113309.P1230871038892056028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A008778 n).toNat * A337135 (A290641 (n + 1)).toNat

end

end A113309.P1230871038892056028

/-! ## A113309.P895496503522203397

`A337135(A290641(n+1))%A004769(A005686(n))`
-/

namespace A113309.P895496503522203397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337135 (A290641 (n + 1)).toNat) (A004769 (A005686 n).toNat)

end

end A113309.P895496503522203397

/-!
# A113310: Riordan array ((1+x)/(1-x),x/(1+x)).

The programs for A113310, there is no canonical definition to state claims against.
-/

/-! ## A113310.P3518588355546068654

`A279006(A056943(n))+char[∑[n+1]]`
-/

namespace A113310.P3518588355546068654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279006 (A056943 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113310.P3518588355546068654

/-! ## A113310.P1865263263195099360

`A343633(A001222(n+5)*A285824(n)+1)+1`
-/

namespace A113310.P1865263263195099360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343633 (A001222 (n + 5) * A285824 n + 1).toNat + 1

end

end A113310.P1865263263195099360

/-! ## A113310.P12747842112263747947

`A108930(xor(6, A058710(n)))`
-/

namespace A113310.P12747842112263747947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108930 (Int.xor 6 (A058710 n)).toNat

end

end A113310.P12747842112263747947

/-! ## A113310.P12657144394985096604

`A215029(A318256(A281891(n)+2))`
-/

namespace A113310.P12657144394985096604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A318256 (A281891 n + 2).toNat).toNat

end

end A113310.P12657144394985096604

/-!
# A113311: Expansion of (1+x)^2/(1-x).

The programs for A113311, the canonical program `A113311.P2953933866117321831` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113311 has offset 0).

The definition of A113311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x))` (program `A113311.P2953933866117321831`, by `A113311.P2953933866117321831.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113311.P2953933866117321831

`ogf((1+2x+x^2)/(1-x))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113311

/-- `ogf((1+2x+x^2)/(1-x))` -/
def P2953933866117321831.Spec : Prop :=
  ∀ n, P2953933866117321831.a n = A113311 n

theorem P2953933866117321831.correct : P2953933866117321831.Spec := by
  intro n
  simp only [A113311]

end A113311

/-!
# A113312: Expansion of (1+x)^2/(1-2x^2+x^3).

The programs for A113312, the canonical program `A113312.P15436465404385573316` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113312 has offset 0).

The definition of A113312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-2x^2+x^3))` (program `A113312.P15436465404385573316`, by `A113312.P15436465404385573316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113312.P15436465404385573316

`ogf((1+2x+x^2)/(1-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113312

/-- `ogf((1+2x+x^2)/(1-2x^2+x^3))` -/
def P15436465404385573316.Spec : Prop :=
  ∀ n, P15436465404385573316.a n = A113312 n

theorem P15436465404385573316.correct : P15436465404385573316.Spec := by
  intro n
  simp only [A113312]

end A113312

/-! ## A113312.P15633528308098014757

`2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A113312.P15633528308098014757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 2) - a (n - 3)

end

end A113312.P15633528308098014757

namespace A113312

/-- `2*a(n-2)-a(n-3)` -/
def P15633528308098014757.Spec : Prop :=
  ∀ n, P15633528308098014757.a n = A113312 n

end A113312

/-! ## A113312.P12463617521839600297

`a(n-2)+4-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A113312.P12463617521839600297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + (4 - a (n - 1))

end

end A113312.P12463617521839600297

namespace A113312

/-- `a(n-2)+4-a(n-1)` -/
def P12463617521839600297.Spec : Prop :=
  ∀ n, P12463617521839600297.a n = A113312 n

end A113312

/-! ## A113312.P4204720368551341330

`4-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A113312.P4204720368551341330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (a (n - 1) - a (n - 2))

end

end A113312.P4204720368551341330

namespace A113312

/-- `4-(a(n-1)-a(n-2))` -/
def P4204720368551341330.Spec : Prop :=
  ∀ n, P4204720368551341330.a n = A113312 n

end A113312

/-! ## A113312.P214371843034272428

`A051792(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A113312.P214371843034272428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051792 (2 * n) + a (n - 1)

end

end A113312.P214371843034272428

namespace A113312

/-- `A051792(2*n)+a(n-1)` -/
def P214371843034272428.Spec : Prop :=
  ∀ n, P214371843034272428.a n = A113312 n

end A113312

/-! ## A113312.P2385030918429710430

`∑[A051792(A004277(n))]`
-/

namespace A113312.P2385030918429710430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113312.P2385030918429710430

namespace A113312

/-- `∑[A051792(A004277(n))]` -/
def P2385030918429710430.Spec : Prop :=
  ∀ n, P2385030918429710430.a n = A113312 n

end A113312

/-! ## A113312.P7968309598441518903

`∑[∑[A112469(n)]]-n²`
-/

namespace A113312.P7968309598441518903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A113312.P7968309598441518903

namespace A113312

/-- `∑[∑[A112469(n)]]-n²` -/
def P7968309598441518903.Spec : Prop :=
  ∀ n, P7968309598441518903.a n = A113312 n

end A113312

/-!
# A113313: Riordan array (1-2x,x/(1-x)).

The programs for A113313, the canonical program `A113313.P6907104958604162947` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113313 has offset 0).

The definition of A113313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113313.P5183626653446398216

`A159853(n)+∑[A008482(n)]`
-/

namespace A113313.P5183626653446398216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113313.P5183626653446398216

namespace A113313

/-- `A159853(n)+∑[A008482(n)]` -/
def P5183626653446398216.Spec : Prop :=
  ∀ n, P5183626653446398216.a n = A113313 n

end A113313

/-! ## A113313.P8555656998999211006

`A159853(n)-∑[A037012(n)]`
-/

namespace A113313.P8555656998999211006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113313.P8555656998999211006

namespace A113313

/-- `A159853(n)-∑[A037012(n)]` -/
def P8555656998999211006.Spec : Prop :=
  ∀ n, P8555656998999211006.a n = A113313 n

end A113313

/-! ## A113313.P10587201279910241022

`2*A159854(n)-A097805(n)`
-/

namespace A113313.P10587201279910241022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159854 n - A097805 n

end

end A113313.P10587201279910241022

namespace A113313

/-- `2*A159854(n)-A097805(n)` -/
def P10587201279910241022.Spec : Prop :=
  ∀ n, P10587201279910241022.a n = A113313 n

end A113313

/-! ## A113313.P6907104958604162947

`Δ[A097805(A083920(n))-A097805(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113313

/-- `Δ[A097805(A083920(n))-A097805(n)]` -/
def P6907104958604162947.Spec : Prop :=
  ∀ n, P6907104958604162947.a n = A113313 n

theorem P6907104958604162947.correct : P6907104958604162947.Spec := by
  intro n
  simp only [A113313]

end A113313

/-! ## A113313.P13106977200222857897

`Δ[A000007(n)-A159854(n)]`
-/

namespace A113313.P13106977200222857897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A159854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113313.P13106977200222857897

namespace A113313

/-- `Δ[A000007(n)-A159854(n)]` -/
def P13106977200222857897.Spec : Prop :=
  ∀ n, P13106977200222857897.a n = A113313 n

end A113313

/-! ## A113313.P27684449253435215

`Δ[A054977(n)-A159854(n)]`
-/

namespace A113313.P27684449253435215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A159854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113313.P27684449253435215

namespace A113313

/-- `Δ[A054977(n)-A159854(n)]` -/
def P27684449253435215.Spec : Prop :=
  ∀ n, P27684449253435215.a n = A113313 n

end A113313

/-! ## A113313.P16651093566871226848

`Δ[A057428(n)-A159854(n)]`
-/

namespace A113313.P16651093566871226848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n - A159854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113313.P16651093566871226848

namespace A113313

/-- `Δ[A057428(n)-A159854(n)]` -/
def P16651093566871226848.Spec : Prop :=
  ∀ n, P16651093566871226848.a n = A113313 n

end A113313

/-! ## A113313.P12930218769506992105

`Δ[-(A159854(n)+A057427(n))]`
-/

namespace A113313.P12930218769506992105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A159854 n + A057427 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113313.P12930218769506992105

namespace A113313

/-- `Δ[-(A159854(n)+A057427(n))]` -/
def P12930218769506992105.Spec : Prop :=
  ∀ n, P12930218769506992105.a n = A113313 n

end A113313

/-! ## A113313.P3067590183125009365

`A159854(n)-A159854(A066182(n+2))`
-/

namespace A113313.P3067590183125009365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159854 n - A159854 (A066182 (n + 2)).toNat

end

end A113313.P3067590183125009365

namespace A113313

/-- `A159854(n)-A159854(A066182(n+2))` -/
def P3067590183125009365.Spec : Prop :=
  ∀ n, P3067590183125009365.a n = A113313 n

end A113313

/-! ## A113313.P9907289228785277155

`2*A159854(n)-A159854(A014132(n+1))`
-/

namespace A113313.P9907289228785277155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159854 n - A159854 (A014132 (n + 1)).toNat

end

end A113313.P9907289228785277155

namespace A113313

/-- `2*A159854(n)-A159854(A014132(n+1))` -/
def P9907289228785277155.Spec : Prop :=
  ∀ n, P9907289228785277155.a n = A113313 n

end A113313

/-! ## A113313.P9876543898280489832

`Δ[-(A159854(n)%A000070(n))]`
-/

namespace A113313.P9876543898280489832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A159854 n) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113313.P9876543898280489832

namespace A113313

/-- `Δ[-(A159854(n)%A000070(n))]` -/
def P9876543898280489832.Spec : Prop :=
  ∀ n, P9876543898280489832.a n = A113313 n

end A113313

/-! ## A113313.P8265863736017536934

`A097805(n)-A005843(A097805(n)-A159854(n))`
-/

namespace A113313.P8265863736017536934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - A005843 (A097805 n - A159854 n).toNat

end

end A113313.P8265863736017536934

namespace A113313

/-- `A097805(n)-A005843(A097805(n)-A159854(n))` -/
def P8265863736017536934.Spec : Prop :=
  ∀ n, P8265863736017536934.a n = A113313 n

end A113313

/-! ## A113313.P8941735774453991168

`A097805(n)-A005843(A131084(n+1)-A097805(n))`
-/

namespace A113313.P8941735774453991168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - A005843 (A131084 (n + 1) - A097805 n).toNat

end

end A113313.P8941735774453991168

namespace A113313

/-- `A097805(n)-A005843(A131084(n+1)-A097805(n))` -/
def P8941735774453991168.Spec : Prop :=
  ∀ n, P8941735774453991168.a n = A113313 n

end A113313

/-!
# A113315: Niven (or Harshad) numbers A005349 divided by the sum of their digits.

The programs for A113315, there is no canonical definition to state claims against.
-/

/-! ## A113315.P3023432976206172683

`A005349(n+1)/A007953(A005349(n+1))`
-/

namespace A113315.P3023432976206172683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 1) : ℚ) / (A007953 (A005349 (n + 1)).toNat : ℚ)

end

end A113315.P3023432976206172683

/-! ## A113315.P13087590960567220294

`A005349(n+1)/A325454(n+1)`
-/

namespace A113315.P13087590960567220294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005349 (n + 1) : ℚ) / (A325454 (n + 1) : ℚ)

end

end A113315.P13087590960567220294

/-! ## A113315.P9048306299911284499

`∑[A082516(A028310(n))]/A325454(n+1)`
-/

namespace A113315.P9048306299911284499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A325454 (n + 1) : ℚ)

end

end A113315.P9048306299911284499

/-! ## A113315.P492443551660707862

`A110367(A005349(n+1))`
-/

namespace A113315.P492443551660707862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A005349 (n + 1)).toNat

end

end A113315.P492443551660707862

/-! ## A113315.P17927250490723995673

`A110367(lt[A110367(n+1), n+2]+1)`
-/

namespace A113315.P17927250490723995673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A113315.P17927250490723995673

/-! ## A113315.P12500374689754864531

`record[A360074(n+1)]/A325454(n+1)`
-/

namespace A113315.P12500374689754864531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A325454 (n + 1) : ℚ)

end

end A113315.P12500374689754864531

/-! ## A113315.P16538686995290080909

`A066578(record[A066578(n+1)*A066750(n+1)])`
-/

namespace A113315.P16538686995290080909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066578 (n + 1) * A066750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113315.P16538686995290080909

/-! ## A113315.P3050958978589357304

`∑[A082516(A233583(n+1))]/A325454(n+1)`
-/

namespace A113315.P3050958978589357304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (A233583 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A325454 (n + 1) : ℚ)

end

end A113315.P3050958978589357304

/-!
# A113316: Fourth powers m^4 none of whose digits are present in their corresponding roots m.

The programs for A113316, there is no canonical definition to state claims against.
-/

/-! ## A113316.P4632725729687281019

`A111116(n+1)^4`
-/

namespace A113316.P4632725729687281019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111116 (n + 1) ^ 4

end

end A113316.P4632725729687281019

/-! ## A113316.P12634751740400889315

`A111116(Δ[n²]-n)²²`
-/

namespace A113316.P12634751740400889315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2) ^ 2

end

end A113316.P12634751740400889315

/-! ## A113316.P805243092694057501

`(A111116(n+1)²*A033999(n))²`
-/

namespace A113316.P805243092694057501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111116 (n + 1) ^ 2 * A033999 n) ^ 2

end

end A113316.P805243092694057501

/-! ## A113316.P13806205268158338697

`(A111116(n+1)²+n*A000007(n))²`
-/

namespace A113316.P13806205268158338697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111116 (n + 1) ^ 2 + (n : ℤ) * A000007 n) ^ 2

end

end A113316.P13806205268158338697

/-! ## A113316.P2796065650468680313

`(A076493(A029783(n+1))+A111116(n+1)²)²`
-/

namespace A113316.P2796065650468680313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076493 (A029783 (n + 1)).toNat + A111116 (n + 1) ^ 2) ^ 2

end

end A113316.P2796065650468680313

/-! ## A113316.P13561815229191040508

`A000583(A111116(n+1))`
-/

namespace A113316.P13561815229191040508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A111116 (n + 1)).toNat

end

end A113316.P13561815229191040508

/-!
# A113317: Exclusionary biquadrates (fourth powers).

The programs for A113317, there is no canonical definition to state claims against.
-/

/-! ## A113317.P12803220181235309540

`A113318(n+1)^4`
-/

namespace A113317.P12803220181235309540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113318 (n + 1) ^ 4

end

end A113317.P12803220181235309540

/-! ## A113317.P7095026940708976728

`A000583(A113318(n+1))`
-/

namespace A113317.P7095026940708976728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A113318 (n + 1)).toNat

end

end A113317.P7095026940708976728

/-!
# A113318: Numbers whose biquadrates (fourth powers) are exclusionary.

The programs for A113318, there is no canonical definition to state claims against.
-/

/-! ## A113318.P2102106679291373107

`sqrt(sqrt(A113317(n+1)))`
-/

namespace A113318.P2102106679291373107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A113317 (n + 1) : ℝ))

end

end A113318.P2102106679291373107

/-! ## A113318.P17186501085716349971

`record[A137564(A111116(n+1))]`
-/

namespace A113318.P17186501085716349971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A111116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113318.P17186501085716349971

/-! ## A113318.P15243545782801776219

`filter[A111116(n+1), A178788(#)]`
-/

namespace A113318.P15243545782801776219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A113318.P15243545782801776219

/-! ## A113318.P1192964113609508408

`record[A137564(root(A113316(n+1), 4))]`
-/

namespace A113318.P1192964113609508408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (SequenceMachineLib.roundAway ((A113316 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113318.P1192964113609508408

/-! ## A113318.P5829672619215514695

`record[A320486(root(A113316(n+1), 4))]`
-/

namespace A113318.P5829672619215514695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (SequenceMachineLib.roundAway ((A113316 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113318.P5829672619215514695

/-!
# A113319: Decimal expansion of Sum_{k>=0} 1/(k^2+1).

The programs for A113319, there is no canonical definition to state claims against.
-/

/-! ## A113319.P7398286695211717941

`A259171(n)+A000007(n)`
-/

namespace A113319.P7398286695211717941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259171 (n + 1) + A000007 n

end

end A113319.P7398286695211717941

/-! ## A113319.P16139555653607525931

`A054977(n)*A259171(n)`
-/

namespace A113319.P16139555653607525931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A259171 (n + 1)

end

end A113319.P16139555653607525931

/-! ## A113319.P9501247628216753877

`A141044(n)*A259171(n)`
-/

namespace A113319.P9501247628216753877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A259171 (n + 1)

end

end A113319.P9501247628216753877

/-! ## A113319.P3300526462465487803

`A000038(n)!*A259171(n)`
-/

namespace A113319.P3300526462465487803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A259171 (n + 1)

end

end A113319.P3300526462465487803

/-! ## A113319.P3987801819039684086

`A028920(A028930(n))*A259171(n)`
-/

namespace A113319.P3987801819039684086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (A028930 n).toNat * A259171 (n + 1)

end

end A113319.P3987801819039684086

/-! ## A113319.P3249367001003328258

`A259171(n)-A159075(A001223(n+1))`
-/

namespace A113319.P3249367001003328258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259171 (n + 1) - A159075 (A001223 (n + 1)).toNat

end

end A113319.P3249367001003328258

/-! ## A113319.P15373080177673111475

`A259171(n)-A159075(n+1)`
-/

namespace A113319.P15373080177673111475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259171 (n + 1) - A159075 (n + 1)

end

end A113319.P15373080177673111475

/-!
# A113321: Lexicographically earliest permutation of the natural numbers such that all positive differences between succeeding terms occur exactly once.

The programs for A113321, there is no canonical definition to state claims against.
-/

/-! ## A113321.P2254157568754012604

`A072061(n+2)-1`
-/

namespace A113321.P2254157568754012604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (n + 2) - 1

end

end A113321.P2254157568754012604

/-! ## A113321.P13550164066503792943

`A219636(n+2)-∑[n]%(n+1)`
-/

namespace A113321.P13550164066503792943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (n + 2) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A113321.P13550164066503792943

/-! ## A113321.P14769820896906734963

`A023443(A072061(n+2))`
-/

namespace A113321.P14769820896906734963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072061 (n + 2)).toNat

end

end A113321.P14769820896906734963

/-! ## A113321.P13557747997021681750

`A002251(A054084(n+2))-1`
-/

namespace A113321.P13557747997021681750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A054084 (n + 2)).toNat - 1

end

end A113321.P13557747997021681750

/-! ## A113321.P14266626082843619270

`A054084(A014681(n+2))-1`
-/

namespace A113321.P14266626082843619270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (A014681 (n + 2)).toNat - 1

end

end A113321.P14266626082843619270

/-! ## A113321.P7021312490815500100

`A054084(A103889(n+2))-1`
-/

namespace A113321.P7021312490815500100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (A103889 (n + 2)).toNat - 1

end

end A113321.P7021312490815500100

/-! ## A113321.P2059318278218344612

`∑[Δ[A307295(n)]-A001057(n)]`
-/

namespace A113321.P2059318278218344612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113321.P2059318278218344612

/-! ## A113321.P18030630708331106907

`A187485(n+2)-A133622(n+1)`
-/

namespace A113321.P18030630708331106907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 2) - A133622 (n + 1)

end

end A113321.P18030630708331106907

/-! ## A113321.P1868076890938875066

`A054084(2-A033999(n)+n)-1`
-/

namespace A113321.P1868076890938875066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (2 - A033999 n + (n : ℤ)).toNat - 1

end

end A113321.P1868076890938875066

/-! ## A113321.P17115920680151830937

`∑[Δ[A187485(n+1)]-A001057(n)]`
-/

namespace A113321.P17115920680151830937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113321.P17115920680151830937

/-!
# A113322: First differences of A113321.

The programs for A113322, there is no canonical definition to state claims against.
-/

/-! ## A113322.P9250330738984659325

`Δ[A113321(n+1)]`
-/

namespace A113322.P9250330738984659325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113322.P9250330738984659325

/-! ## A113322.P11434122899944013508

`Δ[A072061(n+2)]`
-/

namespace A113322.P11434122899944013508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113322.P11434122899944013508

/-! ## A113322.P2339816490663437024

`Δ[A002251(A054084(n+2))]`
-/

namespace A113322.P2339816490663437024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A054084 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113322.P2339816490663437024

/-! ## A113322.P17806457465596339801

`Δ[A054084(A014681(n+2))]`
-/

namespace A113322.P17806457465596339801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (A014681 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113322.P17806457465596339801

/-! ## A113322.P7253252350438565754

`Δ[A054084(A103889(n+2))]`
-/

namespace A113322.P7253252350438565754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (A103889 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113322.P7253252350438565754

/-! ## A113322.P16788626633145069117

`Δ[A054084(2-A033999(n)+n)]`
-/

namespace A113322.P16788626633145069117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (2 - A033999 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113322.P16788626633145069117

/-! ## A113322.P13820950814327234558

`A113321(n+2)-A113321(n+1)`
-/

namespace A113322.P13820950814327234558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (n + 2) - A113321 (n + 1)

end

end A113322.P13820950814327234558

/-! ## A113322.P15083512989836005774

`A072061(n+3)-A072061(n+2)`
-/

namespace A113322.P15083512989836005774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (n + 3) - A072061 (n + 2)

end

end A113322.P15083512989836005774

/-! ## A113322.P4081468944809781526

`Δ[A307295(n+1)]-A001057(n+1)`
-/

namespace A113322.P4081468944809781526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001057 (n + 1)

end

end A113322.P4081468944809781526

/-! ## A113322.P6948534124810199637

`Δ[A054084(n+1)-A317203(n+1)]`
-/

namespace A113322.P6948534124810199637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054084 (n + 1) - A317203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113322.P6948534124810199637

/-!
# A113323: A113321(A113321(n)).

The programs for A113323, there is no canonical definition to state claims against.
-/

/-! ## A113323.P5349883567156280755

`A113321(A113321(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113323.P5349883567156280755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (A113321 (n + 1)).toNat

end

end A113323.P5349883567156280755

/-! ## A113323.P10306764233589747104

`A072061(A072061(n+2))-1`
-/

namespace A113323.P10306764233589747104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (A072061 (n + 2)).toNat - 1

end

end A113323.P10306764233589747104

/-! ## A113323.P10687951143465323931

`A109039(A006047(n))+A072061(A072061(n+2))`
-/

namespace A113323.P10687951143465323931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A006047 n).toNat + A072061 (A072061 (n + 2)).toNat

end

end A113323.P10687951143465323931

/-! ## A113323.P8343871153304209470

`A109039(A006519(n+1))+A072061(A072061(n+2))`
-/

namespace A113323.P8343871153304209470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A006519 (n + 1)).toNat + A072061 (A072061 (n + 2)).toNat

end

end A113323.P8343871153304209470

/-! ## A113323.P4590219629321105469

`A109039(A178334(n)+1)+A072061(A072061(n+2))`
-/

namespace A113323.P4590219629321105469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (A178334 n + 1).toNat + A072061 (A072061 (n + 2)).toNat

end

end A113323.P4590219629321105469

/-! ## A113323.P15724952494512946676

`A339791(A014963(n+1))+A072061(A072061(n+2))`
-/

namespace A113323.P15724952494512946676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339791 (A014963 (n + 1)).toNat + A072061 (A072061 (n + 2)).toNat

end

end A113323.P15724952494512946676

/-! ## A113323.P12322560491057430621

`A099837(A014963(2*(n+1)))+A072061(A072061(n+2))`
-/

namespace A113323.P12322560491057430621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A014963 (2 * (n + 1))).toNat + A072061 (A072061 (n + 2)).toNat

end

end A113323.P12322560491057430621

/-! ## A113323.P1806767683538364821

`A120439(A001511(2*n+1))+A072061(A072061(n+2))`
-/

namespace A113323.P1806767683538364821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120439 (A001511 (2 * n + 1)).toNat + A072061 (A072061 (n + 2)).toNat

end

end A113323.P1806767683538364821

/-! ## A113323.P5514950448122183056

`A113321(∑[Δ[A307295(n)]-A001057(n)])`
-/

namespace A113323.P5514950448122183056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113323.P5514950448122183056

/-!
# A113324: Inverse integer permutation of A113321.

The programs for A113324, there is no canonical definition to state claims against.
-/

/-! ## A113324.P15011308975471724608

`A072062(n+2)-1`
-/

namespace A113324.P15011308975471724608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072062 (n + 2) - 1

end

end A113324.P15011308975471724608

/-! ## A113324.P431910962068273138

`xor(1, A064786(n+2)-1)`
-/

namespace A113324.P431910962068273138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A064786 (n + 2) - 1)

end

end A113324.P431910962068273138

/-! ## A113324.P1435669366796854544

`∑[Δ[A072062(n+1)]%50]`
-/

namespace A113324.P1435669366796854544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113324.P1435669366796854544

/-! ## A113324.P4950734220503430694

`∑[-Δ[xor(1, -A064786(n+1))]]`
-/

namespace A113324.P4950734220503430694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-A064786 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113324.P4950734220503430694

/-! ## A113324.P725253878372933995

`A023443(A072062(n+2))`
-/

namespace A113324.P725253878372933995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A072062 (n + 2)).toNat

end

end A113324.P725253878372933995

/-! ## A113324.P5214131301170167897

`A064786(A002251(n+2))-1`
-/

namespace A113324.P5214131301170167897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064786 (A002251 (n + 2)).toNat - 1

end

end A113324.P5214131301170167897

/-! ## A113324.P10000250688331895973

`A004442(A064786(n+2)-1)`
-/

namespace A113324.P10000250688331895973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A064786 (n + 2) - 1).toNat

end

end A113324.P10000250688331895973

/-! ## A113324.P13029943429806229380

`A014681(A064579(n+4))-3`
-/

namespace A113324.P13029943429806229380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A064579 (n + 4)).toNat - 3

end

end A113324.P13029943429806229380

/-! ## A113324.P17878562145793195186

`A280193(2*n+1)+A072062(n+2)`
-/

namespace A113324.P17878562145793195186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A072062 (n + 2)

end

end A113324.P17878562145793195186

/-! ## A113324.P13558231151041090156

`2*A026242(n+2)-A014675(n+1)`
-/

namespace A113324.P13558231151041090156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026242 (n + 2) - A014675 (n + 1)

end

end A113324.P13558231151041090156

/-!
# A113325: A113324(A113324(n)).

The programs for A113325, there is no canonical definition to state claims against.
-/

/-! ## A113325.P13343701000972105113

`A113324(A113324(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113325.P13343701000972105113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113324 (A113324 (n + 1)).toNat

end

end A113325.P13343701000972105113

/-! ## A113325.P6187621982420568040

`A072062(A072062(n+2))-1`
-/

namespace A113325.P6187621982420568040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072062 (A072062 (n + 2)).toNat - 1

end

end A113325.P6187621982420568040

/-! ## A113325.P12991536187117902665

`A280193(or(1, n))+A072062(A072062(n+2))`
-/

namespace A113325.P12991536187117902665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (Nat.lor 1 n) + A072062 (A072062 (n + 2)).toNat

end

end A113325.P12991536187117902665

/-! ## A113325.P11927406474675027644

`A280193(2*n+1)+A072062(A072062(n+2))`
-/

namespace A113325.P11927406474675027644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A072062 (A072062 (n + 2)).toNat

end

end A113325.P11927406474675027644

/-! ## A113325.P14689022168060171773

`A291914(A000040(n+1))+A072062(A072062(n+2))`
-/

namespace A113325.P14689022168060171773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A000040 (n + 1)).toNat + A072062 (A072062 (n + 2)).toNat

end

end A113325.P14689022168060171773

/-!
# A113327: a(n) = Sum_{k=0..n} 2^k*A111146(n,k).

The programs for A113327, there is no canonical definition to state claims against.
-/

/-! ## A113327.P9795318890667942430

`A113326(∑[n+2]-1)`
-/

namespace A113327.P9795318890667942430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A113327.P9795318890667942430

/-! ## A113327.P8162775191103796586

`record[A113326(A101881(n))]`
-/

namespace A113327.P8162775191103796586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113327.P8162775191103796586

/-! ## A113327.P10925001122405644883

`record[A113326(∑[A158416(n)])]`
-/

namespace A113327.P10925001122405644883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113327.P10925001122405644883

/-! ## A113327.P16207447330399765590

`record[A113326(A130297(n+1))]`
-/

namespace A113327.P16207447330399765590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113327.P16207447330399765590

/-! ## A113327.P10556473998877368823

`record[A113326(n*A097806(n))]`
-/

namespace A113327.P10556473998877368823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 ((n : ℤ) * A097806 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113327.P10556473998877368823

/-!
# A113328: a(n) = Sum_{k=0..n} 3^k*A111146(n,k).

The programs for A113328, there is no canonical definition to state claims against.
-/

/-! ## A113328.P13522149341086802448

`A113326(∑[n+3])`
-/

namespace A113328.P13522149341086802448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113328.P13522149341086802448

/-! ## A113328.P9131939182861959243

`A113326(A141214(n))+char[8]`
-/

namespace A113328.P9131939182861959243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113328.P9131939182861959243

/-! ## A113328.P10090961084520311542

`record[A113326(A055998(∑{e}[n, #]))]`
-/

namespace A113328.P10090961084520311542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (A055998 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113328.P10090961084520311542

/-! ## A113328.P10299474462744409469

`record[A113326(A055998(n))-char[1]]`
-/

namespace A113328.P10299474462744409469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (A055998 n).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113328.P10299474462744409469

/-!
# A113329: a(n) = Sum_{k=0..n} 4^k*A111146(n,k).

The programs for A113329, there is no canonical definition to state claims against.
-/

/-! ## A113329.P1988144219971019887

`A113326(∑[n+4]+2)`
-/

namespace A113329.P1988144219971019887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A113329.P1988144219971019887

/-!
# A113330: a(n) = Sum_{k=0..n} 5^k*A111146(n,k).

The programs for A113330, there is no canonical definition to state claims against.
-/

/-! ## A113330.P16644102491860864482

`A113326(eq[5, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A113330.P16644102491860864482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113330.P16644102491860864482

/-! ## A113330.P7090657389587339338

`A113326(A052905(n+2))`
-/

namespace A113330.P7090657389587339338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (A052905 (n + 2)).toNat

end

end A113330.P7090657389587339338

/-!
# A113331: a(n) = Sum_{k=0..n} 6^k*A111146(n,k).

The programs for A113331, there is no canonical definition to state claims against.
-/

/-! ## A113331.P8240101569303943431

`A113326(eq[5, C(comp[∑[n]]-n, 2)-(n+1)])`
-/

namespace A113331.P8240101569303943431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113331.P8240101569303943431

/-!
# A113332: a(n) = A113129(2*n+2,n+2) for n>=0.

The programs for A113332, there is no canonical definition to state claims against.
-/

/-! ## A113332.P3032551266067046043

`2/3*A212553(n+1)`
-/

namespace A113332.P3032551266067046043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A212553 (n + 1) : ℚ)

end

end A113332.P3032551266067046043

/-! ## A113332.P9429541008670358968

`A000699(n+2)*(2*n+3)*(n+2)/(3*(n+1))`
-/

namespace A113332.P9429541008670358968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000699 (n + 2) : ℚ) * ((2 * n + 3 : ℚ) * ((n + 2 : ℚ) / (3 * (n + 1) : ℚ)))

end

end A113332.P9429541008670358968

/-!
# A113333: Column sums of triangle A113129.

The programs for A113333, there is no canonical definition to state claims against.
-/

/-! ## A113333.P12489824724778730554

`A369027(n)+A345935(A000169(n+1))`
-/

namespace A113333.P12489824724778730554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369027 n + A345935 (A000169 (n + 1)).toNat

end

end A113333.P12489824724778730554

/-! ## A113333.P7322684177897244158

`A008611(A293985(2*n*(n+2))+A125222(n))`
-/

namespace A113333.P7322684177897244158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A293985 (2 * (n * (n + 2))) + A125222 n).toNat

end

end A113333.P7322684177897244158

/-!
# A113334: Values of k in A072532.

The programs for A113334, there is no canonical definition to state claims against.
-/

/-! ## A113334.P15029833719281291894

`ceil(ratio[A072532(n+1)])`
-/

namespace A113334.P15029833719281291894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A113334.P15029833719281291894

/-! ## A113334.P2120057975068579863

`round(ratio[A072532(2*n+1-n)])`
-/

namespace A113334.P2120057975068579863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072532 (2 * n + 1 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A113334.P2120057975068579863

/-! ## A113334.P2927900917072457304

`ceil(A072532(n+2)/A072532(n+1))`
-/

namespace A113334.P2927900917072457304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072532 (n + 2) : ℚ) / (A072532 (n + 1) : ℚ)⌉

end

end A113334.P2927900917072457304

/-! ## A113334.P14428515920317909650

`round(ratio[A072532(n+1)])%A001749(n+1)`
-/

namespace A113334.P14428515920317909650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))) (A001749 (n + 1))

end

end A113334.P14428515920317909650

/-!
# A113335: a(n) = 3^5 * binomial(n+4, 5).

The programs for A113335, the canonical program `A113335.P14955714732721302930` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113335 has offset 1).

The definition of A113335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^5*C(n+5, 5)` (program `A113335.P14955714732721302930`, by `A113335.P14955714732721302930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113335.P14955714732721302930

`3^5*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113335

/-- `3^5*C(n+5, 5)` -/
def P14955714732721302930.Spec : Prop :=
  ∀ n, (P14955714732721302930.a n : ℤ) = A113335 (n + 1)

theorem P14955714732721302930.correct : P14955714732721302930.Spec := by
  intro n
  simp only [A113335, Nat.add_sub_cancel]

end A113335

/-! ## A113335.P9168934611549645567

`∑[3*81*C(n+4, 4)]`
-/

namespace A113335.P9168934611549645567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (81 * Nat.choose (n + 4) 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113335.P9168934611549645567

namespace A113335

/-- `∑[3*81*C(n+4, 4)]` -/
def P9168934611549645567.Spec : Prop :=
  ∀ n, (P9168934611549645567.a n : ℤ) = A113335 (n + 1)

end A113335

/-! ## A113335.P6776852752006033467

`3*∑[∑[∑[∑[81*(n+1)]]]]`
-/

namespace A113335.P6776852752006033467
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113335.P6776852752006033467

namespace A113335

/-- `3*∑[∑[∑[∑[81*(n+1)]]]]` -/
def P6776852752006033467.Spec : Prop :=
  ∀ n, (P6776852752006033467.a n : ℤ) = A113335 (n + 1)

end A113335

/-! ## A113335.P13527384980316409245

`∑[3*A102741(n+1)]`
-/

namespace A113335.P13527384980316409245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A102741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113335.P13527384980316409245

namespace A113335

/-- `∑[3*A102741(n+1)]` -/
def P13527384980316409245.Spec : Prop :=
  ∀ n, P13527384980316409245.a n = A113335 (n + 1)

end A113335

/-! ## A113335.P11080638714998290548

`∑[∑[9*9*A027480(n+1)]]`
-/

namespace A113335.P11080638714998290548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (9 * A027480 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113335.P11080638714998290548

namespace A113335

/-- `∑[∑[9*9*A027480(n+1)]]` -/
def P11080638714998290548.Spec : Prop :=
  ∀ n, P11080638714998290548.a n = A113335 (n + 1)

end A113335

/-! ## A113335.P17349394117845629924

`∑[81*A050534(n+3)]`
-/

namespace A113335.P17349394117845629924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A050534 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113335.P17349394117845629924

namespace A113335

/-- `∑[81*A050534(n+3)]` -/
def P17349394117845629924.Spec : Prop :=
  ∀ n, P17349394117845629924.a n = A113335 (n + 1)

end A113335

/-! ## A113335.P14798330799847892474

`∑[81*A000217(∑[n+2])]`
-/

namespace A113335.P14798330799847892474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  81 * A000217 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113335.P14798330799847892474

namespace A113335

/-- `∑[81*A000217(∑[n+2])]` -/
def P14798330799847892474.Spec : Prop :=
  ∀ n, P14798330799847892474.a n = A113335 (n + 1)

end A113335

/-! ## A113335.P651903796252032366

`A027465(A008585(n+3)+A000217(n+3))`
-/

namespace A113335.P651903796252032366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (A008585 (n + 3) + A000217 (n + 3)).toNat

end

end A113335.P651903796252032366

namespace A113335

/-- `A027465(A008585(n+3)+A000217(n+3))` -/
def P651903796252032366.Spec : Prop :=
  ∀ n, P651903796252032366.a n = A113335 (n + 1)

end A113335

/-! ## A113335.P9039790465783578867

`∑[3*A140091(A140091(n+1))]`
-/

namespace A113335.P9039790465783578867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A140091 (A140091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113335.P9039790465783578867

namespace A113335

/-- `∑[3*A140091(A140091(n+1))]` -/
def P9039790465783578867.Spec : Prop :=
  ∀ n, P9039790465783578867.a n = A113335 (n + 1)

end A113335

/-! ## A113335.P10337748604255914589

`∑[9*A000096(3*A000096(n+1))]`
-/

namespace A113335.P10337748604255914589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000096 (3 * A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113335.P10337748604255914589

namespace A113335

/-- `∑[9*A000096(3*A000096(n+1))]` -/
def P10337748604255914589.Spec : Prop :=
  ∀ n, P10337748604255914589.a n = A113335 (n + 1)

end A113335

/-!
# A113337: Number of noncrossing partitions of [n] with all blocks of odd size and 1 and n in the same block.

The programs for A113337, there is no canonical definition to state claims against.
-/

/-! ## A113337.P16051914220035168452

`A141104(a(n-1))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A113337.P16051914220035168452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  A141104 (a (n - 1)).toNat

end

end A113337.P16051914220035168452

/-! ## A113337.P5173793342594293589

`A137735(A064095(n))-1`
-/

namespace A113337.P5173793342594293589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A064095 n).toNat - 1

end

end A113337.P5173793342594293589

/-! ## A113337.P15733601215994714963

`A281384(A245092(floor(ϕ²*a(n-1))))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A113337.P15733601215994714963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n a =>
  A281384 (A245092 ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋.toNat).toNat

end

end A113337.P15733601215994714963

/-! ## A113337.P6118228734253008403

`A024317(A215366(n)+A064095(n))`
-/

namespace A113337.P6118228734253008403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024317 (A215366 n + A064095 n).toNat

end

end A113337.P6118228734253008403

/-! ## A113337.P11743352093331053281

`A336033(A157152(n)+A000139(n))`
-/

namespace A113337.P11743352093331053281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336033 (A157152 n + A000139 n).toNat

end

end A113337.P11743352093331053281

/-!
# A113338: Positive integers of the form (18*m^2+1)/11.

The programs for A113338, the canonical program `A113338.P13537403767834845340` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113338 has offset 1).

The definition of A113338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113338.P13537403767834845340

`(198*(n+1)*n-81*(2*(n+1)-1)*(-1)^(n+1)+83)/4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113338

/-- `(198*(n+1)*n-81*(2*(n+1)-1)*(-1)^(n+1)+83)/4` -/
def P13537403767834845340.Spec : Prop :=
  ∀ n, P13537403767834845340.a n = (A113338 (n + 1) : ℚ)

end A113338

/-! ## A113338.P13131328520765291318

`A179088(xor(1, 3*n+2))`
-/

namespace A113338.P13131328520765291318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (Nat.xor 1 (3 * n + 2))

end

end A113338.P13131328520765291318

namespace A113338

/-- `A179088(xor(1, 3*n+2))` -/
def P13131328520765291318.Spec : Prop :=
  ∀ n, P13131328520765291318.a n = A113338 (n + 1)

end A113338

/-! ## A113338.P4914138672783729246

`A179088(A047230(n+1))`
-/

namespace A113338.P4914138672783729246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (A047230 (n + 1)).toNat

end

end A113338.P4914138672783729246

namespace A113338

/-- `A179088(A047230(n+1))` -/
def P4914138672783729246.Spec : Prop :=
  ∀ n, P4914138672783729246.a n = A113338 (n + 1)

end A113338

/-! ## A113338.P642807040713365823

`A179088(A047243(n+1)+1)`
-/

namespace A113338.P642807040713365823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (A047243 (n + 1) + 1).toNat

end

end A113338.P642807040713365823

namespace A113338

/-- `A179088(A047243(n+1)+1)` -/
def P642807040713365823.Spec : Prop :=
  ∀ n, P642807040713365823.a n = A113338 (n + 1)

end A113338

/-! ## A113338.P12839707438608567676

`A179088(A168269(n+1)+n)`
-/

namespace A113338.P12839707438608567676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (A168269 (n + 1) + (n : ℤ)).toNat

end

end A113338.P12839707438608567676

namespace A113338

/-- `A179088(A168269(n+1)+n)` -/
def P12839707438608567676.Spec : Prop :=
  ∀ n, P12839707438608567676.a n = A113338 (n + 1)

end A113338

/-! ## A113338.P3837619731946358960

`A179088(A047621(n+1)-n)`
-/

namespace A113338.P3837619731946358960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (A047621 (n + 1) - (n : ℤ)).toNat

end

end A113338.P3837619731946358960

namespace A113338

/-- `A179088(A047621(n+1)-n)` -/
def P3837619731946358960.Spec : Prop :=
  ∀ n, P3837619731946358960.a n = A113338 (n + 1)

end A113338

/-! ## A113338.P830860425805830843

`A179088((A092242(n+1)+1)/2)`
-/

namespace A113338.P830860425805830843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (SequenceMachineLib.roundAway ((A092242 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A113338.P830860425805830843

namespace A113338

/-- `A179088((A092242(n+1)+1)/2)` -/
def P830860425805830843.Spec : Prop :=
  ∀ n, P830860425805830843.a n = A113338 (n + 1)

end A113338

/-! ## A113338.P12854190235029051526

`A179088(A281445(n+1)-(A001651(n+1)+n))`
-/

namespace A113338.P12854190235029051526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (A281445 (n + 1) - (A001651 (n + 1) + (n : ℤ))).toNat

end

end A113338.P12854190235029051526

namespace A113338

/-- `A179088(A281445(n+1)-(A001651(n+1)+n))` -/
def P12854190235029051526.Spec : Prop :=
  ∀ n, P12854190235029051526.a n = A113338 (n + 1)

end A113338

/-! ## A113338.P12565058983879162360

`A179088(A008619(A092242(n+1)))`
-/

namespace A113338.P12565058983879162360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (A008619 (A092242 (n + 1)).toNat).toNat

end

end A113338.P12565058983879162360

namespace A113338

/-- `A179088(A008619(A092242(n+1)))` -/
def P12565058983879162360.Spec : Prop :=
  ∀ n, P12565058983879162360.a n = A113338 (n + 1)

end A113338

/-! ## A113338.P15343843867745288642

`∩[A179088(n+1), A301623(n+1)]`
-/

namespace A113338.P15343843867745288642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113338.P15343843867745288642

namespace A113338

/-- `∩[A179088(n+1), A301623(n+1)]` -/
def P15343843867745288642.Spec : Prop :=
  ∀ n, (P15343843867745288642.a n : ℤ) = A113338 (n + 1)

end A113338

/-!
# A113339: Integers n such that prime(n+1)-prime(n) is nonprime, squarefree. Except for the initial term of 1, the terms are k-semiprime for some k>=2.

The programs for A113339, the canonical program `A113339.P13837044038281480743` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113339 has offset 1).

The definition of A113339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113339.P13837044038281480743

`record[(n+1)*A069158(A001223(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113339

/-- `record[(n+1)*A069158(A001223(n+1))]` -/
def P13837044038281480743.Spec : Prop :=
  ∀ n, P13837044038281480743.a n = A113339 (n + 1)

theorem P13837044038281480743.correct : P13837044038281480743.Spec := by
  intro n
  simp only [A113339, Nat.add_sub_cancel]

end A113339

/-! ## A113339.P12351863194585833985

`lt[A306328(A054541(n+1)), A054541(n+1)]`
-/

namespace A113339.P12351863194585833985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306328 (A054541 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113339.P12351863194585833985

namespace A113339

/-- `lt[A306328(A054541(n+1)), A054541(n+1)]` -/
def P12351863194585833985.Spec : Prop :=
  ∀ n, (P12351863194585833985.a n : ℤ) = A113339 (n + 1)

end A113339

/-! ## A113339.P17612640715898886362

`eq[A108299(A054541(n+1)), A178334(n)]`
-/

namespace A113339.P17612640715898886362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 (A054541 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113339.P17612640715898886362

namespace A113339

/-- `eq[A108299(A054541(n+1)), A178334(n)]` -/
def P17612640715898886362.Spec : Prop :=
  ∀ n, (P17612640715898886362.a n : ℤ) = A113339 (n + 1)

end A113339

/-! ## A113339.P17834336062764835934

`eq[A008683(A054541(n+1)), A057427(n²)]`
-/

namespace A113339.P17834336062764835934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054541 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113339.P17834336062764835934

namespace A113339

/-- `eq[A008683(A054541(n+1)), A057427(n²)]` -/
def P17834336062764835934.Spec : Prop :=
  ∀ n, (P17834336062764835934.a n : ℤ) = A113339 (n + 1)

end A113339

/-! ## A113339.P8363556362128161357

`lt[A127253(n), A003723(A076368(n+1))]`
-/

namespace A113339.P8363556362128161357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 (A076368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113339.P8363556362128161357

namespace A113339

/-- `lt[A127253(n), A003723(A076368(n+1))]` -/
def P8363556362128161357.Spec : Prop :=
  ∀ n, (P8363556362128161357.a n : ℤ) = A113339 (n + 1)

end A113339

/-!
# A113340: Triangle P, read by rows, such that P^2 transforms column k of P into column k+1 of P, so that column k of P equals column 0 of P^(2*k+1), where P^2 denotes the matrix square of P.

The programs for A113340, there is no canonical definition to state claims against.
-/

/-! ## A113340.P8497887210316783604

`A113369(∑[char[A014132(n+2)]])`
-/

namespace A113340.P8497887210316783604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113340.P8497887210316783604

/-! ## A113340.P14890577920168117394

`A113369((2*n)%A007401(n+1))`
-/

namespace A113340.P14890577920168117394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 (Int.tmod (2 * n : ℤ) (A007401 (n + 1))).toNat

end

end A113340.P14890577920168117394

/-! ## A113340.P5967510199880776745

`A113369(A004277(n)%comp[∑[n-1]])`
-/

namespace A113340.P5967510199880776745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 (Int.tmod (A004277 n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A113340.P5967510199880776745

/-! ## A113340.P9334674720474904412

`A279367(A113711(n))+char[11]`
-/

namespace A113340.P9334674720474904412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (A113711 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113340.P9334674720474904412

/-! ## A113340.P11635540890487515841

`or(A037800(n), A279367(A113711(n)))`
-/

namespace A113340.P11635540890487515841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037800 n) (A279367 (A113711 n).toNat)

end

end A113340.P11635540890487515841

/-!
# A113341: Column 1 of triangle A113340, also equals column 0 of A113340^3.

The programs for A113341, there is no canonical definition to state claims against.
-/

/-! ## A113341.P14079961915469432969

`A113360(∑[n])`
-/

namespace A113341.P14079961915469432969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113341.P14079961915469432969

/-! ## A113341.P5900412077365581622

`A113369(∑[n])`
-/

namespace A113341.P5900412077365581622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113341.P5900412077365581622

/-! ## A113341.P1397449541584590249

`record[A113340(n)]`
-/

namespace A113341.P1397449541584590249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113341.P1397449541584590249

/-! ## A113341.P6412170338053028098

`record[A113369(n)]`
-/

namespace A113341.P6412170338053028098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113341.P6412170338053028098

/-! ## A113341.P7047640529200572462

`A113340(∑[n+1]+1)`
-/

namespace A113341.P7047640529200572462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113341.P7047640529200572462

/-!
# A113342: Column 2 of triangle A113340, also equals column 0 of A113340^5.

The programs for A113342, there is no canonical definition to state claims against.
-/

/-! ## A113342.P14896350246399559068

`record[A113369(comp[∑[n]])]`
-/

namespace A113342.P14896350246399559068
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113342.P14896350246399559068

/-! ## A113342.P6610388840356626224

`A113369(∑[n+1]+1)`
-/

namespace A113342.P6610388840356626224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113342.P6610388840356626224

/-! ## A113342.P8991571646430900951

`A113340(∑[n+2]+3)`
-/

namespace A113342.P8991571646430900951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113342.P8991571646430900951

/-! ## A113342.P17631798377118999840

`record[A113340(A080036(n))]`
-/

namespace A113342.P17631798377118999840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113342.P17631798377118999840

/-!
# A113343: Column 3 of triangle A113340, also equals column 0 of A113340^7.

The programs for A113343, there is no canonical definition to state claims against.
-/

/-! ## A113343.P6014581543953003158

`A113369(∑[n+2]+3)`
-/

namespace A113343.P6014581543953003158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113343.P6014581543953003158

/-! ## A113343.P7683263314867979299

`A113340(∑[n+3]+6)`
-/

namespace A113343.P7683263314867979299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A113343.P7683263314867979299

/-! ## A113343.P14988266679379570570

`record[A113369(A183234(n+1))]`
-/

namespace A113343.P14988266679379570570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113369 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113343.P14988266679379570570

/-!
# A113344: Column 4 of triangle A113340, also equals column 0 of A113340^9.

The programs for A113344, there is no canonical definition to state claims against.
-/

/-! ## A113344.P14287553171566296988

`A113340(C(n+5, 2)+4)`
-/

namespace A113344.P14287553171566296988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (Nat.choose (n + 5) 2 + 4)

end

end A113344.P14287553171566296988

/-! ## A113344.P6528555637035135535

`A113340(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A113344.P6528555637035135535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113344.P6528555637035135535

/-!
# A113346: Column 0 of triangle A113345, also equals column 0 of A113350.

The programs for A113346, there is no canonical definition to state claims against.
-/

/-! ## A113346.P12589291512325293079

`A123895(n)+A113355(C(n, 2))`
-/

namespace A113346.P12589291512325293079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n + A113355 (Nat.choose n 2)

end

end A113346.P12589291512325293079

/-! ## A113346.P5065919789304909805

`A178489(n)+A113355(C(n, 2))`
-/

namespace A113346.P5065919789304909805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A113355 (Nat.choose n 2)

end

end A113346.P5065919789304909805

/-! ## A113346.P13848782796915880772

`A113355(A161680(n))+floor(atan(n+1))`
-/

namespace A113346.P13848782796915880772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 (A161680 n).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A113346.P13848782796915880772

/-! ## A113346.P7270908425833450321

`A123895(n)+A113355(A161680(n))`
-/

namespace A113346.P7270908425833450321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123895 n + A113355 (A161680 n).toNat

end

end A113346.P7270908425833450321

/-! ## A113346.P9913859433741866543

`A178334(n)+A113355(A161680(n))`
-/

namespace A113346.P9913859433741866543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A113355 (A161680 n).toNat

end

end A113346.P9913859433741866543

/-!
# A113347: Column 1 of triangle A113345, also equals column 0 of A113350^3.

The programs for A113347, there is no canonical definition to state claims against.
-/

/-! ## A113347.P11297622663024340780

`A113365(∑[n])`
-/

namespace A113347.P11297622663024340780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113365 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113347.P11297622663024340780

/-! ## A113347.P12271834041312987448

`record[A113365(n)]`
-/

namespace A113347.P12271834041312987448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113347.P12271834041312987448

/-! ## A113347.P7083991687326335171

`A113365(A000217(n))+char[10]`
-/

namespace A113347.P7083991687326335171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113365 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113347.P7083991687326335171

/-! ## A113347.P6260424930748055281

`A113365(C(n+1, 2))%A129803(n+1)`
-/

namespace A113347.P6260424930748055281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113365 (Nat.choose (n + 1) 2)) (A129803 (n + 1))

end

end A113347.P6260424930748055281

/-! ## A113347.P7362983032545470448

`A113365(n²-C(n, 2))%A257713(n+1)`
-/

namespace A113347.P7362983032545470448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113365 (n ^ 2 - Nat.choose n 2)) (A257713 (n + 1))

end

end A113347.P7362983032545470448

/-!
# A113348: Column 2 of triangle A113345, also equals column 0 of A113350^5.

The programs for A113348, there is no canonical definition to state claims against.
-/

/-! ## A113348.P14018124153609771787

`A113345(∑[n+2]+3)`
-/

namespace A113348.P14018124153609771787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113345 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113348.P14018124153609771787

/-! ## A113348.P5675198816327922723

`record[A113345(A183234(n+1))]`
-/

namespace A113348.P5675198816327922723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113345 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113348.P5675198816327922723

/-! ## A113348.P16389315018763664718

`record[lcm(A113345(n), A274537(n))]`
-/

namespace A113348.P16389315018763664718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113345 n) (A274537 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113348.P16389315018763664718

/-!
# A113349: Column 3 of triangle A113345, also equals column 0 of A113350^7.

The programs for A113349, there is no canonical definition to state claims against.
-/

/-! ## A113349.P1404719671461131704

`A113345(∑[n+3]+6)`
-/

namespace A113349.P1404719671461131704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113345 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A113349.P1404719671461131704

/-! ## A113349.P11463546358803930407

`and(-1, A113345(A152950(n+4)))`
-/

namespace A113349.P11463546358803930407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113345 (A152950 (n + 4)).toNat)

end

end A113349.P11463546358803930407

/-!
# A113350: Triangle Q, read by rows, such that Q^2 transforms column k of Q^2 into column k+1 of Q^2, so that column k of Q^2 equals column 0 of Q^(2*k+2), where Q^2 denotes the matrix square of Q.

The programs for A113350, there is no canonical definition to state claims against.
-/

/-! ## A113350.P5770977580193374064

`A113368(comp[∑[n]])`
-/

namespace A113350.P5770977580193374064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113368 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A113350.P5770977580193374064

/-! ## A113350.P5567681731240658171

`and(-1, A113368(A014132(n+1)))`
-/

namespace A113350.P5567681731240658171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113368 (A014132 (n + 1)).toNat)

end

end A113350.P5567681731240658171

/-! ## A113350.P18388724424815688367

`A113368(A014132(n+1))+A025439(n)`
-/

namespace A113350.P18388724424815688367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113368 (A014132 (n + 1)).toNat + A025439 n

end

end A113350.P18388724424815688367

/-! ## A113350.P12383188794394291844

`A113368(A014132(n+1))^A178334(n)`
-/

namespace A113350.P12383188794394291844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113368 (A014132 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A113350.P12383188794394291844

/-! ## A113350.P5885308143459180501

`A113368(A014132(n+1))^A178489(n)`
-/

namespace A113350.P5885308143459180501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113368 (A014132 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A113350.P5885308143459180501

/-!
# A113351: Column 1 of triangle A113350, also equals column 0 of A113340^4.

The programs for A113351, there is no canonical definition to state claims against.
-/

/-! ## A113351.P836524151987562070

`record[A113350(comp[∑[n]])]`
-/

namespace A113351.P836524151987562070
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113350 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113351.P836524151987562070

/-! ## A113351.P10883777957918373089

`A113350(∑[n+1]+1)`
-/

namespace A113351.P10883777957918373089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113350 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113351.P10883777957918373089

/-! ## A113351.P9469692030248648158

`A113368(∑[n+2]+3)`
-/

namespace A113351.P9469692030248648158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113368 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113351.P9469692030248648158

/-! ## A113351.P14028734935201915017

`record[A113368(comp[A000124(n)])]`
-/

namespace A113351.P14028734935201915017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113368 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113351.P14028734935201915017

/-!
# A113352: Column 2 of triangle A113350, also equals column 0 of A113340^6.

The programs for A113352, there is no canonical definition to state claims against.
-/

/-! ## A113352.P14169038433109015536

`A113350(∑[n+2]+3)`
-/

namespace A113352.P14169038433109015536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113350 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113352.P14169038433109015536

/-! ## A113352.P995350312565449647

`A113368(A167614(n+2))`
-/

namespace A113352.P995350312565449647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113368 (A167614 (n + 2)).toNat

end

end A113352.P995350312565449647

/-! ## A113352.P11999836894423483459

`A113368(A141214(n)+6)`
-/

namespace A113352.P11999836894423483459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113368 (A141214 n + 6).toNat

end

end A113352.P11999836894423483459

/-!
# A113353: Column 3 of triangle A113350, also equals column 0 of A113340^8.

The programs for A113353, there is no canonical definition to state claims against.
-/

/-! ## A113353.P14971646064878250965

`A113350(∑[n+3]+6)`
-/

namespace A113353.P14971646064878250965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113350 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A113353.P14971646064878250965

/-! ## A113353.P11148919656408286363

`A113368(A167487(n+3)-3)`
-/

namespace A113353.P11148919656408286363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113368 (A167487 (n + 3) - 3).toNat

end

end A113353.P11148919656408286363

/-!
# A113354: Column 4 of triangle A113350, also equals column 0 of A113340^10.

The programs for A113354, there is no canonical definition to state claims against.
-/

/-! ## A113354.P14882572902876413681

`A113350(∑[n+4]+10)`
-/

namespace A113354.P14882572902876413681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113350 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A113354.P14882572902876413681

/-!
# A113355: Triangle T, read by rows, equal to the matrix square of triangle A113350, where T transforms column k of T into column k+1 of T.

The programs for A113355, there is no canonical definition to state claims against.
-/

/-! ## A113355.P1290370845508331612

`A108285(A173621(n+2))`
-/

namespace A113355.P1290370845508331612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108285 (A173621 (n + 2)).toNat

end

end A113355.P1290370845508331612

/-! ## A113355.P12651840312975759911

`A384185(A008969(n+2))`
-/

namespace A113355.P12651840312975759911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384185 (A008969 (n + 2)).toNat

end

end A113355.P12651840312975759911

/-! ## A113355.P8927190983735367669

`A136470(n)*A200154(A308970(n+1))`
-/

namespace A113355.P8927190983735367669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136470 n * A200154 (A308970 (n + 1)).toNat

end

end A113355.P8927190983735367669

/-!
# A113356: Column 0 of triangle A113355, which is the matrix square of A113350.

The programs for A113356, there is no canonical definition to state claims against.
-/

/-! ## A113356.P14452430219056579110

`A113346(n+1)-1`
-/

namespace A113356.P14452430219056579110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113346 (n + 1) - 1

end

end A113356.P14452430219056579110

/-! ## A113356.P2725889098590293996

`∑[abs(Δ[A113346(n)])]`
-/

namespace A113356.P2725889098590293996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113356.P2725889098590293996

/-! ## A113356.P672991438560957595

`∑[A025439(n)+Δ[A113346(n)]]`
-/

namespace A113356.P672991438560957595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113356.P672991438560957595

/-! ## A113356.P17183520211139022134

`∑[Δ[A113346(n)]^A178489(n)]`
-/

namespace A113356.P17183520211139022134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113346 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A178489 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113356.P17183520211139022134

/-! ## A113356.P3278939252823559160

`∑[A000007(n+1)+Δ[A113346(n)]]`
-/

namespace A113356.P3278939252823559160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113346 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113356.P3278939252823559160

/-!
# A113357: Column 1 of triangle A113355, also equals column 0 of A113355^2.

The programs for A113357, there is no canonical definition to state claims against.
-/

/-! ## A113357.P8475261275651299574

`record[A113355(comp[∑[n]])]`
-/

namespace A113357.P8475261275651299574
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113357.P8475261275651299574

/-! ## A113357.P848019806333932791

`A113355(∑[n+1]+1)`
-/

namespace A113357.P848019806333932791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113357.P848019806333932791

/-! ## A113357.P17058234547516437821

`record[A103631(n)*A113355(n)]`
-/

namespace A113357.P17058234547516437821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A113355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113357.P17058234547516437821

/-! ## A113357.P13316198857508505636

`record[A110247(n)*A113355(n)]`
-/

namespace A113357.P13316198857508505636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110247 n * A113355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113357.P13316198857508505636

/-!
# A113358: Column 2 of triangle A113355, also equals column 0 of A113355^3.

The programs for A113358, there is no canonical definition to state claims against.
-/

/-! ## A113358.P14117228036802418818

`A113355(∑[n+2]+3)`
-/

namespace A113358.P14117228036802418818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113358.P14117228036802418818

/-! ## A113358.P3934337172739251743

`record[A113355(A183234(n+1))]`
-/

namespace A113358.P3934337172739251743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113358.P3934337172739251743

/-! ## A113358.P17498021520894727768

`record[A113355(n)*A159854(n)]`
-/

namespace A113358.P17498021520894727768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 n * A159854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113358.P17498021520894727768

/-!
# A113359: Column 3 of triangle A113355, also equals column 0 of A113355^4.

The programs for A113359, there is no canonical definition to state claims against.
-/

/-! ## A113359.P1496732170129975092

`A113355(C(n+4, 2)+3)`
-/

namespace A113359.P1496732170129975092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 (Nat.choose (n + 4) 2 + 3)

end

end A113359.P1496732170129975092

/-! ## A113359.P8308200465609394650

`A113355(∑[n+2]+7+n)`
-/

namespace A113359.P8308200465609394650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113355 (∑ j ∈ Finset.range (n + 1), f1 j + 7 + n)

end

end A113359.P8308200465609394650

/-!
# A113361: Column 1 of triangle A113360, which equals the matrix cube of triangle A113340.

The programs for A113361, there is no canonical definition to state claims against.
-/

/-! ## A113361.P6437914094831462922

`record[A113360(comp[∑[n]])]`
-/

namespace A113361.P6437914094831462922
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113361.P6437914094831462922

/-! ## A113361.P4040078161623336626

`A113360(∑[n+1]+1)`
-/

namespace A113361.P4040078161623336626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113361.P4040078161623336626

/-! ## A113361.P15945618093854811292

`record[A103631(n)*A113360(n)]`
-/

namespace A113361.P15945618093854811292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A113360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113361.P15945618093854811292

/-! ## A113361.P5880501864672102937

`record[A110247(n)*A113360(n)]`
-/

namespace A113361.P5880501864672102937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110247 n * A113360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113361.P5880501864672102937

/-!
# A113362: Column 2 of triangle A113360, also equals column 1 of A113340^5.

The programs for A113362, there is no canonical definition to state claims against.
-/

/-! ## A113362.P3930696936408993179

`A113360(∑[n+2]+3)`
-/

namespace A113362.P3930696936408993179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113362.P3930696936408993179

/-! ## A113362.P3247024201456964491

`record[A113360(A183234(n+1))]`
-/

namespace A113362.P3247024201456964491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113362.P3247024201456964491

/-! ## A113362.P13037624795818048984

`record[A113360(n)*A159854(n)]`
-/

namespace A113362.P13037624795818048984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 n * A159854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113362.P13037624795818048984

/-!
# A113363: Column 3 of triangle A113360, also equals column 1 of A113340^7.

The programs for A113363, there is no canonical definition to state claims against.
-/

/-! ## A113363.P12014953150799563549

`A113360(eq[9, (n-C(∑[char[∑[n]]], 2))²])`
-/

namespace A113363.P12014953150799563549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113363.P12014953150799563549

/-! ## A113363.P17577894186966896626

`A113360(A167614(n+2))`
-/

namespace A113363.P17577894186966896626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (A167614 (n + 2)).toNat

end

end A113363.P17577894186966896626

/-!
# A113364: Column 4 of triangle A113360, also equals column 1 of A113360^3.

The programs for A113364, there is no canonical definition to state claims against.
-/

/-! ## A113364.P3160916366414471993

`A113360(A026287(n+1))`
-/

namespace A113364.P3160916366414471993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113360 (A026287 (n + 1)).toNat

end

end A113364.P3160916366414471993

/-!
# A113366: Column 1 of triangle A113365, also equals column 1 of A113340^4.

The programs for A113366, there is no canonical definition to state claims against.
-/

/-! ## A113366.P8333858235292419514

`record[A113365(comp[∑[n]])]`
-/

namespace A113366.P8333858235292419514
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113365 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113366.P8333858235292419514

/-! ## A113366.P15543134283712622576

`A113365(∑[n+1]+1)`
-/

namespace A113366.P15543134283712622576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113365 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113366.P15543134283712622576

/-! ## A113366.P9926308804501494054

`record[A103631(n)*A113365(n)]`
-/

namespace A113366.P9926308804501494054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A113365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113366.P9926308804501494054

/-! ## A113366.P16629891420253127874

`record[A110247(n)*A113365(n)]`
-/

namespace A113366.P16629891420253127874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110247 n * A113365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113366.P16629891420253127874

/-!
# A113367: Column 2 of triangle A113365, also equals column 1 of A113340^6.

The programs for A113367, there is no canonical definition to state claims against.
-/

/-! ## A113367.P5838056542472589714

`A113365(∑[n+2]+3)`
-/

namespace A113367.P5838056542472589714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113365 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113367.P5838056542472589714

/-! ## A113367.P17384507394199806763

`record[A113365(A183234(n+1))]`
-/

namespace A113367.P17384507394199806763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113365 (A183234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113367.P17384507394199806763

/-! ## A113367.P9537660558533367833

`record[A113365(n)*A159854(n)]`
-/

namespace A113367.P9537660558533367833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113365 n * A159854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113367.P9537660558533367833

/-!
# A113368: Triangle, read by rows, given by the product Q^-1*P^2, where the triangular matrices involved are P = A113340 and Q = A113350.

The programs for A113368, there is no canonical definition to state claims against.
-/

/-! ## A113368.P7543057565108643981

`A117707(A307419(n)+A122538(n))`
-/

namespace A113368.P7543057565108643981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A307419 n + A122538 n).toNat

end

end A113368.P7543057565108643981

/-! ## A113368.P5175144501669850531

`A327036(A173050(n)+A145905(n))`
-/

namespace A113368.P5175144501669850531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A173050 n + A145905 n).toNat

end

end A113368.P5175144501669850531

/-! ## A113368.P11349679825375900359

`A215861(n)+A170980(A267836(n+1))`
-/

namespace A113368.P11349679825375900359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215861 n + A170980 (A267836 (n + 1)).toNat

end

end A113368.P11349679825375900359

/-! ## A113368.P2318166064883505027

`A357629(A137431(n+1)+1)`
-/

namespace A113368.P2318166064883505027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357629 (A137431 (n + 1) + 1).toNat

end

end A113368.P2318166064883505027

/-!
# A113369: Triangle, read by rows, given by the product Q^2*P^-1, where the triangular matrices involved are P = A113340 and Q = A113350.

The programs for A113369, there is no canonical definition to state claims against.
-/

/-! ## A113369.P15093918805609015326

`A113340(comp[∑[n]])`
-/

namespace A113369.P15093918805609015326
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A113369.P15093918805609015326

/-! ## A113369.P16115815271573358076

`and(-1, A113340(A014132(n+1)))`
-/

namespace A113369.P16115815271573358076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113340 (A014132 (n + 1)).toNat)

end

end A113369.P16115815271573358076

/-! ## A113369.P2084414987666728934

`A113340(A014132(n+1))+A025439(n)`
-/

namespace A113369.P2084414987666728934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113340 (A014132 (n + 1)).toNat + A025439 n

end

end A113369.P2084414987666728934

/-! ## A113369.P5060484874365210266

`A113340(A014132(n+1))^A178334(n)`
-/

namespace A113369.P5060484874365210266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113340 (A014132 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A113369.P5060484874365210266

/-! ## A113369.P12699609027755009794

`A113340(A014132(n+1))^A178489(n)`
-/

namespace A113369.P12699609027755009794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113340 (A014132 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A113369.P12699609027755009794

/-!
# A113370: Triangle P, read by rows, such that P^3 transforms column k of P into column k+1 of P, so that column k of P equals column 0 of P^(3*k+1), where P^3 denotes the matrix cube of P.

The programs for A113370, there is no canonical definition to state claims against.
-/

/-! ## A113370.P6409407594866818241

`A114150((2*n)%A007401(n+1))`
-/

namespace A113370.P6409407594866818241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114150 (Int.tmod (2 * n : ℤ) (A007401 (n + 1))).toNat

end

end A113370.P6409407594866818241

/-!
# A113371: Column 1 of triangle A113370, also equals column 0 of A113370^4.

The programs for A113371, there is no canonical definition to state claims against.
-/

/-! ## A113371.P14130626251310328829

`record[A113370(n)]`
-/

namespace A113371.P14130626251310328829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113371.P14130626251310328829

/-! ## A113371.P2048988163919777164

`A113370(∑[n+1]+1)`
-/

namespace A113371.P2048988163919777164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113371.P2048988163919777164

/-! ## A113371.P9717454590451426359

`and(-1, A113370(A134869(n+1)))`
-/

namespace A113371.P9717454590451426359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113370 (A134869 (n + 1)).toNat)

end

end A113371.P9717454590451426359

/-! ## A113371.P11165110631211026466

`lcm((-1)^n, A113370(A000124(n+1)))`
-/

namespace A113371.P11165110631211026466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A113370 (A000124 (n + 1)).toNat)

end

end A113371.P11165110631211026466

/-! ## A113371.P10687846434806056454

`A185036(n)+A113370(A134869(n+1))`
-/

namespace A113371.P10687846434806056454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n + A113370 (A134869 (n + 1)).toNat

end

end A113371.P10687846434806056454

/-!
# A113372: Column 2 of triangle A113370, also equals column 0 of A113370^7.

The programs for A113372, there is no canonical definition to state claims against.
-/

/-! ## A113372.P6132507769360200195

`A113370(∑[n+2]+3)`
-/

namespace A113372.P6132507769360200195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113372.P6132507769360200195

/-! ## A113372.P15001874046085679921

`record[A113370(comp[C(n, 2)]+1)]`
-/

namespace A113372.P15001874046085679921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113372.P15001874046085679921

/-! ## A113372.P2242954450695446256

`record[A113370(A080036(n))]`
-/

namespace A113372.P2242954450695446256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113372.P2242954450695446256

/-! ## A113372.P3045771366776794330

`record[A113370(∑[A113411(n)])]`
-/

namespace A113372.P3045771366776794330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113372.P3045771366776794330

/-!
# A113373: Column 3 of triangle A113370, also equals column 0 of A113370^10.

The programs for A113373, there is no canonical definition to state claims against.
-/

/-! ## A113373.P10047906002493095079

`A114150(∑[n+2]+3)`
-/

namespace A113373.P10047906002493095079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114150 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113373.P10047906002493095079

/-! ## A113373.P8783946717510699833

`A113370(∑[n+3]+6)`
-/

namespace A113373.P8783946717510699833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113370 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A113373.P8783946717510699833

/-!
# A113374: Triangle, read by rows, equal to the matrix square of A113370. Also given by the product: P^2 = Q*(R^-2)*Q^3, using triangular matrices P=A113370, Q=A113381 and R=A113389.

The programs for A113374, there is no canonical definition to state claims against.
-/

/-! ## A113374.P16517220435928193706

`A191841(A113370(n))+A113381(n)`
-/

namespace A113374.P16517220435928193706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191841 (A113370 n).toNat + A113381 n

end

end A113374.P16517220435928193706

/-! ## A113374.P6171006273028350247

`A191841(A113370(n))+A114155(A014132(n+1))`
-/

namespace A113374.P6171006273028350247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191841 (A113370 n).toNat + A114155 (A014132 (n + 1)).toNat

end

end A113374.P6171006273028350247

/-!
# A113375: Column 0 of triangle A113374, also equals column 0 of A113381.

The programs for A113375, there is no canonical definition to state claims against.
-/

/-! ## A113375.P4444559684949803948

`A113374(∑[n])`
-/

namespace A113375.P4444559684949803948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113375.P4444559684949803948

/-! ## A113375.P1558455666781321496

`A113381(∑[n])`
-/

namespace A113375.P1558455666781321496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113375.P1558455666781321496

/-! ## A113375.P2924432960277904237

`A113381(n*(n+1)/2)^floor(n^(1/5))`
-/

namespace A113375.P2924432960277904237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113381 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ : ℤ)

end

end A113375.P2924432960277904237

/-! ## A113375.P3752653299642774010

`record[A113374(A001971(n))]`
-/

namespace A113375.P3752653299642774010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113375.P3752653299642774010

/-! ## A113375.P10904107591162769919

`record[A113374(A091018(n))]`
-/

namespace A113375.P10904107591162769919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113375.P10904107591162769919

/-!
# A113376: Column 1 of triangle A113374, also equals column 0 of A113381^4.

The programs for A113376, there is no canonical definition to state claims against.
-/

/-! ## A113376.P12149010854269966334

`A114152(∑[n])`
-/

namespace A113376.P12149010854269966334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114152 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113376.P12149010854269966334

/-! ## A113376.P5000502963130641345

`record[A114152(n)]`
-/

namespace A113376.P5000502963130641345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113376.P5000502963130641345

/-! ## A113376.P8165275642500465797

`record[A113374(comp[∑[n]])]`
-/

namespace A113376.P8165275642500465797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113376.P8165275642500465797

/-! ## A113376.P15352126467679517536

`A113374(∑[n+1]+1)`
-/

namespace A113376.P15352126467679517536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113376.P15352126467679517536

/-!
# A113377: Column 2 of triangle A113374, also equals column 0 of A113381^7.

The programs for A113377, there is no canonical definition to state claims against.
-/

/-! ## A113377.P14246270523948747755

`record[A114152(comp[∑[n]])]`
-/

namespace A113377.P14246270523948747755
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114152 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113377.P14246270523948747755

/-! ## A113377.P4629687389263286374

`A114152(∑[n+1]+1)`
-/

namespace A113377.P4629687389263286374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114152 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113377.P4629687389263286374

/-! ## A113377.P2901317179112728365

`A113374(∑[n+2]+3)`
-/

namespace A113377.P2901317179112728365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113377.P2901317179112728365

/-!
# A113378: Triangle, read by rows, equal to the matrix cube of A113370.

The programs for A113378, there is no canonical definition to state claims against.
-/

/-! ## A113378.P11856788954132364679

`A178473(n)!*A113389(n)`
-/

namespace A113378.P11856788954132364679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A178473 n).toNat : ℤ) * A113389 n

end

end A113378.P11856788954132364679

/-! ## A113378.P4814740679444084272

`A113389(A221804(n+1)+n)`
-/

namespace A113378.P4814740679444084272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (A221804 (n + 1) + (n : ℤ)).toNat

end

end A113378.P4814740679444084272

/-! ## A113378.P17066477616003346089

`A113389(or(n, A221341(n+1)))`
-/

namespace A113378.P17066477616003346089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (Int.lor (n : ℤ) (A221341 (n + 1))).toNat

end

end A113378.P17066477616003346089

/-!
# A113379: Column 0 of triangle A113378, also equals column 0 of A113389.

The programs for A113379, there is no canonical definition to state claims against.
-/

/-! ## A113379.P16962701941387239708

`A113378(∑[n])`
-/

namespace A113379.P16962701941387239708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113378 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113379.P16962701941387239708

/-! ## A113379.P5071950630684388640

`A113389(∑[n])`
-/

namespace A113379.P5071950630684388640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113379.P5071950630684388640

/-! ## A113379.P7520422551902722152

`record[A113389(n)]`
-/

namespace A113379.P7520422551902722152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113379.P7520422551902722152

/-! ## A113379.P13915124927358307626

`and(-1, A113389(n*(n+1)/2))`
-/

namespace A113379.P13915124927358307626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113389 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A113379.P13915124927358307626

/-! ## A113379.P13812925310123092867

`gcd(floor(1/(n+1)), A113378(n*(n+1)/2))`
-/

namespace A113379.P13812925310123092867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A113378 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A113379.P13812925310123092867

/-!
# A113380: Column 1 of triangle A113378, also equals column 0 of A113389^4.

The programs for A113380, there is no canonical definition to state claims against.
-/

/-! ## A113380.P4750374461921270508

`record[A113378(comp[∑[n]])]`
-/

namespace A113380.P4750374461921270508
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113378 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113380.P4750374461921270508

/-! ## A113380.P1180953424120466095

`A113378(∑[n+1]+1)`
-/

namespace A113380.P1180953424120466095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113378 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113380.P1180953424120466095

/-! ## A113380.P10406526101812045599

`record[A072233(n)*A113378(n)]`
-/

namespace A113380.P10406526101812045599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A113378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113380.P10406526101812045599

/-! ## A113380.P5822712106021380059

`record[A103631(n)*A113378(n)]`
-/

namespace A113380.P5822712106021380059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A113378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113380.P5822712106021380059

/-!
# A113381: Triangle Q, read by rows, such that Q^3 transforms column k of Q^2 into column k+1 of Q^2, so that column k of Q^2 equals column 0 of Q^(3*k+2), where Q^3 denotes the matrix cube of Q.

The programs for A113381, there is no canonical definition to state claims against.
-/

/-! ## A113381.P121855603071289493

`A114155(comp[∑[n]])`
-/

namespace A113381.P121855603071289493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114155 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A113381.P121855603071289493

/-! ## A113381.P10012682497172158057

`abs(A114155(comp[C(n, 2)]))`
-/

namespace A113381.P10012682497172158057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114155 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A113381.P10012682497172158057

/-! ## A113381.P5404455279644394988

`abs(A114155(∑[A035214(n)]))`
-/

namespace A113381.P5404455279644394988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A113381.P5404455279644394988

/-! ## A113381.P4686566382313980185

`abs(A114155(comp[A000217(n)]))`
-/

namespace A113381.P4686566382313980185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114155 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A113381.P4686566382313980185

/-! ## A113381.P7453273451596894067

`abs(A114155(comp[A057944(n)]))`
-/

namespace A113381.P7453273451596894067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114155 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A113381.P7453273451596894067

/-!
# A113382: Column 1 of triangle A113381, also equals column 0 of A113370^5.

The programs for A113382, there is no canonical definition to state claims against.
-/

/-! ## A113382.P17700581549876047257

`A114154(∑[n])`
-/

namespace A113382.P17700581549876047257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113382.P17700581549876047257

/-! ## A113382.P14100463574744478040

`record[A114154(n)]`
-/

namespace A113382.P14100463574744478040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113382.P14100463574744478040

/-! ## A113382.P12104076126950740930

`record[A113381(comp[∑[n]])]`
-/

namespace A113382.P12104076126950740930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113382.P12104076126950740930

/-! ## A113382.P9417374794731029433

`A113381(∑[n+1]+1)`
-/

namespace A113382.P9417374794731029433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113382.P9417374794731029433

/-!
# A113383: Column 2 of triangle A113381, also equals column 0 of A113370^8.

The programs for A113383, there is no canonical definition to state claims against.
-/

/-! ## A113383.P9397855711498947890

`record[A114154(comp[∑[n]])]`
-/

namespace A113383.P9397855711498947890
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114154 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113383.P9397855711498947890

/-! ## A113383.P7848769125533303113

`A114154(∑[n+1]+1)`
-/

namespace A113383.P7848769125533303113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114154 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113383.P7848769125533303113

/-! ## A113383.P3284091761818496879

`A113381(∑[n+2]+3)`
-/

namespace A113383.P3284091761818496879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113381 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113383.P3284091761818496879

/-!
# A113384: Triangle, read by rows, equal to the matrix square of A113381. Also given by: Q^2 = R*P = R*Q*(R^-2)*Q*R = P*Q*(P^-2)*Q*P, using triangular matrices P=A113370, Q=A113381 and R=A113389.

The programs for A113384, there is no canonical definition to state claims against.
-/

/-! ## A113384.P17429259192297972027

`A262616(n)+A005843(A338144(n+1))`
-/

namespace A113384.P17429259192297972027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n + A005843 (A338144 (n + 1)).toNat

end

end A113384.P17429259192297972027

/-! ## A113384.P16775103316618492263

`A262616(n)+A005843(A338148(n+1))`
-/

namespace A113384.P16775103316618492263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n + A005843 (A338148 (n + 1)).toNat

end

end A113384.P16775103316618492263

/-! ## A113384.P4715700673413767613

`A352515(A067176(n))+A134283(A098844(n+1))`
-/

namespace A113384.P4715700673413767613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (A067176 n).toNat + A134283 (A098844 (n + 1)).toNat

end

end A113384.P4715700673413767613

/-!
# A113385: Column 0 of triangle A113384.

The programs for A113385, there is no canonical definition to state claims against.
-/

/-! ## A113385.P15936391112941605466

`A113384(∑[n])`
-/

namespace A113385.P15936391112941605466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113385.P15936391112941605466

/-! ## A113385.P13214643864663307289

`record[A113384(round(n²/8))]`
-/

namespace A113385.P13214643864663307289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113384 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113385.P13214643864663307289

/-! ## A113385.P10125808332744387684

`and(-1, A113384(C(n+1, 2)))`
-/

namespace A113385.P10125808332744387684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113384 (Nat.choose (n + 1) 2))

end

end A113385.P10125808332744387684

/-! ## A113385.P3875600973826523284

`and(-1, A113384((n²+n)/2))`
-/

namespace A113385.P3875600973826523284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113384 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A113385.P3875600973826523284

/-! ## A113385.P16915469436748071235

`record[A010054(n)*A113384(n)]`
-/

namespace A113385.P16915469436748071235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A113384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113385.P16915469436748071235

/-!
# A113386: Column 1 of triangle A113384, also equals column 0 of A113381^5.

The programs for A113386, there is no canonical definition to state claims against.
-/

/-! ## A113386.P3323096877312456131

`record[A113384(comp[∑[n]])]`
-/

namespace A113386.P3323096877312456131
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113384 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113386.P3323096877312456131

/-! ## A113386.P16499803650583677654

`A113384(∑[n+1]+1)`
-/

namespace A113386.P16499803650583677654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113384 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113386.P16499803650583677654

/-! ## A113386.P18085349200764071016

`record[A072233(n)*A113384(n)]`
-/

namespace A113386.P18085349200764071016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A113384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113386.P18085349200764071016

/-! ## A113386.P5447095503423592005

`record[A103631(n)*A113384(n)]`
-/

namespace A113386.P5447095503423592005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A113384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113386.P5447095503423592005

/-!
# A113387: Triangle, read by rows, equal to the matrix cube of A113381.

The programs for A113387, there is no canonical definition to state claims against.
-/

/-! ## A113387.P13227861414214481084

`A113392(n)+A006821(A113370(n))`
-/

namespace A113387.P13227861414214481084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113392 n + A006821 (A113370 n).toNat

end

end A113387.P13227861414214481084

/-! ## A113387.P10662935818379264543

`A113392(n)+A084657(A056941(n))`
-/

namespace A113387.P10662935818379264543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113392 n + A084657 (A056941 n).toNat

end

end A113387.P10662935818379264543

/-!
# A113388: Column 0 of triangle A113387, also equals column 0 of A113389^2.

The programs for A113388, there is no canonical definition to state claims against.
-/

/-! ## A113388.P10181079603661112596

`A113387(∑[n])`
-/

namespace A113388.P10181079603661112596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113387 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113388.P10181079603661112596

/-! ## A113388.P13876965481207411913

`A113392(∑[n])`
-/

namespace A113388.P13876965481207411913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113392 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113388.P13876965481207411913

/-! ## A113388.P2853500171992346403

`record[A113387(n)]`
-/

namespace A113388.P2853500171992346403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113388.P2853500171992346403

/-! ## A113388.P3024086258540395927

`record[A113392(n)]`
-/

namespace A113388.P3024086258540395927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113388.P3024086258540395927

/-! ## A113388.P7732342656589556244

`lcm(val(n+1, 2)%2+1, A113392(n*(n+1)/2))`
-/

namespace A113388.P7732342656589556244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((SequenceMachineLib.valuation (n + 1) 2 % 2 + 1 : ℕ) : ℤ) (A113392 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat)

end

end A113388.P7732342656589556244

/-!
# A113389: Triangle R, read by rows, such that R^3 transforms column k of R^3 into column k+1 of R^3, so that column k of R^3 equals column 0 of R^(3*k+3), where R^3 denotes the matrix cube of R.

The programs for A113389, there is no canonical definition to state claims against.
-/

/-! ## A113389.P12403051567007989

`A114151(comp[∑[n]])`
-/

namespace A113389.P12403051567007989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114151 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A113389.P12403051567007989

/-! ## A113389.P1661770077476484557

`and(-1, A114151(A014132(n+1)))`
-/

namespace A113389.P1661770077476484557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A114151 (A014132 (n + 1)).toNat)

end

end A113389.P1661770077476484557

/-! ## A113389.P16269543181041119805

`A114151(A014132(n+1))+A025439(n)`
-/

namespace A113389.P16269543181041119805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114151 (A014132 (n + 1)).toNat + A025439 n

end

end A113389.P16269543181041119805

/-! ## A113389.P2154148123748260801

`A185246(n)+A114151(A014132(n+1))`
-/

namespace A113389.P2154148123748260801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A114151 (A014132 (n + 1)).toNat

end

end A113389.P2154148123748260801

/-! ## A113389.P2214046293964689656

`A016266(n)*A114151(A014132(n+1))`
-/

namespace A113389.P2214046293964689656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A114151 (A014132 (n + 1)).toNat

end

end A113389.P2214046293964689656

/-!
# A113390: Column 1 of triangle A113389, also equals column 0 of A113370^6.

The programs for A113390, there is no canonical definition to state claims against.
-/

/-! ## A113390.P12331350355768526559

`record[A113389(comp[∑[n]])]`
-/

namespace A113390.P12331350355768526559
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113390.P12331350355768526559

/-! ## A113390.P14373454991256965110

`A113389(∑[n+1]+1)`
-/

namespace A113390.P14373454991256965110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113390.P14373454991256965110

/-! ## A113390.P9560947576218807871

`record[A072233(n)*A113389(n)]`
-/

namespace A113390.P9560947576218807871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n * A113389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113390.P9560947576218807871

/-! ## A113390.P2629993241265612721

`record[A103631(n)*A113389(n)]`
-/

namespace A113390.P2629993241265612721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A113389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113390.P2629993241265612721

/-!
# A113391: Column 2 of triangle A113389, also equals column 0 of A113370^9.

The programs for A113391, there is no canonical definition to state claims against.
-/

/-! ## A113391.P18318204683096780063

`A113389(∑[n+2]+3)`
-/

namespace A113391.P18318204683096780063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113391.P18318204683096780063

/-! ## A113391.P400151701631472102

`record[A113389(n)*A386585(n)]`
-/

namespace A113391.P400151701631472102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 n * A386585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113391.P400151701631472102

/-! ## A113391.P10388443838040119098

`A016266(n)*A113389(A152948(n+4))`
-/

namespace A113391.P10388443838040119098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A113389 (A152948 (n + 4)).toNat

end

end A113391.P10388443838040119098

/-!
# A113392: Triangle, read by rows, equal to the matrix square of triangle A113389. Also given by the matrix product: R^2 = Q^3*(P^-2)*Q, using triangular matrices P=A113370, Q=A113381 and R=A113389.

The programs for A113392, there is no canonical definition to state claims against.
-/

/-! ## A113392.P6591751280959099620

`A114153(comp[∑[n]])`
-/

namespace A113392.P6591751280959099620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114153 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A113392.P6591751280959099620

/-! ## A113392.P18296928817059241987

`and(-1, A114153(A014132(n+1)))`
-/

namespace A113392.P18296928817059241987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A114153 (A014132 (n + 1)).toNat)

end

end A113392.P18296928817059241987

/-! ## A113392.P18182687642243733744

`A114153(∑[A035214(n)])+A025439(n)`
-/

namespace A113392.P18182687642243733744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114153 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A025439 n

end

end A113392.P18182687642243733744

/-! ## A113392.P11269658475890493567

`A114153(A014132(n+1))+A025439(n)`
-/

namespace A113392.P11269658475890493567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114153 (A014132 (n + 1)).toNat + A025439 n

end

end A113392.P11269658475890493567

/-! ## A113392.P14162272484409224202

`A185246(n)+A114153(A014132(n+1))`
-/

namespace A113392.P14162272484409224202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185246 n + A114153 (A014132 (n + 1)).toNat

end

end A113392.P14162272484409224202

/-!
# A113393: Column 1 of triangle A113392, also equals column 0 of A113381^6.

The programs for A113393, there is no canonical definition to state claims against.
-/

/-! ## A113393.P3674697308111918186

`A113392(∑[n+1]+1)`
-/

namespace A113393.P3674697308111918186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113392 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113393.P3674697308111918186

/-! ## A113393.P3943661603695623047

`A114153(A000217(n+3)-A280593(n+1))`
-/

namespace A113393.P3943661603695623047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114153 (A000217 (n + 3) - A280593 (n + 1)).toNat

end

end A113393.P3943661603695623047

/-!
# A113395: Column 0 of triangle A113394, which equals the matrix cube of A113389.

The programs for A113395, there is no canonical definition to state claims against.
-/

/-! ## A113395.P5494152320628334831

`A113379(n+1)-A113375(n+1)`
-/

namespace A113395.P5494152320628334831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113379 (n + 1) - A113375 (n + 1)

end

end A113395.P5494152320628334831

/-! ## A113395.P7799763782023958501

`A113394(∑[n])`
-/

namespace A113395.P7799763782023958501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113395.P7799763782023958501

/-! ## A113395.P6671912346820270542

`record[A113394(n)]`
-/

namespace A113395.P6671912346820270542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113395.P6671912346820270542

/-! ## A113395.P16244993852418207694

`and(-1, A113394(A000217(n)))`
-/

namespace A113395.P16244993852418207694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A113394 (A000217 n).toNat)

end

end A113395.P16244993852418207694

/-! ## A113395.P12771896409124755409

`A113394(A000217(n))+A011729(n)`
-/

namespace A113395.P12771896409124755409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113394 (A000217 n).toNat + A011729 n

end

end A113395.P12771896409124755409

/-!
# A113396: a(n) = -prime(n)^2 (mod prime(n+1)).

The programs for A113396, the canonical program `A113396.P8242604359773002746` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113396 has offset 1).

The definition of A113396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113396.P14550059450749139968

`A065091(n+1)-A167770(n+1)`
-/

namespace A113396.P14550059450749139968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A167770 (n + 1)

end

end A113396.P14550059450749139968

namespace A113396

/-- `A065091(n+1)-A167770(n+1)` -/
def P14550059450749139968.Spec : Prop :=
  ∀ n, P14550059450749139968.a n = A113396 (n + 1)

end A113396

/-! ## A113396.P8242604359773002746

`A069482(n+1)%A065091(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113396

/-- `A069482(n+1)%A065091(n+1)` -/
def P8242604359773002746.Spec : Prop :=
  ∀ n, P8242604359773002746.a n = A113396 (n + 1)

theorem P8242604359773002746.correct : P8242604359773002746.Spec := by
  intro n
  simp only [A113396, Nat.add_sub_cancel]

end A113396

/-! ## A113396.P11541280407794289168

`A291463(n+1)%A065091(n+1)`
-/

namespace A113396.P11541280407794289168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291463 (n + 1)) (A065091 (n + 1))

end

end A113396.P11541280407794289168

namespace A113396

/-- `A291463(n+1)%A065091(n+1)` -/
def P11541280407794289168.Spec : Prop :=
  ∀ n, P11541280407794289168.a n = A113396 (n + 1)

end A113396

/-! ## A113396.P13236803356496626796

`A379207(n+1)%A065091(n+1)`
-/

namespace A113396.P13236803356496626796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379207 (n + 1)) (A065091 (n + 1))

end

end A113396.P13236803356496626796

namespace A113396

/-- `A379207(n+1)%A065091(n+1)` -/
def P13236803356496626796.Spec : Prop :=
  ∀ n, P13236803356496626796.a n = A113396 (n + 1)

end A113396

/-! ## A113396.P1500599838700234246

`A000040(n+2)-A167770(n+1)`
-/

namespace A113396.P1500599838700234246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A167770 (n + 1)

end

end A113396.P1500599838700234246

namespace A113396

/-- `A000040(n+2)-A167770(n+1)` -/
def P1500599838700234246.Spec : Prop :=
  ∀ n, P1500599838700234246.a n = A113396 (n + 1)

end A113396

/-! ## A113396.P13445476880564825799

`Δ[A001248(n+1)]%A065091(n+1)`
-/

namespace A113396.P13445476880564825799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A065091 (n + 1))

end

end A113396.P13445476880564825799

namespace A113396

/-- `Δ[A001248(n+1)]%A065091(n+1)` -/
def P13445476880564825799.Spec : Prop :=
  ∀ n, P13445476880564825799.a n = A113396 (n + 1)

end A113396

/-! ## A113396.P14959938380260668077

`Δ[(A006093(n+1)+1)²]%record[A093074(n+2)]`
-/

namespace A113396.P14959938380260668077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

end

end A113396.P14959938380260668077

namespace A113396

/-- `Δ[(A006093(n+1)+1)²]%record[A093074(n+2)]` -/
def P14959938380260668077.Spec : Prop :=
  ∀ n, P14959938380260668077.a n = A113396 (n + 1)

end A113396

/-! ## A113396.P6546558176340728627

`A392865(A291463(n+1))`
-/

namespace A113396.P6546558176340728627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (A291463 (n + 1)).toNat

end

end A113396.P6546558176340728627

namespace A113396

/-- `A392865(A291463(n+1))` -/
def P6546558176340728627.Spec : Prop :=
  ∀ n, P6546558176340728627.a n = A113396 (n + 1)

end A113396

/-! ## A113396.P8314595624820539258

`A069482(n+1)-A000040(n+2)*A113397(n+1)`
-/

namespace A113396.P8314595624820539258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (n + 1) - A000040 (n + 2) * A113397 (n + 1)

end

end A113396.P8314595624820539258

namespace A113396

/-- `A069482(n+1)-A000040(n+2)*A113397(n+1)` -/
def P8314595624820539258.Spec : Prop :=
  ∀ n, P8314595624820539258.a n = A113396 (n + 1)

end A113396

/-!
# A113397: What are the values of k in the term Prime(n+1)^2-Prime(n)^2 = a+k*(Prime(n+1)) if "a" is element of {0,1,...,Prime(n+1)-1}.

The programs for A113397, there is no canonical definition to state claims against.
-/

/-! ## A113397.P17536704470607697387

`floor(A069482(n+1)/A065091(n+1))`
-/

namespace A113397.P17536704470607697387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069482 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)⌋

end

end A113397.P17536704470607697387

/-! ## A113397.P6811931173841437816

`floor(A069482(n+1)/A000040(n+2))`
-/

namespace A113397.P6811931173841437816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069482 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A113397.P6811931173841437816

/-! ## A113397.P2228297358645893878

`floor(A069482(n+1)/A216883(n+2))`
-/

namespace A113397.P2228297358645893878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069482 (n + 1) : ℚ) / (A216883 (n + 2) : ℚ)⌋

end

end A113397.P2228297358645893878

/-! ## A113397.P18003201282869931657

`floor(Δ[A001248(n+1)]/A000040(n+2))`
-/

namespace A113397.P18003201282869931657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A113397.P18003201282869931657

/-! ## A113397.P7193334383461700074

`floor(Δ[A049001(n+1)]/A000040(n+2))`
-/

namespace A113397.P7193334383461700074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A113397.P7193334383461700074

/-! ## A113397.P7268682966624365761

`floor(Δ[A066872(n+1)]/A000040(n+2))`
-/

namespace A113397.P7268682966624365761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A113397.P7268682966624365761

/-! ## A113397.P3314902344413924456

`floor(Δ[A084920(n+1)]/A000040(n+2))`
-/

namespace A113397.P3314902344413924456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A113397.P3314902344413924456

/-! ## A113397.P1244264386228179527

`floor(Δ[A138693(n+1)]/A000040(n+2))`
-/

namespace A113397.P1244264386228179527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A113397.P1244264386228179527

/-! ## A113397.P13354421586108364779

`floor(Δ[A182200(n+1)]/A000040(n+2))`
-/

namespace A113397.P13354421586108364779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A113397.P13354421586108364779

/-!
# A113398: How many times did the value of k appear at the previous primes including the n-th one? (Prime(n+1))^2-(Prime(n))^2 = a+k*(Prime(n+1)) if a is element of {0,1,...,Prime(n+1)-1}.

The programs for A113398, there is no canonical definition to state claims against.
-/

/-! ## A113398.P6273759845589367064

`A184318(n+1)*A299483(A077168(n))`
-/

namespace A113398.P6273759845589367064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (n + 1) * A299483 (A077168 n).toNat

end

end A113398.P6273759845589367064

/-! ## A113398.P10452845567259354711

`A299483(n+1)*A309400(A059344(n))`
-/

namespace A113398.P10452845567259354711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299483 (n + 1) * A309400 (A059344 n).toNat

end

end A113398.P10452845567259354711

