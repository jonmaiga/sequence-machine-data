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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A328100: Column which is two positions right of the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A328100, there is no canonical definition to state claims against.
-/

/-! ## A328100.P12652592639907658544

`A071032(∑[2*(n+2)])`
-/

namespace A328100.P12652592639907658544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328100.P12652592639907658544

/-! ## A328100.P5975484203254113742

`A070950(n*(n+5)+8)`
-/

namespace A328100.P5975484203254113742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (n * (n + 5) + 8)

end

end A328100.P5975484203254113742

/-! ## A328100.P18412512416944285955

`1-A226464((n+2)²+n)`
-/

namespace A328100.P18412512416944285955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226464 ((n + 2) ^ 2 + n)

end

end A328100.P18412512416944285955

/-! ## A328100.P15568422034239989197

`round(sin(A071032((n+2)²+n)))`
-/

namespace A328100.P15568422034239989197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A071032 ((n + 2) ^ 2 + n) : ℝ))

end

end A328100.P15568422034239989197

/-! ## A328100.P13806890363359809331

`xor(1, A226464(A000027(n+2)²+n))`
-/

namespace A328100.P13806890363359809331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A226464 (A000027 (n + 2) ^ 2 + (n : ℤ)).toNat)

end

end A328100.P13806890363359809331

/-! ## A328100.P3342697428029586349

`floor(1/(A226464((n+2)²+n)/A005385(n+1)+1))`
-/

namespace A328100.P3342697428029586349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((A226464 ((n + 2) ^ 2 + n) : ℚ) / (A005385 (n + 1) : ℚ) + 1)⌋

end

end A328100.P3342697428029586349

/-!
# A328101: Column immediately right of the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A328101, the canonical program `A328101.P6975989960955687215` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328101 has offset 1).

The definition of A328101 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265281, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328101.P6975989960955687215

`A000035(floor(A265281(n+1)/2^(n+2)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A328101

/-- `A000035(floor(A265281(n+1)/2^(n+2)))` -/
def P6975989960955687215.Spec : Prop :=
  ∀ n, P6975989960955687215.a n = A328101 (n + 1)

theorem P6975989960955687215.correct : P6975989960955687215.Spec := by
  intro n
  simp only [A328101, Nat.add_sub_cancel]

end A328101

/-! ## A328101.P12585502777541270018

`A071032((n+1)²+n)`
-/

namespace A328101.P12585502777541270018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 ((n + 1) ^ 2 + n)

end

end A328101.P12585502777541270018

namespace A328101

/-- `A071032((n+1)²+n)` -/
def P12585502777541270018.Spec : Prop :=
  ∀ n, P12585502777541270018.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P3278101394111351845

`A070950(n*(n+3)+3)`
-/

namespace A328101.P3278101394111351845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (n * (n + 3) + 3)

end

end A328101.P3278101394111351845

namespace A328101

/-- `A070950(n*(n+3)+3)` -/
def P3278101394111351845.Spec : Prop :=
  ∀ n, P3278101394111351845.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P3595049115639702573

`1-A226464((n+1)²+n)`
-/

namespace A328101.P3595049115639702573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226464 ((n + 1) ^ 2 + n)

end

end A328101.P3595049115639702573

namespace A328101

/-- `1-A226464((n+1)²+n)` -/
def P3595049115639702573.Spec : Prop :=
  ∀ n, P3595049115639702573.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P71104568288412963

`C(2, 3*A226464(∑[2*(n+1)]-1))`
-/

namespace A328101.P71104568288412963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (3 * A226464 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A328101.P71104568288412963

namespace A328101

/-- `C(2, 3*A226464(∑[2*(n+1)]-1))` -/
def P71104568288412963.Spec : Prop :=
  ∀ n, (P71104568288412963.a n : ℤ) = A328101 (n + 1)

end A328101

/-! ## A328101.P6097313638747550780

`1-A226463(A033638(2*n+3))`
-/

namespace A328101.P6097313638747550780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A226463 (A033638 (2 * n + 3)).toNat

end

end A328101.P6097313638747550780

namespace A328101

/-- `1-A226463(A033638(2*n+3))` -/
def P6097313638747550780.Spec : Prop :=
  ∀ n, P6097313638747550780.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P1717087739291415108

`xor(1, A226464(A000027(n+1)²+n))`
-/

namespace A328101.P1717087739291415108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A226464 (A000027 (n + 1) ^ 2 + (n : ℤ)).toNat)

end

end A328101.P1717087739291415108

namespace A328101

/-- `xor(1, A226464(A000027(n+1)²+n))` -/
def P1717087739291415108.Spec : Prop :=
  ∀ n, P1717087739291415108.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P10348608436030662060

`A000007(n*A226464((n+1)²+n))`
-/

namespace A328101.P10348608436030662060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A226464 ((n + 1) ^ 2 + n)).toNat

end

end A328101.P10348608436030662060

namespace A328101

/-- `A000007(n*A226464((n+1)²+n))` -/
def P10348608436030662060.Spec : Prop :=
  ∀ n, P10348608436030662060.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P1586360489567949689

`A057428(n)*A226464((n+1)²+n)+1`
-/

namespace A328101.P1586360489567949689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A226464 ((n + 1) ^ 2 + n) + 1

end

end A328101.P1586360489567949689

namespace A328101

/-- `A057428(n)*A226464((n+1)²+n)+1` -/
def P1586360489567949689.Spec : Prop :=
  ∀ n, P1586360489567949689.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P9256830156165589444

`A000035(A226464((n+1)²+n)+2*n+1)`
-/

namespace A328101.P9256830156165589444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A226464 ((n + 1) ^ 2 + n) + (2 * n + 1 : ℤ)).toNat

end

end A328101.P9256830156165589444

namespace A328101

/-- `A000035(A226464((n+1)²+n)+2*n+1)` -/
def P9256830156165589444.Spec : Prop :=
  ∀ n, P9256830156165589444.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P9124437302540523421

`(A226464((n+1)²+n)+A064353(n+1))%2`
-/

namespace A328101.P9124437302540523421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226464 ((n + 1) ^ 2 + n) + A064353 (n + 1)) 2

end

end A328101.P9124437302540523421

namespace A328101

/-- `(A226464((n+1)²+n)+A064353(n+1))%2` -/
def P9124437302540523421.Spec : Prop :=
  ∀ n, P9124437302540523421.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P15040421890669302662

`xor(A000041(C(2, n+2)), A226464((n+1)²+n))`
-/

namespace A328101.P15040421890669302662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (Nat.choose 2 (n + 2))) (A226464 ((n + 1) ^ 2 + n))

end

end A328101.P15040421890669302662

namespace A328101

/-- `xor(A000041(C(2, n+2)), A226464((n+1)²+n))` -/
def P15040421890669302662.Spec : Prop :=
  ∀ n, P15040421890669302662.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P1226495193407474932

`xor(A000108(C(2, n+2)), A226464((n+1)²+n))`
-/

namespace A328101.P1226495193407474932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000108 (Nat.choose 2 (n + 2))) (A226464 ((n + 1) ^ 2 + n))

end

end A328101.P1226495193407474932

namespace A328101

/-- `xor(A000108(C(2, n+2)), A226464((n+1)²+n))` -/
def P1226495193407474932.Spec : Prop :=
  ∀ n, P1226495193407474932.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P15870020034554754084

`xor(A007318(C(2, n+2)), A226464((n+1)²+n))`
-/

namespace A328101.P15870020034554754084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.choose 2 (n + 2))) (A226464 ((n + 1) ^ 2 + n))

end

end A328101.P15870020034554754084

namespace A328101

/-- `xor(A007318(C(2, n+2)), A226464((n+1)²+n))` -/
def P15870020034554754084.Spec : Prop :=
  ∀ n, P15870020034554754084.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P18151978188865290898

`A000045(xor(C(2, n+2)+1, A226464((n+1)²+n)))`
-/

namespace A328101.P18151978188865290898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor (Nat.choose 2 (n + 2) + 1 : ℤ) (A226464 ((n + 1) ^ 2 + n))).toNat

end

end A328101.P18151978188865290898

namespace A328101

/-- `A000045(xor(C(2, n+2)+1, A226464((n+1)²+n)))` -/
def P18151978188865290898.Spec : Prop :=
  ∀ n, P18151978188865290898.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P1773836286238417546

`A136521(A006005(n+1)*A226464((n+1)²+n))`
-/

namespace A328101.P1773836286238417546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136521 (A006005 (n + 1) * A226464 ((n + 1) ^ 2 + n)).toNat

end

end A328101.P1773836286238417546

namespace A328101

/-- `A136521(A006005(n+1)*A226464((n+1)²+n))` -/
def P1773836286238417546.Spec : Prop :=
  ∀ n, P1773836286238417546.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P3662531668442680133

`A027656(A000040(n+3)*A226464((n+1)²+n))`
-/

namespace A328101.P3662531668442680133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A000040 (n + 3) * A226464 ((n + 1) ^ 2 + n)).toNat

end

end A328101.P3662531668442680133

namespace A328101

/-- `A027656(A000040(n+3)*A226464((n+1)²+n))` -/
def P3662531668442680133.Spec : Prop :=
  ∀ n, P3662531668442680133.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P7257200974471715361

`xor(A003415(A000040(n+1)), A226464((n+1)²+n))`
-/

namespace A328101.P7257200974471715361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003415 (A000040 (n + 1)).toNat) (A226464 ((n + 1) ^ 2 + n))

end

end A328101.P7257200974471715361

namespace A328101

/-- `xor(A003415(A000040(n+1)), A226464((n+1)²+n))` -/
def P7257200974471715361.Spec : Prop :=
  ∀ n, P7257200974471715361.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P6811357836349274729

`xor(A001222(A005382(n+1)), A226464((n+1)²+n))`
-/

namespace A328101.P6811357836349274729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A005382 (n + 1)).toNat) (A226464 ((n + 1) ^ 2 + n))

end

end A328101.P6811357836349274729

namespace A328101

/-- `xor(A001222(A005382(n+1)), A226464((n+1)²+n))` -/
def P6811357836349274729.Spec : Prop :=
  ∀ n, P6811357836349274729.a n = A328101 (n + 1)

end A328101

/-! ## A328101.P8393359502662522233

`(A226464((n+1)²+n)+A008683(A030433(n+1)))²`
-/

namespace A328101.P8393359502662522233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A226464 ((n + 1) ^ 2 + n) + A008683 (A030433 (n + 1)).toNat) ^ 2

end

end A328101.P8393359502662522233

namespace A328101

/-- `(A226464((n+1)²+n)+A008683(A030433(n+1)))²` -/
def P8393359502662522233.Spec : Prop :=
  ∀ n, P8393359502662522233.a n = A328101 (n + 1)

end A328101

/-!
# A328102: Column immediately left of the middle column of rule-30 1-D cellular automaton, when started from a lone 1 cell.

The programs for A328102, there is no canonical definition to state claims against.
-/

/-! ## A328102.P15399834470757284685

`1-A265698(n+2)`
-/

namespace A328102.P15399834470757284685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A265698 (n + 2)

end

end A328102.P15399834470757284685

/-! ## A328102.P15886308128861806923

`∑[-Δ[A265698(n+1)]]`
-/

namespace A328102.P15886308128861806923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265698 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328102.P15886308128861806923

/-! ## A328102.P4602084875803288601

`A000035(A265698(n+2)+2*n+1)`
-/

namespace A328102.P4602084875803288601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A265698 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A328102.P4602084875803288601

/-! ## A328102.P1222071011859285527

`and(1, A265700(n+2)+1)`
-/

namespace A328102.P1222071011859285527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A265700 (n + 2) + 1)

end

end A328102.P1222071011859285527

/-! ## A328102.P8138981393447035600

`A008676(Δ[A265700(n+1)]-A265700(n+1))`
-/

namespace A328102.P8138981393447035600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f1 (n + 1) - f1 n - A265700 (n + 1)).toNat

end

end A328102.P8138981393447035600

/-! ## A328102.P17236198061417480696

`A070950((n+1)²+n)`
-/

namespace A328102.P17236198061417480696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 ((n + 1) ^ 2 + n)

end

end A328102.P17236198061417480696

/-! ## A328102.P371889162998409691

`A071032(n*(n+3)+3)`
-/

namespace A328102.P371889162998409691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (n * (n + 3) + 3)

end

end A328102.P371889162998409691

/-! ## A328102.P2069115861109719211

`1-A265246((n+2)*(n+3))`
-/

namespace A328102.P2069115861109719211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A265246 ((n + 2) * (n + 3))

end

end A328102.P2069115861109719211

/-! ## A328102.P3096915590996025357

`1-A265695((n+2)*(n+3))`
-/

namespace A328102.P3096915590996025357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A265695 ((n + 2) * (n + 3))

end

end A328102.P3096915590996025357

/-!
# A328103: Bitwise XOR of trajectories of rule 30 and rule 124, when both are started from a lone 1 cell: a(n) = A110240(n) XOR A267357(n).

The programs for A328103, the canonical program `A328103.P14408953863942436734` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328103 has offset 0).

The definition of A328103 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, A267357, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328103.P14408953863942436734

`xor(A110240(n), A267357(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A328103

/-- `xor(A110240(n), A267357(n))` -/
def P14408953863942436734.Spec : Prop :=
  ∀ n, P14408953863942436734.a n = A328103 n

theorem P14408953863942436734.correct : P14408953863942436734.Spec := by
  intro n
  simp only [A328103]

end A328103

/-! ## A328103.P7337352608871015441

`xor(xor(A038184(n), A327972(n)), A267357(n))`
-/

namespace A328103.P7337352608871015441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A038184 n) (A327972 n)) (A267357 n)

end

end A328103.P7337352608871015441

namespace A328103

/-- `xor(xor(A038184(n), A327972(n)), A267357(n))` -/
def P7337352608871015441.Spec : Prop :=
  ∀ n, P7337352608871015441.a n = A328103 n

end A328103

/-! ## A328103.P4635105899884391049

`xor(xor(A265281(n), A327971(n)), A267357(n))`
-/

namespace A328103.P4635105899884391049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.xor (A265281 n) (A327971 n)) (A267357 n)

end

end A328103.P4635105899884391049

namespace A328103

/-- `xor(xor(A265281(n), A327971(n)), A267357(n))` -/
def P4635105899884391049.Spec : Prop :=
  ∀ n, P4635105899884391049.a n = A328103 n

end A328103

/-! ## A328103.P15283932684644310673

`xor(A057889(A006978(n+1)), A110240(n))`
-/

namespace A328103.P15283932684644310673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057889 (A006978 (n + 1)).toNat) (A110240 n)

end

end A328103.P15283932684644310673

namespace A328103

/-- `xor(A057889(A006978(n+1)), A110240(n))` -/
def P15283932684644310673.Spec : Prop :=
  ∀ n, P15283932684644310673.a n = A328103 n

end A328103

/-! ## A328103.P9518866507174993409

`xor(A267357(n), A269168(2^n))`
-/

namespace A328103.P9518866507174993409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267357 n) (A269168 (2 ^ n))

end

end A328103.P9518866507174993409

namespace A328103

/-- `xor(A267357(n), A269168(2^n))` -/
def P9518866507174993409.Spec : Prop :=
  ∀ n, P9518866507174993409.a n = A328103 n

end A328103

/-!
# A328104: a(n) = A163617(A110240(n)) = A110240(n) OR 2*A110240(n).

The programs for A328104, the canonical program `A328104.P17298012771272886420` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328104 has offset 0).

The definition of A328104 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110240, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328104.P17298012771272886420

