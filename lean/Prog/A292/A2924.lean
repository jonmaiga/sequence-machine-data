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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B007.C001
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
import Seq.Opaque.C025

/-!
# A292400: p-INVERT of (1,2,2,2,2,2,2,...) (A040000), where p(S) = (1 - S)^2.

The programs for A292400, the canonical program `A292400.P8799163975020748265` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292400 has offset 0).

The definition of A292400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292400.P14294910389540087600

`A000129(n+2)+2*A006645(n+1)`
-/

namespace A292400.P14294910389540087600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) + 2 * A006645 (n + 1)

end

end A292400.P14294910389540087600

namespace A292400

/-- `A000129(n+2)+2*A006645(n+1)` -/
def P14294910389540087600.Spec : Prop :=
  ∀ n, P14294910389540087600.a n = A292400 n

end A292400

/-! ## A292400.P8799163975020748265

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=7, a(2)=20, a(3)=57`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292400

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P8799163975020748265.Spec : Prop :=
  ∀ n, P8799163975020748265.a n = A292400 n

theorem P8799163975020748265.correct : P8799163975020748265.Spec := by
  intro n
  simp only [A292400]

end A292400

/-! ## A292400.P9489145854370444293

`A119915(n+1)+A078057(n)`
-/

namespace A292400.P9489145854370444293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) + A078057 n

end

end A292400.P9489145854370444293

namespace A292400

/-- `A119915(n+1)+A078057(n)` -/
def P9489145854370444293.Spec : Prop :=
  ∀ n, P9489145854370444293.a n = A292400 n

end A292400

/-! ## A292400.P8179286475648770165

`A000129(n)+2*A054447(n)`
-/

namespace A292400.P8179286475648770165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + 2 * A054447 n

end

end A292400.P8179286475648770165

namespace A292400

/-- `A000129(n)+2*A054447(n)` -/
def P8179286475648770165.Spec : Prop :=
  ∀ n, P8179286475648770165.a n = A292400 n

end A292400

/-! ## A292400.P5798254045493889788

`A119915(n+1)+A001333(n+1)`
-/

namespace A292400.P5798254045493889788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) + A001333 (n + 1)

end

end A292400.P5798254045493889788

namespace A292400

/-- `A119915(n+1)+A001333(n+1)` -/
def P5798254045493889788.Spec : Prop :=
  ∀ n, P5798254045493889788.a n = A292400 n

end A292400

/-! ## A292400.P14532059434885391582

`A119915(n+1)+A082766(2*(n+1))`
-/

namespace A292400.P14532059434885391582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 (n + 1) + A082766 (2 * (n + 1))

end

end A292400.P14532059434885391582

namespace A292400

/-- `A119915(n+1)+A082766(2*(n+1))` -/
def P14532059434885391582.Spec : Prop :=
  ∀ n, P14532059434885391582.a n = A292400 n

end A292400

/-! ## A292400.P18376181932224702753

`A152113(2*(n+1))+A119915(n+1)`
-/

namespace A292400.P18376181932224702753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (2 * (n + 1)) + A119915 (n + 1)

end

end A292400.P18376181932224702753

namespace A292400

/-- `A152113(2*(n+1))+A119915(n+1)` -/
def P18376181932224702753.Spec : Prop :=
  ∀ n, P18376181932224702753.a n = A292400 n

end A292400

/-! ## A292400.P9546756168620412987

`A006645(n+1)+A292327(n)+A000129(n)`
-/

namespace A292400.P9546756168620412987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1) + (A292327 n + A000129 n)

end

end A292400.P9546756168620412987

namespace A292400

/-- `A006645(n+1)+A292327(n)+A000129(n)` -/
def P9546756168620412987.Spec : Prop :=
  ∀ n, P9546756168620412987.a n = A292400 n

end A292400

/-! ## A292400.P3071818264000804971

`A000129(n+1)+A119915(n+1)+A000129(n)`
-/

namespace A292400.P3071818264000804971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A119915 (n + 1) + A000129 n)

end

end A292400.P3071818264000804971

namespace A292400

/-- `A000129(n+1)+A119915(n+1)+A000129(n)` -/
def P3071818264000804971.Spec : Prop :=
  ∀ n, P3071818264000804971.a n = A292400 n

end A292400

/-! ## A292400.P3324673646726045726

`Δ[A026937(n)]`
-/

namespace A292400.P3324673646726045726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292400.P3324673646726045726

namespace A292400

/-- `Δ[A026937(n)]` -/
def P3324673646726045726.Spec : Prop :=
  ∀ n, P3324673646726045726.a n = A292400 n

end A292400

/-! ## A292400.P2770331908171797476

`Δ[Δ[A006645(n+1)]]`
-/

namespace A292400.P2770331908171797476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006645 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292400.P2770331908171797476

namespace A292400

/-- `Δ[Δ[A006645(n+1)]]` -/
def P2770331908171797476.Spec : Prop :=
  ∀ n, P2770331908171797476.a n = A292400 n

end A292400

/-! ## A292400.P4647153978674008358

`Δ[(n+2)/2*∑[A001333(n)]]`
-/

namespace A292400.P4647153978674008358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292400.P4647153978674008358

namespace A292400

/-- `Δ[(n+2)/2*∑[A001333(n)]]` -/
def P4647153978674008358.Spec : Prop :=
  ∀ n, P4647153978674008358.a n = (A292400 n : ℚ)

end A292400

/-! ## A292400.P7462840287585003888

`Δ[(n+2)/2*A000129(n+1)]`
-/

namespace A292400.P7462840287585003888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A000129 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292400.P7462840287585003888

namespace A292400

/-- `Δ[(n+2)/2*A000129(n+1)]` -/
def P7462840287585003888.Spec : Prop :=
  ∀ n, P7462840287585003888.a n = (A292400 n : ℚ)

end A292400

/-! ## A292400.P1159073050132591337

`A026937(n+1)-A026937(n)`
-/

namespace A292400.P1159073050132591337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 (n + 1) - A026937 n

end

end A292400.P1159073050132591337

namespace A292400

/-- `A026937(n+1)-A026937(n)` -/
def P1159073050132591337.Spec : Prop :=
  ∀ n, P1159073050132591337.a n = A292400 n

end A292400

/-! ## A292400.P12816542449524766199

`A002203(n+1)+A054459(n)-A088210(n)`
-/

namespace A292400.P12816542449524766199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) + (A054459 n - A088210 n)

end

end A292400.P12816542449524766199

namespace A292400

/-- `A002203(n+1)+A054459(n)-A088210(n)` -/
def P12816542449524766199.Spec : Prop :=
  ∀ n, P12816542449524766199.a n = A292400 n

end A292400

/-! ## A292400.P13998186407979472732

`A001333(n+1)+A364553(n+1)-A364553(n)`
-/

namespace A292400.P13998186407979472732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) + (A364553 (n + 1) - A364553 n)

end

end A292400.P13998186407979472732

namespace A292400

/-- `A001333(n+1)+A364553(n+1)-A364553(n)` -/
def P13998186407979472732.Spec : Prop :=
  ∀ n, P13998186407979472732.a n = A292400 n

end A292400

/-! ## A292400.P18193363509721130510

`A210636(A000217(n+1))+A119915(n+1)`
-/

namespace A292400.P18193363509721130510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210636 (A000217 (n + 1)).toNat + A119915 (n + 1)

end

end A292400.P18193363509721130510

namespace A292400

/-- `A210636(A000217(n+1))+A119915(n+1)` -/
def P18193363509721130510.Spec : Prop :=
  ∀ n, P18193363509721130510.a n = A292400 n

end A292400

/-! ## A292400.P3806406869128059623

`A210558(∑[n+2])`
-/

namespace A292400.P3806406869128059623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210558 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292400.P3806406869128059623

namespace A292400

/-- `A210558(∑[n+2])` -/
def P3806406869128059623.Spec : Prop :=
  ∀ n, P3806406869128059623.a n = A292400 n

end A292400

/-!
# A292401: p-INVERT of (1,0,2,0,2,0,2,0,2,0,...), where p(S) = (1 - S)^2.

The programs for A292401, the canonical program `A292401.P6172847511973519015` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292401 has offset 0).

The definition of A292401 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073778, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292401.P6172847511973519015

`A001590(n+2)+2*A073778(n+4)-2*A073778(n+3)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A292401

/-- `A001590(n+2)+2*A073778(n+4)-2*A073778(n+3)` -/
def P6172847511973519015.Spec : Prop :=
  ∀ n, P6172847511973519015.a n = A292401 n

theorem P6172847511973519015.correct : P6172847511973519015.Spec := by
  intro n
  simp only [A292401]

end A292401

/-! ## A292401.P3102714978926388974

`A286636(A347761(n))+n`
-/

namespace A292401.P3102714978926388974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286636 (A347761 n).toNat + (n : ℤ)

end

end A292401.P3102714978926388974

namespace A292401

/-- `A286636(A347761(n))+n` -/
def P3102714978926388974.Spec : Prop :=
  ∀ n, P3102714978926388974.a n = A292401 n

end A292401

/-! ## A292401.P11572765729131481600

`∑[A307531(A234312(3*n))]+n+1`
-/

namespace A292401.P11572765729131481600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A234312 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A292401.P11572765729131481600

namespace A292401

/-- `∑[A307531(A234312(3*n))]+n+1` -/
def P11572765729131481600.Spec : Prop :=
  ∀ n, P11572765729131481600.a n = A292401 n

end A292401

/-! ## A292401.P13569460180901720117

`A086161(n)+A000006(A055099(n))`
-/

namespace A292401.P13569460180901720117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n + A000006 (A055099 n).toNat

end

end A292401.P13569460180901720117

namespace A292401

/-- `A086161(n)+A000006(A055099(n))` -/
def P13569460180901720117.Spec : Prop :=
  ∀ n, P13569460180901720117.a n = A292401 n

end A292401

/-!
# A292402: p-INVERT of (1,0,0,1,0,0,0,0,0,0,...), where p(S) = 1 - S^2.

The programs for A292402, the canonical program `A292402.P15744072548866392012` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292402 has offset 0).

The definition of A292402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292402.P15744072548866392012

`a(n-2)+2*a(n-5)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=2, a(5)=1, a(6)=4, a(7)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292402

/-- `a(n-2)+2*a(n-5)+a(n-8)` -/
def P15744072548866392012.Spec : Prop :=
  ∀ n, (P15744072548866392012.a n : ℤ) = A292402 n

theorem P15744072548866392012.correct : P15744072548866392012.Spec := by
  intro n
  simp only [A292402]

end A292402

/-!
# A292403: p-INVERT of (1,0,0,0,0,1,0,0,0,0,0,0,...), where p(S) = 1 - S^2.

The programs for A292403, there is no canonical definition to state claims against.
-/

/-! ## A292403.P10655110023836077322

`and(n-4, A325677(C(n, floor(n/5))))`
-/

namespace A292403.P10655110023836077322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 4) (A325677 (Nat.choose n ⌊(n : ℚ) / 5⌋.toNat))

end

end A292403.P10655110023836077322

/-! ## A292403.P7675167634818109605

`A001687(n)*A191254(A005010(n))`
-/

namespace A292403.P7675167634818109605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 n * A191254 (A005010 n).toNat

end

end A292403.P7675167634818109605

/-! ## A292403.P46292382327152154

`A000034(A280412(n))*A001687(n)`
-/

namespace A292403.P46292382327152154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A280412 n).toNat * A001687 n

end

end A292403.P46292382327152154

/-! ## A292403.P8001419624871448380

`A000034(A282366(n))*A001687(n)`
-/

namespace A292403.P8001419624871448380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A282366 n).toNat * A001687 n

end

end A292403.P8001419624871448380

/-! ## A292403.P9269834542907924905

`A000034(A288663(n))*A001687(n)`
-/

namespace A292403.P9269834542907924905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A288663 n).toNat * A001687 n

end

end A292403.P9269834542907924905

/-!
# A292404: p-INVERT of (1,0,0,1,0,0,0,0,0,0,...), where p(S) = 1 - S^4.

The programs for A292404, there is no canonical definition to state claims against.
-/

/-! ## A292404.P14235471387123395657

`and(A004525(A212054(n)), A222260(n))`
-/

namespace A292404.P14235471387123395657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004525 (A212054 n).toNat) (A222260 n)

end

end A292404.P14235471387123395657

/-!
# A292405: Number of 3-regular maps with 2n vertices on the torus, up to orientation-preserving and orientation-reversing isomorphisms.

The programs for A292405, there is no canonical definition to state claims against.
-/

/-! ## A292405.P14399555132862205632

`A022413(n)*A065033(A148115(2*n))`
-/

namespace A292405.P14399555132862205632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 n * A065033 (A148115 (2 * n)).toNat

end

end A292405.P14399555132862205632

/-!
# A292406: Expansion of Product_{k>=1} ((1 + k^k*x^k)/(1 - k^k*x^k)).

The programs for A292406, there is no canonical definition to state claims against.
-/

/-! ## A292406.P12443196937690138313

`A321389(n)+A138471(A322451(n))`
-/

namespace A292406.P12443196937690138313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321389 n + A138471 (A322451 n).toNat

end

end A292406.P12443196937690138313

/-! ## A292406.P7565663312519065461

`A321389(A062942(n+1))`
-/

namespace A292406.P7565663312519065461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321389 (A062942 (n + 1)).toNat

end

end A292406.P7565663312519065461

/-!
# A292407: Expansion of Product_{k>=1} ((1 - k^k*x^k)/(1 + k^k*x^k)).

The programs for A292407, there is no canonical definition to state claims against.
-/

/-! ## A292407.P17212615684229812665

`A311852(∑[floor(10^n/5)])-and(-2, 10^n)`
-/

namespace A292407.P17212615684229812665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311852 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - Int.land (-2) (10 ^ n : ℤ)

end

end A292407.P17212615684229812665

/-!
# A292410: Difference between (2n+1)^2 and highest power of 2 less than or equal to (2n+1)^2.

The programs for A292410, the canonical program `A292410.P3803211021438617920` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292410 has offset 0).

The definition of A292410 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053645, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292410.P3803211021438617920

`A053645(A016754(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292410

/-- `A053645(A016754(n))` -/
def P3803211021438617920.Spec : Prop :=
  ∀ n, P3803211021438617920.a n = A292410 n

theorem P3803211021438617920.correct : P3803211021438617920.Spec := by
  intro n
  simp only [A292410]

end A292410

/-! ## A292410.P4162623259911229448

`A006257(∑[4*n])`
-/

namespace A292410.P4162623259911229448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292410.P4162623259911229448

namespace A292410

/-- `A006257(∑[4*n])` -/
def P4162623259911229448.Spec : Prop :=
  ∀ n, P4162623259911229448.a n = A292410 n

end A292410

/-! ## A292410.P14085269466928101063

`and(-3, A006257(2*(n²+n)))`
-/

namespace A292410.P14085269466928101063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A006257 (2 * (n ^ 2 + n)))

end

end A292410.P14085269466928101063

namespace A292410

/-- `and(-3, A006257(2*(n²+n)))` -/
def P14085269466928101063.Spec : Prop :=
  ∀ n, P14085269466928101063.a n = A292410 n

end A292410

/-! ## A292410.P2896709656026501084

`lcm((-1)^n, A006257((n+1)*2*n))`
-/

namespace A292410.P2896709656026501084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A006257 ((n + 1) * (2 * n)))

end

end A292410.P2896709656026501084

namespace A292410

/-- `lcm((-1)^n, A006257((n+1)*2*n))` -/
def P2896709656026501084.Spec : Prop :=
  ∀ n, (P2896709656026501084.a n : ℤ) = A292410 n

end A292410

/-! ## A292410.P14978060804800167347

`or(n%2, A006257(A046092(n)))`
-/

namespace A292410.P14978060804800167347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A006257 (A046092 n).toNat)

end

end A292410.P14978060804800167347

namespace A292410

/-- `or(n%2, A006257(A046092(n)))` -/
def P14978060804800167347.Spec : Prop :=
  ∀ n, P14978060804800167347.a n = A292410 n

end A292410

/-! ## A292410.P11672261106380347621

`or(2, A006257(4*A000217(n)))-2`
-/

namespace A292410.P11672261106380347621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A006257 (4 * A000217 n).toNat) - 2

end

end A292410.P11672261106380347621

namespace A292410

/-- `or(2, A006257(4*A000217(n)))-2` -/
def P11672261106380347621.Spec : Prop :=
  ∀ n, P11672261106380347621.a n = A292410 n

end A292410

/-! ## A292410.P9234917590760839993

`A006257(2*(n²+n))%A005903(n)`
-/

namespace A292410.P9234917590760839993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006257 (2 * (n ^ 2 + n))) (A005903 n)

end

end A292410.P9234917590760839993

namespace A292410

/-- `A006257(2*(n²+n))%A005903(n)` -/
def P9234917590760839993.Spec : Prop :=
  ∀ n, P9234917590760839993.a n = A292410 n

end A292410

/-! ## A292410.P12973563966606656948

`∑{d}[A006257(2*(n²+n)), A000010(#)]`
-/