`A163617(A110240(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328104

/-- `A163617(A110240(n))` -/
def P17298012771272886420.Spec : Prop :=
  ∀ n, P17298012771272886420.a n = A328104 n

theorem P17298012771272886420.correct : P17298012771272886420.Spec := by
  intro n
  simp only [A328104]

end A328104

/-! ## A328104.P5850824560846475003

`or(A269168(2^n), A269174(A269168(2^n)))`
-/

namespace A328104.P5850824560846475003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A269168 (2 ^ n)) (A269174 (A269168 (2 ^ n)).toNat)

end

end A328104.P5850824560846475003

namespace A328104

/-- `or(A269168(2^n), A269174(A269168(2^n)))` -/
def P5850824560846475003.Spec : Prop :=
  ∀ n, P5850824560846475003.a n = A328104 n

end A328104

/-! ## A328104.P7554632544620640945

`A318516(3*A110240(n))`
-/

namespace A328104.P7554632544620640945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (3 * A110240 n).toNat

end

end A328104.P7554632544620640945

namespace A328104

/-- `A318516(3*A110240(n))` -/
def P7554632544620640945.Spec : Prop :=
  ∀ n, P7554632544620640945.a n = A328104 n

end A328104

/-!
# A328105: Binary weight of A328104: a(n) = A000120(A110240(n) OR 2*A110240(n)).

The programs for A328105, there is no canonical definition to state claims against.
-/

/-! ## A328105.P1598824376463300329

`A070952(n)+A008619(A226482(n))`
-/

namespace A328105.P1598824376463300329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n + A008619 (A226482 n).toNat

end

end A328105.P1598824376463300329

/-! ## A328105.P8155464381569266341

`A265703(n+1)+A152271(A226482(n))`
-/

namespace A328105.P8155464381569266341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1) + A152271 (A226482 n).toNat

end

end A328105.P8155464381569266341

/-! ## A328105.P17116011745422701990

`A152271(A226482(n))+A246024(n)+n`
-/

namespace A328105.P17116011745422701990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A226482 n).toNat + (A246024 n + (n : ℤ))

end

end A328105.P17116011745422701990

/-! ## A328105.P13937870846293490575

`A152271(A226482(n))+Δ[n²]-A070951(n)`
-/

namespace A328105.P13937870846293490575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A226482 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A070951 n)

end

end A328105.P13937870846293490575

/-! ## A328105.P18079987808062244195

`A152271(A226482(n))+2*n+3-A265701(n+1)`
-/

namespace A328105.P18079987808062244195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A226482 n).toNat + ((2 * n + 3 : ℤ) - A265701 (n + 1))

end

end A328105.P18079987808062244195

/-! ## A328105.P3778532377586618119

`A110266(n+1)+A070952(n)`
-/

namespace A328105.P3778532377586618119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (n + 1) + A070952 n

end

end A328105.P3778532377586618119

/-! ## A328105.P14320050042704985591

`A110266(n+1)+∑[A151929(n)]`
-/

namespace A328105.P14320050042704985591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328105.P14320050042704985591

/-! ## A328105.P3468685294697313367

`A110266(n+1)+Δ[A265704(n)]`
-/

namespace A328105.P3468685294697313367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (n + 1) + (f1 (n + 1) - f1 n)

end

end A328105.P3468685294697313367

/-! ## A328105.P18130235637226406423

`A265703(n+1)+A110266(n+1)`
-/

namespace A328105.P18130235637226406423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 (n + 1) + A110266 (n + 1)

end

end A328105.P18130235637226406423

/-! ## A328105.P9408312554669582026

`A110266(n+1)+A246024(n)+n`
-/

namespace A328105.P9408312554669582026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (n + 1) + (A246024 n + (n : ℤ))

end

end A328105.P9408312554669582026

/-!
# A328110: Fixed points of A327860: numbers k for which A003415(A276086(k)) = k, where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A328110, there is no canonical definition to state claims against.
-/

/-! ## A328110.P10825623754608863639

`A351088(or(1, n)+n)`
-/

namespace A328110.P10825623754608863639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351088 (Nat.lor 1 n + n)

end

end A328110.P10825623754608863639

/-!
# A328111: a(n) = A080069(n) OR A267357(n).

The programs for A328111, there is no canonical definition to state claims against.
-/

/-! ## A328111.P5402416779805627097

`or(A080069(n), A267357(n))`
-/

namespace A328111.P5402416779805627097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080069 n) (A267357 n)

end

end A328111.P5402416779805627097

/-! ## A328111.P7196396880402485359

`or(xor(A110240(n), A328103(n)), A080069(n))`
-/

namespace A328111.P7196396880402485359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.xor (A110240 n) (A328103 n)) (A080069 n)

end

end A328111.P7196396880402485359

/-! ## A328111.P7215843843578887690

`or(A057889(A006978(n+1)), A080069(n))`
-/

namespace A328111.P7215843843578887690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057889 (A006978 (n + 1)).toNat) (A080069 n)

end

end A328111.P7215843843578887690

/-! ## A328111.P11846510549706604839

`or(A014486(A080068(n)), A267357(n))`
-/

namespace A328111.P11846510549706604839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014486 (A080068 n).toNat) (A267357 n)

end

end A328111.P11846510549706604839

/-!
# A328112: a(1) = 0, for primes p, a(p) = 1, and for any other number n, a(n) = max(A003415(n), A276086(n)).

The programs for A328112, there is no canonical definition to state claims against.
-/

/-! ## A328112.P1297664595725396473

`A276086(1-∑{p}[n+1, C(#, n)]+n)%A005503(n)`
-/

namespace A328112.P1297664595725396473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)).toNat) (A005503 n)

end

end A328112.P1297664595725396473

/-! ## A328112.P18034214127189352296

`A276086(A191558(n+1))%A058166(n+1)`
-/

namespace A328112.P18034214127189352296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 (A191558 (n + 1)).toNat) (A058166 (n + 1))

end

end A328112.P18034214127189352296

/-! ## A328112.P4656253555272106964

`A276086(A191558(n+1))-A214304(A001535(n))`
-/

namespace A328112.P4656253555272106964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A191558 (n + 1)).toNat - A214304 (A001535 n).toNat

end

end A328112.P4656253555272106964

/-! ## A328112.P16465932309624049491

`A276086(A191558(n+1))-A214304(A097159(n+1))`
-/

namespace A328112.P16465932309624049491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A191558 (n + 1)).toNat - A214304 (A097159 (n + 1)).toNat

end

end A328112.P16465932309624049491

/-! ## A328112.P11779381419919636680

`A276076(1-∑{p}[n+1, C(#, n)]+n)%A336419(n)`
-/

namespace A328112.P11779381419919636680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276076 (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)).toNat) (A336419 n)

end

end A328112.P11779381419919636680

/-!
# A328113: Lexicographically earliest infinite sequence such that a(i) = a(j) => A327963(i) = A327963(j) for all i, j.

The programs for A328113, there is no canonical definition to state claims against.
-/

/-! ## A328113.P619966645407139896

`A326192(n+1)%A146478(A053742(n))`
-/

namespace A328113.P619966645407139896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326192 (n + 1)) (A146478 (A053742 n).toNat)

end

end A328113.P619966645407139896

/-! ## A328113.P13161579487786178217

`and(A321804(A002579(n+1)), A326192(n+1))`
-/

namespace A328113.P13161579487786178217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321804 (A002579 (n + 1)).toNat) (A326192 (n + 1))

end

end A328113.P13161579487786178217

/-! ## A328113.P1181052613488457714

`and(A037861(A290848(n)), A326192(n+1))`
-/

namespace A328113.P1181052613488457714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037861 (A290848 n).toNat) (A326192 (n + 1))

end

end A328113.P1181052613488457714

/-! ## A328113.P12175368348496679749

`A326192(n+1)-A221087(A351241(n+1))`
-/

namespace A328113.P12175368348496679749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) - A221087 (A351241 (n + 1)).toNat

end

end A328113.P12175368348496679749

/-! ## A328113.P16622661101803937806

`A326192(n+1)-A349797(A212164(n+2))`
-/

namespace A328113.P16622661101803937806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326192 (n + 1) - A349797 (A212164 (n + 2)).toNat

end

end A328113.P16622661101803937806

/-!
# A328114: Maximal digit value used when n is written in primorial base (cf. A049345).

The programs for A328114, there is no canonical definition to state claims against.
-/

/-! ## A328114.P14106350717412482693

`A061395(A328835(n))`
-/

namespace A328114.P14106350717412482693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A328835 n).toNat

end

end A328114.P14106350717412482693

/-! ## A328114.P11384606197290566410

`A051903(A276086(n))`
-/

namespace A328114.P11384606197290566410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A276086 n).toNat

end

end A328114.P11384606197290566410

/-! ## A328114.P15291831262727401648

`val(A278226(n), 2)`
-/

namespace A328114.P15291831262727401648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278226 n).toNat 2

end

end A328114.P15291831262727401648

/-! ## A328114.P2785057349851393014

`a(A328842(n))+1` with `a(0)=0`
-/

namespace A328114.P2785057349851393014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A328842 n).toNat + 1

end

end A328114.P2785057349851393014

/-! ## A328114.P4500674839888928456

`a(n-A328841(n))+1` with `a(0)=0`
-/

namespace A328114.P4500674839888928456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A328841 n).toNat + 1

end

end A328114.P4500674839888928456

/-! ## A328114.P2839693935799778444

`A001222(gcd(A137688(n), A278226(n)))`
-/

namespace A328114.P2839693935799778444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A137688 n) (A278226 n))

end

end A328114.P2839693935799778444

/-! ## A328114.P3124955469523528485

`A317837(and(-A278226(n), A278226(n)))`
-/

namespace A328114.P3124955469523528485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317837 (Int.land (-A278226 n) (A278226 n)).toNat

end

end A328114.P3124955469523528485

/-! ## A328114.P8563346730618256475

`A054055(A049345(n))`
-/

namespace A328114.P8563346730618256475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A049345 n).toNat

end

end A328114.P8563346730618256475

/-! ## A328114.P17610913985204435666

`A051903(A278226(n))`
-/

namespace A328114.P17610913985204435666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A278226 n).toNat

end

end A328114.P17610913985204435666

/-! ## A328114.P16998676753012665492

`A007814(A278226(n)%(16*A276154(n+1)))`
-/

namespace A328114.P16998676753012665492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.tmod (A278226 n) (16 * A276154 (n + 1))).toNat

end

end A328114.P16998676753012665492

/-!
# A328115: Numbers n from which zero or more applications of A003415 will lead to 5.

The programs for A328115, there is no canonical definition to state claims against.
-/

/-! ## A328115.P17120361686663960790

`eq[5, A351078(n)]`
-/

namespace A328115.P17120361686663960790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328115.P17120361686663960790

/-! ## A328115.P7465384409837000152

`A327975(A342951(n+1))`
-/

namespace A328115.P7465384409837000152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327975 (A342951 (n + 1)).toNat

end

end A328115.P7465384409837000152

/-! ## A328115.P6628678921270309802

`A327975(A032555(n+1)%A163978(n+1))`
-/

namespace A328115.P6628678921270309802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327975 (Int.tmod (A032555 (n + 1)) (A163978 (n + 1))).toNat

end

end A328115.P6628678921270309802

/-!
# A328116: Numbers n such that the k-th arithmetic derivative of A276086(n) is zero for some k.

The programs for A328116, there is no canonical definition to state claims against.
-/

/-! ## A328116.P16959364563046521164

`record[n*A328306(n)]`
-/

namespace A328116.P16959364563046521164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A328306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328116.P16959364563046521164

/-! ## A328116.P14463690286898778662

`lt[0, A328306(n)]`
-/

namespace A328116.P14463690286898778662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328116.P14463690286898778662

/-! ## A328116.P7120797070178341916

`eq[A057427(n+1), A328306(n)]`
-/

namespace A328116.P7120797070178341916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328116.P7120797070178341916

/-! ## A328116.P3696553173070432150

`eq[A328306(n), A376663(n+1)]`
-/

namespace A328116.P3696553173070432150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376663 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328116.P3696553173070432150

/-! ## A328116.P1834283550603589981

`filter[A139179(n+1), A328306(#)]`
-/

namespace A328116.P1834283550603589981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A328306 (f1 j).toNat = 1) n)

end

end A328116.P1834283550603589981

/-! ## A328116.P17502766622633926194

`eq[A001222(A000040(n+1)), A328306(n)]`
-/

namespace A328116.P17502766622633926194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328116.P17502766622633926194

/-! ## A328116.P6657835448216993327

`eq[A328306(n), A352891(A256387(n+1))]`
-/

namespace A328116.P6657835448216993327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352891 (A256387 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328116.P6657835448216993327

/-! ## A328116.P10386227602157785867

`eq[A260897(n+1)*A328306(n), A260897(n+1)]`
-/

namespace A328116.P10386227602157785867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1) * A328306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328116.P10386227602157785867

/-! ## A328116.P2618910690030232831

`eq[A161618(n+1)*A328306(n), A161618(n+1)]`
-/

namespace A328116.P2618910690030232831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1) * A328306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328116.P2618910690030232831

/-! ## A328116.P8475220803638051021

`eq[A074206(A070851(n+1)), A328306(n)]`
-/

namespace A328116.P8475220803638051021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A070851 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328116.P8475220803638051021

/-!
# A328117: Numbers such that zero or more applications of A003415 (arithmetic derivative) will yield 7.

The programs for A328117, there is no canonical definition to state claims against.
-/

/-! ## A328117.P15864702690017796872

`eq[7, A351078(n)]`
-/

namespace A328117.P15864702690017796872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328117.P15864702690017796872

/-! ## A328117.P16029043538405060737

`lt[A036453(n+1), A132014(A351078(n))]`
-/

namespace A328117.P16029043538405060737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132014 (A351078 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328117.P16029043538405060737

/-! ## A328117.P14320017269103032283

`lt[A015087(A351078(n)), A000007(n)]`
-/

namespace A328117.P14320017269103032283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015087 (A351078 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328117.P14320017269103032283

/-! ## A328117.P8979303739205549814

`lt[A015087(A351078(n)), A014849(n)]`
-/

namespace A328117.P8979303739205549814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015087 (A351078 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328117.P8979303739205549814

/-! ## A328117.P1513440813922553961

`lt[A028310(n)+A015087(A351078(n)), n]`
-/

namespace A328117.P1513440813922553961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A015087 (A351078 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328117.P1513440813922553961

/-!
# A328118: Numbers k for which A276086(k) <= A002620(k), where A276086 is the primorial base exp-function and A002620(k) = floor(k^2/4).

The programs for A328118, there is no canonical definition to state claims against.
-/

/-! ## A328118.P4062593976258791542

`lt[A351225(n)+n, (n+1)²/4]`
-/

namespace A328118.P4062593976258791542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + (n : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A328118.P4062593976258791542

/-! ## A328118.P16148243847132016019

`lt[A327858(n)*A351231(n), (n/2)²]`
-/

namespace A328118.P16148243847132016019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351231 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A328118.P16148243847132016019

/-! ## A328118.P3524183357653960164

`comp[A328119(n+1)]`
-/

namespace A328118.P3524183357653960164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328118.P3524183357653960164

/-! ## A328118.P6985613002996826233

`lt[2*sqrt(A276086(n)), n]`
-/

namespace A328118.P6985613002996826233
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A276086 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A328118.P6985613002996826233

/-! ## A328118.P11302409310434178001

`lt[A276086(n), A002620(n)]`
-/

namespace A328118.P11302409310434178001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328118.P11302409310434178001

/-! ## A328118.P10677614326135749983

`lt[A276086(n), A065033(n)²]`
-/

namespace A328118.P10677614326135749983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328118.P10677614326135749983

/-! ## A328118.P11452227387772738146

`lt[2*A276086(n), A000217(n)]`
-/

namespace A328118.P11452227387772738146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328118.P11452227387772738146

/-! ## A328118.P12736714537432851468

`eq[A276086(n)%A033638(n), A276086(n)]`
-/

namespace A328118.P12736714537432851468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) (A033638 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328118.P12736714537432851468

/-! ## A328118.P17061703480890296612

`lt[A276086(n), (A233583(n+1)/2)²]`
-/

namespace A328118.P17061703480890296612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A233583 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A328118.P17061703480890296612

/-!
# A328119: Numbers n for which A276086(n) > A002620(n).

The programs for A328119, there is no canonical definition to state claims against.
-/

/-! ## A328119.P17779102241022064293

`comp[A328118(n+1)]`
-/

namespace A328119.P17779102241022064293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328119.P17779102241022064293

/-! ## A328119.P15024157243051651373

`lt[(n+1)²/4, A351225(n)+n]`
-/

namespace A328119.P15024157243051651373
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A328119.P15024157243051651373

/-! ## A328119.P7317333052933038147

`lt[n, 2*sqrt(A276086(n))]`
-/

namespace A328119.P7317333052933038147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A276086 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A328119.P7317333052933038147

/-! ## A328119.P2186277221118564210

`lt[A002620(n), A276086(n)]`
-/

namespace A328119.P2186277221118564210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328119.P2186277221118564210

/-! ## A328119.P390295024882041572

`eq[0, char[A328118(A286558(n))]]`
-/

namespace A328119.P390295024882041572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328118 (A286558 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328119.P390295024882041572

/-! ## A328119.P7256608414063536203

`lt[A000217(n), 2*A276086(n)]`
-/

namespace A328119.P7256608414063536203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328119.P7256608414063536203

/-! ## A328119.P12638576916826588857

`lt[A065033(n)², A276086(n)+1]`
-/

namespace A328119.P12638576916826588857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328119.P12638576916826588857

/-! ## A328119.P15950809265618341373

`eq[1, char[A328118(A222242(n+1))]+1]`
-/

namespace A328119.P15950809265618341373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328118 (A222242 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328119.P15950809265618341373

/-! ## A328119.P6818233392636187751

`eq[A133263(n)%(2*A276086(n)), A133263(n)]`
-/

namespace A328119.P6818233392636187751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133263 n) (2 * A276086 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328119.P6818233392636187751

/-! ## A328119.P580545646061797637

`lt[∑[A011886(n+1)], A276086(n)²]`
-/

namespace A328119.P580545646061797637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A328119.P580545646061797637

/-!
# A328120: Exponential superperfect numbers (or e-superperfect numbers): numbers m such that esigma(esigma(m)) = 2m, where esigma(m) is the sum of exponential divisors of m (A051377).

The programs for A328120, there is no canonical definition to state claims against.
-/

/-! ## A328120.P10779700429697615822

`∩[A366847(n+1), A397710(n+1)]`
-/

namespace A328120.P10779700429697615822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328120.P10779700429697615822

/-!
# A328121: Number of unrooted level-1 phylogenetic networks (also called galled trees) with (n+1) labeled leaves.

The programs for A328121, there is no canonical definition to state claims against.
-/

/-! ## A328121.P565038005062082136

`A000010(A000407(n))-A000387(n)`
-/

namespace A328121.P565038005062082136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000407 n).toNat - A000387 n

end

end A328121.P565038005062082136

/-!
# A328124: Let (e*y)^(e*x) = (e*x)^(e*y), y <> x. Numerators of Taylor coefficients of y about x=1.

The programs for A328124, there is no canonical definition to state claims against.
-/

/-! ## A328124.P4212291416548219159

`A349373(A265949(n+1)+2*floor(n/2))`
-/

namespace A328124.P4212291416548219159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349373 (A265949 (n + 1) + 2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A328124.P4212291416548219159

/-!
# A328125: Let (e*y)^(e*x) = (e*x)^(e*y), y <> x. Denominators of Taylor coefficients of y about x=1.

The programs for A328125, there is no canonical definition to state claims against.
-/

/-! ## A328125.P9731930792182232552

`lcm(A250207(6^n), A318255(n))`
-/

namespace A328125.P9731930792182232552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A250207 (6 ^ n)) (A318255 n)

end

end A328125.P9731930792182232552

/-! ## A328125.P1935443328405248753

`gcd(A004990(n), A284861(A005664(n)))`
-/

namespace A328125.P1935443328405248753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004990 n) (A284861 (A005664 n).toNat)

end

end A328125.P1935443328405248753

/-!
# A328127: G.f.: E(4*sqrt(x)) / K(4*sqrt(x)), where E(), K() are complete elliptic integrals.

The programs for A328127, there is no canonical definition to state claims against.
-/

/-! ## A328127.P16309879755493270382

`or(A151839(A154222(n)), A323385(n))`
-/

namespace A328127.P16309879755493270382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151839 (A154222 n).toNat) (A323385 n)

end

end A328127.P16309879755493270382

/-!
# A328128: G.f.: K(4*sqrt(x)) / E(4*sqrt(x)), where E(), K() are complete elliptic integrals.

The programs for A328128, there is no canonical definition to state claims against.
-/

/-! ## A328128.P9294474462247913125

`A054045(n+1)*A174175(A133263(n))`
-/

namespace A328128.P9294474462247913125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054045 (n + 1) * A174175 (A133263 n).toNat

end

end A328128.P9294474462247913125

/-!
# A328130: Number of n-bead necklace structures with beads of exactly four colors and no adjacent beads having the same color.

The programs for A328130, there is no canonical definition to state claims against.
-/

/-! ## A328130.P11331016983509603602

`A309673(n+1)-A306888(n+1)`
-/

namespace A328130.P11331016983509603602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309673 (n + 1) - A306888 (n + 1)

end

end A328130.P11331016983509603602

/-! ## A328130.P8937773888958347617

`A309673(n+1)-(A327397(n+1)+A000035(n))`
-/

namespace A328130.P8937773888958347617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309673 (n + 1) - (A327397 (n + 1) + A000035 n)

end

end A328130.P8937773888958347617

/-! ## A328130.P15731638805825962269

`A327396(∑[n]+4)`
-/

namespace A328130.P15731638805825962269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327396 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A328130.P15731638805825962269

/-! ## A328130.P5461834371863887528

`A057427(n)*A327396(A145018(n+1))`
-/

namespace A328130.P5461834371863887528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327396 (A145018 (n + 1)).toNat

end

end A328130.P5461834371863887528

/-! ## A328130.P6446699311405665472

`A008836(n+1)²*A327396(A145018(n+1))`
-/

namespace A328130.P6446699311405665472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A327396 (A145018 (n + 1)).toNat

end

end A328130.P6446699311405665472

/-! ## A328130.P15378047237573620681

`A005053(C(2, n+1))*A327396(A145018(n+1))`
-/

namespace A328130.P15378047237573620681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005053 (Nat.choose 2 (n + 1)) * A327396 (A145018 (n + 1)).toNat

end

end A328130.P15378047237573620681

/-! ## A328130.P1081849654835697714

`A327396(A145018(n+1))+A007920(p?[11*n+5])`
-/

namespace A328130.P1081849654835697714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327396 (A145018 (n + 1)).toNat + A007920 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A328130.P1081849654835697714

/-! ## A328130.P8940465744071886128

`A000035(A000040(n+1))*A327396(A145018(n+1))`
-/

namespace A328130.P8940465744071886128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000040 (n + 1)).toNat * A327396 (A145018 (n + 1)).toNat

end

end A328130.P8940465744071886128

/-!
# A328131: Erase all zero digits from decimal expansion of n. Then keep just the coprime digits; write 0 if all digits disappear.

The programs for A328131, there is no canonical definition to state claims against.
-/

/-! ## A328131.P16872295663015583102

`A004151(n+1)*A245656(A183632(n+1))`
-/

namespace A328131.P16872295663015583102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1) * A245656 (A183632 (n + 1)).toNat

end

end A328131.P16872295663015583102

/-! ## A328131.P13436310442742151281

`A004719(n+1)*A245656(A183632(n+1))`
-/

namespace A328131.P13436310442742151281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1) * A245656 (A183632 (n + 1)).toNat

end

end A328131.P13436310442742151281

/-! ## A328131.P17950898956511017228

`A004151(n+1)*A166486(A114320(n))`
-/

namespace A328131.P17950898956511017228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1) * A166486 (A114320 n).toNat

end

end A328131.P17950898956511017228

/-!
# A328132: Exponential (2,3)-perfect numbers: numbers m such that esigma(esigma(m)) = 3m, where esigma(m) is the sum of exponential divisors of m (A051377).

The programs for A328132, there is no canonical definition to state claims against.
-/

/-! ## A328132.P7874046888195968874

`A313726(2*A129499(n+1))`
-/

namespace A328132.P7874046888195968874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313726 (2 * A129499 (n + 1)).toNat

end

end A328132.P7874046888195968874

/-! ## A328132.P15417356816157429180

`A314969(2*A129499(n+1))`
-/

namespace A328132.P15417356816157429180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 (2 * A129499 (n + 1)).toNat

end

end A328132.P15417356816157429180

/-! ## A328132.P17980337526723676204

`A315451(2*A129499(n+1))`
-/

namespace A328132.P17980337526723676204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315451 (2 * A129499 (n + 1)).toNat

end

end A328132.P17980337526723676204

/-! ## A328132.P15148934064864005173

`A315462(2*A129499(n+1))`
-/

namespace A328132.P15148934064864005173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315462 (2 * A129499 (n + 1)).toNat

end

end A328132.P15148934064864005173

/-! ## A328132.P8590068406492008632

`A051377(A328133(n+1)/2)`
-/

namespace A328132.P8590068406492008632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051377 (SequenceMachineLib.roundAway ((A328133 (n + 1) : ℚ) / 2)).toNat

end

end A328132.P8590068406492008632

/-!
# A328133: Exponential (2,4)-perfect numbers: numbers m such that esigma(esigma(m)) = 4m, where esigma(m) is the sum of exponential divisors of m (A051377).

The programs for A328133, there is no canonical definition to state claims against.
-/

/-! ## A328133.P4061202060012518836

`filter[A063880(n+1), A380484(#)]`
-/

namespace A328133.P4061202060012518836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380484 (f1 j).toNat = 1) n)

end

end A328133.P4061202060012518836

/-! ## A328133.P16180911992280334983

`lcm(p?[A238160(3*n+4)], 540)`
-/

namespace A328133.P16180911992280334983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238160 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 540

end

end A328133.P16180911992280334983

/-! ## A328133.P14847401520856460382

`record[lcm(540, A239662(n+1))]`
-/

namespace A328133.P14847401520856460382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 540 (A239662 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328133.P14847401520856460382

/-! ## A328133.P9799654577757374541

`A003968(A328132(n+1))`
-/

namespace A328133.P9799654577757374541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (A328132 (n + 1)).toNat

end

end A328133.P9799654577757374541

/-!
# A328135: Exponential 3-nondeficient numbers: numbers m such that esigma(m) >= 3*m, where esigma(m) is the sum of exponential divisors of m (A051377).

The programs for A328135, there is no canonical definition to state claims against.
-/

/-! ## A328135.P6831482593509362467

`A102376(A102376(n))*A321147(n+1)`
-/

namespace A328135.P6831482593509362467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A102376 n).toNat * A321147 (n + 1)

end

end A328135.P6831482593509362467

/-! ## A328135.P699757418821083537

`lcm(A290205(n), A321147(n+1))`
-/

namespace A328135.P699757418821083537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A290205 n) (A321147 (n + 1))

end

end A328135.P699757418821083537

/-! ## A328135.P7806719353775854466

`A000005(A006094(n+1))*A321147(n+1)`
-/

namespace A328135.P7806719353775854466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006094 (n + 1)).toNat * A321147 (n + 1)

end

end A328135.P7806719353775854466

/-! ## A328135.P18017125452402879437

`lcm(A141518(A354788(n)), A383699(n+1))`
-/

namespace A328135.P18017125452402879437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141518 (A354788 n).toNat) (A383699 (n + 1))

end

end A328135.P18017125452402879437

/-! ## A328135.P17330543371424277227

`A383699(n+1)+A323153(A318737(n+1))`
-/

namespace A328135.P17330543371424277227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383699 (n + 1) + A323153 (A318737 (n + 1)).toNat

end

end A328135.P17330543371424277227

/-!
# A328136: Primitive exponential abundant numbers: the powerful terms of A129575.

The programs for A328136, there is no canonical definition to state claims against.
-/

/-! ## A328136.P10129041774670503717

`∪[A383694(n+1), A391086(n+1)]`
-/

namespace A328136.P10129041774670503717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P10129041774670503717

/-! ## A328136.P15390744008914964825

`∩[A001694(n+1), A129575(n+1)]`
-/

namespace A328136.P15390744008914964825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P15390744008914964825

/-! ## A328136.P2713965889053178842

`∩[A129575(n+1), A192636(n+1)]`
-/

namespace A328136.P2713965889053178842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P2713965889053178842

/-! ## A328136.P16045485961246612506

`∩[A129575(n+1), A286708(n+1)]`
-/

namespace A328136.P16045485961246612506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P16045485961246612506

/-! ## A328136.P16712765405908504854

`∩[A129575(n+1), A325240(n+1)]`
-/

namespace A328136.P16712765405908504854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P16712765405908504854

/-! ## A328136.P12576515178959375262

`∩[A129575(n+1), A335851(n+1)]`
-/

namespace A328136.P12576515178959375262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P12576515178959375262

/-! ## A328136.P12317969360385024515

`∩[A129575(n+1), A356871(n+1)]`
-/

namespace A328136.P12317969360385024515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P12317969360385024515

/-! ## A328136.P6449089069990219134

`∩[A129575(n+1), A363169(n+1)]`
-/

namespace A328136.P6449089069990219134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P6449089069990219134

/-! ## A328136.P2007278105631707173

`∩[A129575(n+1), A363216(n+1)]`
-/

namespace A328136.P2007278105631707173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P2007278105631707173

/-! ## A328136.P2145569872890844534

`∩[A129575(n+1), A376172(n+1)]`
-/

namespace A328136.P2145569872890844534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P2145569872890844534

/-! ## A328136.P13880100953274008807

`∩[A129575(n+1), A376217(n+1)]`
-/

namespace A328136.P13880100953274008807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P13880100953274008807

/-! ## A328136.P10270390317912882446

`∩[A129575(n+1), A387256(n+1)]`
-/

namespace A328136.P10270390317912882446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P10270390317912882446

/-! ## A328136.P15542203737398166941

`∩[A129575(n+1), A390010(n+1)]`
-/

namespace A328136.P15542203737398166941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P15542203737398166941

/-! ## A328136.P8588785341023909164

`∩[A129575(n+1), A390950(n+1)]`
-/

namespace A328136.P8588785341023909164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P8588785341023909164

/-! ## A328136.P10375817171013064693

`∩[A129575(n+1), A391139(n+1)]`
-/

namespace A328136.P10375817171013064693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328136.P10375817171013064693

/-!
# A328137: Primes p such that p+1 is the product of two distinct primes and p+2 is the product of three distinct primes.

The programs for A328137, there is no canonical definition to state claims against.
-/

/-! ## A328137.P9739613013039334148

`∩[A112998(n+1), A268614(n+1)]`
-/

namespace A328137.P9739613013039334148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P9739613013039334148

/-! ## A328137.P7339822210683947140

`∩[A049233(n+1), A112998(n+1)]`
-/

namespace A328137.P7339822210683947140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P7339822210683947140

/-! ## A328137.P16158435477183213865

`∩[A049233(n+1), A100363(n+1)]`
-/

namespace A328137.P16158435477183213865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P16158435477183213865

/-! ## A328137.P11444878462568283990

`∩[A063641(n+1), A100363(n+1)]`
-/

namespace A328137.P11444878462568283990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P11444878462568283990

/-! ## A328137.P1858803520873558947

`∩[A100363(n+1), A112998(n+1)]`
-/

namespace A328137.P1858803520873558947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P1858803520873558947

/-! ## A328137.P6784874771470443584

`∩[A100363(n+1), A129928(n+1)]`
-/

namespace A328137.P6784874771470443584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P6784874771470443584

/-! ## A328137.P8252962298024634528

`∩[A100363(n+1), A268614(n+1)]`
-/

namespace A328137.P8252962298024634528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P8252962298024634528

/-! ## A328137.P3332060624636557436

`∩[A100363(n+1), A362410(n+1)]`
-/

namespace A328137.P3332060624636557436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P3332060624636557436

/-! ## A328137.P9813861629525760860

`∩[12*A186696(n+1)+1, A100363(n+1)]`
-/

namespace A328137.P9813861629525760860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A186696 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P9813861629525760860

/-! ## A328137.P13615706887546512578

`∩[A063446(n+1)-1, A063641(n+1)]`
-/

namespace A328137.P13615706887546512578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063446 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P13615706887546512578

/-! ## A328137.P4171728416570228272

`∩[A007675(n+1), A112998(n+1)]`
-/

namespace A328137.P4171728416570228272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P4171728416570228272

/-! ## A328137.P8530127687074944908

`∩[A112998(n+1), A369021(n+1)]`
-/

namespace A328137.P8530127687074944908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328137.P8530127687074944908

/-!
# A328139: Number of self-avoiding planar walks starting at (0,0), ending at (n,0), not extending above the line (x,2x) or below the line (x,-2x), and using steps (0,1), (-1,1), and (1,-1) with the restriction that (-1,1) and (1,-1) are always immediately followed by (0,1).

The programs for A328139, there is no canonical definition to state claims against.
-/

/-! ## A328139.P12318547040898904634

`A307789(n)+A054404(A105696(n))`
-/

namespace A328139.P12318547040898904634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 n + A054404 (A105696 n).toNat

end

end A328139.P12318547040898904634

/-! ## A328139.P7385777630569754430

`A106733(ceil(sqrt(A008542(n))))`
-/

namespace A328139.P7385777630569754430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106733 ⌈Real.sqrt (A008542 n : ℝ)⌉.toNat

end

end A328139.P7385777630569754430

/-! ## A328139.P9606843087098584625

`A106733(round(sqrt(A008542(n))))`
-/

namespace A328139.P9606843087098584625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106733 (SequenceMachineLib.roundAway (Real.sqrt (A008542 n : ℝ))).toNat

end

end A328139.P9606843087098584625

/-! ## A328139.P16190546137400647355

`A226190(A002426(n)+A002264(n))`
-/

namespace A328139.P16190546137400647355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A002426 n + A002264 n).toNat

end

end A328139.P16190546137400647355

/-!
# A328140: Total number of nodes in all self-avoiding planar walks starting at (0,0), ending at (n,0), not extending above the line (x,2x) or below the line (x,-2x), and using steps (0,1), (-1,1), and (1,-1) with the restriction that (-1,1) and (1,-1) are always immediately followed by (0,1).

The programs for A328140, there is no canonical definition to state claims against.
-/

/-! ## A328140.P14462762125861512841

`A091182(A014466(n))+A000984(n)`
-/

namespace A328140.P14462762125861512841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (A014466 n).toNat + A000984 n

end

end A328140.P14462762125861512841

/-! ## A328140.P10387772553613772524

`A171942(A202617(n))+A000984(n)`
-/

namespace A328140.P10387772553613772524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171942 (A202617 n).toNat + A000984 n

end

end A328140.P10387772553613772524

/-!
# A328141: a(n) = a(n-1) - (n-2)*a(n-2), with a(0)=1, a(1)=2.

The programs for A328141, the canonical program `A328141.P9358867042792165201` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328141 has offset 0).

The definition of A328141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-(n-2)*a(n-2)` (program `A328141.P9358867042792165201`, by `A328141.P9358867042792165201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A328141.P9358867042792165201

`a(n-1)-(n-2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328141

/-- `a(n-1)-(n-2)*a(n-2)` -/
def P9358867042792165201.Spec : Prop :=
  ∀ n, P9358867042792165201.a n = A328141 n

theorem P9358867042792165201.correct : P9358867042792165201.Spec := by
  intro n
  simp only [A328141]

end A328141

/-! ## A328141.P16303647840096123411

`a(n-1)-a(n-2)*A289207(n)` with `a(0)=1, a(1)=2`
-/

namespace A328141.P16303647840096123411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - a (n - 2) * A289207 n

end

end A328141.P16303647840096123411

namespace A328141

/-- `a(n-1)-a(n-2)*A289207(n)` -/
def P16303647840096123411.Spec : Prop :=
  ∀ n, P16303647840096123411.a n = A328141 n

end A328141

/-!
# A328142: Elements of cycles for iterations of A329623: n -> |n - concat(sum of adjacent digits of n)|.

The programs for A328142, there is no canonical definition to state claims against.
-/

/-! ## A328142.P15390972602655850747

`eq[n, A328865(A028310(n))]`
-/

namespace A328142.P15390972602655850747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328865 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328142.P15390972602655850747

/-! ## A328142.P6161119922180281920

`A028310(record[A328865(n+1)])`
-/

namespace A328142.P6161119922180281920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328142.P6161119922180281920

/-! ## A328142.P6601474348223838878

`A328865(record[A328865(n+1)])`
-/

namespace A328142.P6601474348223838878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328865 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328142.P6601474348223838878

/-!
# A328144: Orders of cubic (i.e., trivalent, 3-regular) distance-transitive connected graphs, from smallest to largest, with duplications when there exist multiple graphs with the same order.

The programs for A328144, there is no canonical definition to state claims against.
-/

/-! ## A328144.P15099245212530172961

`A327888(n+1)+char[12]`
-/

namespace A328144.P15099245212530172961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327888 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A328144.P15099245212530172961

/-! ## A328144.P15225826534763687098

`A327888(A004186(n)+1)`
-/

namespace A328144.P15225826534763687098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327888 (A004186 n + 1).toNat

end

end A328144.P15225826534763687098

/-! ## A328144.P1727801187105877865

`A327888(A327886(n+1))`
-/

namespace A328144.P1727801187105877865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327888 (A327886 (n + 1)).toNat

end

end A328144.P1727801187105877865

/-! ## A328144.P11373803277780148703

`A327888(∑[char[A004186(n)]])`
-/

namespace A328144.P11373803277780148703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328144.P11373803277780148703

/-! ## A328144.P1606021348454174201

`A291179(A327888(n+1)+1)`
-/

namespace A328144.P1606021348454174201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291179 (A327888 (n + 1) + 1).toNat

end

end A328144.P1606021348454174201

/-!
# A328146: Numbers k such that binomial(d(i),d(j)) = k for some proper divisors d(i) > d(j) of k.

The programs for A328146, there is no canonical definition to state claims against.
-/

/-! ## A328146.P10575000837383681919

`record[A256697(A089390(n+4))]`
-/

namespace A328146.P10575000837383681919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256697 (A089390 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328146.P10575000837383681919

/-!
# A328147: a(n) = A025586(n)/4 for n>=3.

The programs for A328147, there is no canonical definition to state claims against.
-/

/-! ## A328147.P5960795403059629417

`A025586(n+3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328147.P5960795403059629417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025586 (n + 3) : ℚ) / 4