namespace A292410.P12973563966606656948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * (n ^ 2 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A292410.P12973563966606656948

namespace A292410

/-- `∑{d}[A006257(2*(n²+n)), A000010(#)]` -/
def P12973563966606656948.Spec : Prop :=
  ∀ n, P12973563966606656948.a n = A292410 n

end A292410

/-! ## A292410.P795671723127561949

`A007318(C(2, n))*A006257(2*(n²+n))`
-/

namespace A292410.P795671723127561949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A006257 (2 * (n ^ 2 + n))

end

end A292410.P795671723127561949

namespace A292410

/-- `A007318(C(2, n))*A006257(2*(n²+n))` -/
def P795671723127561949.Spec : Prop :=
  ∀ n, P795671723127561949.a n = A292410 n

end A292410

/-! ## A292410.P8148434238057595708

`A006257(2*n*(n+1))+A000007(n+1)`
-/

namespace A292410.P8148434238057595708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * (n * (n + 1))) + A000007 (n + 1)

end

end A292410.P8148434238057595708

namespace A292410

/-- `A006257(2*n*(n+1))+A000007(n+1)` -/
def P8148434238057595708.Spec : Prop :=
  ∀ n, P8148434238057595708.a n = A292410 n

end A292410

/-! ## A292410.P1238220991003696067

`ceil(n/A000041(n))*A006257((n+1)*2*n)`
-/

namespace A292410.P1238220991003696067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A006257 ((n + 1) * (2 * n))

end

end A292410.P1238220991003696067

namespace A292410

/-- `ceil(n/A000041(n))*A006257((n+1)*2*n)` -/
def P1238220991003696067.Spec : Prop :=
  ∀ n, P1238220991003696067.a n = A292410 n

end A292410

/-! ## A292410.P12897897752377739267

`A006257(A046092(n))*A057427(n)`
-/

namespace A292410.P12897897752377739267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A046092 n).toNat * A057427 n

end

end A292410.P12897897752377739267

namespace A292410

/-- `A006257(A046092(n))*A057427(n)` -/
def P12897897752377739267.Spec : Prop :=
  ∀ n, P12897897752377739267.a n = A292410 n

end A292410

/-! ## A292410.P8931437922183085205

`A006257(A001844(n))-A040001(2*n)`
-/

namespace A292410.P8931437922183085205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A001844 n).toNat - A040001 (2 * n)

end

end A292410.P8931437922183085205

namespace A292410

/-- `A006257(A001844(n))-A040001(2*n)` -/
def P8931437922183085205.Spec : Prop :=
  ∀ n, P8931437922183085205.a n = A292410 n

end A292410

/-! ## A292410.P2482440593527318863

`A006257(2*n*(n+1))*A069288(A014963(n+1))`
-/

namespace A292410.P2482440593527318863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * (n * (n + 1))) * A069288 (A014963 (n + 1)).toNat

end

end A292410.P2482440593527318863

namespace A292410

/-- `A006257(2*n*(n+1))*A069288(A014963(n+1))` -/
def P2482440593527318863.Spec : Prop :=
  ∀ n, P2482440593527318863.a n = A292410 n

end A292410

/-! ## A292410.P16285588609207128663

`A006257(A001844(n))-A020639(A000118(n))`
-/

namespace A292410.P16285588609207128663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A001844 n).toNat - A020639 (A000118 n).toNat

end

end A292410.P16285588609207128663

namespace A292410

/-- `A006257(A001844(n))-A020639(A000118(n))` -/
def P16285588609207128663.Spec : Prop :=
  ∀ n, P16285588609207128663.a n = A292410 n

end A292410

/-! ## A292410.P15234762518611383776

`A093411(A006257(2*(n²+n)))`
-/

namespace A292410.P15234762518611383776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A006257 (2 * (n ^ 2 + n))).toNat

end

end A292410.P15234762518611383776

namespace A292410

/-- `A093411(A006257(2*(n²+n)))` -/
def P15234762518611383776.Spec : Prop :=
  ∀ n, P15234762518611383776.a n = A292410 n

end A292410

/-! ## A292410.P16536001813410100641

`floor(A006257((2*n+1)²)/2)`
-/

namespace A292410.P16536001813410100641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006257 ((2 * n + 1) ^ 2) : ℚ) / 2⌋

end

end A292410.P16536001813410100641

namespace A292410

/-- `floor(A006257((2*n+1)²)/2)` -/
def P16536001813410100641.Spec : Prop :=
  ∀ n, P16536001813410100641.a n = A292410 n

end A292410

/-! ## A292410.P15630040764621242484

`ceil(A006257(n*4*(n+1))/2)`
-/

namespace A292410.P15630040764621242484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006257 (n * (4 * (n + 1))) : ℚ) / 2⌉

end

end A292410.P15630040764621242484

namespace A292410

/-- `ceil(A006257(n*4*(n+1))/2)` -/
def P15630040764621242484.Spec : Prop :=
  ∀ n, P15630040764621242484.a n = A292410 n

end A292410

/-! ## A292410.P3973207027281516963

`A004273(A006257(n²+n))`
-/

namespace A292410.P3973207027281516963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A006257 (n ^ 2 + n)).toNat

end

end A292410.P3973207027281516963

namespace A292410

/-- `A004273(A006257(n²+n))` -/
def P3973207027281516963.Spec : Prop :=
  ∀ n, P3973207027281516963.a n = A292410 n

end A292410

/-!
# A292411: a(n) = ((prime(n) - 1)/2)^2 modulo prime(n).

The programs for A292411, there is no canonical definition to state claims against.
-/

/-! ## A292411.P8259621197224627554

`floor(p?[2*n+1]/2)²%p?[2*n+1]`
-/

namespace A292411.P8259621197224627554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋ ^ 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A292411.P8259621197224627554

/-! ## A292411.P7111348151794878095

`ceil(p?[2*n+1]/2)²%p?[2*n+1]`
-/

namespace A292411.P7111348151794878095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉ ^ 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A292411.P7111348151794878095

/-! ## A292411.P2750767602565331455

`round(p?[2*n+1]/2)²%p?[2*n+1]`
-/

namespace A292411.P2750767602565331455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2) ^ 2) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A292411.P2750767602565331455

/-! ## A292411.P13006116099729121227

`((p?[2*n+1]+1)/2)²%p?[2*n+1]`
-/

namespace A292411.P13006116099729121227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2) ^ 2)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A292411.P13006116099729121227

/-! ## A292411.P16857347865257271066

`A226782(p?[2*n+1])`
-/

namespace A292411.P16857347865257271066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226782 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A292411.P16857347865257271066

/-! ## A292411.P7142994257070824357

`A294389(p?[2*n+1])`
-/

namespace A292411.P7142994257070824357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294389 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A292411.P7142994257070824357

/-! ## A292411.P13316436929649084839

`A373750(p?[2*n+1])`
-/

namespace A292411.P13316436929649084839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373750 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A292411.P13316436929649084839

/-! ## A292411.P10744878155671459488

`A001859(p?[2*n+1])%p?[2*n+1]`
-/

namespace A292411.P10744878155671459488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001859 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A292411.P10744878155671459488

/-! ## A292411.P3075523519630701559

`A005997(p?[2*n+1])%p?[2*n+1]`
-/

namespace A292411.P3075523519630701559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005997 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A292411.P3075523519630701559

/-! ## A292411.P15505439479287398284

`A008794(p?[2*n+1])%p?[2*n+1]`
-/

namespace A292411.P15505439479287398284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008794 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A292411.P15505439479287398284

/-!
# A292412: Numbers of the form Fibonacci(2*k-1) or Lucas(2*k-1); i.e., union of sequences A001519 and A002878.

The programs for A292412, the canonical program `A292412.P8150376219784713576` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292412 has offset 1).

The definition of A292412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292412.P8150376219784713576

`3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292412

/-- `3*a(n-2)-a(n-4)` -/
def P8150376219784713576.Spec : Prop :=
  ∀ n, P8150376219784713576.a n = A292412 (n + 1)

theorem P8150376219784713576.correct : P8150376219784713576.Spec := by
  intro n
  simp only [A292412, Nat.add_sub_cancel]

end A292412

/-! ## A292412.P9492269681975637782

`A115339(A053438(n))`
-/

namespace A292412.P9492269681975637782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A053438 n).toNat

end

end A292412.P9492269681975637782

namespace A292412

/-- `A115339(A053438(n))` -/
def P9492269681975637782.Spec : Prop :=
  ∀ n, P9492269681975637782.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P1891265009463805134

`A302126(A042964(n+1))`
-/

namespace A292412.P1891265009463805134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A042964 (n + 1)).toNat

end

end A292412.P1891265009463805134

namespace A292412

/-- `A302126(A042964(n+1))` -/
def P1891265009463805134.Spec : Prop :=
  ∀ n, P1891265009463805134.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P16739816120870344798

`A302126(A053438(n+1))`
-/

namespace A292412.P16739816120870344798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A053438 (n + 1)).toNat

end

end A292412.P16739816120870344798

namespace A292412

/-- `A302126(A053438(n+1))` -/
def P16739816120870344798.Spec : Prop :=
  ∀ n, P16739816120870344798.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P3080229353323413260

`A212804(n)+A094966(n)`
-/

namespace A292412.P3080229353323413260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A094966 n

end

end A292412.P3080229353323413260

namespace A292412

/-- `A212804(n)+A094966(n)` -/
def P3080229353323413260.Spec : Prop :=
  ∀ n, P3080229353323413260.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P15479269504593732987

`A094966(n)+Δ[A000045(n)]`
-/

namespace A292412.P15479269504593732987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + (f1 (n + 1) - f1 n)

end

end A292412.P15479269504593732987

namespace A292412

/-- `A094966(n)+Δ[A000045(n)]` -/
def P15479269504593732987.Spec : Prop :=
  ∀ n, P15479269504593732987.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P9754839690706027161

`A094966(n)+Δ[A001611(n)]`
-/

namespace A292412.P9754839690706027161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + (f1 (n + 1) - f1 n)

end

end A292412.P9754839690706027161

namespace A292412

/-- `A094966(n)+Δ[A001611(n)]` -/
def P9754839690706027161.Spec : Prop :=
  ∀ n, P9754839690706027161.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P6376397989450670945

`A302126(A042963(n+1)+1)`
-/

namespace A292412.P6376397989450670945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A042963 (n + 1) + 1).toNat

end

end A292412.P6376397989450670945

namespace A292412

/-- `A302126(A042963(n+1)+1)` -/
def P6376397989450670945.Spec : Prop :=
  ∀ n, P6376397989450670945.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P8839830207165845958

`A302126(A014601(n+1)-1)`
-/

namespace A292412.P8839830207165845958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A014601 (n + 1) - 1).toNat

end

end A292412.P8839830207165845958

namespace A292412

/-- `A302126(A014601(n+1)-1)` -/
def P8839830207165845958.Spec : Prop :=
  ∀ n, P8839830207165845958.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P6584145712936668302

`A133586(n+1)-A000045(n)`
-/

namespace A292412.P6584145712936668302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133586 (n + 1) - A000045 n

end

end A292412.P6584145712936668302

namespace A292412

/-- `A133586(n+1)-A000045(n)` -/
def P6584145712936668302.Spec : Prop :=
  ∀ n, P6584145712936668302.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P8732399635513570171

`A152163(n+2)+A133586(n+1)`
-/

namespace A292412.P8732399635513570171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 2) + A133586 (n + 1)

end

end A292412.P8732399635513570171

namespace A292412

/-- `A152163(n+2)+A133586(n+1)` -/
def P8732399635513570171.Spec : Prop :=
  ∀ n, P8732399635513570171.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P4922192408877069015

`A302126(A047270(n+1)-(n+1))`
-/

namespace A292412.P4922192408877069015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A047270 (n + 1) - (n + 1 : ℤ)).toNat

end

end A292412.P4922192408877069015

namespace A292412

/-- `A302126(A047270(n+1)-(n+1))` -/
def P4922192408877069015.Spec : Prop :=
  ∀ n, P4922192408877069015.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P12184814054912105004

`A000045(n+1)+A000045((n-1)*and(1, n))`
-/

namespace A292412.P12184814054912105004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A000045 (((n : ℤ) - 1) * (Nat.land 1 n : ℤ)).toNat

end

end A292412.P12184814054912105004

namespace A292412

/-- `A000045(n+1)+A000045((n-1)*and(1, n))` -/
def P12184814054912105004.Spec : Prop :=
  ∀ n, P12184814054912105004.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P5669780103310918434

`A000032(n)+A000045(n)-A094967(n)`
-/

namespace A292412.P5669780103310918434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A000045 n - A094967 n)

end

end A292412.P5669780103310918434

namespace A292412

/-- `A000032(n)+A000045(n)-A094967(n)` -/
def P5669780103310918434.Spec : Prop :=
  ∀ n, P5669780103310918434.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P11916744775318177991

`A000045(n)+Δ[A000045(n)]*A000034(n)`
-/

namespace A292412.P11916744775318177991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n) * A000034 n

end

end A292412.P11916744775318177991

namespace A292412

/-- `A000045(n)+Δ[A000045(n)]*A000034(n)` -/
def P11916744775318177991.Spec : Prop :=
  ∀ n, P11916744775318177991.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P16348170118286635093

`A000045(A131360(2*n))+A000045(n+1)`
-/

namespace A292412.P16348170118286635093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131360 (2 * n)).toNat + A000045 (n + 1)

end

end A292412.P16348170118286635093

namespace A292412

/-- `A000045(A131360(2*n))+A000045(n+1)` -/
def P16348170118286635093.Spec : Prop :=
  ∀ n, P16348170118286635093.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P13063908587068473032

`A000045(n+1)+A094966(n)-A000045(n)`
-/

namespace A292412.P13063908587068473032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A094966 n - A000045 n)

end

end A292412.P13063908587068473032

namespace A292412

/-- `A000045(n+1)+A094966(n)-A000045(n)` -/
def P13063908587068473032.Spec : Prop :=
  ∀ n, P13063908587068473032.a n = A292412 (n + 1)

end A292412

/-! ## A292412.P4776283981953540681

`A108362(n+1)+A108362(n)-A000045(n)`
-/

namespace A292412.P4776283981953540681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (n + 1) + (A108362 n - A000045 n)

end

end A292412.P4776283981953540681

namespace A292412

/-- `A108362(n+1)+A108362(n)-A000045(n)` -/
def P4776283981953540681.Spec : Prop :=
  ∀ n, P4776283981953540681.a n = A292412 (n + 1)

end A292412

/-!
# A292413: a(n) is the smallest k such that sigma(sigma(k)) = sigma(sigma(k) - k) + n*k, or 0 if no such k exists.

The programs for A292413, there is no canonical definition to state claims against.
-/

/-! ## A292413.P8991377023015758948

`A270794(A131180(n))-A131197(2*n+1)`
-/

namespace A292413.P8991377023015758948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270794 (A131180 n).toNat - A131197 (2 * n + 1)

end

end A292413.P8991377023015758948

/-!
# A292414: a(n) = [x^n] Product_{k>=1} (1 + 2^n*x^k).

The programs for A292414, there is no canonical definition to state claims against.
-/

/-! ## A292414.P16107497668595050341

`and(6^n, A057944(round(2/3*5^n)))`
-/

namespace A292414.P16107497668595050341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 ^ n : ℤ) (A057944 (SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (5 ^ n : ℚ))).toNat)

end

end A292414.P16107497668595050341

/-! ## A292414.P13173654139817119151

`record[and(A026549(n), A076324(n+1))]`
-/

namespace A292414.P13173654139817119151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026549 n) (A076324 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292414.P13173654139817119151

/-!
# A292415: a(n) = [x^n] Product_{k>=1} (1 / (1 - 2^n*x^k)).

The programs for A292415, there is no canonical definition to state claims against.
-/

/-! ## A292415.P6797389155626226192

`A246935(eq[A025581(n), A059268(n)])`
-/

namespace A292415.P6797389155626226192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292415.P6797389155626226192

/-! ## A292415.P13247388016691643393

`A246935(eq[A025581(n), A144464(n)])`
-/

namespace A292415.P13247388016691643393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292415.P13247388016691643393

/-! ## A292415.P1440140923525236995

`A246935(eq[A059268(n)+1, A193739(n)])`
-/

namespace A292415.P1440140923525236995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292415.P1440140923525236995

/-!
# A292417: a(n) = [x^n] Product_{k>=1} 1/(1 - n^2*x^k).

The programs for A292417, there is no canonical definition to state claims against.
-/

/-! ## A292417.P8552259395843990469

`A246935(floor(Δ[n^5/10])+n)`
-/

namespace A292417.P8552259395843990469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 (⌊f1 (n + 1) - f1 n⌋ + (n : ℤ)).toNat

end

end A292417.P8552259395843990469

/-!
# A292419: a(n) = [x^n] Product_{k>=1} (1 + n*x^k) / (1 - n*x^k).

The programs for A292419, there is no canonical definition to state claims against.
-/

/-! ## A292419.P9498125820404400235

`A346454(n)/n^n`
-/

namespace A292419.P9498125820404400235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346454 n : ℚ) / (n ^ n : ℚ)

end

end A292419.P9498125820404400235

/-! ## A292419.P18429384087693570187

`floor(A346454(n)/A000312(n))`
-/

namespace A292419.P18429384087693570187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A346454 n : ℚ) / (A000312 n : ℚ)⌋

end

end A292419.P18429384087693570187

/-! ## A292419.P16008963343743285383

`A000009(n)/A292305(n)*A346454(n)`
-/

namespace A292419.P16008963343743285383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A292305 n : ℚ) * (A346454 n : ℚ)

end

end A292419.P16008963343743285383

/-! ## A292419.P16092702490380836135

`A291698(n)/A344094(n)*A346454(n)`
-/

namespace A292419.P16092702490380836135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291698 n : ℚ) / (A344094 n : ℚ) * (A346454 n : ℚ)

end

end A292419.P16092702490380836135

/-!
# A292421: Square array T(n,k) = number of tiles crossed by the line segment (0,0) -- (n,k) in a running bond pattern tiling with square tiles, read by antidiagonals.

The programs for A292421, there is no canonical definition to state claims against.
-/

/-! ## A292421.P7017035828024026132

`A342859(n)+A000034(A326701(3*n+5))`
-/

namespace A292421.P7017035828024026132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342859 n + A000034 (A326701 (3 * n + 5)).toNat

end

end A292421.P7017035828024026132

/-! ## A292421.P9446091198180630905

`A138033(A259934(A054076(n+1)))`
-/

namespace A292421.P9446091198180630905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A259934 (A054076 (n + 1)).toNat).toNat

end

end A292421.P9446091198180630905

/-! ## A292421.P13338674578394916141

`A132173(p?[A235041(A341944(n+1))])`
-/

namespace A292421.P13338674578394916141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235041 (A341944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132173 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A292421.P13338674578394916141

/-! ## A292421.P17805941177398122980

`A090822(A000079(n))+A032358(n+2)`
-/

namespace A292421.P17805941177398122980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A000079 n).toNat + A032358 (n + 2)

end

end A292421.P17805941177398122980

/-! ## A292421.P12863343042937561678

`A267263(or(4, A187587(n+1)))`
-/

namespace A292421.P12863343042937561678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (Int.lor 4 (A187587 (n + 1))).toNat

end

end A292421.P12863343042937561678

/-!
# A292422: Numbers of the form x = 2^k*p*q, p,q odd primes, such that sigma(x)/phi(x) = 4.

The programs for A292422, there is no canonical definition to state claims against.
-/

/-! ## A292422.P13342427077385120069

`filter[A068390(n+1), A340370(#)]`
-/

namespace A292422.P13342427077385120069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A292422.P13342427077385120069

/-! ## A292422.P8264448385447955955

`filter[A068390(n+1), A353674(#)]`
-/

namespace A292422.P8264448385447955955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353674 (f1 j).toNat = 1) n)