end

end A328147.P5960795403059629417

/-! ## A328147.P9417286943840763851

`A347264(n+3)`
-/

namespace A328147.P9417286943840763851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347264 (n + 3)

end

end A328147.P9417286943840763851

/-! ## A328147.P14754375650585523401

`A056959(n+3)/4`
-/

namespace A328147.P14754375650585523401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056959 (n + 3) : ℚ) / 4

end

end A328147.P14754375650585523401

/-! ## A328147.P11261810891818700902

`A270570(A020739(n))/4`
-/

namespace A328147.P11261810891818700902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270570 (A020739 n).toNat : ℚ) / 4

end

end A328147.P11261810891818700902

/-! ## A328147.P6826341587754919260

`A054576(A025586(n+3))`
-/

namespace A328147.P6826341587754919260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A025586 (n + 3)).toNat

end

end A328147.P6826341587754919260

/-! ## A328147.P18306628884339564642

`A003602(A025586(n+3)-2)`
-/

namespace A328147.P18306628884339564642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A025586 (n + 3) - 2).toNat

end

end A328147.P18306628884339564642

/-! ## A328147.P975214985812125279

`A006370(A006370(A087251(A328314(n+3))))`
-/

namespace A328147.P975214985812125279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A006370 (A087251 (A328314 (n + 3)).toNat).toNat).toNat

end

end A328147.P975214985812125279

/-!
# A328148: The number of conics tangent to five non-singular curves of degree n in general position, in a projective plane defined over an algebraically closed field of characteristic zero.

The programs for A328148, the canonical program `A328148.P17271899571613122232` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328148 has offset 1).

The definition of A328148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328148.P17271899571613122232

`(n+1)^6*((n+1)*((n+1)*((n+1)*(n+6)+10)-30)+15)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328148

/-- `(n+1)^6*((n+1)*((n+1)*((n+1)*(n+6)+10)-30)+15)` -/
def P17271899571613122232.Spec : Prop :=
  ∀ n, P17271899571613122232.a n = A328148 (n + 1)

theorem P17271899571613122232.correct : P17271899571613122232.Spec := by
  intro n
  simp only [A328148, Nat.add_sub_cancel]

end A328148

/-!
# A328149: Numbers whose set of divisors contains a quadruple (x, y, z, w) satisfying x^3 + y^3 + z^3 = w^3.

The programs for A328149, there is no canonical definition to state claims against.
-/

/-! ## A328149.P18255104536079451862

`A111306(A353249(n+1))*A353280(n+2)`
-/

namespace A328149.P18255104536079451862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111306 (A353249 (n + 1)).toNat * A353280 (n + 2)

end

end A328149.P18255104536079451862

/-! ## A328149.P15854334741678404783

`∩[A334759(n+1), A008594(A353280(n+1))]`
-/

namespace A328149.P15854334741678404783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A353280 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328149.P15854334741678404783

/-! ## A328149.P1753279004951092476

`6*A342650(A045918(n))`
-/

namespace A328149.P1753279004951092476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A342650 (A045918 n).toNat

end

end A328149.P1753279004951092476

/-!
# A328150: Number of n-bead necklace structures with no adjacent elements having the same color.

The programs for A328150, there is no canonical definition to state claims against.
-/

/-! ## A328150.P16674795705941770781

`A211356(∑[n])`
-/

namespace A328150.P16674795705941770781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211356 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328150.P16674795705941770781

/-! ## A328150.P5931541632142929879

`A211356(A000217(n))+char[12]`
-/

namespace A328150.P5931541632142929879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211356 (A000217 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A328150.P5931541632142929879

/-! ## A328150.P16052153173174220218

`A326458(n)+A211356(A000217(n))`
-/

namespace A328150.P16052153173174220218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A211356 (A000217 n).toNat

end

end A328150.P16052153173174220218

/-! ## A328150.P7704269622853286486

`A060576(n)*A211356(A000217(n))`
-/

namespace A328150.P7704269622853286486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A211356 (A000217 n).toNat

end

end A328150.P7704269622853286486

/-! ## A328150.P13990675151090459926

`A152848(n)*A211356(A000217(n))`
-/

namespace A328150.P13990675151090459926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 n * A211356 (A000217 n).toNat

end

end A328150.P13990675151090459926

/-!
# A328151: a(n) is the smallest nonnegative integer k where exactly n ordered pairs of positive integers (x, y) exist such that x^2 + y^2 = k.

The programs for A328151, there is no canonical definition to state claims against.
-/

/-! ## A328151.P6258077161219120824

`A286145(A000522(n)%A375334(n+1))`
-/

namespace A328151.P6258077161219120824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286145 (Int.tmod (A000522 n) (A375334 (n + 1))).toNat

end

end A328151.P6258077161219120824

/-! ## A328151.P2504254881924979074

`A002266(lcm(A006339(n), A336542(n+1)))`
-/

namespace A328151.P2504254881924979074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (Int.lcm (A006339 n) (A336542 (n + 1)))

end

end A328151.P2504254881924979074

/-!
# A328152: a(n) is the number of squares of side length greater than 1 having vertices at the points of an n X n grid of dots.

The programs for A328152, the canonical program `A328152.P1593024330792448604` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328152 has offset 1).

The definition of A328152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328152.P1593024330792448604

`((n+1)^4-(n+1)²)/12-n²`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328152

/-- `((n+1)^4-(n+1)²)/12-n²` -/
def P1593024330792448604.Spec : Prop :=
  ∀ n, P1593024330792448604.a n = (A328152 (n + 1) : ℚ)

end A328152

/-! ## A328152.P1779486759770701963

`A289223(n+2)/6`
-/

namespace A328152.P1779486759770701963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289223 (n + 2) : ℚ) / 6

end

end A328152.P1779486759770701963

namespace A328152

/-- `A289223(n+2)/6` -/
def P1779486759770701963.Spec : Prop :=
  ∀ n, P1779486759770701963.a n = (A328152 (n + 1) : ℚ)

end A328152

/-! ## A328152.P4094575145185254534

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5`
-/

namespace A328152.P4094575145185254534
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 5] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P4094575145185254534

namespace A328152

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P4094575145185254534.Spec : Prop :=
  ∀ n, (P4094575145185254534.a n : ℤ) = A328152 (n + 1)

end A328152

/-! ## A328152.P18257309869559936941

`∑[∑[A132411(n)]-n]`
-/

namespace A328152.P18257309869559936941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P18257309869559936941

namespace A328152

/-- `∑[∑[A132411(n)]-n]` -/
def P18257309869559936941.Spec : Prop :=
  ∀ n, P18257309869559936941.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P907829092710593627

`∑[A179904(n)-(2*n+1)]`
-/

namespace A328152.P907829092710593627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179904 n - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P907829092710593627

namespace A328152

/-- `∑[A179904(n)-(2*n+1)]` -/
def P907829092710593627.Spec : Prop :=
  ∀ n, P907829092710593627.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P12819904098530003308

`∑[A110610(n+1)-(n+1)²]`
-/

namespace A328152.P12819904098530003308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110610 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P12819904098530003308

namespace A328152

/-- `∑[A110610(n+1)-(n+1)²]` -/
def P12819904098530003308.Spec : Prop :=
  ∀ n, P12819904098530003308.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P15075022168493951224

`∑[∑[A004275(n)+n*(n-2)]]`
-/

namespace A328152.P15075022168493951224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + (n : ℤ) * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P15075022168493951224

namespace A328152

/-- `∑[∑[A004275(n)+n*(n-2)]]` -/
def P15075022168493951224.Spec : Prop :=
  ∀ n, P15075022168493951224.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P9375014068833553248

`∑[A000330(n)-A004273(n)]`
-/

namespace A328152.P9375014068833553248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P9375014068833553248

namespace A328152

/-- `∑[A000330(n)-A004273(n)]` -/
def P9375014068833553248.Spec : Prop :=
  ∀ n, P9375014068833553248.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P11111871241364000174

`∑[A064999(n)-A027379(n)]`
-/

namespace A328152.P11111871241364000174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064999 n - A027379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P11111871241364000174

namespace A328152

/-- `∑[A064999(n)-A027379(n)]` -/
def P11111871241364000174.Spec : Prop :=
  ∀ n, P11111871241364000174.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P2359470175476897679

`∑[∑[A000290(n)]-A004273(n)]`
-/

namespace A328152.P2359470175476897679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P2359470175476897679

namespace A328152

/-- `∑[∑[A000290(n)]-A004273(n)]` -/
def P2359470175476897679.Spec : Prop :=
  ∀ n, P2359470175476897679.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P16667648504758908152

`∑[A000330(n)-A004277(n)+1]`
-/

namespace A328152.P16667648504758908152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A004277 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P16667648504758908152

namespace A328152

/-- `∑[A000330(n)-A004277(n)+1]` -/
def P16667648504758908152.Spec : Prop :=
  ∀ n, P16667648504758908152.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P9199127382044770360

`∑[∑[A000290(n)]-A004277(n)+1]`
-/

namespace A328152.P9199127382044770360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004277 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P9199127382044770360

namespace A328152

/-- `∑[∑[A000290(n)]-A004277(n)+1]` -/
def P9199127382044770360.Spec : Prop :=
  ∀ n, P9199127382044770360.a n = A328152 (n + 1)

end A328152

/-! ## A328152.P8202826456896712774

`∑[∑[A289207(n²)]]`
-/

namespace A328152.P8202826456896712774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328152.P8202826456896712774

namespace A328152

/-- `∑[∑[A289207(n²)]]` -/
def P8202826456896712774.Spec : Prop :=
  ∀ n, P8202826456896712774.a n = A328152 (n + 1)

end A328152

/-!
# A328153: Number of set partitions of [n] such that at least one of the block sizes is 3.

The programs for A328153, there is no canonical definition to state claims against.
-/

/-! ## A328153.P7081478363269737172

`A000110(n)-A124504(n)`
-/

namespace A328153.P7081478363269737172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A124504 n

end

end A328153.P7081478363269737172

/-! ## A328153.P11274164915924801700

`abs(A292935(n))-A124504(n)`
-/

namespace A328153.P11274164915924801700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A124504 n

end

end A328153.P11274164915924801700

/-! ## A328153.P2588110558384693534

`A011971(∑[n])-A124504(n)`
-/

namespace A328153.P2588110558384693534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - A124504 n

end

end A328153.P2588110558384693534

/-! ## A328153.P15787468662575475070

`A327884(∑[n])-A124504(n)`
-/

namespace A328153.P15787468662575475070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f1 j) - A124504 n

end

end A328153.P15787468662575475070

/-! ## A328153.P2669681335740729469

`Δ[A005001(n)]-A124504(n)`
-/

namespace A328153.P2669681335740729469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A124504 n

end

end A328153.P2669681335740729469

/-! ## A328153.P13332029983815916297

`A000110(n)-A124503(A001840(n))`
-/

namespace A328153.P13332029983815916297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A124503 (A001840 n).toNat

end

end A328153.P13332029983815916297

/-! ## A328153.P6972586254456230645

`A056857(A000124(n))-A124504(n)`
-/

namespace A328153.P6972586254456230645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (A000124 n).toNat - A124504 n

end

end A328153.P6972586254456230645

/-! ## A328153.P10924001009806260751

`A011972(A161680(n))-A124504(n)`
-/

namespace A328153.P10924001009806260751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A161680 n).toNat - A124504 n

end

end A328153.P10924001009806260751

/-! ## A328153.P6209579579244675310

`A000296(n+1)+A000296(n)-A124504(n)`
-/

namespace A328153.P6209579579244675310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (n + 1) + (A000296 n - A124504 n)

end

end A328153.P6209579579244675310

/-! ## A328153.P3683701492290198781

`A033306(∑[n])-A124504(n)`
-/

namespace A328153.P3683701492290198781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 (∑ j ∈ Finset.range (n + 1), f1 j) - A124504 n

end

end A328153.P3683701492290198781

/-!
# A328154: G.f. A(x) satisfies: A(x) = A(x^2) + x / (1 + x)^2.

The programs for A328154, the canonical program `A328154.P13410909116494961066` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328154 has offset 1).

The definition of A328154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328154.P8945618817457942668

`3*floor(n/2^val(n+1, 2))-(2*n-1)`
-/

namespace A328154.P8945618817457942668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ - ((2 * n : ℤ) - 1)

end

end A328154.P8945618817457942668

namespace A328154

/-- `3*floor(n/2^val(n+1, 2))-(2*n-1)` -/
def P8945618817457942668.Spec : Prop :=
  ∀ n, P8945618817457942668.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P13410909116494961066

`6*floor(n/(xor(n, n+1)+1))-(2*n-1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328154

/-- `6*floor(n/(xor(n, n+1)+1))-(2*n-1)` -/
def P13410909116494961066.Spec : Prop :=
  ∀ n, P13410909116494961066.a n = A328154 (n + 1)

theorem P13410909116494961066.correct : P13410909116494961066.Spec := by
  intro n
  simp only [A328154, Nat.add_sub_cancel]

end A328154

/-! ## A328154.P15127225074640587010

`3*(n+1)/2^val(n+1, 2)-2*(n+1)`
-/

namespace A328154.P15127225074640587010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) - (2 * (n + 1) : ℚ)

end

end A328154.P15127225074640587010

namespace A328154

/-- `3*(n+1)/2^val(n+1, 2)-2*(n+1)` -/
def P15127225074640587010.Spec : Prop :=
  ∀ n, P15127225074640587010.a n = (A328154 (n + 1) : ℚ)

end A328154

/-! ## A328154.P2924143248404627334

`3*(n+1)/and(n+1, -(n+1))-2*(n+1)`
-/

namespace A328154.P2924143248404627334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)) - (2 * (n + 1) : ℚ)

end

end A328154.P2924143248404627334

namespace A328154

/-- `3*(n+1)/and(n+1, -(n+1))-2*(n+1)` -/
def P2924143248404627334.Spec : Prop :=
  ∀ n, P2924143248404627334.a n = (A328154 (n + 1) : ℚ)

end A328154

/-! ## A328154.P883746275013610914

`Δ[2*A264596(n)]-1`
-/

namespace A328154.P883746275013610914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A328154.P883746275013610914

namespace A328154

/-- `Δ[2*A264596(n)]-1` -/
def P883746275013610914.Spec : Prop :=
  ∀ n, P883746275013610914.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P16133450147694236070

`Δ[2*A088371(n+1)]-1`
-/

namespace A328154.P16133450147694236070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A328154.P16133450147694236070

namespace A328154

/-- `Δ[2*A088371(n+1)]-1` -/
def P16133450147694236070.Spec : Prop :=
  ∀ n, P16133450147694236070.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P4630301553114844767

`A166466(n+1)-2*(n+1)`
-/

namespace A328154.P4630301553114844767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166466 (n + 1) - (2 * (n + 1) : ℤ)

end

end A328154.P4630301553114844767

namespace A328154

/-- `A166466(n+1)-2*(n+1)` -/
def P4630301553114844767.Spec : Prop :=
  ∀ n, P4630301553114844767.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P6235253215202592450

`A000265(3*(n+1))-2*(n+1)`
-/

namespace A328154.P6235253215202592450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (3 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A328154.P6235253215202592450

namespace A328154

/-- `A000265(3*(n+1))-2*(n+1)` -/
def P6235253215202592450.Spec : Prop :=
  ∀ n, P6235253215202592450.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P2813448748926856440

`A016777(A153733(n))-2*n`
-/

namespace A328154.P2813448748926856440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A153733 n).toNat - (2 * n : ℤ)

end

end A328154.P2813448748926856440

namespace A328154

/-- `A016777(A153733(n))-2*n` -/
def P2813448748926856440.Spec : Prop :=
  ∀ n, P2813448748926856440.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P419422577480842795

`A368744(n+1)-A331739(n+1)`
-/

namespace A328154.P419422577480842795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368744 (n + 1) - A331739 (n + 1)

end

end A328154.P419422577480842795

namespace A328154

/-- `A368744(n+1)-A331739(n+1)` -/
def P419422577480842795.Spec : Prop :=
  ∀ n, P419422577480842795.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P1825075265762890784

`A326238(n+1)/A002131(n+1)`
-/

namespace A328154.P1825075265762890784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326238 (n + 1) : ℚ) / (A002131 (n + 1) : ℚ)

end

end A328154.P1825075265762890784

namespace A328154

/-- `A326238(n+1)/A002131(n+1)` -/
def P1825075265762890784.Spec : Prop :=
  ∀ n, P1825075265762890784.a n = (A328154 (n + 1) : ℚ)

end A328154

/-! ## A328154.P4005287477478752403

`A007310(A000265(n+1))-2*n`
-/

namespace A328154.P4005287477478752403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A000265 (n + 1)).toNat - (2 * n : ℤ)

end

end A328154.P4005287477478752403

namespace A328154

/-- `A007310(A000265(n+1))-2*n` -/
def P4005287477478752403.Spec : Prop :=
  ∀ n, P4005287477478752403.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P14057118211238388171

`(2-A038712(n+1))*A000265(n+1)`
-/

namespace A328154.P14057118211238388171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A038712 (n + 1)) * A000265 (n + 1)

end

end A328154.P14057118211238388171

namespace A328154

/-- `(2-A038712(n+1))*A000265(n+1)` -/
def P14057118211238388171.Spec : Prop :=
  ∀ n, P14057118211238388171.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P3242815975674382927

`2/A054785(n+1)*A326238(n+1)`
-/

namespace A328154.P3242815975674382927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A054785 (n + 1) : ℚ) * (A326238 (n + 1) : ℚ)

end

end A328154.P3242815975674382927

namespace A328154

/-- `2/A054785(n+1)*A326238(n+1)` -/
def P3242815975674382927.Spec : Prop :=
  ∀ n, P3242815975674382927.a n = (A328154 (n + 1) : ℚ)

end A328154

/-! ## A328154.P16958204936478320257

`∑{d}[n+1, A002129(#)*A087003((n+1)/#)]`
-/

namespace A328154.P16958204936478320257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002129 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328154.P16958204936478320257

namespace A328154

/-- `∑{d}[n+1, A002129(#)*A087003((n+1)/#)]` -/
def P16958204936478320257.Spec : Prop :=
  ∀ n, P16958204936478320257.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P3387590987112675116

`∑{d}[n+1, A104117(#)*A186111((n+1)/#)]`
-/

namespace A328154.P3387590987112675116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A104117 d * A186111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328154.P3387590987112675116

namespace A328154

/-- `∑{d}[n+1, A104117(#)*A186111((n+1)/#)]` -/
def P3387590987112675116.Spec : Prop :=
  ∀ n, P3387590987112675116.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P16200662541883299089

`∑{d}[n+1, A001511(#)*A325596((n+1)/#)]`
-/

namespace A328154.P16200662541883299089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328154.P16200662541883299089

namespace A328154

/-- `∑{d}[n+1, A001511(#)*A325596((n+1)/#)]` -/
def P16200662541883299089.Spec : Prop :=
  ∀ n, P16200662541883299089.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P5660474278766771909

`∑{d}[n+1, A186690(#)*A209635((n+1)/#)]`
-/

namespace A328154.P5660474278766771909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186690 d * A209635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328154.P5660474278766771909

namespace A328154

/-- `∑{d}[n+1, A186690(#)*A209635((n+1)/#)]` -/
def P5660474278766771909.Spec : Prop :=
  ∀ n, P5660474278766771909.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P7321582316468260555

`∑{d}[n+1, A327242(#)*A327276((n+1)/#)]`
-/

namespace A328154.P7321582316468260555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327242 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328154.P7321582316468260555

namespace A328154

/-- `∑{d}[n+1, A327242(#)*A327276((n+1)/#)]` -/
def P7321582316468260555.Spec : Prop :=
  ∀ n, P7321582316468260555.a n = A328154 (n + 1)

end A328154

/-! ## A328154.P15752093154302955725

`A047235(A000265(n+1))-A005408(n)`
-/

namespace A328154.P15752093154302955725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (A000265 (n + 1)).toNat - A005408 n

end

end A328154.P15752093154302955725

namespace A328154

/-- `A047235(A000265(n+1))-A005408(n)` -/
def P15752093154302955725.Spec : Prop :=
  ∀ n, P15752093154302955725.a n = A328154 (n + 1)

end A328154

/-!
# A328155: Number of set partitions of [n] with distinct block sizes and one of the block sizes is 3.

The programs for A328155, there is no canonical definition to state claims against.
-/

/-! ## A328155.P18072816145788193478

`char[A185220(n)]*A327869(∑[n]+3)`
-/

namespace A328155.P18072816145788193478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185220 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A327869 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

end

end A328155.P18072816145788193478

/-! ## A328155.P4011189474770365838

`A267870(n+1)*A327869(∑[n]+3)`
-/

namespace A328155.P4011189474770365838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (n + 1) * A327869 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A328155.P4011189474770365838

/-! ## A328155.P1659468271612491051

`A210709(C(2, n))*A327869(∑[n]+3)`
-/

namespace A328155.P1659468271612491051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 (Nat.choose 2 n) * A327869 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A328155.P1659468271612491051

/-! ## A328155.P7956003953775724513

`char[A152271(n)+2]*A327869(∑[n]+3)`
-/

namespace A328155.P7956003953775724513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A327869 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

end

end A328155.P7956003953775724513

/-! ## A328155.P14719102365311609342

`A327869(∑[n]+3)%A327870(n)`
-/

namespace A328155.P14719102365311609342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327869 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A327870 n)

end

end A328155.P14719102365311609342

/-!
# A328156: Number of set partitions of [2n] with distinct block sizes and one of the block sizes is n.

The programs for A328156, there is no canonical definition to state claims against.
-/

/-! ## A328156.P11736966644120353903

`(A007837(n)-A057427(n))*A000984(n)`
-/

namespace A328156.P11736966644120353903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007837 n - A057427 n) * A000984 n