end

end A292422.P8264448385447955955

/-!
# A292423: a(n) = 82*a(n-1) + a(n-2), where a(0) = 0, a(1) = 1.

The programs for A292423, the canonical program `A292423.P982223656591851223` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292423 has offset 0).

The definition of A292423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `82*a(n-1)+a(n-2)` (program `A292423.P982223656591851223`, by `A292423.P982223656591851223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292423.P982223656591851223

`82*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292423

/-- `82*a(n-1)+a(n-2)` -/
def P982223656591851223.Spec : Prop :=
  ∀ n, (P982223656591851223.a n : ℤ) = A292423 n

theorem P982223656591851223.correct : P982223656591851223.Spec := by
  intro n
  simp only [A292423]

end A292423

/-! ## A292423.P1833906063683507763

`A000129(5*n)/29`
-/

namespace A292423.P1833906063683507763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (5 * n) : ℚ) / 29

end

end A292423.P1833906063683507763

namespace A292423

/-- `A000129(5*n)/29` -/
def P1833906063683507763.Spec : Prop :=
  ∀ n, P1833906063683507763.a n = (A292423 n : ℚ)

end A292423

/-! ## A292423.P1499371527011381849

`83*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A292423.P1499371527011381849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  83 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A292423.P1499371527011381849

namespace A292423

/-- `83*a(n-1)-(a(n-1)-a(n-2))` -/
def P1499371527011381849.Spec : Prop :=
  ∀ n, P1499371527011381849.a n = A292423 n

end A292423

/-! ## A292423.P1029255925923880203

`A002965(10*n)/29`
-/

namespace A292423.P1029255925923880203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002965 (10 * n) : ℚ) / 29

end

end A292423.P1029255925923880203

namespace A292423

/-- `A002965(10*n)/29` -/
def P1029255925923880203.Spec : Prop :=
  ∀ n, P1029255925923880203.a n = (A292423 n : ℚ)

end A292423

/-! ## A292423.P5862329224553667549

`floor((a(n-1)²+1)/a(n-2))` with `a(0)=0, a(1)=1, a(2)=82`
-/

namespace A292423.P5862329224553667549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 82] fun n a =>
  ⌊(a (n - 1) ^ 2 + 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A292423.P5862329224553667549

namespace A292423

/-- `floor((a(n-1)²+1)/a(n-2))` -/
def P5862329224553667549.Spec : Prop :=
  ∀ n, P5862329224553667549.a n = A292423 n

end A292423

/-!
# A292424: a(n) = [x^n] Product_{k=1..n} 1/((1 - x)^k * (1 - x^k)).

The programs for A292424, there is no canonical definition to state claims against.
-/

/-! ## A292424.P15280233409866508389

`A292508(A000217(A000217(n+1))+n)`
-/

namespace A292424.P15280233409866508389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A000217 (A000217 (n + 1)).toNat + (n : ℤ)).toNat

end

end A292424.P15280233409866508389

/-! ## A292424.P4216526043841600216

`A256193(A337130(n+1)+A027480(n))`
-/

namespace A292424.P4216526043841600216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256193 (A337130 (n + 1) + A027480 n).toNat

end

end A292424.P4216526043841600216

/-!
# A292425: The smallest positive number of the form 3^n-2^a-2^b.

The programs for A292425, there is no canonical definition to state claims against.
-/

/-! ## A292425.P5969482250148621038

`A053645(A056577(n+1))`
-/

namespace A292425.P5969482250148621038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A056577 (n + 1)).toNat

end

end A292425.P5969482250148621038

/-! ## A292425.P17347182513888697433

`A053645(A006257(∑[3^n]))`
-/

namespace A292425.P17347182513888697433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A006257 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A292425.P17347182513888697433

/-! ## A292425.P2083010617805111539

`A266539(A056577(n+1)+1)`
-/

namespace A292425.P2083010617805111539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266539 (A056577 (n + 1) + 1).toNat

end

end A292425.P2083010617805111539

/-! ## A292425.P11529199390693332857

`A053645(A053645(3^(n+1)))`
-/

namespace A292425.P11529199390693332857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A053645 (3 ^ (n + 1))).toNat

end

end A292425.P11529199390693332857

/-!
# A292426: Largest number k < primorial(n) such that omega(k) = n-1.

The programs for A292426, there is no canonical definition to state claims against.
-/

/-! ## A292426.P17671060391162169953

`Δ[A269304(A002110(n))]`
-/

namespace A292426.P17671060391162169953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269304 (A002110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292426.P17671060391162169953

/-!
# A292430: Record numbers of unordered triples {a, b, c} of distinct positive integers from 1 to n such that a*b = c*n.

The programs for A292430, there is no canonical definition to state claims against.
-/

/-! ## A292430.P3181448836656990239

`A278648(A292431(n+1))`
-/

namespace A292430.P3181448836656990239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 (A292431 (n + 1)).toNat

end

end A292430.P3181448836656990239

/-! ## A292430.P17888879550302691751

`record[A278648(n)]`
-/

namespace A292430.P17888879550302691751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292430.P17888879550302691751

/-! ## A292430.P17192707532307699792

`record[A180772(n+1)-A057918(n+1)]`
-/

namespace A292430.P17192707532307699792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180772 (n + 1) - A057918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292430.P17192707532307699792

/-! ## A292430.P17718986974395494478

`record[A268631(n+1)-A180772(n+1)]`
-/

namespace A292430.P17718986974395494478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268631 (n + 1) - A180772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292430.P17718986974395494478

/-! ## A292430.P15967845724208605697

`record[A180772(n+1)+1-A000188(n+1)]`
-/

namespace A292430.P15967845724208605697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180772 (n + 1) + (1 - A000188 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292430.P15967845724208605697

/-! ## A292430.P11949098441023948401

`record[A180772(n+1)+A024000(A000188(n+1))]`
-/

namespace A292430.P11949098441023948401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180772 (n + 1) + A024000 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292430.P11949098441023948401

/-!
# A292431: Numbers n with record numbers of unordered triples {a, b, c} of distinct positive integers from 1 to n such that a*b = c*n.

The programs for A292431, there is no canonical definition to state claims against.
-/

/-! ## A292431.P13299490576818008436

`eq[n%2, A128033((lcm(5, n)-n)/4)]`
-/

namespace A292431.P13299490576818008436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128033 (SequenceMachineLib.roundAway (((Nat.lcm 5 n : ℤ) - (n : ℤ) : ℚ) / 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292431.P13299490576818008436

/-! ## A292431.P10105209188367333005

`eq[A000035(n), A255680((2*n)²)]`
-/

namespace A292431.P10105209188367333005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 ((2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292431.P10105209188367333005

/-! ## A292431.P3932871733536334840

`A024995(n+2)%A099335(n+1)`
-/

namespace A292431.P3932871733536334840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024995 (n + 2)) (A099335 (n + 1))

end

end A292431.P3932871733536334840

/-! ## A292431.P6762828578365674591

`∪[3*n, 5*n]*A037234(A020639(3*n+5))`
-/

namespace A292431.P6762828578365674591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) * A037234 (A020639 (3 * n + 5)).toNat

end

end A292431.P6762828578365674591

/-! ## A292431.P8911478559213326442

`lt[A007980(n), A000040(A134188(n))]`
-/

namespace A292431.P8911478559213326442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A134188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292431.P8911478559213326442

/-!
# A292432: Number of normal multisets that cannot be expressed as the multiset-union of a set of sets.

The programs for A292432, there is no canonical definition to state claims against.
-/

/-! ## A292432.P18304793881018787970

`A000079(n)-A382214(n+1)`
-/

namespace A292432.P18304793881018787970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A382214 (n + 1)

end

end A292432.P18304793881018787970

/-! ## A292432.P3131324698075615615

`A016116(2*n+1)-A382214(n+1)`
-/

namespace A292432.P3131324698075615615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n + 1) - A382214 (n + 1)

end

end A292432.P3131324698075615615

/-! ## A292432.P13493981424468218045

`A223541(A000217(n))-A382214(n+1)`
-/

namespace A292432.P13493981424468218045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223541 (A000217 n).toNat - A382214 (n + 1)

end

end A292432.P13493981424468218045

/-! ## A292432.P12000737164346917405

`A135664(A116847(n+1))`
-/

namespace A292432.P12000737164346917405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A116847 (n + 1)).toNat

end

end A292432.P12000737164346917405

/-! ## A292432.P9386065976932004588

`A191291(A100067(n+1))`
-/

namespace A292432.P9386065976932004588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191291 (A100067 (n + 1)).toNat

end

end A292432.P9386065976932004588

/-!
# A292433: a(0) = 0, a(1) = 1; a(n) = prime(a(n-1))*a(n-1) + a(n-2).

The programs for A292433, there is no canonical definition to state claims against.
-/

/-! ## A292433.P13588866112873260146

`A000040(a(n-1))*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A292433.P13588866112873260146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 (a (n - 1)).toNat * a (n - 1) + a (n - 2)

end

end A292433.P13588866112873260146

/-! ## A292433.P4355187280253067313

`a(n-2)+lcm(a(n-1), A000040(floor(a(n-1))))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A292433.P4355187280253067313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Int.lcm (a (n - 1) : ℤ) (A000040 (a (n - 1)))

end

end A292433.P4355187280253067313

/-!
# A292436: Array T read by antidiagonals: T(m,n) is the number of lattice walks of minimal length from (0,0) to (m,n) using steps in directions from {(1,0), (0,1), (2,1), (1,2)}.

The programs for A292436, there is no canonical definition to state claims against.
-/

/-! ## A292436.P7315177267799986483

`A334590(A161126(n+1)+1)`
-/

namespace A292436.P7315177267799986483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334590 (A161126 (n + 1) + 1).toNat

end

end A292436.P7315177267799986483

/-! ## A292436.P15328989741017071563

`gcd(A038702(A226832(n+1)), A250468(n+1))`
-/

namespace A292436.P15328989741017071563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038702 (A226832 (n + 1)).toNat) (A250468 (n + 1))

end

end A292436.P15328989741017071563

/-! ## A292436.P13861391524376519268

`A194070(A059922(n))`
-/

namespace A292436.P13861391524376519268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194070 (A059922 n).toNat

end

end A292436.P13861391524376519268

/-! ## A292436.P9605750906706944884

`A286520(4*A102716(n))`
-/

namespace A292436.P9605750906706944884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286520 (4 * A102716 n).toNat

end

end A292436.P9605750906706944884

/-! ## A292436.P6967479902202329334

`A327490(n+1)^A269248(A009963(n))`
-/

namespace A292436.P6967479902202329334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327490 (n + 1) : ℚ) ^ (A269248 (A009963 n).toNat : ℤ)

end

end A292436.P6967479902202329334

/-!
# A292437: a(n) is the number of lattice walks from (0,0) to (3*n,3*n) that use steps in directions {(3,0), (2,1), (1,2), (0,3)} and stay weakly below the line y=x.

The programs for A292437, there is no canonical definition to state claims against.
-/

/-! ## A292437.P18292394592809814225

`A095394((n+2)^n)`
-/

namespace A292437.P18292394592809814225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095394 ((n + 2) ^ n)

end

end A292437.P18292394592809814225

/-!
# A292438: Characteristic function of non-isolated nonprimes.

The programs for A292438, the canonical program `A292438.P17678663792653604288` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292438 has offset 0).

The definition of A292438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292438.P4718444502154587887

`char[A164276(n+1)]`
-/

namespace A292438.P4718444502154587887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A292438.P4718444502154587887

namespace A292438

/-- `char[A164276(n+1)]` -/
def P4718444502154587887.Spec : Prop :=
  ∀ n, (P4718444502154587887.a n : ℤ) = A292438 n

end A292438

/-! ## A292438.P17678663792653604288

`A323162(n+1-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A292438

/-- `A323162(n+1-a(n-1))` -/
def P17678663792653604288.Spec : Prop :=
  ∀ n, P17678663792653604288.a n = A292438 n

theorem P17678663792653604288.correct : P17678663792653604288.Spec := by
  intro n
  simp only [A292438]

end A292438

/-! ## A292438.P17229733694417147214

`C(a(n-1), C(n, A000010(A007918(n))))` with `a(0)=1`
-/

namespace A292438.P17229733694417147214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1)) (Nat.choose n (A000010 (A007918 n).toNat).toNat)

end

end A292438.P17229733694417147214

namespace A292438

/-- `C(a(n-1), C(n, A000010(A007918(n))))` -/
def P17229733694417147214.Spec : Prop :=
  ∀ n, (P17229733694417147214.a n : ℤ) = A292438 n

end A292438

/-! ## A292438.P9587440645296892996

`A019544(C(a(n-1), C(n+1, A007918(n)))+1)` with `a(0)=1`
-/

namespace A292438.P9587440645296892996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A019544 (Nat.choose (a (n - 1)).toNat (Nat.choose (n + 1) (A007918 n).toNat) + 1)

end

end A292438.P9587440645296892996

namespace A292438

/-- `A019544(C(a(n-1), C(n+1, A007918(n)))+1)` -/
def P9587440645296892996.Spec : Prop :=
  ∀ n, P9587440645296892996.a n = A292438 n

end A292438

/-! ## A292438.P5356745060054658501

`A261444(C(A261444(a(n-1)), A007920(n)))` with `a(0)=1`
-/

namespace A292438.P5356745060054658501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261444 (Nat.choose (A261444 (a (n - 1)).toNat).toNat (A007920 n).toNat)

end

end A292438.P5356745060054658501

namespace A292438

/-- `A261444(C(A261444(a(n-1)), A007920(n)))` -/
def P5356745060054658501.Spec : Prop :=
  ∀ n, P5356745060054658501.a n = A292438 n

end A292438

/-! ## A292438.P3750718671306941284

`A267537(A103509(n+1)+A005171(n+1))*A267537(n)`
-/

namespace A292438.P3750718671306941284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267537 (A103509 (n + 1) + A005171 (n + 1)).toNat * A267537 n

end

end A292438.P3750718671306941284

namespace A292438

/-- `A267537(A103509(n+1)+A005171(n+1))*A267537(n)` -/
def P3750718671306941284.Spec : Prop :=
  ∀ n, P3750718671306941284.a n = A292438 n