end

end A328156.P11736966644120353903

/-! ## A328156.P2209311208476769312

`(A007837(n)-A057427(n))*record[A126869(n)]`
-/

namespace A328156.P2209311208476769312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007837 n - A057427 n) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328156.P2209311208476769312

/-! ## A328156.P324776140122223756

`(A007837(n)-A057427(n))*A001405(2*n)`
-/

namespace A328156.P324776140122223756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007837 n - A057427 n) * A001405 (2 * n)

end

end A328156.P324776140122223756

/-! ## A328156.P16678889708684169460

`(A007837(n)-A057427(n))*A126869(2*n)`
-/

namespace A328156.P16678889708684169460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007837 n - A057427 n) * A126869 (2 * n)

end

end A328156.P16678889708684169460

/-! ## A328156.P4357795732773551197

`A327869(∑[4*n])`
-/

namespace A328156.P4357795732773551197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327869 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328156.P4357795732773551197

/-!
# A328157: 

The programs for A328157, there is no canonical definition to state claims against.
-/

/-! ## A328157.P7193353828894353855

`A309876(∑[4*n])`
-/

namespace A328157.P7193353828894353855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309876 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328157.P7193353828894353855

/-!
# A328158: Number of colored integer partitions of 2n using all colors of an n-set such that each block of part i with multiplicity j has a pattern of i*j colors in (weakly) increasing order.

The programs for A328158, there is no canonical definition to state claims against.
-/

/-! ## A328158.P9068443989544863439

`A326500(∑[4*n])`
-/

namespace A328158.P9068443989544863439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326500 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328158.P9068443989544863439

/-! ## A328158.P12695908046001445186

`record[A326500(∑[A186731(n)])]`
-/

namespace A328158.P12695908046001445186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326500 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328158.P12695908046001445186

/-! ## A328158.P420956213906904542

`record[A003982(n)*A326500(n)]`
-/

namespace A328158.P420956213906904542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A326500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328158.P420956213906904542

/-! ## A328158.P10177478005768652209

`record[A326500(n*A004275(n))]`
-/

namespace A328158.P10177478005768652209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326500 ((n : ℤ) * A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328158.P10177478005768652209

/-! ## A328158.P8127970806262117697

`record[A326500(n*record[A186731(n)])]`
-/

namespace A328158.P8127970806262117697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326500 ((n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328158.P8127970806262117697

/-!
# A328159: Number of n X n matrices (up to permutation of their rows and columns) with entries {0,1,2} with all row and column sums equal to 3.

The programs for A328159, there is no canonical definition to state claims against.
-/

/-! ## A328159.P5709646945055133490

`Δ[A232215(n)]`
-/

namespace A328159.P5709646945055133490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328159.P5709646945055133490

/-! ## A328159.P14042374980290258808

`A232215(n+1)-A232215(n)`
-/

namespace A328159.P14042374980290258808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232215 (n + 1) - A232215 n

end

end A328159.P14042374980290258808

/-! ## A328159.P2089249417497504603

`record[A232215(A002262(n))]-A232215(n)`
-/

namespace A328159.P2089249417497504603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232215 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A232215 n

end

end A328159.P2089249417497504603

/-! ## A328159.P5056848409871120756

`record[A232215(A003986(n))]-A232215(n)`
-/

namespace A328159.P5056848409871120756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232215 (A003986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A232215 n

end

end A328159.P5056848409871120756

/-!
# A328160: Terms k of A112998 such that k+2 is nonsquarefree.

The programs for A328160, the canonical program `A328160.P15930249408114745958` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328160 has offset 1).

The definition of A328160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328160.P13176953637071956338

`∩[A005383(n+1), A339778(n+1)]`
-/

namespace A328160.P13176953637071956338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P13176953637071956338

namespace A328160

/-- `∩[A005383(n+1), A339778(n+1)]` -/
def P13176953637071956338.Spec : Prop :=
  ∀ n, (P13176953637071956338.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P1660057392461549741

`∩[A048968(n+1), A339778(n+1)]`
-/

namespace A328160.P1660057392461549741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P1660057392461549741

namespace A328160

/-- `∩[A048968(n+1), A339778(n+1)]` -/
def P1660057392461549741.Spec : Prop :=
  ∀ n, (P1660057392461549741.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P9039653626161655811

`∩[A057920(n+1), A339778(n+1)]`
-/

namespace A328160.P9039653626161655811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P9039653626161655811

namespace A328160

/-- `∩[A057920(n+1), A339778(n+1)]` -/
def P9039653626161655811.Spec : Prop :=
  ∀ n, (P9039653626161655811.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P604270037464253334

`∩[A064519(n+1), A339778(n+1)]`
-/

namespace A328160.P604270037464253334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P604270037464253334

namespace A328160

/-- `∩[A064519(n+1), A339778(n+1)]` -/
def P604270037464253334.Spec : Prop :=
  ∀ n, (P604270037464253334.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P10753170357254085805

`∩[A079147(n+1), A339778(n+1)]`
-/

namespace A328160.P10753170357254085805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P10753170357254085805

namespace A328160

/-- `∩[A079147(n+1), A339778(n+1)]` -/
def P10753170357254085805.Spec : Prop :=
  ∀ n, (P10753170357254085805.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P9629617044867624529

`∩[A112998(n+1), A339778(n+1)]`
-/

namespace A328160.P9629617044867624529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P9629617044867624529

namespace A328160

/-- `∩[A112998(n+1), A339778(n+1)]` -/
def P9629617044867624529.Spec : Prop :=
  ∀ n, (P9629617044867624529.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P15286220767958349783

`∩[A171262(n+1), A339778(n+1)]`
-/

namespace A328160.P15286220767958349783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P15286220767958349783

namespace A328160

/-- `∩[A171262(n+1), A339778(n+1)]` -/
def P15286220767958349783.Spec : Prop :=
  ∀ n, (P15286220767958349783.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P8584281308320548560

`∩[A178490(n+1), A339778(n+1)]`
-/

namespace A328160.P8584281308320548560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P8584281308320548560

namespace A328160

/-- `∩[A178490(n+1), A339778(n+1)]` -/
def P8584281308320548560.Spec : Prop :=
  ∀ n, (P8584281308320548560.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P11098497401148412660

`∩[A189411(n+1), A339778(n+1)]`
-/

namespace A328160.P11098497401148412660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P11098497401148412660

namespace A328160

/-- `∩[A189411(n+1), A339778(n+1)]` -/
def P11098497401148412660.Spec : Prop :=
  ∀ n, (P11098497401148412660.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P6361949978512667306

`∩[A192577(n+1), A339778(n+1)]`
-/

namespace A328160.P6361949978512667306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P6361949978512667306

namespace A328160

/-- `∩[A192577(n+1), A339778(n+1)]` -/
def P6361949978512667306.Spec : Prop :=
  ∀ n, (P6361949978512667306.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P3727124040655747227

`∩[A217466(n+1), A339778(n+1)]`
-/

namespace A328160.P3727124040655747227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P3727124040655747227

namespace A328160

/-- `∩[A217466(n+1), A339778(n+1)]` -/
def P3727124040655747227.Spec : Prop :=
  ∀ n, (P3727124040655747227.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P15993675637534965699

`∩[A265396(n+1), A339778(n+1)]`
-/

namespace A328160.P15993675637534965699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P15993675637534965699

namespace A328160

/-- `∩[A265396(n+1), A339778(n+1)]` -/
def P15993675637534965699.Spec : Prop :=
  ∀ n, (P15993675637534965699.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P11998488574859160170

`∩[A079149(n+1), A339778(n+1)]`
-/

namespace A328160.P11998488574859160170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P11998488574859160170

namespace A328160

/-- `∩[A079149(n+1), A339778(n+1)]` -/
def P11998488574859160170.Spec : Prop :=
  ∀ n, (P11998488574859160170.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P17267685433156795453

`∩[A164977(n+1), A339778(n+1)]`
-/

namespace A328160.P17267685433156795453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P17267685433156795453

namespace A328160

/-- `∩[A164977(n+1), A339778(n+1)]` -/
def P17267685433156795453.Spec : Prop :=
  ∀ n, (P17267685433156795453.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P6224974687895492502

`∩[A167609(n+1), A339778(n+1)]`
-/

namespace A328160.P6224974687895492502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P6224974687895492502

namespace A328160

/-- `∩[A167609(n+1), A339778(n+1)]` -/
def P6224974687895492502.Spec : Prop :=
  ∀ n, (P6224974687895492502.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P14212928677907443179

`∩[A339778(n+1), A350593(n+1)]`
-/

namespace A328160.P14212928677907443179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P14212928677907443179

namespace A328160

/-- `∩[A339778(n+1), A350593(n+1)]` -/
def P14212928677907443179.Spec : Prop :=
  ∀ n, (P14212928677907443179.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P15622573665302589093

`∩[A319450(n+1), A339778(n+1)]`
-/

namespace A328160.P15622573665302589093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P15622573665302589093

namespace A328160

/-- `∩[A319450(n+1), A339778(n+1)]` -/
def P15622573665302589093.Spec : Prop :=
  ∀ n, (P15622573665302589093.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P9666262690123919682

`∩[A339778(n+1), A380101(n+1)]`
-/

namespace A328160.P9666262690123919682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328160.P9666262690123919682

namespace A328160

/-- `∩[A339778(n+1), A380101(n+1)]` -/
def P9666262690123919682.Spec : Prop :=
  ∀ n, (P9666262690123919682.a n : ℤ) = A328160 (n + 1)

end A328160

/-! ## A328160.P15378009575749360652

`p?[A339778(n+1)]`
-/

namespace A328160.P15378009575749360652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328160.P15378009575749360652

namespace A328160

/-- `p?[A339778(n+1)]` -/
def P15378009575749360652.Spec : Prop :=
  ∀ n, P15378009575749360652.a n = A328160 (n + 1)

end A328160

/-! ## A328160.P15930249408114745958

`p?[2*A276305(n+1)-1]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A328160

/-- `p?[2*A276305(n+1)-1]` -/
def P15930249408114745958.Spec : Prop :=
  ∀ n, P15930249408114745958.a n = A328160 (n + 1)

theorem P15930249408114745958.correct : P15930249408114745958.Spec := by
  intro n
  simp only [A328160, Nat.add_sub_cancel]

end A328160

/-!
# A328161: Numbers n that are prime or whose proper divisors (greater than 1 and less than n) have no consecutive divisibilities.

The programs for A328161, there is no canonical definition to state claims against.
-/

/-! ## A328161.P14647088547869259762

`∪[A000040(n+1), A328028(n+1)]`
-/

namespace A328161.P14647088547869259762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P14647088547869259762

/-! ## A328161.P6588490959206960653

`∪[A000430(n+1), A328028(n+1)]`
-/

namespace A328161.P6588490959206960653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P6588490959206960653

/-! ## A328161.P14523690005953002080

`∪[A001751(n+1), A328028(n+1)]`
-/

namespace A328161.P14523690005953002080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P14523690005953002080

/-! ## A328161.P1359759891879739196

`∪[A008578(n+1), A328028(n+1)]`
-/

namespace A328161.P1359759891879739196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P1359759891879739196

/-! ## A328161.P15568102881067597053

`∪[A033946(n+1), A328028(n+1)]`
-/

namespace A328161.P15568102881067597053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P15568102881067597053

/-! ## A328161.P9048793017884133099

`∪[A037143(n+1), A328028(n+1)]`
-/

namespace A328161.P9048793017884133099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P9048793017884133099

/-! ## A328161.P1589846450456151238

`∪[A046022(n+1), A328028(n+1)]`
-/

namespace A328161.P1589846450456151238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P1589846450456151238

/-! ## A328161.P16055351488361721154

`∪[A067126(n+1), A328028(n+1)]`
-/

namespace A328161.P16055351488361721154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P16055351488361721154

/-! ## A328161.P11089950615454777366

`∪[A005180(n+1), A328028(n+1)]`
-/

namespace A328161.P11089950615454777366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A328161.P11089950615454777366

/-!
# A328162: Maximum length of a divisibility chain of consecutive divisors of n.

The programs for A328162, there is no canonical definition to state claims against.
-/

/-! ## A328162.P1062594013642239201

`∑{d}[n+1, A008683(A284600(#))]`
-/

namespace A328162.P1062594013642239201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (A284600 d).toNat

end

end A328162.P1062594013642239201

/-! ## A328162.P344180719522822916

`A328195(n+1)+A010055(n+1)`
-/

namespace A328162.P344180719522822916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (n + 1) + A010055 (n + 1)

end

end A328162.P344180719522822916

/-! ## A328162.P14138252042712662217

`∑{d}[n+1, A008683(#/A034699(#))]`
-/

namespace A328162.P14138252042712662217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((d : ℚ) / (A034699 d : ℚ))).toNat

end

end A328162.P14138252042712662217

/-! ## A328162.P8556224180953369604

`A328195(n+1)+char[A181062(n+1)]`
-/

namespace A328162.P8556224180953369604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328162.P8556224180953369604

/-! ## A328162.P16172252124156743661

`A328195(n+1)+A033683(A008480(n+1))`
-/

namespace A328162.P16172252124156743661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (n + 1) + A033683 (A008480 (n + 1)).toNat

end

end A328162.P16172252124156743661

/-! ## A328162.P11086860158318969139

`A328195(A129598(n+1))`
-/

namespace A328162.P11086860158318969139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A129598 (n + 1)).toNat

end

end A328162.P11086860158318969139

/-! ## A328162.P6401616573654554119

`A328195(A256017(n+1))`
-/

namespace A328162.P6401616573654554119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A256017 (n + 1)).toNat

end

end A328162.P6401616573654554119

/-! ## A328162.P2652034112000410775

`A328195(A013636(n+1))`
-/

namespace A328162.P2652034112000410775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A013636 (n + 1)).toNat

end

end A328162.P2652034112000410775

/-! ## A328162.P2970173249437789039

`A328195(A053024(n+1))`
-/

namespace A328162.P2970173249437789039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A053024 (n + 1)).toNat

end

end A328162.P2970173249437789039

/-! ## A328162.P11712928720666471054

`A328195(A004928(n+1))`
-/

namespace A328162.P11712928720666471054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A004928 (n + 1)).toNat

end

end A328162.P11712928720666471054

/-! ## A328162.P12715359585114790437

`A328195(A033286(n+1))`
-/

namespace A328162.P12715359585114790437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A033286 (n + 1)).toNat

end

end A328162.P12715359585114790437

/-! ## A328162.P3863321229510436216

`A328195(A117495(n+2))`
-/

namespace A328162.P3863321229510436216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A117495 (n + 2)).toNat

end

end A328162.P3863321229510436216

/-! ## A328162.P15902160502185321618

`A328195(A306192(n+2))`
-/

namespace A328162.P15902160502185321618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328195 (A306192 (n + 2)).toNat

end

end A328162.P15902160502185321618

/-!
# A328163: Number of integer partitions of n whose unsigned differences have a different GCD than the GCD of their parts all minus 1.

The programs for A328163, there is no canonical definition to state claims against.
-/

/-! ## A328163.P10648890477193305905

`A000041(n)-A328164(n)`
-/

namespace A328163.P10648890477193305905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A328164 n

end

end A328163.P10648890477193305905

/-! ## A328163.P6334631952061017063

`A213598(n)-A328164(n)`
-/

namespace A328163.P6334631952061017063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A328164 n

end

end A328163.P6334631952061017063

/-! ## A328163.P3931043972061862062

`sqrt(A001255(n))-A328164(n)`
-/

namespace A328163.P3931043972061862062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A328164 n : ℝ)

end

end A328163.P3931043972061862062

/-! ## A328163.P14059592214048134406

`∑[A002865(n)]-A328164(n)`
-/

namespace A328163.P14059592214048134406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A328164 n

end

end A328163.P14059592214048134406

/-! ## A328163.P17526766763414704906

`A035363(2*n)-A328164(n)`
-/

namespace A328163.P17526766763414704906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A328164 n

end

end A328163.P17526766763414704906

/-!
# A328164: Number of integer partitions of n whose unsigned differences have the same GCD as the GCD of their parts all minus 1.

The programs for A328164, there is no canonical definition to state claims against.
-/

/-! ## A328164.P7271249158127633114

`A000041(n)-A328163(n)`
-/

namespace A328164.P7271249158127633114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A328163 n

end

end A328164.P7271249158127633114

/-! ## A328164.P15808944654151130690

`A213598(n)-A328163(n)`
-/

namespace A328164.P15808944654151130690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A328163 n

end

end A328164.P15808944654151130690

/-! ## A328164.P7044566854051400866

`sqrt(A001255(n))-A328163(n)`
-/

namespace A328164.P7044566854051400866
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A328163 n : ℝ)

end

end A328164.P7044566854051400866

/-! ## A328164.P12447546667459988181

`∑[A002865(n)]-A328163(n)`
-/

namespace A328164.P12447546667459988181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A328163 n

end

end A328164.P12447546667459988181

/-! ## A328164.P6110848681146573597

`A054225(∑[n])-A328163(n)`
-/

namespace A328164.P6110848681146573597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A328163 n

end

end A328164.P6110848681146573597

/-!
# A328165: Numbers whose divisors do not have weakly decreasing run-lengths.

The programs for A328165, there is no canonical definition to state claims against.
-/

/-! ## A328165.P7392463856846065967

`A131847(A062399(n)+4)`
-/

namespace A328165.P7392463856846065967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131847 (A062399 n + 4).toNat

end

end A328165.P7392463856846065967

/-! ## A328165.P9661327089681630457

`A131847(A120126(n)+4)`
-/

namespace A328165.P9661327089681630457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131847 (A120126 n + 4).toNat

end

end A328165.P9661327089681630457

/-! ## A328165.P15924143662636245531

`A131847(A061147(n+1)+3)`
-/

namespace A328165.P15924143662636245531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131847 (A061147 (n + 1) + 3).toNat

end

end A328165.P15924143662636245531

/-! ## A328165.P7858670223375356521

`A131847(A188649(n+1)+3)`
-/

namespace A328165.P7858670223375356521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131847 (A188649 (n + 1) + 3).toNat

end

end A328165.P7858670223375356521

/-! ## A328165.P8140184339956653858

`A131847(A004894(n+1)+4)`
-/

namespace A328165.P8140184339956653858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131847 (A004894 (n + 1) + 4).toNat

end

end A328165.P8140184339956653858

/-!
# A328166: Heinz number of the run-lengths of the divisors of n.

The programs for A328166, there is no canonical definition to state claims against.
-/

/-! ## A328166.P633190250658779931

`A286589(A074854(n+1))`
-/

namespace A328166.P633190250658779931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286589 (A074854 (n + 1)).toNat

end

end A328166.P633190250658779931

/-! ## A328166.P15880765862798373811

`A246029(∑{d}[n+1, 2^(#-1)])`
-/

namespace A328166.P15880765862798373811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat

end

end A328166.P15880765862798373811

/-! ## A328166.P18190016053197928140

`A246029(A034729(n+1))`
-/

namespace A328166.P18190016053197928140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A034729 (n + 1)).toNat

end

end A328166.P18190016053197928140

/-! ## A328166.P1918258255835560308

`A246029(A055895(n+1)/2)`
-/

namespace A328166.P1918258255835560308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (SequenceMachineLib.roundAway ((A055895 (n + 1) : ℚ) / 2)).toNat

end

end A328166.P1918258255835560308

/-! ## A328166.P3770156170186135229

`A246029(A055895(n+1))`
-/

namespace A328166.P3770156170186135229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A055895 (n + 1)).toNat

end

end A328166.P3770156170186135229

/-!
# A328167: GCD of the prime indices of n, all minus 1.

The programs for A328167, there is no canonical definition to state claims against.
-/

/-! ## A328167.P294704697030002128

`A289508(A064989(n+1))`
-/

namespace A328167.P294704697030002128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A064989 (n + 1)).toNat

end

end A328167.P294704697030002128

/-! ## A328167.P13081442952875670100

`A289508(abs(A290099(n+1)))`
-/

namespace A328167.P13081442952875670100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 |A290099 (n + 1)|.toNat

end

end A328167.P13081442952875670100

/-! ## A328167.P14411853173123233766

`A289508(A290099((n+1)²))`
-/

namespace A328167.P14411853173123233766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A290099 ((n + 1) ^ 2)).toNat

end

end A328167.P14411853173123233766

/-! ## A328167.P261394077070124525

`A289508(A325133((n+1)²))`
-/

namespace A328167.P261394077070124525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A325133 ((n + 1) ^ 2)).toNat

end

end A328167.P261394077070124525

/-! ## A328167.P15801733410453907572

`A297173(A325351(2*(n+1)))`
-/

namespace A328167.P15801733410453907572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A325351 (2 * (n + 1))).toNat

end

end A328167.P15801733410453907572

/-! ## A328167.P10840325268718665048

`A289508(A290099(n+1)^2)`
-/

namespace A328167.P10840325268718665048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A290099 (n + 1) ^ 2).toNat

end

end A328167.P10840325268718665048

/-! ## A328167.P17636220567071431299

`A289508(∏{d}[A290099(n+1), #])`
-/

namespace A328167.P17636220567071431299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A328167.P17636220567071431299

/-! ## A328167.P16242314776174213822

`A289508(∏{p}[A290099(n+1), #])`
-/

namespace A328167.P16242314776174213822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A328167.P16242314776174213822

/-! ## A328167.P1230861975813200762

`A297173(2*(n+1)*A051700(n))`
-/

namespace A328167.P1230861975813200762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 ((2 * (n + 1) : ℤ) * A051700 n).toNat

end

end A328167.P1230861975813200762

/-! ## A328167.P11345312691515679430

`gcd(A242411(n+1), A252735(n+1))`
-/

namespace A328167.P11345312691515679430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242411 (n + 1)) (A252735 (n + 1))

end

end A328167.P11345312691515679430

/-!
# A328168: Numbers whose prime indices minus 1 are relatively prime.

The programs for A328168, there is no canonical definition to state claims against.
-/

/-! ## A328168.P8285776855277662984

`eq[1, A289508(A064989(n+1))]+1`
-/

namespace A328168.P8285776855277662984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A064989 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328168.P8285776855277662984

/-! ## A328168.P4015754316041737306

`eq[4, a(A289508(A064989(n)))²]` with `a(0)=0, a(1)=2`
-/

namespace A328168.P4015754316041737306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (A289508 (A064989 n).toNat).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328168.P4015754316041737306

/-! ## A328168.P9897878356685339787

`lt[1, A327405(A064989(abs(1-n)+1))]`
-/

namespace A328168.P9897878356685339787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327405 (A064989 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328168.P9897878356685339787

/-! ## A328168.P14861572324955193704

`eq[1, A328167(n+1)]+1`
-/

namespace A328168.P14861572324955193704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328168.P14861572324955193704

/-! ## A328168.P6474992879100535154

`eq[1, A328167(A028310(n))]`
-/

namespace A328168.P6474992879100535154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328168.P6474992879100535154

/-!
# A328169: GCD of the prime indices of n, all plus 1.

The programs for A328169, there is no canonical definition to state claims against.
-/

/-! ## A328169.P14278215418864825854

`A289508(A003961(n+1))`
-/

namespace A328169.P14278215418864825854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A003961 (n + 1)).toNat

end

end A328169.P14278215418864825854

/-! ## A328169.P69470966103214997

`A289508(A253885(n)+1)`
-/

namespace A328169.P69470966103214997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A253885 n + 1).toNat

end

end A328169.P69470966103214997

/-! ## A328169.P8338086201385007105

`A289508(A328915(n+1))`
-/

namespace A328169.P8338086201385007105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A328915 (n + 1)).toNat

end

end A328169.P8338086201385007105

/-! ## A328169.P4879116864859236777

`A289508(or(1, A253885(n)))`
-/

namespace A328169.P4879116864859236777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.lor 1 (A253885 n)).toNat

end

end A328169.P4879116864859236777

/-! ## A328169.P7139500442792923606

`A289508(xor(1, A253885(n)))`
-/

namespace A328169.P7139500442792923606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.xor 1 (A253885 n)).toNat

end

end A328169.P7139500442792923606

/-! ## A328169.P1011416736238038432

`A289508(A097246((n+1)²))`
-/

namespace A328169.P1011416736238038432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A097246 ((n + 1) ^ 2)).toNat

end

end A328169.P1011416736238038432

/-! ## A328169.P4608902677410950293

`A289508(A243501(n+1)-1)`
-/

namespace A328169.P4608902677410950293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A243501 (n + 1) - 1).toNat

end

end A328169.P4608902677410950293

/-! ## A328169.P4146572985036381225

`A289508(A191002(n+1)/(n+1))`
-/

namespace A328169.P4146572985036381225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (SequenceMachineLib.roundAway ((A191002 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A328169.P4146572985036381225

/-! ## A328169.P9430939645089342924

`A289508(A252748(n+1)+2*(n+1))`
-/

namespace A328169.P9430939645089342924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A252748 (n + 1) + (2 * (n + 1) : ℤ)).toNat

end

end A328169.P9430939645089342924

/-! ## A328169.P9710503565635857925

`A289508(A045965(n+1))%(2*n+1)`
-/

namespace A328169.P9710503565635857925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289508 (A045965 (n + 1)).toNat) (2 * n + 1 : ℤ)

end

end A328169.P9710503565635857925

/-!
# A328170: Number of integer partitions of n whose parts minus 1 are relatively prime.

The programs for A328170, there is no canonical definition to state claims against.
-/

/-! ## A328170.P10081519010027284453

`A076269(2*(n+1))-A055642(2*(n+1))`
-/

namespace A328170.P10081519010027284453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076269 (2 * (n + 1)) - A055642 (2 * (n + 1))

end

end A328170.P10081519010027284453

/-! ## A328170.P1361626935793548140

`A134119(A114116(n)+A008337(n))`
-/

namespace A328170.P1361626935793548140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A114116 n + A008337 n).toNat

end

end A328170.P1361626935793548140

/-! ## A328170.P18425722652967019549

`A250002(A238531(n))+A000701(n)`
-/

namespace A328170.P18425722652967019549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A238531 n).toNat + A000701 n

end

end A328170.P18425722652967019549

/-! ## A328170.P3053918395137863565

`A076269(2*(n+1))-A056556(A000267(n))`
-/

namespace A328170.P3053918395137863565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076269 (2 * (n + 1)) - A056556 (A000267 n).toNat

end

end A328170.P3053918395137863565

/-! ## A328170.P4938183861001988857

`∑[A025900(A324696(C(n, 2)+2))]`
-/