end A292438

/-! ## A292438.P12424355824892781602

`C(A007918(A007918(n)-2), A007918(n+1))`
-/

namespace A292438.P12424355824892781602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007918 (A007918 n - 2).toNat).toNat (A007918 (n + 1)).toNat

end

end A292438.P12424355824892781602

namespace A292438

/-- `C(A007918(A007918(n)-2), A007918(n+1))` -/
def P12424355824892781602.Spec : Prop :=
  ∀ n, (P12424355824892781602.a n : ℤ) = A292438 n

end A292438

/-! ## A292438.P6155196248161962914

`A057427(A325142(n)²-A325142(n))`
-/

namespace A292438.P6155196248161962914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A325142 n ^ 2 - A325142 n).toNat

end

end A292438.P6155196248161962914

namespace A292438

/-- `A057427(A325142(n)²-A325142(n))` -/
def P6155196248161962914.Spec : Prop :=
  ∀ n, P6155196248161962914.a n = A292438 n

end A292438

/-! ## A292438.P7013067535400761986

`1-a(A329273(n))` with `a(0)=1, a(1)=1`
-/

namespace A292438.P7013067535400761986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (A329273 n).toNat

end

end A292438.P7013067535400761986

namespace A292438

/-- `1-a(A329273(n))` -/
def P7013067535400761986.Spec : Prop :=
  ∀ n, P7013067535400761986.a n = A292438 n

end A292438

/-!
# A292440: Expansion of (1 - x + sqrt(1 - 2*x - 3*x^2))/2 in powers of x.

The programs for A292440, the canonical program `A292440.P2854485539403430927` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292440 has offset 0).

The definition of A292440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292440.P10398201678148608659

`A168051(char[1]+n)`
-/

namespace A292440.P10398201678148608659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A292440.P10398201678148608659

namespace A292440

/-- `A168051(char[1]+n)` -/
def P10398201678148608659.Spec : Prop :=
  ∀ n, P10398201678148608659.a n = A292440 n

end A292440

/-! ## A292440.P2558031779675042971

`A168051(n)-char[1]`
-/

namespace A292440.P2558031779675042971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292440.P2558031779675042971

namespace A292440

/-- `A168051(n)-char[1]` -/
def P2558031779675042971.Spec : Prop :=
  ∀ n, P2558031779675042971.a n = A292440 n

end A292440

/-! ## A292440.P16510487621413964486

`floor(acot(n)-A086246(n))`
-/

namespace A292440.P16510487621413964486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A086246 n : ℝ)⌋

end

end A292440.P16510487621413964486

namespace A292440

/-- `floor(acot(n)-A086246(n))` -/
def P16510487621413964486.Spec : Prop :=
  ∀ n, P16510487621413964486.a n = A292440 n

end A292440

/-! ## A292440.P7038268159242036483

`(abs(1-n)-n)*A001006(floor(n-atan(n)))`
-/

namespace A292440.P7038268159242036483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|1 - (n : ℤ)| - (n : ℤ)) * A001006 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A292440.P7038268159242036483

namespace A292440

/-- `(abs(1-n)-n)*A001006(floor(n-atan(n)))` -/
def P7038268159242036483.Spec : Prop :=
  ∀ n, P7038268159242036483.a n = A292440 n

end A292440

/-! ## A292440.P9198990171322876119

`A000007(n)-A086246(n)`
-/

namespace A292440.P9198990171322876119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A086246 n

end

end A292440.P9198990171322876119

namespace A292440

/-- `A000007(n)-A086246(n)` -/
def P9198990171322876119.Spec : Prop :=
  ∀ n, P9198990171322876119.a n = A292440 n

end A292440

/-! ## A292440.P2854485539403430927

`xor(A159075(n), A168051(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A292440

/-- `xor(A159075(n), A168051(n))` -/
def P2854485539403430927.Spec : Prop :=
  ∀ n, P2854485539403430927.a n = A292440 n

theorem P2854485539403430927.correct : P2854485539403430927.Spec := by
  intro n
  simp only [A292440]

end A292440

/-! ## A292440.P16029068377259633683

`1-(A086246(n)+A057427(n))`
-/

namespace A292440.P16029068377259633683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A086246 n + A057427 n)

end

end A292440.P16029068377259633683

namespace A292440

/-- `1-(A086246(n)+A057427(n))` -/
def P16029068377259633683.Spec : Prop :=
  ∀ n, P16029068377259633683.a n = A292440 n

end A292440

/-! ## A292440.P686708289855637317

`A019590(n+2)-A086246(n)`
-/

namespace A292440.P686708289855637317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) - A086246 n

end

end A292440.P686708289855637317

namespace A292440

/-- `A019590(n+2)-A086246(n)` -/
def P686708289855637317.Spec : Prop :=
  ∀ n, P686708289855637317.a n = A292440 n

end A292440

/-! ## A292440.P9960500286892940919

`A000038(n)/2-A086246(n)`
-/

namespace A292440.P9960500286892940919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) / 2 - (A086246 n : ℚ)

end

end A292440.P9960500286892940919

namespace A292440

/-- `A000038(n)/2-A086246(n)` -/
def P9960500286892940919.Spec : Prop :=
  ∀ n, P9960500286892940919.a n = (A292440 n : ℚ)

end A292440

/-! ## A292440.P9274946505311585774

`A154955(n+2)²-A086246(n)`
-/

namespace A292440.P9274946505311585774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 2) ^ 2 - A086246 n

end

end A292440.P9274946505311585774

namespace A292440

/-- `A154955(n+2)²-A086246(n)` -/
def P9274946505311585774.Spec : Prop :=
  ∀ n, P9274946505311585774.a n = A292440 n

end A292440

/-! ## A292440.P14745571461862475859

`or(Δ[A062584(n)]%2, A168051(n))`
-/

namespace A292440.P14745571461862475859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (f1 (n + 1) - f1 n) 2) (A168051 n)

end

end A292440.P14745571461862475859

namespace A292440

/-- `or(Δ[A062584(n)]%2, A168051(n))` -/
def P14745571461862475859.Spec : Prop :=
  ∀ n, P14745571461862475859.a n = A292440 n

end A292440

/-! ## A292440.P11133472202998122500

`A154955(2*n+1)-A086246(n)`
-/

namespace A292440.P11133472202998122500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (2 * n + 1) - A086246 n

end

end A292440.P11133472202998122500

namespace A292440

/-- `A154955(2*n+1)-A086246(n)` -/
def P11133472202998122500.Spec : Prop :=
  ∀ n, P11133472202998122500.a n = A292440 n

end A292440

/-! ## A292440.P3751589954532321822

`1-(A086246(n)+char[A026214(n+1)])`
-/

namespace A292440.P3751589954532321822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026214 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A086246 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A292440.P3751589954532321822

namespace A292440

/-- `1-(A086246(n)+char[A026214(n+1)])` -/
def P3751589954532321822.Spec : Prop :=
  ∀ n, P3751589954532321822.a n = A292440 n

end A292440

/-! ## A292440.P8181470076476838797

`A000038(n)-A086246(A000038(n)+n)`
-/

namespace A292440.P8181470076476838797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A086246 (A000038 n + (n : ℤ)).toNat

end

end A292440.P8181470076476838797

namespace A292440

/-- `A000038(n)-A086246(A000038(n)+n)` -/
def P8181470076476838797.Spec : Prop :=
  ∀ n, P8181470076476838797.a n = A292440 n

end A292440

/-! ## A292440.P10818706294115950938

`char[A187080(A000045(n))]-A086246(n)-char[1]`
-/

namespace A292440.P10818706294115950938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187080 (A000045 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A086246 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A292440.P10818706294115950938

namespace A292440

/-- `char[A187080(A000045(n))]-A086246(n)-char[1]` -/
def P10818706294115950938.Spec : Prop :=
  ∀ n, P10818706294115950938.a n = A292440 n

end A292440

/-! ## A292440.P5464927416916594411

`round(A167022(n)/2)`
-/

namespace A292440.P5464927416916594411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A167022 n : ℚ) / 2)

end

end A292440.P5464927416916594411

namespace A292440

/-- `round(A167022(n)/2)` -/
def P5464927416916594411.Spec : Prop :=
  ∀ n, P5464927416916594411.a n = A292440 n

end A292440

/-! ## A292440.P5991416640255109312

`A168049(n)-A007971(n)`
-/

namespace A292440.P5991416640255109312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - A007971 n

end

end A292440.P5991416640255109312

namespace A292440

/-- `A168049(n)-A007971(n)` -/
def P5991416640255109312.Spec : Prop :=
  ∀ n, P5991416640255109312.a n = A292440 n

end A292440

/-! ## A292440.P11105723086867614231

`A167022(n)+A126068(n)/2`
-/

namespace A292440.P11105723086867614231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167022 n : ℚ) + (A126068 n : ℚ) / 2

end

end A292440.P11105723086867614231

namespace A292440

/-- `A167022(n)+A126068(n)/2` -/
def P11105723086867614231.Spec : Prop :=
  ∀ n, P11105723086867614231.a n = (A292440 n : ℚ)

end A292440

/-! ## A292440.P1855596559013260123

`A168049(n)-(A126068(n)+char[1])`
-/

namespace A292440.P1855596559013260123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 n - (A126068 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A292440.P1855596559013260123

namespace A292440

/-- `A168049(n)-(A126068(n)+char[1])` -/
def P1855596559013260123.Spec : Prop :=
  ∀ n, P1855596559013260123.a n = A292440 n

end A292440

/-! ## A292440.P931875474004646935

`A154955(n+1)-A126068(n)/2`
-/

namespace A292440.P931875474004646935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154955 (n + 1) : ℚ) - (A126068 n : ℚ) / 2

end

end A292440.P931875474004646935

namespace A292440

/-- `A154955(n+1)-A126068(n)/2` -/
def P931875474004646935.Spec : Prop :=
  ∀ n, P931875474004646935.a n = (A292440 n : ℚ)

end A292440

/-!
# A292441: Largest m such that m^2 divides A000984(n).

The programs for A292441, there is no canonical definition to state claims against.
-/

/-! ## A292441.P10695338666578260464

`A056056(comp[2*(n+1)]+1)`
-/

namespace A292441.P10695338666578260464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A292441.P10695338666578260464

/-! ## A292441.P17800705899153561225

`A056043(2*gcd(n, C(2, n)))`
-/

namespace A292441.P17800705899153561225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (2 * Nat.gcd n (Nat.choose 2 n))

end

end A292441.P17800705899153561225

/-! ## A292441.P8001943189225977861

`A056043(ceil(acot(n)+n)+n-1)`
-/

namespace A292441.P8001943189225977861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉ + ((n : ℤ) - 1)).toNat

end

end A292441.P8001943189225977861

/-! ## A292441.P4835887179909243189

`A056043(A004277(n))`
-/

namespace A292441.P4835887179909243189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A004277 n).toNat

end

end A292441.P4835887179909243189

/-! ## A292441.P7784971799611401482

`A056043(A004275(n+1))`
-/

namespace A292441.P7784971799611401482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A004275 (n + 1)).toNat

end

end A292441.P7784971799611401482

/-! ## A292441.P15794163107415147056

`A056043(A092535(n+1))`
-/

namespace A292441.P15794163107415147056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A092535 (n + 1)).toNat

end

end A292441.P15794163107415147056

/-! ## A292441.P8482346083426472490

`A056043(A316571(n+1))`
-/

namespace A292441.P8482346083426472490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A316571 (n + 1)).toNat

end

end A292441.P8482346083426472490

/-! ## A292441.P5551188603818352594

`A056043(A004278(n+2))`
-/

namespace A292441.P5551188603818352594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A004278 (n + 2)).toNat

end

end A292441.P5551188603818352594

/-! ## A292441.P11666893319133880094

`A056043(A058992(n+2))`
-/

namespace A292441.P11666893319133880094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A058992 (n + 2)).toNat

end

end A292441.P11666893319133880094

/-! ## A292441.P1702687398472781888

`A056043(A300576(n+2))`
-/

namespace A292441.P1702687398472781888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A300576 (n + 2)).toNat

end

end A292441.P1702687398472781888

/-! ## A292441.P2641144093315067349

`A056043(2*A065033(2*n))`
-/

namespace A292441.P2641144093315067349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (2 * A065033 (2 * n)).toNat

end

end A292441.P2641144093315067349

/-! ## A292441.P15017534598389316458

`A056043(2*(A000007(n)+n))`
-/

namespace A292441.P15017534598389316458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (2 * (A000007 n + (n : ℤ))).toNat

end

end A292441.P15017534598389316458

/-! ## A292441.P10558907148078240661

`A056043(2*(A000038(n)+n))`
-/

namespace A292441.P10558907148078240661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (2 * (A000038 n + (n : ℤ))).toNat

end

end A292441.P10558907148078240661

/-! ## A292441.P7115772031826278214

`A056043(A000007(n)+n+n)`
-/

namespace A292441.P7115772031826278214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A000007 n + (n : ℤ) + (n : ℤ)).toNat

end

end A292441.P7115772031826278214

/-! ## A292441.P7667206885325836548

`A056043(A000038(n)+n+n)`
-/

namespace A292441.P7667206885325836548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A000038 n + (n : ℤ) + (n : ℤ)).toNat

end

end A292441.P7667206885325836548

/-! ## A292441.P10104273168534218608

`A056056(A004277(n))*A245211(A216770(n+1))`
-/

namespace A292441.P10104273168534218608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (A004277 n).toNat * A245211 (A216770 (n + 1)).toNat

end

end A292441.P10104273168534218608

/-! ## A292441.P7311490557237539224

`sqrt(A292442(n))`
-/

namespace A292441.P7311490557237539224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A292442 n : ℝ)

end

end A292441.P7311490557237539224

/-!
# A292442: a(n) = A292441(n)^2.

The programs for A292442, there is no canonical definition to state claims against.
-/

/-! ## A292442.P14025010807940350477

`A292441(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292442.P14025010807940350477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292441 n ^ 2

end

end A292442.P14025010807940350477

/-! ## A292442.P5700279511264676765

`A056057(gcd(n, C(2, n))+n)`
-/

namespace A292442.P5700279511264676765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (Nat.gcd n (Nat.choose 2 n) + n)

end

end A292442.P5700279511264676765

/-! ## A292442.P5295084976144041340

`A056057(floor(acot(n))+2*n)`
-/

namespace A292442.P5295084976144041340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A292442.P5295084976144041340

/-! ## A292442.P6078890335915292190

`A056057(round(1/acot(n))+n)`
-/

namespace A292442.P6078890335915292190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A292442.P6078890335915292190

/-! ## A292442.P18043791043140572694

`A056057(2*round(acot(n)+n))`
-/

namespace A292442.P18043791043140572694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (2 * SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A292442.P18043791043140572694

/-! ## A292442.P12413615766003428733

`A056057(floor(3/acot(n))-n)`
-/

namespace A292442.P12413615766003428733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A292442.P12413615766003428733

/-! ## A292442.P6655951832063537095

`A056057(round(acot(n)+n)+n)`
-/

namespace A292442.P6655951832063537095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (n : ℤ)).toNat

end

end A292442.P6655951832063537095

/-! ## A292442.P3879689354643951135

`A056057(comp[2*(n+1)]+1)`
-/

namespace A292442.P3879689354643951135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056057 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A292442.P3879689354643951135

/-! ## A292442.P7590076451584377669

`A056043(A004277(n))²`
-/

namespace A292442.P7590076451584377669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A004277 n).toNat ^ 2

end

end A292442.P7590076451584377669

/-! ## A292442.P2300694572197263641

`A056043(A004275(n+1))²`
-/

namespace A292442.P2300694572197263641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A004275 (n + 1)).toNat ^ 2

end

end A292442.P2300694572197263641

/-! ## A292442.P13071128431550119395

`A056043(A092535(n+1))²`
-/

namespace A292442.P13071128431550119395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A092535 (n + 1)).toNat ^ 2

end

end A292442.P13071128431550119395

/-! ## A292442.P16621722265621781305

`A056043(A316571(n+1))²`
-/

namespace A292442.P16621722265621781305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A316571 (n + 1)).toNat ^ 2

end

end A292442.P16621722265621781305

/-! ## A292442.P48573580478042698

`A056043(A004278(n+2))²`
-/

namespace A292442.P48573580478042698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A004278 (n + 2)).toNat ^ 2

end

end A292442.P48573580478042698

/-! ## A292442.P10597532311644664314

`A056043(A058992(n+2))²`
-/

namespace A292442.P10597532311644664314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A058992 (n + 2)).toNat ^ 2

end

end A292442.P10597532311644664314

/-! ## A292442.P3563341838425797041

`A056043(A300576(n+2))²`
-/

namespace A292442.P3563341838425797041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056043 (A300576 (n + 2)).toNat ^ 2

end

end A292442.P3563341838425797041

/-! ## A292442.P5145261130009147806

`A056056(A028310(2*n))²`
-/

namespace A292442.P5145261130009147806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (A028310 (2 * n)).toNat ^ 2

end

end A292442.P5145261130009147806

/-! ## A292442.P15803126465473082725

`A056056(A028310(n)+n)²`
-/

namespace A292442.P15803126465473082725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056056 (A028310 n + (n : ℤ)).toNat ^ 2

end

end A292442.P15803126465473082725

/-! ## A292442.P6020444371388382773

`A000984(n)/A069113(n)`
-/

namespace A292442.P6020444371388382773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A069113 n : ℚ)

end

end A292442.P6020444371388382773

/-!
# A292443: a(n) = (5/32)*A000045(6*n)^2.

The programs for A292443, the canonical program `A292443.P16824726598112249444` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292443 has offset 0).

The definition of A292443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292443.P16824726598112249444

`10*A298101(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292443

/-- `10*A298101(n)` -/
def P16824726598112249444.Spec : Prop :=
  ∀ n, P16824726598112249444.a n = A292443 n

theorem P16824726598112249444.correct : P16824726598112249444.Spec := by
  intro n
  simp only [A292443]

end A292443

/-!
# A292445: Expansion of a q-series used by Ramanujan in his Lost Notebook.

The programs for A292445, there is no canonical definition to state claims against.
-/

/-! ## A292445.P6650168728497209080

`A005843(A256209(n))-A279715(n)`
-/

namespace A292445.P6650168728497209080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A256209 n).toNat - A279715 n

end

end A292445.P6650168728497209080

/-! ## A292445.P14065111505952576057

`A005843(A256052(n)/8)-A279715(n)`
-/

namespace A292445.P14065111505952576057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A256052 n : ℚ) / 8)).toNat - A279715 n

end

end A292445.P14065111505952576057

/-! ## A292445.P12976949788236889196

`A005843(A153140(2*n+1)/2)-A279715(n)`
-/

namespace A292445.P12976949788236889196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A153140 (2 * n + 1) : ℚ) / 2)).toNat - A279715 n

end

end A292445.P12976949788236889196

/-! ## A292445.P17298427826323967292

`2*A256209(n)-A317084(A137507(n))`
-/

namespace A292445.P17298427826323967292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256209 n - A317084 (A137507 n).toNat

end

end A292445.P17298427826323967292

/-! ## A292445.P14782148210966596490

`A153140(2*n+1)-A317084(A137507(n))`
-/

namespace A292445.P14782148210966596490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153140 (2 * n + 1) - A317084 (A137507 n).toNat

end

end A292445.P14782148210966596490

/-!
# A292446: Numbers k such that sigma((k + 1) / 2) is a prime q.

The programs for A292446, there is no canonical definition to state claims against.
-/

/-! ## A292446.P16508439401805256974

`2*A023194(n+1)-1`
-/

namespace A292446.P16508439401805256974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023194 (n + 1) - 1

end

end A292446.P16508439401805256974

/-! ## A292446.P14985209452341550892

`2*A270413(n+1)-3`
-/

namespace A292446.P14985209452341550892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270413 (n + 1) - 3

end

end A292446.P14985209452341550892

/-! ## A292446.P1321721187319424078

`A023194(A000027(n+1))+A023194(n+1)-1`
-/

namespace A292446.P1321721187319424078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (A000027 (n + 1)).toNat + (A023194 (n + 1) - 1)

end

end A292446.P1321721187319424078

/-! ## A292446.P6787483889761058998

`A008683(A031927(n))+2*A023194(n+1)`
-/

namespace A292446.P6787483889761058998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A031927 n).toNat + 2 * A023194 (n + 1)

end

end A292446.P6787483889761058998

/-! ## A292446.P4097709290612870602

`A023194(n+1)+A023194(n+1)-A001221(A055638(n+1))`
-/

namespace A292446.P4097709290612870602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) + (A023194 (n + 1) - A001221 (A055638 (n + 1)).toNat)

end

end A292446.P4097709290612870602

/-! ## A292446.P14883912398308533704

`A023194(n+1)+A023194(n+1)-A001222(A030291(n+1))`
-/

namespace A292446.P14883912398308533704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) + (A023194 (n + 1) - A001222 (A030291 (n + 1)).toNat)

end

end A292446.P14883912398308533704

/-! ## A292446.P17946883850338163362

`A023194(n+1)+A023194(n+1)-A001222(A228567(n+1))`
-/

namespace A292446.P17946883850338163362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) + (A023194 (n + 1) - A001222 (A228567 (n + 1)).toNat)

end

end A292446.P17946883850338163362

/-! ## A292446.P6977007729161223517

`A023194(n+1)+A023194(n+1)-A007318(A000217(n))`
-/

namespace A292446.P6977007729161223517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) + (A023194 (n + 1) - A007318 (A000217 n).toNat)

end

end A292446.P6977007729161223517

/-! ## A292446.P8910760015255520183

`A023194(n+1)+A023194(n+1)-A001222(A193934(n+1))`
-/

namespace A292446.P8910760015255520183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) + (A023194 (n + 1) - A001222 (A193934 (n + 1)).toNat)

end

end A292446.P8910760015255520183

/-!
# A292447: Primes p such that sigma((p + 1) / 2) is a prime q.

The programs for A292447, there is no canonical definition to state claims against.
-/

/-! ## A292447.P10126019903366047095

`2*A249902(n+1)-1`
-/

namespace A292447.P10126019903366047095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249902 (n + 1) - 1

end

end A292447.P10126019903366047095

/-! ## A292447.P1576337643095581528

`A316441(A039635(n+2))+2*A249902(n+1)`
-/

namespace A292447.P1576337643095581528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A039635 (n + 2)).toNat + 2 * A249902 (n + 1)

end

end A292447.P1576337643095581528

/-! ## A292447.P2214612221098278294

`A316441(Δ[A007504(n)])+2*A249902(n+1)`
-/

namespace A292447.P2214612221098278294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (f1 (n + 1) - f1 n).toNat + 2 * A249902 (n + 1)

end

end A292447.P2214612221098278294

/-! ## A292447.P456860442697015730

`A316441(A002476(n+1))+2*A249902(n+1)`
-/

namespace A292447.P456860442697015730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A002476 (n + 1)).toNat + 2 * A249902 (n + 1)

end

end A292447.P456860442697015730

/-! ## A292447.P10445290660619959562

`A249902(n+1)+A249902(n+1)-A014963(A315727(n))`
-/

namespace A292447.P10445290660619959562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1) + (A249902 (n + 1) - A014963 (A315727 n).toNat)

end

end A292447.P10445290660619959562

/-! ## A292447.P362881106452115712

`A316441(A217329(n+1))+2*A249902(n+1)`
-/

namespace A292447.P362881106452115712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A217329 (n + 1)).toNat + 2 * A249902 (n + 1)

end

end A292447.P362881106452115712

/-! ## A292447.P1738567135752219349

`A316441(A007491(n+1))+2*A249902(n+1)`
-/

namespace A292447.P1738567135752219349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A007491 (n + 1)).toNat + 2 * A249902 (n + 1)

end

end A292447.P1738567135752219349

/-! ## A292447.P18409965767445611314

`A249902(n+1)+A249902(n+1)-A007318(∑[n])`
-/

namespace A292447.P18409965767445611314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1) + (A249902 (n + 1) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A292447.P18409965767445611314

/-! ## A292447.P5670661186755667442

`∩[A256917(n+1), A292446(n+1)]`
-/

namespace A292447.P5670661186755667442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292447.P5670661186755667442

/-! ## A292447.P1220692306813327809

`A249902(n+1)+A249902(n+1)-A003415(A025019(n+1))`
-/

namespace A292447.P1220692306813327809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1) + (A249902 (n + 1) - A003415 (A025019 (n + 1)).toNat)

end

end A292447.P1220692306813327809

/-!
# A292448: Primes q of the form sigma((p + 1) / 2) where p is a prime.

The programs for A292448, there is no canonical definition to state claims against.
-/

/-! ## A292448.P16984107554792854407

`A067792(A249902(n+1))`
-/

namespace A292448.P16984107554792854407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A249902 (n + 1)).toNat

end

end A292448.P16984107554792854407

/-! ## A292448.P10007710775516737003

`A000265(∑{d}[A249902(n+1), #])`
-/

namespace A292448.P10007710775516737003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A292448.P10007710775516737003

/-! ## A292448.P12838814893770450107

`A006530(∑{d}[A249902(n+1), #])`
-/

namespace A292448.P12838814893770450107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A292448.P12838814893770450107

/-! ## A292448.P7054393507847742016

`A007913(∑{d}[A249902(n+1), #])`
-/

namespace A292448.P7054393507847742016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A292448.P7054393507847742016

/-! ## A292448.P11913937493476805761

`A349162(gcd(2, a(n-1))*A249902(n+1))` with `a(0)=3`
-/

namespace A292448.P11913937493476805761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A349162 ((Int.gcd 2 (a (n - 1)) : ℤ) * A249902 (n + 1)).toNat

end

end A292448.P11913937493476805761

/-!
# A292449: Numbers where 9 outnumbers any other digit.

The programs for A292449, there is no canonical definition to state claims against.
-/

/-! ## A292449.P15577639728244096939

`A075617(A292739(n+1))`
-/

namespace A292449.P15577639728244096939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A292739 (n + 1)).toNat

end

end A292449.P15577639728244096939

/-! ## A292449.P17508965401918283206

`record[A292739(A199538(n+1))]`
-/

namespace A292449.P17508965401918283206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (A199538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292449.P17508965401918283206

/-! ## A292449.P17377463658116592260

`record[A292739(A358106(n+2))]`
-/

namespace A292449.P17377463658116592260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292739 (A358106 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292449.P17377463658116592260

/-! ## A292449.P16466089427213662647

`A233583(A292739(n+1)+1)`
-/

namespace A292449.P16466089427213662647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A292739 (n + 1) + 1).toNat

end

end A292449.P16466089427213662647

/-! ## A292449.P1235494678927932036

`A008615(6*A292739(n+1))`
-/

namespace A292449.P1235494678927932036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (6 * A292739 (n + 1)).toNat

end

end A292449.P1235494678927932036

/-!
# A292451: Numbers where 1 outnumbers any other digit.

The programs for A292451, there is no canonical definition to state claims against.
-/

/-! ## A292451.P7895710761399150805

`A115510(A292731(n+1))`
-/

namespace A292451.P7895710761399150805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A292731 (n + 1)).toNat

end

end A292451.P7895710761399150805

/-! ## A292451.P8537258267644048881

`A292731(n+1)%A038011(n)`
-/

namespace A292451.P8537258267644048881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292731 (n + 1)) (A038011 n)

end

end A292451.P8537258267644048881

/-! ## A292451.P11028793753820026348

`A292731(n+1)^A185255(n)!`
-/

namespace A292451.P11028793753820026348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292731 (n + 1) ^ Nat.factorial (A185255 n).toNat

end

end A292451.P11028793753820026348

/-! ## A292451.P12207143006358752950

`A292731(n+1)+A000038(A027642(n))`
-/

namespace A292451.P12207143006358752950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292731 (n + 1) + A000038 (A027642 n).toNat

end

end A292451.P12207143006358752950

/-! ## A292451.P4058560070400702452

`A292731(n+1)+A000007(A083994(n))`
-/

namespace A292451.P4058560070400702452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292731 (n + 1) + A000007 (A083994 n).toNat

end

end A292451.P4058560070400702452

/-!
# A292452: Numbers where 2 outnumbers any other digit.

The programs for A292452, there is no canonical definition to state claims against.
-/

/-! ## A292452.P3234737291734268124

`record[A292732(A199538(n+1))]`
-/

namespace A292452.P3234737291734268124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292732 (A199538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292452.P3234737291734268124

/-! ## A292452.P9200956333466687317

`A233583(A292732(n+1)+1)`
-/

namespace A292452.P9200956333466687317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A292732 (n + 1) + 1).toNat

end

end A292452.P9200956333466687317

/-! ## A292452.P10067649878405156008

`A343609(9*A292732(n+1))`
-/

namespace A292452.P10067649878405156008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (9 * A292732 (n + 1)).toNat

end

end A292452.P10067649878405156008

/-! ## A292452.P14757649222504726914

`∩[A292732(n+1), A248182(n)]`
-/

namespace A292452.P14757649222504726914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248182 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292452.P14757649222504726914

/-! ## A292452.P10029926036777704737

`A292732(n+1)%A083621(n+3)`
-/

namespace A292452.P10029926036777704737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292732 (n + 1)) (A083621 (n + 3))

end

end A292452.P10029926036777704737

/-!
# A292453: Numbers where 3 outnumbers any other digit.

The programs for A292453, there is no canonical definition to state claims against.
-/

/-! ## A292453.P13099173872130461349

`record[A292733(A199538(n+1))]`
-/

namespace A292453.P13099173872130461349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292733 (A199538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292453.P13099173872130461349

/-! ## A292453.P15412385080135643118

`A233583(A292733(n+1)+1)`
-/

namespace A292453.P15412385080135643118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A292733 (n + 1) + 1).toNat

end

end A292453.P15412385080135643118

/-! ## A292453.P7865529354710849552

`filter[A292733(n+1), A316824(#)]`
-/

namespace A292453.P7865529354710849552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316824 (f1 j).toNat = 1) n)

end

end A292453.P7865529354710849552

/-! ## A292453.P10824394868017394011

`A292733(n+1)%A072890(n+1)`
-/

namespace A292453.P10824394868017394011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292733 (n + 1)) (A072890 (n + 1))

end

end A292453.P10824394868017394011

/-! ## A292453.P7013664088722847829

`and(A292733(n+1), A359085(n+1))`
-/

namespace A292453.P7013664088722847829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A292733 (n + 1)) (A359085 (n + 1))

end

end A292453.P7013664088722847829

/-!
# A292454: Numbers where 4 outnumbers any other digit.

The programs for A292454, there is no canonical definition to state claims against.
-/

/-! ## A292454.P15904074609292945465

`record[A292734(A199538(n+1))]`
-/

namespace A292454.P15904074609292945465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292734 (A199538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292454.P15904074609292945465

/-! ## A292454.P14872734158765861457

`A233583(A292734(n+1)+1)`
-/

namespace A292454.P14872734158765861457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A292734 (n + 1) + 1).toNat

end

end A292454.P14872734158765861457

/-! ## A292454.P2220918818124932146

`A292734(n+1)%A292766(n+1)`
-/

namespace A292454.P2220918818124932146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292734 (n + 1)) (A292766 (n + 1))

end

end A292454.P2220918818124932146

/-! ## A292454.P9566743179240842288

`and(A292734(n+1), A359085(n+1))`
-/

namespace A292454.P9566743179240842288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A292734 (n + 1)) (A359085 (n + 1))

end

end A292454.P9566743179240842288

/-! ## A292454.P11149891766457275480

`A292734(n+1)%A005101(A005914(n))`
-/

namespace A292454.P11149891766457275480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292734 (n + 1)) (A005101 (A005914 n).toNat)

end

end A292454.P11149891766457275480

/-!
# A292455: Numbers where 5 outnumbers any other digit.

The programs for A292455, there is no canonical definition to state claims against.
-/

/-! ## A292455.P9186081269347119689

`A075617(A292735(n+1))`
-/

namespace A292455.P9186081269347119689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A292735 (n + 1)).toNat

end

end A292455.P9186081269347119689

/-! ## A292455.P5296006370962837795

`record[A292735(A199538(n+1))]`
-/

namespace A292455.P5296006370962837795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292735 (A199538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292455.P5296006370962837795

/-! ## A292455.P14761562857031624869

`A233583(A292735(n+1)+1)`
-/

namespace A292455.P14761562857031624869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A292735 (n + 1) + 1).toNat

end

end A292455.P14761562857031624869

/-! ## A292455.P16716315290887744792

`A059995(10*A292735(n+1))`
-/

namespace A292455.P16716315290887744792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (10 * A292735 (n + 1)).toNat

end

end A292455.P16716315290887744792

/-! ## A292455.P6075737319614119189

`and(A292735(n+1), A359085(n+1))`
-/

namespace A292455.P6075737319614119189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A292735 (n + 1)) (A359085 (n + 1))

end

end A292455.P6075737319614119189

/-!
# A292456: Numbers where 6 outnumbers any other digit.

The programs for A292456, there is no canonical definition to state claims against.
-/

/-! ## A292456.P13563414303437348836

`A075617(A292736(n+1))`
-/

namespace A292456.P13563414303437348836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A292736 (n + 1)).toNat

end

end A292456.P13563414303437348836

/-! ## A292456.P7908619070175365619

`record[A292736(A199538(n+1))]`
-/

namespace A292456.P7908619070175365619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292736 (A199538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292456.P7908619070175365619

/-! ## A292456.P13899548041663874967

`A233583(A292736(n+1)+1)`
-/

namespace A292456.P13899548041663874967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A292736 (n + 1) + 1).toNat

end

end A292456.P13899548041663874967

/-! ## A292456.P13654552270952635390

`A106609(8*A292736(n+1))`
-/

namespace A292456.P13654552270952635390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (8 * A292736 (n + 1)).toNat

end

end A292456.P13654552270952635390