namespace A328170.P4938183861001988857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 (A324696 (Nat.choose n 2 + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328170.P4938183861001988857

/-!
# A328171: Number of (necessarily strict) integer partitions of n with no two consecutive parts divisible.

The programs for A328171, there is no canonical definition to state claims against.
-/

/-! ## A328171.P6822287648062034127

`A000041(n)-A328221(n)`
-/

namespace A328171.P6822287648062034127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A328221 n

end

end A328171.P6822287648062034127

/-! ## A328171.P6759547057264262743

`A213598(n)-A328221(n)`
-/

namespace A328171.P6759547057264262743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A328221 n

end

end A328171.P6759547057264262743

/-! ## A328171.P3120016470378195979

`A168019(A000217(n))-A328221(n)`
-/

namespace A328171.P3120016470378195979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (A000217 n).toNat - A328221 n

end

end A328171.P3120016470378195979

/-!
# A328172: Number of integer partitions of n with all pairs of consecutive parts relatively prime.

The programs for A328172, there is no canonical definition to state claims against.
-/

/-! ## A328172.P8055934817479598656

`A328188(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A328172.P8055934817479598656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A328188 n + a (n - 2)

end

end A328172.P8055934817479598656

/-! ## A328172.P2475250593988419174

`A118083(A187829(n+1))-A055640(n)`
-/

namespace A328172.P2475250593988419174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118083 (A187829 (n + 1)).toNat - A055640 n

end

end A328172.P2475250593988419174

/-! ## A328172.P9957952658338307252

`A121900(A242531(n+1)+A060099(n))`
-/

namespace A328172.P9957952658338307252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A242531 (n + 1) + A060099 n).toNat

end

end A328172.P9957952658338307252

/-! ## A328172.P676507326295771225

`A105224(A028310(n)*A092309(n+1))`
-/

namespace A328172.P676507326295771225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A028310 n * A092309 (n + 1)).toNat

end

end A328172.P676507326295771225

/-! ## A328172.P7002978344811891791

`A252474(A051424(n)%A337670(3*(n+1)))`
-/

namespace A328172.P7002978344811891791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (Int.tmod (A051424 n) (A337670 (3 * (n + 1)))).toNat

end

end A328172.P7002978344811891791

/-!
# A328173: Numbers k such that decimal expansion of k^2 can be split into two parts whose sum is a number with repeated digits.

The programs for A328173, there is no canonical definition to state claims against.
-/

/-! ## A328173.P13442312782538697600

`A061917(ceil(A085328(2*n+5)/4))`
-/

namespace A328173.P13442312782538697600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 ⌈(A085328 (2 * n + 5) : ℚ) / 4⌉.toNat

end

end A328173.P13442312782538697600

/-!
# A328176: a(n) is the maximal value of the expression d AND (n/d) where d runs through the divisors of n and AND denotes the bitwise AND operator.

The programs for A328176, there is no canonical definition to state claims against.
-/

/-! ## A328176.P13247131814007729166

`A328177(n+1)%A328174(n+1)-A328178(n+1)`
-/

namespace A328176.P13247131814007729166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328177 (n + 1)) (A328174 (n + 1)) - A328178 (n + 1)

end

end A328176.P13247131814007729166

/-! ## A328176.P7507762895064159077

`A328177(n+1)-A328178(n+1)%A327989(n+1)`
-/

namespace A328176.P7507762895064159077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328177 (n + 1) - Int.tmod (A328178 (n + 1)) (A327989 (n + 1))

end

end A328176.P7507762895064159077

/-! ## A328176.P4799317973479024213

`(A328177(n+1)-A328178(n+1))%A226643(n+1)`
-/

namespace A328176.P4799317973479024213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328177 (n + 1) - A328178 (n + 1)) (A226643 (n + 1))

end

end A328176.P4799317973479024213

/-! ## A328176.P10041021687839337658

`xor(A328177(n+1), A328178(n+1))%A328197(n+1)`
-/

namespace A328176.P10041021687839337658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A328177 (n + 1)) (A328178 (n + 1))) (A328197 (n + 1))

end

end A328176.P10041021687839337658

/-! ## A328176.P11883600217329039153

`A110548(A328177(n+1))-A328178(n+1)`
-/

namespace A328176.P11883600217329039153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110548 (A328177 (n + 1)).toNat - A328178 (n + 1)

end

end A328176.P11883600217329039153

/-!
# A328177: a(n) is the minimal value of the expression d OR (n/d) where d runs through the divisors of n and OR denotes the bitwise OR operator.

The programs for A328177, there is no canonical definition to state claims against.
-/

/-! ## A328177.P18101775146922330893

`A328176(n+1)+A328178(n+1)%A328174(n+1)`
-/

namespace A328177.P18101775146922330893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328176 (n + 1) + Int.tmod (A328178 (n + 1)) (A328174 (n + 1))

end

end A328177.P18101775146922330893

/-! ## A328177.P8575801227752731206

`(A328178(n+1)+A328176(n+1))%A327989(n+1)`
-/

namespace A328177.P8575801227752731206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328178 (n + 1) + A328176 (n + 1)) (A327989 (n + 1))

end

end A328177.P8575801227752731206

/-! ## A328177.P10729049905864514723

`xor(A328176(n+1), A328178(n+1))%A226643(n+1)`
-/

namespace A328177.P10729049905864514723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A328176 (n + 1)) (A328178 (n + 1))) (A226643 (n + 1))

end

end A328177.P10729049905864514723

/-! ## A328177.P7650187388153492558

`or(A328176(n+1), A328178(n+1))%A328197(n+1)`
-/

namespace A328177.P7650187388153492558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A328176 (n + 1)) (A328178 (n + 1))) (A328197 (n + 1))

end

end A328177.P7650187388153492558

/-! ## A328177.P336893843808140432

`or(A072505(n+1), A355748(A280375(n+1)))`
-/

namespace A328177.P336893843808140432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072505 (n + 1)) (A355748 (A280375 (n + 1)).toNat)

end

end A328177.P336893843808140432

/-!
# A328178: a(n) is the minimal value of the expression d XOR (n/d) where d runs through the divisors of n and XOR denotes the bitwise XOR operator.

The programs for A328178, there is no canonical definition to state claims against.
-/

/-! ## A328178.P8507626540849475902

`A328177(n+1)%A328174(n+1)-A328176(n+1)`
-/

namespace A328178.P8507626540849475902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328177 (n + 1)) (A328174 (n + 1)) - A328176 (n + 1)

end

end A328178.P8507626540849475902

/-! ## A328178.P11918051146889608368

`A328177(n+1)-A328176(n+1)%A327989(n+1)`
-/

namespace A328178.P11918051146889608368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328177 (n + 1) - Int.tmod (A328176 (n + 1)) (A327989 (n + 1))

end

end A328178.P11918051146889608368

/-! ## A328178.P2070746964892481775

`(A328177(n+1)-A328176(n+1))%A226643(n+1)`
-/

namespace A328178.P2070746964892481775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328177 (n + 1) - A328176 (n + 1)) (A226643 (n + 1))

end

end A328178.P2070746964892481775

/-! ## A328178.P4894638455453937516

`xor(A328176(n+1), A328177(n+1))%A328197(n+1)`
-/

namespace A328178.P4894638455453937516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A328176 (n + 1)) (A328177 (n + 1))) (A328197 (n + 1))

end

end A328178.P4894638455453937516

/-! ## A328178.P17996795651744618320

`A110548(A328177(n+1))-A328176(n+1)`
-/

namespace A328178.P17996795651744618320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110548 (A328177 (n + 1)).toNat - A328176 (n + 1)

end

end A328178.P17996795651744618320

/-!
# A328179: Number of distinct primes required to satisfy the Strong Goldbach Conjecture for all even numbers <= 2n.

The programs for A328179, there is no canonical definition to state claims against.
-/

/-! ## A328179.P13813071415247020678

`A135664(or(A135382(n+1), A313726(n)))`
-/

namespace A328179.P13813071415247020678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (Int.lor (A135382 (n + 1)) (A313726 n)).toNat

end

end A328179.P13813071415247020678

/-! ## A328179.P4658277290046299037

`A000193(∑[A238105(n+1)+A019538(n+1)])`
-/

namespace A328179.P4658277290046299037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238105 (n + 1) + A019538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328179.P4658277290046299037

/-! ## A328179.P822818717469053028

`∑[A010060(A288344(n+7))]`
-/

namespace A328179.P822818717469053028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A288344 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328179.P822818717469053028

/-! ## A328179.P18098866724236187070

`A241216(or(A084422(n), A275365(n)))`
-/

namespace A328179.P18098866724236187070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241216 (Int.lor (A084422 n) (A275365 n)).toNat

end

end A328179.P18098866724236187070

/-!
# A328180: a(n) is the maximum number of 5-cycles possible in an n-vertex planar graph.

The programs for A328180, there is no canonical definition to state claims against.
-/

/-! ## A328180.P7112756622924227846

`A309480(A132832(n))%A000066(n+4)`
-/

namespace A328180.P7112756622924227846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309480 (A132832 n).toNat) (A000066 (n + 4))

end

end A328180.P7112756622924227846

/-! ## A328180.P10770568629916608454

`A073837(n+2)%A099802(A332791(n+1))`
-/

namespace A328180.P10770568629916608454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073837 (n + 2)) (A099802 (A332791 (n + 1)).toNat)

end

end A328180.P10770568629916608454

/-!
# A328181: a(n) = (-1)^(bigomega(n) - omega(n)) * Sum_{d|n} (-1)^(bigomega(d) - omega(d)) * d.

The programs for A328181, there is no canonical definition to state claims against.
-/

/-! ## A328181.P2039857921117803649

`or(A010877(A234208(n+1)), A348984(n+1))`
-/

namespace A328181.P2039857921117803649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010877 (A234208 (n + 1)).toNat) (A348984 (n + 1))

end

end A328181.P2039857921117803649

/-! ## A328181.P14190270606415901202

`A348047(n+1)+A055641(A221225(n+1))²`
-/

namespace A328181.P14190270606415901202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348047 (n + 1) + A055641 (A221225 (n + 1)).toNat ^ 2

end

end A328181.P14190270606415901202

/-! ## A328181.P3707401737700204841

`A348503(n+1)+and(A066503(n+1), A184944(2*n))`
-/

namespace A328181.P3707401737700204841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348503 (n + 1) + Int.land (A066503 (n + 1)) (A184944 (2 * n))

end

end A328181.P3707401737700204841

/-!
# A328182: Expansion of e.g.f. 1 / (2 - exp(3*x)).

The programs for A328182, there is no canonical definition to state claims against.
-/

/-! ## A328182.P3182722628509539791

`3^n*A000670(n)`
-/

namespace A328182.P3182722628509539791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000670 n

end

end A328182.P3182722628509539791

/-! ## A328182.P1517271383943784358

`3^n*A122101(∑[n])`
-/

namespace A328182.P1517271383943784358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328182.P1517271383943784358

/-! ## A328182.P8637519813500606200

`(A052875(n)+1)*3^n`
-/

namespace A328182.P8637519813500606200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052875 n + 1) * (3 ^ n : ℤ)

end

end A328182.P8637519813500606200

/-! ## A328182.P3880817278385443537

`A076726(n)/2*3^n`
-/

namespace A328182.P3880817278385443537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 * (3 ^ n : ℚ)

end

end A328182.P3880817278385443537

/-! ## A328182.P10826743074335794016

`3^n*ceil(A007047(n)/4)`
-/

namespace A328182.P10826743074335794016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌈(A007047 n : ℚ) / 4⌉

end

end A328182.P10826743074335794016

/-! ## A328182.P5499935186928176407

`(2*A032109(n)-1)*3^n`
-/

namespace A328182.P5499935186928176407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A032109 n - 1) * (3 ^ n : ℤ)

end

end A328182.P5499935186928176407

/-! ## A328182.P15892035141636442484

`A000670(n)*A027465(∑[n])`
-/

namespace A328182.P15892035141636442484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A027465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328182.P15892035141636442484

/-! ## A328182.P13891164948464798779

`A000670(n)*A164942(∑[n])`
-/

namespace A328182.P13891164948464798779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A164942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328182.P13891164948464798779

/-! ## A328182.P18064913928859758301

`A000670(n)*A133494(n+1)`
-/

namespace A328182.P18064913928859758301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A133494 (n + 1)

end

end A328182.P18064913928859758301

/-! ## A328182.P11425810880984538031

`A000670(n)*A182522(2*n+1)`
-/

namespace A328182.P11425810880984538031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A182522 (2 * n + 1)

end

end A328182.P11425810880984538031

/-!
# A328183: Expansion of e.g.f. 1 / (2 - exp(4*x)).

The programs for A328183, there is no canonical definition to state claims against.
-/

/-! ## A328183.P11787824841743919628

`4^n*A000670(n)`
-/

namespace A328183.P11787824841743919628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000670 n

end

end A328183.P11787824841743919628

/-! ## A328183.P11296935070773270825

`2^n*A216794(n)`
-/

namespace A328183.P11296935070773270825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A216794 n

end

end A328183.P11296935070773270825

/-! ## A328183.P9086277181754294430

`4^n*A122101(∑[n])`
-/

namespace A328183.P9086277181754294430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328183.P9086277181754294430

/-! ## A328183.P8861229273385546322

`A076726(n)/2*4^n`
-/

namespace A328183.P8861229273385546322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 * (4 ^ n : ℚ)

end

end A328183.P8861229273385546322

/-! ## A328183.P8370245618340443666

`lcm(A052875(n)+1, 4^n)`
-/

namespace A328183.P8370245618340443666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A052875 n + 1) (4 ^ n : ℤ)

end

end A328183.P8370245618340443666

/-! ## A328183.P12666825010678348462

`lcm(A000302(n), A000629(n))`
-/

namespace A328183.P12666825010678348462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A000629 n)

end

end A328183.P12666825010678348462

/-! ## A328183.P4513680159166248233

`lcm(A000079(n)², A162314(n))`
-/

namespace A328183.P4513680159166248233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n ^ 2) (A162314 n)

end

end A328183.P4513680159166248233

/-! ## A328183.P4258486439588270713

`lcm(record[A102561(n)], A000670(n))`
-/

namespace A328183.P4258486439588270713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000670 n)

end

end A328183.P4258486439588270713

/-! ## A328183.P12858809310201077599

`A000629(n)*A011782(2*n)`
-/

namespace A328183.P12858809310201077599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n * A011782 (2 * n)

end

end A328183.P12858809310201077599

/-! ## A328183.P11911567502514474785

`Δ[A002450(n)]*A154921(∑[n])`
-/

namespace A328183.P11911567502514474785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A154921 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A328183.P11911567502514474785

/-!
# A328184: Denominator of time taken for a vertex of a rolling regular n-sided polygon to reach the ground.

The programs for A328184, the canonical program `A328184.P9274231318191450713` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328184 has offset 3).

The definition of A328184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328184.P9274231318191450713

`lcm(6, A165998(n+2))/(1/2+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A328184

/-- `lcm(6, A165998(n+2))/(1/2+1)` -/
def P9274231318191450713.Spec : Prop :=
  ∀ n, P9274231318191450713.a n = (A328184 (n + 3) : ℚ)

end A328184

/-! ## A328184.P5056142766804779478

`4*(n+3)/gcd(2*n, A020639(n+3))`
-/

namespace A328184.P5056142766804779478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n + 3 : ℚ) / (Int.gcd (2 * n : ℤ) (A020639 (n + 3)) : ℚ))

end

end A328184.P5056142766804779478

namespace A328184

/-- `4*(n+3)/gcd(2*n, A020639(n+3))` -/
def P5056142766804779478.Spec : Prop :=
  ∀ n, P5056142766804779478.a n = (A328184 (n + 3) : ℚ)

end A328184

/-! ## A328184.P4343087680112942936

`A008586(n+3)/gcd(A007590(n+1), n+3)`
-/

namespace A328184.P4343087680112942936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (n + 3) : ℚ) / (Int.gcd (A007590 (n + 1)) (n + 3 : ℤ) : ℚ)

end

end A328184.P4343087680112942936

namespace A328184

/-- `A008586(n+3)/gcd(A007590(n+1), n+3)` -/
def P4343087680112942936.Spec : Prop :=
  ∀ n, P4343087680112942936.a n = (A328184 (n + 3) : ℚ)

end A328184

/-! ## A328184.P507443172299820025

`A008574(n+3)/gcd(2*n, A004442(n+2))`
-/

namespace A328184.P507443172299820025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (n + 3) : ℚ) / (Int.gcd (2 * n : ℤ) (A004442 (n + 2)) : ℚ)

end

end A328184.P507443172299820025

namespace A328184

/-- `A008574(n+3)/gcd(2*n, A004442(n+2))` -/
def P507443172299820025.Spec : Prop :=
  ∀ n, P507443172299820025.a n = (A328184 (n + 3) : ℚ)

end A328184

/-! ## A328184.P1184600720077791926

`4*(n+3)/gcd(A001281(n+6), A001281(n))`
-/

namespace A328184.P1184600720077791926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (n + 3) : ℚ) / (Int.gcd (A001281 (n + 6)) (A001281 n) : ℚ)

end

end A328184.P1184600720077791926

namespace A328184

/-- `4*(n+3)/gcd(A001281(n+6), A001281(n))` -/
def P1184600720077791926.Spec : Prop :=
  ∀ n, P1184600720077791926.a n = (A328184 (n + 3) : ℚ)

end A328184

/-! ## A328184.P7471636568357195147

`lcm(4, A280057(A257143(n+3)))`
-/

namespace A328184.P7471636568357195147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A280057 (A257143 (n + 3)).toNat)

end

end A328184.P7471636568357195147

namespace A328184

/-- `lcm(4, A280057(A257143(n+3)))` -/
def P7471636568357195147.Spec : Prop :=
  ∀ n, (P7471636568357195147.a n : ℤ) = A328184 (n + 3)

end A328184

/-! ## A328184.P8407974135298771080

`4*A145064(A145064(A165355(n)))`
-/

namespace A328184.P8407974135298771080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A145064 (A145064 (A165355 n).toNat).toNat

end

end A328184.P8407974135298771080

namespace A328184

/-- `4*A145064(A145064(A165355(n)))` -/
def P8407974135298771080.Spec : Prop :=
  ∀ n, P8407974135298771080.a n = A328184 (n + 3)

end A328184

/-! ## A328184.P7186788261954786519

`A068217((n+3)*A010693(n))`
-/

namespace A328184.P7186788261954786519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068217 ((n + 3 : ℤ) * A010693 n).toNat

end

end A328184.P7186788261954786519

namespace A328184

/-- `A068217((n+3)*A010693(n))` -/
def P7186788261954786519.Spec : Prop :=
  ∀ n, P7186788261954786519.a n = A328184 (n + 3)

end A328184

/-! ## A328184.P5862325314770720046

`A106610(12*A080512(n+3))`
-/

namespace A328184.P5862325314770720046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (12 * A080512 (n + 3)).toNat

end

end A328184.P5862325314770720046

namespace A328184

/-- `A106610(12*A080512(n+3))` -/
def P5862325314770720046.Spec : Prop :=
  ∀ n, P5862325314770720046.a n = A328184 (n + 3)

end A328184

/-!
# A328185: Numerators associated with A328184.

The programs for A328185, the canonical program `A328185.P10600166714569829382` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328185 has offset 3).

The definition of A328185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328185.P10600166714569829382