/-! ## A292456.P4685189515500575821

`A343609(9*A292736(n+1))`
-/

namespace A292456.P4685189515500575821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (9 * A292736 (n + 1)).toNat

end

end A292456.P4685189515500575821

/-!
# A292457: Numbers where 7 outnumbers any other digit.

The programs for A292457, there is no canonical definition to state claims against.
-/

/-! ## A292457.P12234237424845850462

`A075617(A292737(n+1))`
-/

namespace A292457.P12234237424845850462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A292737 (n + 1)).toNat

end

end A292457.P12234237424845850462

/-! ## A292457.P4627026819086013102

`record[A292737(A199538(n+1))]`
-/

namespace A292457.P4627026819086013102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292737 (A199538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292457.P4627026819086013102

/-! ## A292457.P10194968821301725612

`record[A292737(A358106(n+2))]`
-/

namespace A292457.P10194968821301725612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292737 (A358106 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292457.P10194968821301725612

/-! ## A292457.P17572405038042471343

`A233583(A292737(n+1)+1)`
-/

namespace A292457.P17572405038042471343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A292737 (n + 1) + 1).toNat

end

end A292457.P17572405038042471343

/-! ## A292457.P5089571775530731177

`A292737(n+1)%A114529(n+1)`
-/

namespace A292457.P5089571775530731177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292737 (n + 1)) (A114529 (n + 1))

end

end A292457.P5089571775530731177

/-!
# A292458: Numbers where 8 outnumbers any other digit.

The programs for A292458, there is no canonical definition to state claims against.
-/

/-! ## A292458.P5617668463810013241

`A075617(A292738(n+1))`
-/

namespace A292458.P5617668463810013241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A292738 (n + 1)).toNat

end

end A292458.P5617668463810013241

/-! ## A292458.P16525569053780169928

`record[A292738(A199538(n+1))]`
-/

namespace A292458.P16525569053780169928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292738 (A199538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292458.P16525569053780169928

/-! ## A292458.P11777346856504190188

`A233583(A292738(n+1)+1)`
-/

namespace A292458.P11777346856504190188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A292738 (n + 1) + 1).toNat

end

end A292458.P11777346856504190188

/-! ## A292458.P4249570660792943399

`A008615(6*A292738(n+1))`
-/

namespace A292458.P4249570660792943399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (6 * A292738 (n + 1)).toNat

end

end A292458.P4249570660792943399

/-! ## A292458.P4275429087502932990

`A106609(8*A292738(n+1))`
-/

namespace A292458.P4275429087502932990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (8 * A292738 (n + 1)).toNat

end

end A292458.P4275429087502932990

/-!
# A292459: a(n) is the smallest number whose factorial has at least n! divisors.

The programs for A292459, there is no canonical definition to state claims against.
-/

/-! ## A292459.P6055533007728034897

`A324705(A069916(n))-A069916(n)`
-/

namespace A292459.P6055533007728034897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (A069916 n).toNat - A069916 n

end

end A292459.P6055533007728034897

/-! ## A292459.P6270448129152803447

`A280814(A105343(n))%A000124(n)`
-/

namespace A292459.P6270448129152803447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280814 (A105343 n).toNat) (A000124 n)

end

end A292459.P6270448129152803447

/-! ## A292459.P881670099237972652

`A121900(A052905(n²)-A052905(n))`
-/

namespace A292459.P881670099237972652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A052905 (n ^ 2) - A052905 n).toNat

end

end A292459.P881670099237972652

/-! ## A292459.P977456095539234232

`A281333(n)-A347069(A049810(3*n+4))`
-/

namespace A292459.P977456095539234232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281333 n - A347069 (A049810 (3 * n + 4)).toNat

end

end A292459.P977456095539234232

/-! ## A292459.P17600267099647932424

`A360924(A360955(2*n+3)-A360954(n+3))`
-/

namespace A292459.P17600267099647932424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (A360955 (2 * n + 3) - A360954 (n + 3)).toNat

end

end A292459.P17600267099647932424

/-!
# A292460: Expansion of (1 - x - x^2 - sqrt((1 - x - x^2)^2 - 4*x^3))/(2*x^3) in powers of x.

The programs for A292460, there is no canonical definition to state claims against.
-/

/-! ## A292460.P18157025187125229937

`A004148(n+1)`
-/

namespace A292460.P18157025187125229937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 1)

end

end A292460.P18157025187125229937

/-! ## A292460.P15673575252557291238

`A203019(n+3)`
-/

namespace A292460.P15673575252557291238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (n + 3)

end

end A292460.P15673575252557291238

/-! ## A292460.P9157418044238814875

`abs(A292461(n+3))`
-/

namespace A292460.P9157418044238814875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292461 (n + 3)|

end

end A292460.P9157418044238814875

/-! ## A292460.P14159655798915013763

`∑[∑[A097779(n+1)]]+1`
-/

namespace A292460.P14159655798915013763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097779 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A292460.P14159655798915013763

/-! ## A292460.P11347596470957318207

`A188460(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A292460.P11347596470957318207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A188460 (n - 2) + a (n - 1)

end

end A292460.P11347596470957318207

/-! ## A292460.P14838877287303676926

`ratio[A004148(n)]*A004148(n)`
-/

namespace A292460.P14838877287303676926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A004148 n : ℚ)

end

end A292460.P14838877287303676926

/-! ## A292460.P9975070599452690562

`A089735(n)-A097779(n+2)`
-/

namespace A292460.P9975070599452690562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089735 n - A097779 (n + 2)

end

end A292460.P9975070599452690562

/-! ## A292460.P18077393965832439108

`A350114(n+1)+A350114(n+2)`
-/

namespace A292460.P18077393965832439108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350114 (n + 1) + A350114 (n + 2)

end

end A292460.P18077393965832439108

/-! ## A292460.P16962122827223407236

`A093128(n)-A166297(n+1)`
-/

namespace A292460.P16962122827223407236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093128 n - A166297 (n + 1)

end

end A292460.P16962122827223407236

/-! ## A292460.P14943357582097646463

`A051291(n+1)-A110320(n+1)`
-/

namespace A292460.P14943357582097646463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051291 (n + 1) - A110320 (n + 1)

end

end A292460.P14943357582097646463

/-! ## A292460.P11274715267193974020

`A097860(∑[A008619(n)])`
-/

namespace A292460.P11274715267193974020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292460.P11274715267193974020

/-! ## A292460.P11527458873661027032

`A097860(A087811(n+1))`
-/

namespace A292460.P11527458873661027032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (A087811 (n + 1)).toNat

end

end A292460.P11527458873661027032

/-! ## A292460.P12969205284434011071

`A097860(A002620(n+2))`
-/

namespace A292460.P12969205284434011071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (A002620 (n + 2)).toNat

end

end A292460.P12969205284434011071

/-! ## A292460.P5689735869419471030

`A097860(A076921(n+2))`
-/

namespace A292460.P5689735869419471030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (A076921 (n + 2)).toNat

end

end A292460.P5689735869419471030

/-! ## A292460.P580977648085634910

`A097860(A182531(n+2))`
-/

namespace A292460.P580977648085634910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (A182531 (n + 2)).toNat

end

end A292460.P580977648085634910

/-! ## A292460.P1218325999265102656

`A097860(∑[A110654(n+1)])`
-/

namespace A292460.P1218325999265102656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292460.P1218325999265102656

/-! ## A292460.P7663175114120504191

`A097860(A008619(n+1)*A008619(n))`
-/

namespace A292460.P7663175114120504191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (A008619 (n + 1) * A008619 n).toNat

end

end A292460.P7663175114120504191

/-! ## A292460.P17005126162012263241

`A273713(∑[n]+2)`
-/

namespace A292460.P17005126162012263241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273713 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A292460.P17005126162012263241

/-! ## A292460.P14784773916996788492

`A097724(∑[n+1])`
-/

namespace A292460.P14784773916996788492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292460.P14784773916996788492

/-! ## A292460.P13186850435422933766

`A064645(A000124(n+2))`
-/

namespace A292460.P13186850435422933766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (A000124 (n + 2)).toNat

end

end A292460.P13186850435422933766

/-!
# A292461: Expansion of (1 - x - x^2 + sqrt((1 - x - x^2)^2 - 4*x^3))/2 in powers of x.

The programs for A292461, there is no canonical definition to state claims against.
-/

/-! ## A292461.P12104930584079240266

`A154955(n+1)-A203019(n)`
-/

namespace A292461.P12104930584079240266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) - A203019 n

end

end A292461.P12104930584079240266

/-! ## A292461.P2203775456036537227

`A015149(A019432(n))-A203019(n)`
-/

namespace A292461.P2203775456036537227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015149 (A019432 n).toNat - A203019 n

end

end A292461.P2203775456036537227

/-! ## A292461.P16892498971482385194

`A000007(n)-A203019(A254667(n))`
-/

namespace A292461.P16892498971482385194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A203019 (A254667 n).toNat

end

end A292461.P16892498971482385194

/-! ## A292461.P9936121469937648658

`A121373(A059845(n))-A203019(n)`
-/

namespace A292461.P9936121469937648658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A059845 n).toNat - A203019 n

end

end A292461.P9936121469937648658

/-! ## A292461.P1503554915266284047

`A154269(A276086(n))-A203019(n)`
-/

namespace A292461.P1503554915266284047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A276086 n).toNat - A203019 n

end

end A292461.P1503554915266284047

/-!
# A292462: Number of partitions of n with n sorts of part 1.

The programs for A292462, there is no canonical definition to state claims against.
-/

/-! ## A292462.P5718387441299398010

`A292741(∑[4*n])`
-/

namespace A292462.P5718387441299398010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292462.P5718387441299398010

/-! ## A292462.P18013997151674464491

`gcd(A169585(n), A292741(A046092(n)))`
-/

namespace A292462.P18013997151674464491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A292741 (A046092 n).toNat)

end

end A292462.P18013997151674464491

/-! ## A292462.P9673038605060281562

`lcm(A033999(n), A292741(A046092(n)))`
-/

namespace A292462.P9673038605060281562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A292741 (A046092 n).toNat)

end

end A292462.P9673038605060281562

/-! ## A292462.P7107591434507369503

`or(A000007(n), A292741(A046092(n)))`
-/

namespace A292462.P7107591434507369503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292741 (A046092 n).toNat)

end

end A292462.P7107591434507369503

/-! ## A292462.P5575771030429270019

`A292741(A046092(n))+A001222(gcd(n, n+1))`
-/

namespace A292462.P5575771030429270019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292741 (A046092 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A292462.P5575771030429270019

/-!
# A292463: Number of partitions of n with n kinds of 1.

The programs for A292463, there is no canonical definition to state claims against.
-/

/-! ## A292463.P11220918071116879346

`A292508(∑[4*n])`
-/

namespace A292463.P11220918071116879346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292463.P11220918071116879346

/-! ## A292463.P10965627936396028705

`A292508(A046092(n))+val(2*n+1, 2)`
-/

namespace A292463.P10965627936396028705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A046092 n).toNat + (SequenceMachineLib.valuation (2 * n + 1) 2 : ℤ)

end

end A292463.P10965627936396028705

/-! ## A292463.P8188257248923986151

`or(A000007(n), A292508(A046092(n)))`
-/

namespace A292463.P8188257248923986151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A292508 (A046092 n).toNat)

end

end A292463.P8188257248923986151

/-! ## A292463.P3582345062642084445

`A292508(A046092(n))+A000035(2*n)`
-/

namespace A292463.P3582345062642084445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292508 (A046092 n).toNat + A000035 (2 * n)

end

end A292463.P3582345062642084445

/-! ## A292463.P11195641174133721904

`A292508(A046092(n))^(A038573(n)%2)`
-/

namespace A292463.P11195641174133721904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292508 (A046092 n).toNat : ℚ) ^ (Int.tmod (A038573 n) 2 : ℤ)

end

end A292463.P11195641174133721904

/-! ## A292463.P3400779547462257868

`A000035(A100449(n))*A292508(A046092(n))`
-/

namespace A292463.P3400779547462257868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A100449 n).toNat * A292508 (A046092 n).toNat

end

end A292463.P3400779547462257868

/-! ## A292463.P1848850855288679298

`A001065(A000040(n+1))*A292508(A046092(n))`
-/

namespace A292463.P1848850855288679298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A000040 (n + 1)).toNat * A292508 (A046092 n).toNat

end

end A292463.P1848850855288679298

/-!
# A292464: a(n) = A292136(n)^2 + A292137(n)^2.

The programs for A292464, there is no canonical definition to state claims against.
-/

/-! ## A292464.P6373221123382011026

`A292136(n)²+A292137(n)²`
-/

namespace A292464.P6373221123382011026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n ^ 2 + A292137 n ^ 2

end

end A292464.P6373221123382011026

/-! ## A292464.P14033909351343193378

`A292136(n)²+A292138(n)²`
-/

namespace A292464.P14033909351343193378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292136 n ^ 2 + A292138 n ^ 2

end

end A292464.P14033909351343193378

/-!
# A292465: a(n) = n*F(n)*F(n+1), where F = A000045.

The programs for A292465, the canonical program `A292465.P4226917308943281277` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292465 has offset 0).

The definition of A292465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292465.P11960045771092532552

`n*∑[round(ϕ^n/sqrt(5))²]`
-/

namespace A292465.P11960045771092532552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292465.P11960045771092532552

namespace A292465

/-- `n*∑[round(ϕ^n/sqrt(5))²]` -/
def P11960045771092532552.Spec : Prop :=
  ∀ n, P11960045771092532552.a n = A292465 n

end A292465

/-! ## A292465.P11071053453636894416

`n*∑[A175395(n)]/2`
-/

namespace A292465.P11071053453636894416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A292465.P11071053453636894416

namespace A292465

/-- `n*∑[A175395(n)]/2` -/
def P11071053453636894416.Spec : Prop :=
  ∀ n, P11071053453636894416.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P13454348478024511362

`n*A079472(n+1)/2`
-/

namespace A292465.P13454348478024511362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A079472 (n + 1) : ℚ) / 2

end

end A292465.P13454348478024511362

namespace A292465

/-- `n*A079472(n+1)/2` -/
def P13454348478024511362.Spec : Prop :=
  ∀ n, P13454348478024511362.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P15412581075875883541

`abs(n*∑[A333378(2*n)])`
-/

namespace A292465.P15412581075875883541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A292465.P15412581075875883541

namespace A292465

/-- `abs(n*∑[A333378(2*n)])` -/
def P15412581075875883541.Spec : Prop :=
  ∀ n, P15412581075875883541.a n = A292465 n

end A292465

/-! ## A292465.P831599748891158299

`n*A114215(2*n+1)/2`
-/

namespace A292465.P831599748891158299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A114215 (2 * n + 1) : ℚ) / 2

end

end A292465.P831599748891158299

namespace A292465

/-- `n*A114215(2*n+1)/2` -/
def P831599748891158299.Spec : Prop :=
  ∀ n, P831599748891158299.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P4226917308943281277

`lcm(A023607(n), A045925(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A292465

/-- `lcm(A023607(n), A045925(n))` -/
def P4226917308943281277.Spec : Prop :=
  ∀ n, (P4226917308943281277.a n : ℤ) = A292465 n

theorem P4226917308943281277.correct : P4226917308943281277.Spec := by
  intro n
  simp only [A292465]

end A292465

/-! ## A292465.P2041400064256884945

`A238420(n+1)-A390581(n)`
-/

namespace A292465.P2041400064256884945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238420 (n + 1) - A390581 n

end

end A292465.P2041400064256884945

namespace A292465

/-- `A238420(n+1)-A390581(n)` -/
def P2041400064256884945.Spec : Prop :=
  ∀ n, P2041400064256884945.a n = A292465 n

end A292465

/-! ## A292465.P8709089104981733401

`A001654(n)*A005843(n)/2`
-/

namespace A292465.P8709089104981733401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 n * A005843 n : ℚ) / 2

end

end A292465.P8709089104981733401

namespace A292465

/-- `A001654(n)*A005843(n)/2` -/
def P8709089104981733401.Spec : Prop :=
  ∀ n, P8709089104981733401.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P15660954589219700235

`A064831(n)+A282464(n)-A001654(n)`
-/

namespace A292465.P15660954589219700235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 n + (A282464 n - A001654 n)

end

end A292465.P15660954589219700235

namespace A292465

/-- `A064831(n)+A282464(n)-A001654(n)` -/
def P15660954589219700235.Spec : Prop :=
  ∀ n, P15660954589219700235.a n = A292465 n

end A292465

/-! ## A292465.P12114401302907587739

`A027941(n)+A282464(n)-A064831(n)`
-/

namespace A292465.P12114401302907587739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + (A282464 n - A064831 n)

end

end A292465.P12114401302907587739

namespace A292465

/-- `A027941(n)+A282464(n)-A064831(n)` -/
def P12114401302907587739.Spec : Prop :=
  ∀ n, P12114401302907587739.a n = A292465 n

end A292465

/-! ## A292465.P10966959359136411258

`A045925(n)+A000071(n+1)*A045925(n)`
-/

namespace A292465.P10966959359136411258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n + A000071 (n + 1) * A045925 n

end

end A292465.P10966959359136411258

namespace A292465

/-- `A045925(n)+A000071(n+1)*A045925(n)` -/
def P10966959359136411258.Spec : Prop :=
  ∀ n, P10966959359136411258.a n = A292465 n

end A292465

/-! ## A292465.P15246325207452511710

`n*A120718(n)/3`
-/

namespace A292465.P15246325207452511710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A120718 n : ℚ) / 3

end

end A292465.P15246325207452511710

namespace A292465

/-- `n*A120718(n)/3` -/
def P15246325207452511710.Spec : Prop :=
  ∀ n, P15246325207452511710.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P11266264982849093793

`n²*A001654(n)/A028310(n)`
-/

namespace A292465.P11266264982849093793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * A001654 n : ℚ) / (A028310 n : ℚ)

end

end A292465.P11266264982849093793

namespace A292465

/-- `n²*A001654(n)/A028310(n)` -/
def P11266264982849093793.Spec : Prop :=
  ∀ n, P11266264982849093793.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P7455215850988096359

`A007502(n+1)*A045925(n)-A045925(n)²`
-/

namespace A292465.P7455215850988096359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (n + 1) * A045925 n - A045925 n ^ 2

end

end A292465.P7455215850988096359

namespace A292465

/-- `A007502(n+1)*A045925(n)-A045925(n)²` -/
def P7455215850988096359.Spec : Prop :=
  ∀ n, P7455215850988096359.a n = A292465 n

end A292465

/-! ## A292465.P11709601683300154042

`A023607(n)²-A023607(n)*A178521(n)`
-/

namespace A292465.P11709601683300154042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n ^ 2 - A023607 n * A178521 n

end

end A292465.P11709601683300154042

namespace A292465

/-- `A023607(n)²-A023607(n)*A178521(n)` -/
def P11709601683300154042.Spec : Prop :=
  ∀ n, P11709601683300154042.a n = A292465 n

end A292465

/-! ## A292465.P2654659618305164808

`A023607(n)*A354044(n)-A023607(n)²`
-/

namespace A292465.P2654659618305164808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 n * A354044 n - A023607 n ^ 2

end

end A292465.P2654659618305164808

namespace A292465

/-- `A023607(n)*A354044(n)-A023607(n)²` -/
def P2654659618305164808.Spec : Prop :=
  ∀ n, P2654659618305164808.a n = A292465 n

end A292465

/-! ## A292465.P12600178586320824323

`A045925(n)*A259546(n+1)/A000578(n+1)`
-/

namespace A292465.P12600178586320824323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045925 n * A259546 (n + 1) : ℚ) / (A000578 (n + 1) : ℚ)

end

end A292465.P12600178586320824323

namespace A292465

/-- `A045925(n)*A259546(n+1)/A000578(n+1)` -/
def P12600178586320824323.Spec : Prop :=
  ∀ n, P12600178586320824323.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P2994149596463841915

`A045925(n)*A259547(n+1)/A000583(n+1)`
-/

namespace A292465.P2994149596463841915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045925 n * A259547 (n + 1) : ℚ) / (A000583 (n + 1) : ℚ)

end

end A292465.P2994149596463841915

namespace A292465

/-- `A045925(n)*A259547(n+1)/A000583(n+1)` -/
def P2994149596463841915.Spec : Prop :=
  ∀ n, P2994149596463841915.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P3737453661193514724

`n*A220362(n+1)/A020695(n)`
-/

namespace A292465.P3737453661193514724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A220362 (n + 1) : ℚ) / (A020695 n : ℚ)

end

end A292465.P3737453661193514724

namespace A292465

/-- `n*A220362(n+1)/A020695(n)` -/
def P3737453661193514724.Spec : Prop :=
  ∀ n, P3737453661193514724.a n = (A292465 n : ℚ)

end A292465

/-! ## A292465.P5126608769287173980

`A045925(n)*A169630(n+1)/A045925(n+1)`
-/

namespace A292465.P5126608769287173980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045925 n * A169630 (n + 1) : ℚ) / (A045925 (n + 1) : ℚ)

end

end A292465.P5126608769287173980

namespace A292465

/-- `A045925(n)*A169630(n+1)/A045925(n+1)` -/
def P5126608769287173980.Spec : Prop :=
  ∀ n, P5126608769287173980.a n = (A292465 n : ℚ)

end A292465

/-!
# A292468: Number of 4-regular maps with n vertices on the torus, up to orientation-preserving and orientation-reversing isomorphisms.

The programs for A292468, there is no canonical definition to state claims against.
-/

/-! ## A292468.P2764565096925399145

`A008619(∑[A208594(n+1)])`
-/

namespace A292468.P2764565096925399145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292468.P2764565096925399145

/-!
# A292469: Let P be the sequence of distinct lattice points defined by the following rules: P(1) = (0,0), P(2) = (1,0), and for any n > 2, P(n) is the closest lattice point to P(n-1) such that the Z-coordinate of the cross product of the vectors (P(n-1), P(n)) and (P(n-1), P(j)) is strictly negative for j=1..n-2, and in case of a tie, P(n) maximizes the dot product of the vectors (P(n-2), P(n-1)) and (P(n-1), P(n)); a(n) = X-coordinate of P(n).

The programs for A292469, there is no canonical definition to state claims against.
-/

/-! ## A292469.P4612926641072666945

`A333487(A002265(n)!)+A293772(n+1)`
-/

namespace A292469.P4612926641072666945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (Nat.factorial (A002265 n).toNat) + A293772 (n + 1)

end

end A292469.P4612926641072666945

/-! ## A292469.P872394980475880063

`A293772(n+1)+A260445(A051239(A014245(n+1)))`
-/

namespace A292469.P872394980475880063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293772 (n + 1) + A260445 (A051239 (A014245 (n + 1)).toNat).toNat

end

end A292469.P872394980475880063

/-! ## A292469.P13672997036583587648

`A293539(n+1)+A185284(2*n+5)`
-/

namespace A292469.P13672997036583587648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293539 (n + 1) + A185284 (2 * n + 5)

end

end A292469.P13672997036583587648

/-! ## A292469.P8978564546948749803

`A293680(n+1)+A080224(A004731(n))`
-/

namespace A292469.P8978564546948749803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293680 (n + 1) + A080224 (A004731 n).toNat

end

end A292469.P8978564546948749803

/-! ## A292469.P6436880400986392450

`A293539(n+1)+A008683(A141145(n+1))`
-/

namespace A292469.P6436880400986392450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293539 (n + 1) + A008683 (A141145 (n + 1)).toNat

end

end A292469.P6436880400986392450

/-!
# A292470: Let P be the sequence of distinct lattice points defined by the following rules: P(1) = (0,0), P(2) = (1,0), and for any n > 2, P(n) is the closest lattice point to P(n-1) such that P(n) is a vertex of the convex hull of the set of points {P(1), ..., P(n)}, and in case of a tie, P(n) maximizes the dot product of the vectors (P(n-2), P(n-1)) and (P(n-1), P(n)); a(n) = Y-coordinate of P(n).

The programs for A292470, there is no canonical definition to state claims against.
-/

/-! ## A292470.P9264556241868305137

`A293681(n+1)%A010943(n)`
-/

namespace A292470.P9264556241868305137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293681 (n + 1)) (A010943 n)

end

end A292470.P9264556241868305137

/-! ## A292470.P3705512205266556163

`A293773(n+1)%A010943(n)`
-/

namespace A292470.P3705512205266556163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293773 (n + 1)) (A010943 n)

end

end A292470.P3705512205266556163

/-! ## A292470.P701802399320754286

`A293681(∑[∑[A097479(n)]])`
-/

namespace A292470.P701802399320754286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293681 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292470.P701802399320754286

/-! ## A292470.P976860970441754919

`A293773(n+1)+C(∑[n], A196232(n+9))`
-/

namespace A292470.P976860970441754919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293773 (n + 1) + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (A196232 (n + 9)).toNat : ℤ)

end

end A292470.P976860970441754919

/-! ## A292470.P6255410255331869633

`A324822((10*n+1)*(10*n+9))+A293773(n+1)`
-/

namespace A292470.P6255410255331869633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324822 ((10 * n + 1) * (10 * n + 9)) + A293773 (n + 1)

end

end A292470.P6255410255331869633

/-!
# A292473: Square array read by antidiagonals downwards: A(n,k) = k-th prime p such that A001222(2^p-1) = n.

The programs for A292473, there is no canonical definition to state claims against.
-/

/-! ## A292473.P4829150768581756497

`p?[A007733(p?[A246521(n+1)])]`
-/

namespace A292473.P4829150768581756497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292473.P4829150768581756497

/-! ## A292473.P4437221863728723883

`A045337(n+1)%A374869(A374895(n))`
-/

namespace A292473.P4437221863728723883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045337 (n + 1)) (A374869 (A374895 n).toNat)

end

end A292473.P4437221863728723883

/-!
# A292474: Number of solutions to +-1 +- 5 +- 12 +- ... +- n*(3*n-1)/2 = 0.

The programs for A292474, there is no canonical definition to state claims against.
-/

/-! ## A292474.P14678788551865268990

`A014566(a(A085393(n)))*A292475(n)` with `a(0)=1`
-/

namespace A292474.P14678788551865268990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014566 (a (A085393 n).toNat).toNat * A292475 n

end

end A292474.P14678788551865268990

/-!
# A292475: Number of solutions to 1 +- 5 +- 12 +- ... +- n*(3*n-1)/2 = 0.

The programs for A292475, there is no canonical definition to state claims against.
-/

/-! ## A292475.P8315070137433008944

`A292474(n+1)/2`
-/

namespace A292475.P8315070137433008944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292474 (n + 1) : ℚ) / 2

end

end A292475.P8315070137433008944

/-! ## A292475.P8572476685936309297

`Δ[∑[A292474(n)]/2]`
-/

namespace A292475.P8572476685936309297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292474 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292475.P8572476685936309297

/-! ## A292475.P1048209110718208343

`A014682(A292474(n+1))`
-/

namespace A292475.P1048209110718208343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A292474 (n + 1)).toNat

end

end A292475.P1048209110718208343

/-! ## A292475.P4658919073713699787

`Δ[A008619(∑[A292474(n)])]`
-/

namespace A292475.P4658919073713699787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292475.P4658919073713699787

/-!
# A292476: Number of solutions to +-1 +- 3 +- 5 +- 7 +- ... +- (4*n-1) = 0.

The programs for A292476, there is no canonical definition to state claims against.
-/

/-! ## A292476.P5031226994925730416

`A367087(2*n)`
-/

namespace A292476.P5031226994925730416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367087 (2 * n)

end

end A292476.P5031226994925730416

/-! ## A292476.P747730637911107323

`A367087(A005843(n))%A000980(n)`
-/

namespace A292476.P747730637911107323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367087 (A005843 n).toNat) (A000980 n)

end

end A292476.P747730637911107323

/-! ## A292476.P8536465077800866330

`A369058(n+1)+A367087(A005843(n))`
-/

namespace A292476.P8536465077800866330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369058 (n + 1) + A367087 (A005843 n).toNat

end

end A292476.P8536465077800866330

/-!
# A292477: Square array A(n,k), n >= 0, k >= 2, read by antidiagonals: A(n,k) = [x^(k*n)] Product_{j>=0} 1/(1 - x^(k^j)).

The programs for A292477, there is no canonical definition to state claims against.
-/

/-! ## A292477.P6651671135724913514

`A089688(A099375(n)+1+n)`
-/

namespace A292477.P6651671135724913514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A099375 n + 1 + (n : ℤ)).toNat

end

end A292477.P6651671135724913514

/-! ## A292477.P17468949245211863936

`A089688(2*A004736(n+1)+n)`
-/

namespace A292477.P17468949245211863936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A292477.P17468949245211863936

/-! ## A292477.P6499716692469113435

`A089688(2*A127739(n+1)-n)`
-/

namespace A292477.P6499716692469113435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (2 * A127739 (n + 1) - (n : ℤ)).toNat

end

end A292477.P6499716692469113435

/-! ## A292477.P14959533424426350453

`A089688(A114327(n)+A014132(n+1))`
-/

namespace A292477.P14959533424426350453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A114327 n + A014132 (n + 1)).toNat

end

end A292477.P14959533424426350453

/-! ## A292477.P18223859532665889766

`A089688(A061579(n)+A003057(n+2))`
-/

namespace A292477.P18223859532665889766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A061579 n + A003057 (n + 2)).toNat

end

end A292477.P18223859532665889766

/-! ## A292477.P598583653532907400

`A089688(A038722(n+1)+A002024(n+1))`
-/

namespace A292477.P598583653532907400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A292477.P598583653532907400

/-! ## A292477.P5855455725475261844

`A089688(A127739(n+1)+A004736(n+1))`
-/

namespace A292477.P5855455725475261844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A127739 (n + 1) + A004736 (n + 1)).toNat

end

end A292477.P5855455725475261844

/-! ## A292477.P13005028929440450176

`A089688(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A292477.P13005028929440450176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A292477.P13005028929440450176

/-! ## A292477.P13888471370941704598

`A089688(A127739(n+1)+A127739(n+1)-n)`
-/

namespace A292477.P13888471370941704598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A127739 (n + 1) + (A127739 (n + 1) - (n : ℤ))).toNat

end

end A292477.P13888471370941704598

/-! ## A292477.P18422113993664911506

`A089688(A061579(A007401(n+1)))`
-/

namespace A292477.P18422113993664911506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A061579 (A007401 (n + 1)).toNat).toNat

end

end A292477.P18422113993664911506

/-!
# A292478: p-INVERT of A010892, where p(S) = 1 - S - S^3.

The programs for A292478, there is no canonical definition to state claims against.
-/

/-! ## A292478.P1779375162518696918

`A118759(A052101(n))+A000217(n)`
-/

namespace A292478.P1779375162518696918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A052101 n).toNat + A000217 n

end

end A292478.P1779375162518696918

/-! ## A292478.P16431870034326835737

`A002024(A055099(n))-A189718(n)`
-/

namespace A292478.P16431870034326835737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A055099 n).toNat - A189718 n

end

end A292478.P16431870034326835737

/-! ## A292478.P15926370734640602130

`A052101(A004913(n+1))+A000217(n)`
-/

namespace A292478.P15926370734640602130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052101 (A004913 (n + 1)).toNat + A000217 n

end

end A292478.P15926370734640602130

/-! ## A292478.P17898563495163616615

`A256993(A001349(n))+A226188(n+1)`
-/

namespace A292478.P17898563495163616615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256993 (A001349 n).toNat + A226188 (n + 1)

end

end A292478.P17898563495163616615

/-!
# A292479: p-INVERT of the positive squares, where p(S) = 1 - S^2.

The programs for A292479, there is no canonical definition to state claims against.
-/

/-! ## A292479.P7138129513417445979

`∑[A033453(n)²]%A033453(n)`
-/

namespace A292479.P7138129513417445979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033453 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A033453 n)

end

end A292479.P7138129513417445979

/-! ## A292479.P15259321892765015537

`A006918(n)*A274947(A014137(n))`
-/

namespace A292479.P15259321892765015537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n * A274947 (A014137 n).toNat

end

end A292479.P15259321892765015537

/-!
# A292480: p-INVERT of the odd positive integers, where p(S) = 1 - S^2.

The programs for A292480, the canonical program `A292480.P9661769759584606597` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292480 has offset 0).

The definition of A292480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292480.P9661769759584606597

`4*a(n-1)-5*a(n-2)+6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=20`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292480

/-- `4*a(n-1)-5*a(n-2)+6*a(n-3)` -/
def P9661769759584606597.Spec : Prop :=
  ∀ n, P9661769759584606597.a n = A292480 n

theorem P9661769759584606597.correct : P9661769759584606597.Spec := by
  intro n
  simp only [A292480]

end A292480

/-! ## A292480.P10273063772843947491

`A114061(A329667(n))`
-/

namespace A292480.P10273063772843947491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114061 (A329667 n).toNat

end

end A292480.P10273063772843947491

namespace A292480

/-- `A114061(A329667(n))` -/
def P10273063772843947491.Spec : Prop :=
  ∀ n, P10273063772843947491.a n = A292480 n

end A292480

/-!
# A292481: p-INVERT of the odd positive integers, where p(S) = 1 - S^3.

The programs for A292481, there is no canonical definition to state claims against.
-/

/-! ## A292481.P3374819568932184167

`A180670(n)-A257992(A180676(n))`
-/

namespace A292481.P3374819568932184167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180670 n - A257992 (A180676 n).toNat

end

end A292481.P3374819568932184167

/-! ## A292481.P5727854727632804658

`A180670(n)-A122203(A242523(n+2))`
-/

namespace A292481.P5727854727632804658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180670 n - A122203 (A242523 (n + 2)).toNat

end

end A292481.P5727854727632804658

/-! ## A292481.P17514773341369530432

`A180669(n+2)-A001845(n)-A122203(A242523(n+2))`
-/

namespace A292481.P17514773341369530432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180669 (n + 2) - A001845 n - A122203 (A242523 (n + 2)).toNat

end

end A292481.P17514773341369530432

/-!
# A292482: p-INVERT of the odd positive integers, where p(S) = (1 - S)^2.

The programs for A292482, the canonical program `A292482.P4908837358392580704` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292482 has offset 0).

The definition of A292482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292482.P4908837358392580704

`6*a(n-1)-9*a(n-2)` with `a(0)=2, a(1)=9, a(2)=32, a(3)=112`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292482

/-- `6*a(n-1)-9*a(n-2)` -/
def P4908837358392580704.Spec : Prop :=
  ∀ n, P4908837358392580704.a n = A292482 n

theorem P4908837358392580704.correct : P4908837358392580704.Spec := by
  intro n
  simp only [A292482]

end A292482

/-! ## A292482.P16219387108353925088

`round((n+4)*16*3^(n-3))`
-/

namespace A292482.P16219387108353925088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 4 : ℚ) * (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)))

end

end A292482.P16219387108353925088

namespace A292482

/-- `round((n+4)*16*3^(n-3))` -/
def P16219387108353925088.Spec : Prop :=
  ∀ n, P16219387108353925088.a n = A292482 n

end A292482

/-! ## A292482.P11640307105581211

`A008776(n)+A229587(n+1)/2`
-/

namespace A292482.P11640307105581211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 n : ℚ) + (A229587 (n + 1) : ℚ) / 2

end

end A292482.P11640307105581211

namespace A292482

/-- `A008776(n)+A229587(n+1)/2` -/
def P11640307105581211.Spec : Prop :=
  ∀ n, P11640307105581211.a n = (A292482 n : ℚ)

end A292482

/-! ## A292482.P7186945472645395434

`Δ[A034472(n)]+A229587(n+1)/2`
-/

namespace A292482.P7186945472645395434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A229587 (n + 1) : ℚ) / 2

end

end A292482.P7186945472645395434

namespace A292482

/-- `Δ[A034472(n)]+A229587(n+1)/2` -/
def P7186945472645395434.Spec : Prop :=
  ∀ n, P7186945472645395434.a n = (A292482 n : ℚ)

end A292482

/-! ## A292482.P9245977297866925126

`A008776(n)+A268905(n+1)/12`
-/

namespace A292482.P9245977297866925126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 n : ℚ) + (A268905 (n + 1) : ℚ) / 12

end

end A292482.P9245977297866925126

namespace A292482

/-- `A008776(n)+A268905(n+1)/12` -/
def P9245977297866925126.Spec : Prop :=
  ∀ n, P9245977297866925126.a n = (A292482 n : ℚ)

end A292482

/-! ## A292482.P10616233231063282115

`Δ[Δ[A147720(∑[n+1]+2)]]`
-/

namespace A292482.P10616233231063282115
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147720 (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292482.P10616233231063282115

namespace A292482

/-- `Δ[Δ[A147720(∑[n+1]+2)]]` -/
def P10616233231063282115.Spec : Prop :=
  ∀ n, P10616233231063282115.a n = A292482 n

end A292482

/-!
# A292483: p-INVERT of the odd positive integers, where p(S) = (1 - S)^3.

The programs for A292483, there is no canonical definition to state claims against.
-/

/-! ## A292483.P11387232588023535865

`A008624(A001834(n+2))-A000041(n+2)`
-/

namespace A292483.P11387232588023535865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A001834 (n + 2)).toNat - A000041 (n + 2)

end

end A292483.P11387232588023535865

/-!
# A292484: p-INVERT of the odd positive integers, where p(S) = 1 + S - S^2.

The programs for A292484, the canonical program `A292484.P3414937810203303973` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292484 has offset 0).

The definition of A292484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292484.P3414937810203303973

`3*a(n-1)-4*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=-1, a(1)=-1, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292484