`lcm(lcm(2, n+1)+1, n+3)/(n+3)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328185

/-- `lcm(lcm(2, n+1)+1, n+3)/(n+3)` -/
def P10600166714569829382.Spec : Prop :=
  ∀ n, P10600166714569829382.a n = (A328185 (n + 3) : ℚ)

end A328185

/-! ## A328185.P2526973650209909592

`A339913(∑[Δ[lcm(2, n)]+1])`
-/

namespace A328185.P2526973650209909592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328185.P2526973650209909592

namespace A328185

/-- `A339913(∑[Δ[lcm(2, n)]+1])` -/
def P2526973650209909592.Spec : Prop :=
  ∀ n, P2526973650209909592.a n = A328185 (n + 3)

end A328185

/-! ## A328185.P17169658270543476354

`A339913((gcd(2, n)+1)*(n+1))`
-/

namespace A328185.P17169658270543476354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 ((Nat.gcd 2 n + 1) * (n + 1))

end

end A328185.P17169658270543476354

namespace A328185

/-- `A339913((gcd(2, n)+1)*(n+1))` -/
def P17169658270543476354.Spec : Prop :=
  ∀ n, P17169658270543476354.a n = A328185 (n + 3)

end A328185

/-! ## A328185.P12133485220934784771

`A339913((n+1)*(3-n%2))`
-/

namespace A328185.P12133485220934784771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 ((n + 1 : ℤ) * (3 - ((n % 2 : ℕ) : ℤ))).toNat

end

end A328185.P12133485220934784771

namespace A328185

/-- `A339913((n+1)*(3-n%2))` -/
def P12133485220934784771.Spec : Prop :=
  ∀ n, P12133485220934784771.a n = A328185 (n + 3)

end A328185

/-! ## A328185.P602716582138941429

`A339913((n+1)*(3-and(1, n)))`
-/

namespace A328185.P602716582138941429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 ((n + 1 : ℤ) * (3 - (Nat.land 1 n : ℤ))).toNat

end

end A328185.P602716582138941429

namespace A328185

/-- `A339913((n+1)*(3-and(1, n)))` -/
def P602716582138941429.Spec : Prop :=
  ∀ n, P602716582138941429.a n = A328185 (n + 3)

end A328185

/-! ## A328185.P14758931668250572684

`A339913((n+1)*xor(3, and(1, n)))`
-/

namespace A328185.P14758931668250572684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 ((n + 1) * Nat.xor 3 (Nat.land 1 n))

end

end A328185.P14758931668250572684

namespace A328185

/-- `A339913((n+1)*xor(3, and(1, n)))` -/
def P14758931668250572684.Spec : Prop :=
  ∀ n, P14758931668250572684.a n = A328185 (n + 3)

end A328185

/-! ## A328185.P16839187602870000060

`A339913(∑[Δ[n*and(1, n)]+2])`
-/

namespace A328185.P16839187602870000060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A328185.P16839187602870000060

namespace A328185

/-- `A339913(∑[Δ[n*and(1, n)]+2])` -/
def P16839187602870000060.Spec : Prop :=
  ∀ n, P16839187602870000060.a n = A328185 (n + 3)

end A328185

/-! ## A328185.P7974989487841846482

`A339913((n+1)*(-n%2+3))`
-/

namespace A328185.P7974989487841846482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 ((n + 1 : ℤ) * (Int.tmod (-(n : ℤ)) 2 + 3)).toNat

end

end A328185.P7974989487841846482

namespace A328185

/-- `A339913((n+1)*(-n%2+3))` -/
def P7974989487841846482.Spec : Prop :=
  ∀ n, P7974989487841846482.a n = A328185 (n + 3)

end A328185

/-! ## A328185.P8497938893557372129

`A339913(A106833(n+1))`
-/

namespace A328185.P8497938893557372129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (A106833 (n + 1)).toNat

end

end A328185.P8497938893557372129

namespace A328185

/-- `A339913(A106833(n+1))` -/
def P8497938893557372129.Spec : Prop :=
  ∀ n, P8497938893557372129.a n = A328185 (n + 3)

end A328185

/-! ## A328185.P6740330851121917267

`A146535(A187012(n+3))`
-/

namespace A328185.P6740330851121917267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A187012 (n + 3)).toNat

end

end A328185.P6740330851121917267

namespace A328185

/-- `A146535(A187012(n+3))` -/
def P6740330851121917267.Spec : Prop :=
  ∀ n, P6740330851121917267.a n = A328185 (n + 3)

end A328185

/-!
# A328186: Write 1/(1 + sin x) = Product_{n>=1} (1 + f_n x^n); a(n) = denominator(f_n).

The programs for A328186, there is no canonical definition to state claims against.
-/

/-! ## A328186.P1666679050368099109

`lcm(A046983(A007956(n+1)), A170915(n+1))`
-/

namespace A328186.P1666679050368099109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046983 (A007956 (n + 1)).toNat) (A170915 (n + 1))

end

end A328186.P1666679050368099109

/-! ## A328186.P12647327676036388542

`A014682(2*(n+1)/gcd(16, 7-n)*n!)`
-/

namespace A328186.P12647327676036388542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Int.gcd 16 (7 - (n : ℤ)) : ℚ) * (Nat.factorial n : ℚ))).toNat

end

end A328186.P12647327676036388542

/-! ## A328186.P17031663424780977218

`A140635(A138113(n+1)/(val(n+1, 2)+1))`
-/

namespace A328186.P17031663424780977218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (SequenceMachineLib.roundAway ((A138113 (n + 1) : ℚ) / (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℚ))).toNat

end

end A328186.P17031663424780977218

/-! ## A328186.P10447853553991234971

`A222252((n+1)/2^val(n+1, 2)*A178011(n+1))`
-/

namespace A328186.P10447853553991234971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A178011 (n + 1) : ℚ))).toNat

end

end A328186.P10447853553991234971

/-!
# A328187: Number of integer partitions of n with no pair of consecutive parts relatively prime.

The programs for A328187, there is no canonical definition to state claims against.
-/

/-! ## A328187.P14830777719921407508

`or(A064727(A000285(n)), A200976(n))`
-/

namespace A328187.P14830777719921407508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064727 (A000285 n).toNat) (A200976 n)

end

end A328187.P14830777719921407508

/-! ## A328187.P9832828041597193097

`or(A018783(n), A321750(A281469(n+1)))`
-/

namespace A328187.P9832828041597193097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018783 n) (A321750 (A281469 (n + 1)).toNat)

end

end A328187.P9832828041597193097

/-! ## A328187.P18380514770977183164

`or(A018783(n), A018843(A241512(n)))`
-/

namespace A328187.P18380514770977183164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018783 n) (A018843 (A241512 n).toNat)

end

end A328187.P18380514770977183164

/-! ## A328187.P9123336158367899574

`or(A018783(n), A322308(A281744(n)))`
-/

namespace A328187.P9123336158367899574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018783 n) (A322308 (A281744 n).toNat)

end

end A328187.P9123336158367899574

/-! ## A328187.P15880453843177136446

`or(A200976(n), A322308(A281744(n)))`
-/

namespace A328187.P15880453843177136446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A200976 n) (A322308 (A281744 n).toNat)

end

end A328187.P15880453843177136446

/-!
# A328189: Numbers n with at least one pair of consecutive divisible nontrivial divisors (greater than 1 and less than n).

The programs for A328189, there is no canonical definition to state claims against.
-/

/-! ## A328189.P9313032148797568897

`lt[1, A328194(n+1)]+1`
-/

namespace A328189.P9313032148797568897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328189.P9313032148797568897

/-! ## A328189.P8313159843790800146

`lt[2, A235875(n+1)]+1`
-/

namespace A328189.P8313159843790800146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328189.P8313159843790800146

/-! ## A328189.P7173332393291480939

`lt[2, A328026(n+1)]+1`
-/

namespace A328189.P7173332393291480939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A328189.P7173332393291480939

/-! ## A328189.P16705692628170581394

`comp[A328161(n+1)-1]+1`
-/

namespace A328189.P16705692628170581394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328161 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A328189.P16705692628170581394

/-! ## A328189.P11844640617568955204

`lt[2, A235875(n*a(and(1, n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A328189.P11844640617568955204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A235875 ((n : ℤ) * f2 (Int.land 1 ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328189.P11844640617568955204

/-! ## A328189.P1134456369600008360

`lt[2, A235875(A028310(n))]`
-/

namespace A328189.P1134456369600008360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328189.P1134456369600008360

/-! ## A328189.P7807482460202286927

`A020725(lt[2, A235875(n+1)])`
-/

namespace A328189.P7807482460202286927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328189.P7807482460202286927

/-! ## A328189.P5999378386717311643

`A061767(lt[2, A235875(n+1)])`
-/

namespace A328189.P5999378386717311643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328189.P5999378386717311643

/-! ## A328189.P7427798612418543948

`A065475(lt[2, A235875(n+1)])`
-/

namespace A328189.P7427798612418543948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328189.P7427798612418543948

/-! ## A328189.P9203287509134594115

`A113484(lt[2, A235875(n+1)])`
-/

namespace A328189.P9203287509134594115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A328189.P9203287509134594115

/-!
# A328190: Lexicographically earliest infinite sequence of distinct positive integers such that the sequence and its first differences have no values in common.

The programs for A328190, the canonical program `A328190.P10977472533607710601` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328190 has offset 1).

The definition of A328190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328190.P15199528682854228569

`A328196(n)+a(n-1)` with `a(0)=1`
-/

namespace A328190.P15199528682854228569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328196 n + a (n - 1)

end

end A328190.P15199528682854228569

namespace A328190

/-- `A328196(n)+a(n-1)` -/
def P15199528682854228569.Spec : Prop :=
  ∀ n, P15199528682854228569.a n = A328190 (n + 1)

end A328190

/-! ## A328190.P1301545636230882856

`∑[A328196(A028310(n))]-1`
-/

namespace A328190.P1301545636230882856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328196 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A328190.P1301545636230882856

namespace A328190

/-- `∑[A328196(A028310(n))]-1` -/
def P1301545636230882856.Spec : Prop :=
  ∀ n, P1301545636230882856.a n = A328190 (n + 1)

end A328190

/-! ## A328190.P13280286612405219226

`∑[A328196(n+1)]+1-A328196(n+1)`
-/

namespace A328190.P13280286612405219226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A328196 (n + 1))

end

end A328190.P13280286612405219226

namespace A328190

/-- `∑[A328196(n+1)]+1-A328196(n+1)` -/
def P13280286612405219226.Spec : Prop :=
  ∀ n, P13280286612405219226.a n = A328190 (n + 1)

end A328190

/-! ## A328190.P10977472533607710601

`A328984(n+1)+and(A298468(n), A328979(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A328190

/-- `A328984(n+1)+and(A298468(n), A328979(n+1))` -/
def P10977472533607710601.Spec : Prop :=
  ∀ n, P10977472533607710601.a n = A328190 (n + 1)

theorem P10977472533607710601.correct : P10977472533607710601.Spec := by
  intro n
  simp only [A328190, Nat.add_sub_cancel]

end A328190

/-! ## A328190.P1915079698198316229

`∑[A328196(A065033(2*n))]-1`
-/

namespace A328190.P1915079698198316229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328196 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A328190.P1915079698198316229

namespace A328190

/-- `∑[A328196(A065033(2*n))]-1` -/
def P1915079698198316229.Spec : Prop :=
  ∀ n, P1915079698198316229.a n = A328190 (n + 1)

end A328190

/-! ## A328190.P11693439427095781550

`A008619(A298468(A022998(n)))`
-/

namespace A328190.P11693439427095781550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A298468 (A022998 n).toNat).toNat

end

end A328190.P11693439427095781550

namespace A328190

/-- `A008619(A298468(A022998(n)))` -/
def P11693439427095781550.Spec : Prop :=
  ∀ n, P11693439427095781550.a n = A328190 (n + 1)

end A328190

/-! ## A328190.P16561675829854493947

`A328984(n+1)+A328981(A301710(n))`
-/

namespace A328190.P16561675829854493947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (n + 1) + A328981 (A301710 n).toNat

end

end A328190.P16561675829854493947

namespace A328190

/-- `A328984(n+1)+A328981(A301710(n))` -/
def P16561675829854493947.Spec : Prop :=
  ∀ n, P16561675829854493947.a n = A328190 (n + 1)

end A328190

/-!
# A328193: Expansion of e.g.f. Sum_{k>=1} log(1/(1 + (-x)^k/k)).

The programs for A328193, there is no canonical definition to state claims against.
-/

/-! ## A328193.P17421792603418762591

`A001783(n+1)*A134451(A356588(n))`
-/

namespace A328193.P17421792603418762591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (n + 1) * A134451 (A356588 n).toNat

end

end A328193.P17421792603418762591

/-! ## A328193.P2330436643386119795

`A095996(n+1)*A134451(A356588(n))`
-/

namespace A328193.P2330436643386119795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095996 (n + 1) * A134451 (A356588 n).toNat

end

end A328193.P2330436643386119795

/-! ## A328193.P10736735880534118512

`A095996(n+1)*A180430(A277701(n+1))`
-/

namespace A328193.P10736735880534118512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095996 (n + 1) * A180430 (A277701 (n + 1)).toNat

end

end A328193.P10736735880534118512

/-!
# A328194: Maximum length of a divisibility chain of consecutive nontrivial divisors of n (greater than 1 and less than n).

The programs for A328194, there is no canonical definition to state claims against.
-/

/-! ## A328194.P9340133911965521917

`A235875(n+1)+A081729(A158547(n))`
-/

namespace A328194.P9340133911965521917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1) + A081729 (A158547 n).toNat

end

end A328194.P9340133911965521917

/-! ## A328194.P14492407107544210878

`A235875(n+1)-A116609(A036561(n))`
-/

namespace A328194.P14492407107544210878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1) - A116609 (A036561 n).toNat

end

end A328194.P14492407107544210878

/-! ## A328194.P11554654234350300953

`A235875(n+1)-A019428(A163756(n))`
-/

namespace A328194.P11554654234350300953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1) - A019428 (A163756 n).toNat

end

end A328194.P11554654234350300953

/-! ## A328194.P11511064170984681978

`A235875(n+1)-A043545(A271277(n))`
-/

namespace A328194.P11511064170984681978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1) - A043545 (A271277 n).toNat

end

end A328194.P11511064170984681978

/-! ## A328194.P15709481993872230446

`A235875(n+1)-A001222(A192594(n+1))`
-/

namespace A328194.P15709481993872230446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1) - A001222 (A192594 (n + 1)).toNat

end

end A328194.P15709481993872230446

/-! ## A328194.P16783809805535484270

`A235875(n+1)-A001221(A216827(n+1))`
-/

namespace A328194.P16783809805535484270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235875 (n + 1) - A001221 (A216827 (n + 1)).toNat

end

end A328194.P16783809805535484270

/-!
# A328195: Maximum length of a divisibility chain of consecutive divisors of n greater than 1.

The programs for A328195, there is no canonical definition to state claims against.
-/

/-! ## A328195.P16722143202979910201

`A328162(n+1)-A010055(n+1)`
-/

namespace A328195.P16722143202979910201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (n + 1) - A010055 (n + 1)

end

end A328195.P16722143202979910201

/-! ## A328195.P766566947266143371

`A328162(A048671(n+1))-floor(acot(n))`
-/

namespace A328195.P766566947266143371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (A048671 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A328195.P766566947266143371

/-! ## A328195.P13232334138062383038

`A328162(n+1)-char[A181062(n+1)]`
-/

namespace A328195.P13232334138062383038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A328195.P13232334138062383038

/-! ## A328195.P170308628505749759

`A328162(gcd(n+1, ∏{p}[n+1, (n+1)/#]))%A298036(n)`
-/

namespace A328195.P170308628505749759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328162 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))) (A298036 n)

end

end A328195.P170308628505749759

/-! ## A328195.P779236116844356167

`A328162(A048671(n+1))-A000007(n)`
-/

namespace A328195.P779236116844356167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (A048671 (n + 1)).toNat - A000007 n

end

end A328195.P779236116844356167

/-! ## A328195.P656284216357438451

`A000040(n+1)%2*A328162(A048671(n+1))`
-/

namespace A328195.P656284216357438451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A328162 (A048671 (n + 1)).toNat

end

end A328195.P656284216357438451

/-! ## A328195.P18444107242506674158

`A328162(A048671(n+1))-A000045(C(2, n+2))`
-/

namespace A328195.P18444107242506674158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (A048671 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A328195.P18444107242506674158

/-! ## A328195.P5921454695172594543

`A328162(A048671(n+1))-A000005(n²+1)%2`
-/

namespace A328195.P5921454695172594543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (A048671 (n + 1)).toNat - Int.tmod (A000005 (n ^ 2 + 1)) 2

end

end A328195.P5921454695172594543

/-! ## A328195.P2868917594009284160

`A328194(A256017(n+1))`
-/

namespace A328195.P2868917594009284160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A256017 (n + 1)).toNat

end

end A328195.P2868917594009284160

/-! ## A328195.P109074342906661476

`A328194(A013636(n+1))`
-/

namespace A328195.P109074342906661476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A013636 (n + 1)).toNat

end

end A328195.P109074342906661476

/-! ## A328195.P16802217857342629655

`A328194(A053024(n+1))`
-/

namespace A328195.P16802217857342629655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A053024 (n + 1)).toNat

end

end A328195.P16802217857342629655

/-! ## A328195.P5522456069476476664

`A328162(A048671(n+1))+A008683(∑[2*(2*n+1)])`
-/

namespace A328195.P5522456069476476664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328162 (A048671 (n + 1)).toNat + A008683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328195.P5522456069476476664

/-! ## A328195.P15777260134360696415

`A328194(A004928(n+1))`
-/

namespace A328195.P15777260134360696415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A004928 (n + 1)).toNat

end

end A328195.P15777260134360696415

/-! ## A328195.P11184764883217696267

`A328194(A033286(n+1))`
-/

namespace A328195.P11184764883217696267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A033286 (n + 1)).toNat

end

end A328195.P11184764883217696267

/-! ## A328195.P445592529604114779

`A328194(A164931(n+1))`
-/

namespace A328195.P445592529604114779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A164931 (n + 1)).toNat

end

end A328195.P445592529604114779

/-! ## A328195.P11635110804385913586

`A328194(A117495(n+2))`
-/

namespace A328195.P11635110804385913586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A117495 (n + 2)).toNat

end

end A328195.P11635110804385913586

/-! ## A328195.P7116710273092954454

`A328194(A306192(n+2))`
-/

namespace A328195.P7116710273092954454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328194 (A306192 (n + 2)).toNat

end

end A328195.P7116710273092954454

/-!
# A328196: First differences of A328190.

The programs for A328196, the canonical program `A328196.P7657334495966535076` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328196 has offset 1).

The definition of A328196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328196.P7657334495966535076

`Δ[A328190(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A328196

/-- `Δ[A328190(n+1)]` -/
def P7657334495966535076.Spec : Prop :=
  ∀ n, P7657334495966535076.a n = A328196 (n + 1)

theorem P7657334495966535076.correct : P7657334495966535076.Spec := by
  intro n
  simp only [A328196, Nat.add_sub_cancel]

end A328196

/-! ## A328196.P2410478942692192530

`A328190(n+2)-A328190(n+1)`
-/

namespace A328196.P2410478942692192530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (n + 2) - A328190 (n + 1)

end

end A328196.P2410478942692192530

namespace A328196

/-- `A328190(n+2)-A328190(n+1)` -/
def P2410478942692192530.Spec : Prop :=
  ∀ n, P2410478942692192530.a n = A328196 (n + 1)

theorem P2410478942692192530.correct : P2410478942692192530.Spec := by
  intro n
  simp only [A328196, Nat.add_sub_cancel, A328196.P2410478942692192530.a, A328196.P7657334495966535076.f1, A328196.P7657334495966535076.a, SequenceMachineLib.memo_apply]

end A328196

/-! ## A328196.P17181800541287374416

`Δ[A328984(n+1)+and(A298468(n), A328979(n+1))]`
-/

namespace A328196.P17181800541287374416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (n + 1) + Int.land (A298468 n) (A328979 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328196.P17181800541287374416

namespace A328196

/-- `Δ[A328984(n+1)+and(A298468(n), A328979(n+1))]` -/
def P17181800541287374416.Spec : Prop :=
  ∀ n, P17181800541287374416.a n = A328196 (n + 1)

end A328196

/-! ## A328196.P354409422150576196

`Δ[floor(A298468(A022998(n))/2)]`
-/

namespace A328196.P354409422150576196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298468 (A022998 n).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328196.P354409422150576196

namespace A328196

/-- `Δ[floor(A298468(A022998(n))/2)]` -/
def P354409422150576196.Spec : Prop :=
  ∀ n, P354409422150576196.a n = A328196 (n + 1)

end A328196

/-! ## A328196.P14044519176004426973

`Δ[A328984(n+1)+A328981(A301710(n))]`
-/

namespace A328196.P14044519176004426973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328984 (n + 1) + A328981 (A301710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A328196.P14044519176004426973

namespace A328196

/-- `Δ[A328984(n+1)+A328981(A301710(n))]` -/
def P14044519176004426973.Spec : Prop :=
  ∀ n, P14044519176004426973.a n = A328196 (n + 1)

end A328196

/-!
# A328198: Numbers of the form N = a+b+c such that N^3 = concat(a,b,c); a, b, c > 0.

The programs for A328198, there is no canonical definition to state claims against.
-/

/-! ## A328198.P5961480341545967230

`root(A328200(n+1), 3)`
-/

namespace A328198.P5961480341545967230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A328200 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A328198.P5961480341545967230