/-- `3*a(n-1)-4*a(n-2)+7*a(n-3)-a(n-4)` -/
def P3414937810203303973.Spec : Prop :=
  ∀ n, P3414937810203303973.a n = A292484 n

theorem P3414937810203303973.correct : P3414937810203303973.Spec := by
  intro n
  simp only [A292484]

end A292484

/-!
# A292485: p-INVERT of the odd positive integers, where p(S) = 1 - S - 2 S^2.

The programs for A292485, the canonical program `A292485.P2641135027105441342` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292485 has offset 0).

The definition of A292485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292485.P2641135027105441342

`5*a(n-1)-5*a(n-2)+7*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=6, a(2)=28, a(3)=120`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292485

/-- `5*a(n-1)-5*a(n-2)+7*a(n-3)+2*a(n-4)` -/
def P2641135027105441342.Spec : Prop :=
  ∀ n, P2641135027105441342.a n = A292485 n

theorem P2641135027105441342.correct : P2641135027105441342.Spec := by
  intro n
  simp only [A292485]

end A292485

/-! ## A292485.P9467116161318349133

`A049472(A177238(n)-A075168(n))`
-/

namespace A292485.P9467116161318349133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A177238 n - A075168 n).toNat

end

end A292485.P9467116161318349133

namespace A292485

/-- `A049472(A177238(n)-A075168(n))` -/
def P9467116161318349133.Spec : Prop :=
  ∀ n, P9467116161318349133.a n = A292485 n

end A292485

/-!
# A292486: p-INVERT of the odd positive integers, where p(S) = 1 - S - 3 S^2.

The programs for A292486, the canonical program `A292486.P13119666060761405248` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292486 has offset 0).

The definition of A292486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292486.P13119666060761405248

`5*a(n-1)-4*a(n-2)+9*a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=7, a(2)=36, a(3)=165`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292486

/-- `5*a(n-1)-4*a(n-2)+9*a(n-3)+3*a(n-4)` -/
def P13119666060761405248.Spec : Prop :=
  ∀ n, P13119666060761405248.a n = A292486 n

theorem P13119666060761405248.correct : P13119666060761405248.Spec := by
  intro n
  simp only [A292486]

end A292486

/-!
# A292487: p-INVERT of the odd positive integers, where p(S) = 1 - S - 4 S^2.

The programs for A292487, the canonical program `A292487.P6372046581206641056` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292487 has offset 0).

The definition of A292487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292487.P6372046581206641056

`5*a(n-1)-3*a(n-2)+11*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=8, a(2)=44, a(3)=212`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292487

/-- `5*a(n-1)-3*a(n-2)+11*a(n-3)+4*a(n-4)` -/
def P6372046581206641056.Spec : Prop :=
  ∀ n, P6372046581206641056.a n = A292487 n

theorem P6372046581206641056.correct : P6372046581206641056.Spec := by
  intro n
  simp only [A292487]

end A292487

/-!
# A292488: p-INVERT of the odd positive integers, where p(S) = 1 - S - 5 S^2.

The programs for A292488, the canonical program `A292488.P4720127971573409499` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292488 has offset 0).

The definition of A292488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292488.P4720127971573409499

`5*a(n-1)-2*a(n-2)+13*a(n-3)+5*a(n-4)` with `a(0)=1, a(1)=9, a(2)=52, a(3)=261`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292488

/-- `5*a(n-1)-2*a(n-2)+13*a(n-3)+5*a(n-4)` -/
def P4720127971573409499.Spec : Prop :=
  ∀ n, P4720127971573409499.a n = A292488 n

theorem P4720127971573409499.correct : P4720127971573409499.Spec := by
  intro n
  simp only [A292488]

end A292488

/-!
# A292489: p-INVERT of the odd positive integers, where p(S) = 1 - S - 6 S^2.

The programs for A292489, there is no canonical definition to state claims against.
-/

/-! ## A292489.P12330515401575807268

`A126246(or(A027710(n), A115366(n)))`
-/

namespace A292489.P12330515401575807268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126246 (Int.lor (A027710 n) (A115366 n)).toNat

end

end A292489.P12330515401575807268

/-!
# A292490: p-INVERT of the odd positive integers, where p(S) = 1 - S - 7 S^2.

The programs for A292490, the canonical program `A292490.P1922172420584406041` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292490 has offset 0).

The definition of A292490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292490.P1922172420584406041

`5*a(n-1)+17*a(n-3)+7*a(n-4)` with `a(0)=1, a(1)=11, a(2)=68, a(3)=365`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292490

/-- `5*a(n-1)+17*a(n-3)+7*a(n-4)` -/
def P1922172420584406041.Spec : Prop :=
  ∀ n, (P1922172420584406041.a n : ℤ) = A292490 n

theorem P1922172420584406041.correct : P1922172420584406041.Spec := by
  intro n
  simp only [A292490]

end A292490

/-!
# A292491: p-INVERT of the odd positive integers, where p(S) = 1 + S - 2 S^2.

The programs for A292491, the canonical program `A292491.P3219195992307490914` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292491 has offset 0).

The definition of A292491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292491.P3219195992307490914

`3*a(n-1)-3*a(n-2)+9*a(n-3)` with `a(0)=-1, a(1)=0, a(2)=8, a(3)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292491

/-- `3*a(n-1)-3*a(n-2)+9*a(n-3)` -/
def P3219195992307490914.Spec : Prop :=
  ∀ n, P3219195992307490914.a n = A292491 n

theorem P3219195992307490914.correct : P3219195992307490914.Spec := by
  intro n
  simp only [A292491]

end A292491

/-!
# A292492: p-INVERT of the odd positive integers, where p(S) = 1 - S + S^2 - S^3.

The programs for A292492, there is no canonical definition to state claims against.
-/

/-! ## A292492.P11312843297094051755

`A258025(A327699(n+1)+A214526(n+1))`
-/

namespace A292492.P11312843297094051755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (A327699 (n + 1) + A214526 (n + 1)).toNat

end

end A292492.P11312843297094051755

/-!
# A292493: p-INVERT of the odd positive integers, where p(S) = 1 + S - 3 S^2.

The programs for A292493, the canonical program `A292493.P7331103760890561861` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292493 has offset 0).

The definition of A292493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292493.P7331103760890561861

`3*a(n-1)-2*a(n-2)+11*a(n-3)+a(n-4)` with `a(0)=-1, a(1)=1, a(2)=12, a(3)=25`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A292493

/-- `3*a(n-1)-2*a(n-2)+11*a(n-3)+a(n-4)` -/
def P7331103760890561861.Spec : Prop :=
  ∀ n, P7331103760890561861.a n = A292493 n

theorem P7331103760890561861.correct : P7331103760890561861.Spec := by
  intro n
  simp only [A292493]

end A292493

/-!
# A292494: p-INVERT of the odd positive integers, where p(S) = 1 - S - S^2 - S^3.

The programs for A292494, there is no canonical definition to state claims against.
-/

/-! ## A292494.P2829271228012243465

`A008619(A094536(2*(n+1)))-A001006(n)`
-/

namespace A292494.P2829271228012243465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A094536 (2 * (n + 1))).toNat - A001006 n

end

end A292494.P2829271228012243465

/-! ## A292494.P13992343856221292259

`A008619(A094536(2*(n+1)))-A084261(n)`
-/

namespace A292494.P13992343856221292259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A094536 (2 * (n + 1))).toNat - A084261 n

end

end A292494.P13992343856221292259

/-!
# A292496: Number of solutions to +- 1^2 +- 3^2 +- 5^2 +- 7^2 +- ... +- (4*n-1)^2 = 0.

The programs for A292496, there is no canonical definition to state claims against.
-/

/-! ## A292496.P13908283220648293217

`(ceil(abs(sin(n)))+1)*A292497(n)`
-/

namespace A292496.P13908283220648293217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + 1) * A292497 n

end

end A292496.P13908283220648293217

/-! ## A292496.P14176280169038314598

`A292497(n)*A329683(n)`
-/

namespace A292496.P14176280169038314598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292497 n * A329683 n

end

end A292496.P14176280169038314598

/-! ## A292496.P12145194790151211167

`A036453(n+1)*A292497(n)`
-/

namespace A292496.P12145194790151211167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A292497 n

end

end A292496.P12145194790151211167

/-! ## A292496.P5840154924186811925

`A104435(n+1)*A292497(n)`
-/

namespace A292496.P5840154924186811925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) * A292497 n

end

end A292496.P5840154924186811925

/-! ## A292496.P12612006855050911141

`gcd(2, A000013(n))*A292497(n)`
-/

namespace A292496.P12612006855050911141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000013 n) : ℤ) * A292497 n

end

end A292496.P12612006855050911141

/-! ## A292496.P16453183142186869699

`A036452(2*n+1)*A292497(n)`
-/

namespace A292496.P16453183142186869699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (2 * n + 1) * A292497 n

end

end A292496.P16453183142186869699

/-! ## A292496.P2577823941804598270

`A176591(2*n+1)*A292497(n)`
-/

namespace A292496.P2577823941804598270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (2 * n + 1) * A292497 n

end

end A292496.P2577823941804598270

/-! ## A292496.P9911575459945540631

`A020639(A037225(n))*A292497(n)`
-/

namespace A292496.P9911575459945540631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A037225 n).toNat * A292497 n

end

end A292496.P9911575459945540631

/-! ## A292496.P6260746217646605855

`A020639(A092346(n))*A292497(n)`
-/

namespace A292496.P6260746217646605855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A092346 n).toNat * A292497 n

end

end A292496.P6260746217646605855

/-! ## A292496.P11294019155355835098

`A060594(A000040(n+1))*A292497(n)`
-/

namespace A292496.P11294019155355835098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A000040 (n + 1)).toNat * A292497 n

end

end A292496.P11294019155355835098

/-! ## A292496.P13302777223720772453

`A077462(A008578(n+1))*A292497(n)`
-/

namespace A292496.P13302777223720772453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A008578 (n + 1)).toNat * A292497 n

end

end A292496.P13302777223720772453

/-! ## A292496.P6422470960660214089

`A077462(A020639(n+1))*A292497(n)`
-/

namespace A292496.P6422470960660214089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A020639 (n + 1)).toNat * A292497 n

end

end A292496.P6422470960660214089

/-! ## A292496.P1537376555561230278

`A060594(A060594(n+1)+1)*A292497(n)`
-/

namespace A292496.P1537376555561230278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A060594 (n + 1) + 1).toNat * A292497 n

end

end A292496.P1537376555561230278

/-!
# A292497: Number of solutions to 1^2 +- 3^2 +- 5^2 +- 7^2 +- ... +- (4*n-1)^2 = 0.

The programs for A292497, there is no canonical definition to state claims against.
-/

/-! ## A292497.P8383656649597020238

`ceil(A292496(n)/2)`
-/

namespace A292497.P8383656649597020238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292496 n : ℚ) / 2⌉

end

end A292497.P8383656649597020238

/-! ## A292497.P18295114166356857322

`A292496(n)/A329683(n)`
-/

namespace A292497.P18295114166356857322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A329683 n : ℚ)

end

end A292497.P18295114166356857322

/-! ## A292497.P9010074296334213386

`A292496(n)/A036453(n+1)`
-/

namespace A292497.P9010074296334213386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A292497.P9010074296334213386

/-! ## A292497.P2311855908705769737

`A292496(n)/A104435(n+1)`
-/

namespace A292497.P2311855908705769737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A104435 (n + 1) : ℚ)

end

end A292497.P2311855908705769737

/-! ## A292497.P13834217691931495033

`A292496(n)/A040001(2*n)`
-/

namespace A292497.P13834217691931495033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A292497.P13834217691931495033

/-! ## A292497.P429172801672010585

`A292496(n)/gcd(2, A063865(n))`
-/

namespace A292497.P429172801672010585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (Int.gcd 2 (A063865 n) : ℚ)

end

end A292497.P429172801672010585

/-! ## A292497.P11938137813732535781

`A292496(n)/A014963(A001316(n))`
-/

namespace A292497.P11938137813732535781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A292497.P11938137813732535781

/-! ## A292497.P14423265882444442101

`A292496(n)/A020639(A008574(n))`
-/

namespace A292497.P14423265882444442101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A292497.P14423265882444442101

/-! ## A292497.P14652485781638525080

`A292496(n)/A020639(A037225(n))`
-/

namespace A292497.P14652485781638525080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A020639 (A037225 n).toNat : ℚ)

end

end A292497.P14652485781638525080

/-! ## A292497.P5645261077758717513

`A292496(n)/A001227(A000040(n+1))`
-/

namespace A292497.P5645261077758717513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A001227 (A000040 (n + 1)).toNat : ℚ)

end

end A292497.P5645261077758717513

/-! ## A292497.P15748811474269850944

`A292496(n)/A020639(A002322(n+1))`
-/

namespace A292497.P15748811474269850944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292496 n : ℚ) / (A020639 (A002322 (n + 1)).toNat : ℚ)

end

end A292497.P15748811474269850944

/-!
# A292499: a(n) equals the sum of the Gaussian binomial coefficients [n,k] at q=n for n>=0.

The programs for A292499, there is no canonical definition to state claims against.
-/

/-! ## A292499.P7619819529880882114

`A135900(∑[2^n])+n`
-/

namespace A292499.P7619819529880882114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135900 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A292499.P7619819529880882114

