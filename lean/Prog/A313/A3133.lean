import SequenceMachineLib.Basic
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
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
# A313301: Coordination sequence Gal.5.80.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313301, there is no canonical definition to state claims against.
-/

/-! ## A313301.P9496420730208339898

`A313353(n)-A271420(A149893(n))`
-/

namespace A313301.P9496420730208339898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313353 n - A271420 (A149893 n).toNat

end

end A313301.P9496420730208339898

/-! ## A313301.P7758657777341096056

`xor(A105700(A009830(n)), A312768(n))`
-/

namespace A313301.P7758657777341096056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A105700 (A009830 n).toNat) (A312768 n)

end

end A313301.P7758657777341096056

/-!
# A313302: Coordination sequence Gal.6.244.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313302, there is no canonical definition to state claims against.
-/

/-! ## A313302.P12048867208709318635

`A274947(xor(A122794(n+1), A227192(3*n+2)))`
-/

namespace A313302.P12048867208709318635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274947 (Int.xor (A122794 (n + 1)) (A227192 (3 * n + 2))).toNat

end

end A313302.P12048867208709318635

/-!
# A313303: Coordination sequence Gal.6.148.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313303, there is no canonical definition to state claims against.
-/

/-! ## A313303.P11521110469508424297

`A313304(n)-A035582(A078213(n+1))`
-/

namespace A313303.P11521110469508424297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313304 n - A035582 (A078213 (n + 1)).toNat

end

end A313303.P11521110469508424297

/-! ## A313303.P6382802303105131089

`A313304(n)-A035582(A276142(n+1))`
-/

namespace A313303.P6382802303105131089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313304 n - A035582 (A276142 (n + 1)).toNat

end

end A313303.P6382802303105131089

/-! ## A313303.P17793464533420817774

`A313304(n)-A309785(A342589(n+1)+n)`
-/

namespace A313303.P17793464533420817774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313304 n - A309785 (A342589 (n + 1) + (n : ℤ)).toNat

end

end A313303.P17793464533420817774

/-!
# A313304: Coordination sequence Gal.6.141.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313304, there is no canonical definition to state claims against.
-/

/-! ## A313304.P7295337586441923602

`A313303(A102683(A202592(n))+n)`
-/

namespace A313304.P7295337586441923602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313303 (A102683 (A202592 n).toNat + (n : ℤ)).toNat

end

end A313304.P7295337586441923602

/-! ## A313304.P13153289751558393942

`A313303(n)+A035582(A078213(n+1))`
-/

namespace A313304.P13153289751558393942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313303 n + A035582 (A078213 (n + 1)).toNat

end

end A313304.P13153289751558393942

/-! ## A313304.P14982037499388532483

`A313303(n)+A035582(A276142(n+1))`
-/

namespace A313304.P14982037499388532483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313303 n + A035582 (A276142 (n + 1)).toNat

end

end A313304.P14982037499388532483

/-! ## A313304.P2923299882698414404

`xor(A309785(A342589(n+1)), A313305(n))`
-/

namespace A313304.P2923299882698414404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309785 (A342589 (n + 1)).toNat) (A313305 n)

end

end A313304.P2923299882698414404

/-! ## A313304.P1590046303718483631

`A102683(A202592(n))-(A102683(n)-A313303(n))`
-/

namespace A313304.P1590046303718483631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A202592 n).toNat - (A102683 n - A313303 n)

end

end A313304.P1590046303718483631

/-!
# A313305: Coordination sequence Gal.6.239.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313305, there is no canonical definition to state claims against.
-/

/-! ## A313305.P15399628707604682087

`xor(A309785(A342589(n+1)), A313304(n))`
-/

namespace A313305.P15399628707604682087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309785 (A342589 (n + 1)).toNat) (A313304 n)

end

end A313305.P15399628707604682087

/-!
# A313306: Coordination sequence Gal.6.521.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313306, there is no canonical definition to state claims against.
-/

/-! ## A313306.P15587881774376445715

`xor(A309785(A135452(n+1)), A313305(n))`
-/

namespace A313306.P15587881774376445715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309785 (A135452 (n + 1)).toNat) (A313305 n)

end

end A313306.P15587881774376445715

/-! ## A313306.P11742253260225623023

`A313304(n)+2*A035582(A078213(n+1))`
-/

namespace A313306.P11742253260225623023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313304 n + 2 * A035582 (A078213 (n + 1)).toNat

end

end A313306.P11742253260225623023

/-! ## A313306.P4547226028780331677

`A313304(n)+2*A035582(A276142(n+1))`
-/

namespace A313306.P4547226028780331677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313304 n + 2 * A035582 (A276142 (n + 1)).toNat

end

end A313306.P4547226028780331677

/-!
# A313308: Coordination sequence Gal.5.120.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313308, there is no canonical definition to state claims against.
-/

/-! ## A313308.P10169009178632059392

`A313315(n)-A064911(A245489(n))`
-/

namespace A313308.P10169009178632059392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313315 n - A064911 (A245489 n).toNat

end

end A313308.P10169009178632059392

/-! ## A313308.P14141104449625970233

`or(A129184(A349785(n+1)), A312761(n))`
-/

namespace A313308.P14141104449625970233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A129184 (A349785 (n + 1)).toNat) (A312761 n)

end

end A313308.P14141104449625970233

/-!
# A313312: Coordination sequence Gal.6.574.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313312, there is no canonical definition to state claims against.
-/

/-! ## A313312.P8358742490129522938

`∑[Δ[A180101(A000053(n+2))]+1]`
-/

namespace A313312.P8358742490129522938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A000053 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313312.P8358742490129522938

/-! ## A313312.P294003055822441067

`∑[Δ[A180101(A051419(n+2))]+1]`
-/

namespace A313312.P294003055822441067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A051419 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313312.P294003055822441067

/-! ## A313312.P8723175903440691162

`∑[Δ[A180101(A180948(n+2))]+1]`
-/

namespace A313312.P8723175903440691162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A180948 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313312.P8723175903440691162

/-! ## A313312.P11565130073454383206

`∑[A353371(A302831(2*(n+2))+A117172(n+4))]`
-/

namespace A313312.P11565130073454383206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (A302831 (2 * (n + 2)) + A117172 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313312.P11565130073454383206

/-!
# A313314: Coordination sequence Gal.6.585.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313314, there is no canonical definition to state claims against.
-/

/-! ## A313314.P13164427224698126356

`A016885(n)-A238949((10*n+2)²)`
-/

namespace A313314.P13164427224698126356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A238949 ((10 * n + 2) ^ 2)

end

end A313314.P13164427224698126356

/-! ## A313314.P8414229785139591653

`∑[A031312(A045809(floor(2^n/2)+2))]`
-/

namespace A313314.P8414229785139591653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031312 (A045809 (⌊(2 ^ n : ℚ) / 2⌋ + 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313314.P8414229785139591653

/-! ## A313314.P2224225990843413759

`∑[A006530(A193644(n+1))%8]`
-/

namespace A313314.P2224225990843413759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A193644 (n + 1)).toNat) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313314.P2224225990843413759

/-! ## A313314.P7465598082805032924

`A001222(A214372(n+1))+A000788(2*n+1)`
-/

namespace A313314.P7465598082805032924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A214372 (n + 1)).toNat + A000788 (2 * n + 1)

end

end A313314.P7465598082805032924

/-!
# A313315: Coordination sequence Gal.5.272.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313315, there is no canonical definition to state claims against.
-/

/-! ## A313315.P2216285630835799909

`A313308(n)+A064911(A245489(n))`
-/

namespace A313315.P2216285630835799909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313308 n + A064911 (A245489 n).toNat

end

end A313315.P2216285630835799909

/-!
# A313316: Coordination sequence Gal.6.282.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313316, the canonical program `A313316.P1127431857597112958` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313316 has offset 0).

The definition of A313316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313316.P1127431857597112958

`A313321(n)-A142150(A004525(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313316

/-- `A313321(n)-A142150(A004525(n))` -/
def P1127431857597112958.Spec : Prop :=
  ∀ n, P1127431857597112958.a n = A313316 n

theorem P1127431857597112958.correct : P1127431857597112958.Spec := by
  intro n
  simp only [A313316]

end A313316

/-! ## A313316.P17043020746451216993

`A313321(n)-A142150(A026741(n))`
-/

namespace A313316.P17043020746451216993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A142150 (A026741 n).toNat

end

end A313316.P17043020746451216993

namespace A313316

/-- `A313321(n)-A142150(A026741(n))` -/
def P17043020746451216993.Spec : Prop :=
  ∀ n, P17043020746451216993.a n = A313316 n

end A313316

/-! ## A313316.P14374822734204772026

`A313321(n)-A142150(A142150(n))`
-/

namespace A313316.P14374822734204772026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A142150 (A142150 n).toNat

end

end A313316.P14374822734204772026

namespace A313316

/-- `A313321(n)-A142150(A142150(n))` -/
def P14374822734204772026.Spec : Prop :=
  ∀ n, P14374822734204772026.a n = A313316 n

end A313316

/-! ## A313316.P7958815113682116446

`(A312304(n)+A310546(n))/2`
-/

namespace A313316.P7958815113682116446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312304 n + A310546 n : ℚ) / 2

end

end A313316.P7958815113682116446

namespace A313316

/-- `(A312304(n)+A310546(n))/2` -/
def P7958815113682116446.Spec : Prop :=
  ∀ n, P7958815113682116446.a n = (A313316 n : ℚ)

end A313316

/-! ## A313316.P1296941145320436841

`A312304(n)+A004525(A310546(n)-A312304(n))`
-/

namespace A313316.P1296941145320436841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 n + A004525 (A310546 n - A312304 n).toNat

end

end A313316.P1296941145320436841

namespace A313316

/-- `A312304(n)+A004525(A310546(n)-A312304(n))` -/
def P1296941145320436841.Spec : Prop :=
  ∀ n, P1296941145320436841.a n = A313316 n

end A313316

/-! ## A313316.P3678337595390993038

`A312304(n)+A026741(A310546(n)-A312304(n))`
-/

namespace A313316.P3678337595390993038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 n + A026741 (A310546 n - A312304 n).toNat

end

end A313316.P3678337595390993038

namespace A313316

/-- `A312304(n)+A026741(A310546(n)-A312304(n))` -/
def P3678337595390993038.Spec : Prop :=
  ∀ n, P3678337595390993038.a n = A313316 n

end A313316

/-! ## A313316.P597865198388568247

`A312304(n)+A142150(A310546(n)-A312304(n))`
-/

namespace A313316.P597865198388568247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 n + A142150 (A310546 n - A312304 n).toNat

end

end A313316.P597865198388568247

namespace A313316

/-- `A312304(n)+A142150(A310546(n)-A312304(n))` -/
def P597865198388568247.Spec : Prop :=
  ∀ n, P597865198388568247.a n = A313316 n

end A313316

/-! ## A313316.P8227512259202356244

`A310546(n)-A004526(A310546(n)-A312304(n))`
-/

namespace A313316.P8227512259202356244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310546 n - A004526 (A310546 n - A312304 n).toNat

end

end A313316.P8227512259202356244

namespace A313316

/-- `A310546(n)-A004526(A310546(n)-A312304(n))` -/
def P8227512259202356244.Spec : Prop :=
  ∀ n, P8227512259202356244.a n = A313316 n

end A313316

/-! ## A313316.P17707969974578333693

`A004525(A312304(n)+A310546(n))`
-/

namespace A313316.P17707969974578333693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312304 n + A310546 n).toNat

end

end A313316.P17707969974578333693

namespace A313316

/-- `A004525(A312304(n)+A310546(n))` -/
def P17707969974578333693.Spec : Prop :=
  ∀ n, P17707969974578333693.a n = A313316 n

end A313316

/-! ## A313316.P15901953277066809753

`A004526(A312304(n)+A310546(n))`
-/

namespace A313316.P15901953277066809753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312304 n + A310546 n).toNat

end

end A313316.P15901953277066809753

namespace A313316

/-- `A004526(A312304(n)+A310546(n))` -/
def P15901953277066809753.Spec : Prop :=
  ∀ n, P15901953277066809753.a n = A313316 n

end A313316

/-! ## A313316.P16249123394593336567

`A026741(A312304(n)+A310546(n))`
-/

namespace A313316.P16249123394593336567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A312304 n + A310546 n).toNat

end

end A313316.P16249123394593336567

namespace A313316

/-- `A026741(A312304(n)+A310546(n))` -/
def P16249123394593336567.Spec : Prop :=
  ∀ n, P16249123394593336567.a n = A313316 n

end A313316

/-! ## A313316.P6932916049836826807

`A142150(A312304(n)+A310546(n))`
-/

namespace A313316.P6932916049836826807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A312304 n + A310546 n).toNat

end

end A313316.P6932916049836826807

namespace A313316

/-- `A142150(A312304(n)+A310546(n))` -/
def P6932916049836826807.Spec : Prop :=
  ∀ n, P6932916049836826807.a n = A313316 n

end A313316

/-! ## A313316.P18137053275366188732

`A001057(A310546(n)+A312304(n)-1)`
-/

namespace A313316.P18137053275366188732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A310546 n + (A312304 n - 1)).toNat

end

end A313316.P18137053275366188732

namespace A313316

/-- `A001057(A310546(n)+A312304(n)-1)` -/
def P18137053275366188732.Spec : Prop :=
  ∀ n, P18137053275366188732.a n = A313316 n

end A313316

/-! ## A313316.P13959566416757027275

`A001057(A310546(n)-(1-A312304(n)))`
-/

namespace A313316.P13959566416757027275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A310546 n - (1 - A312304 n)).toNat

end

end A313316.P13959566416757027275

namespace A313316

/-- `A001057(A310546(n)-(1-A312304(n)))` -/
def P13959566416757027275.Spec : Prop :=
  ∀ n, P13959566416757027275.a n = A313316 n

end A313316

/-!
# A313319: Coordination sequence Gal.6.424.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313319, there is no canonical definition to state claims against.
-/

/-! ## A313319.P815791558487228191

`A312247(n)+A001222(A113862(n))`
-/

namespace A313319.P815791558487228191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312247 n + A001222 (A113862 n).toNat

end

end A313319.P815791558487228191

/-! ## A313319.P18405569196744552504

`A312711(n)+A290079(A304830(n+1))`
-/

namespace A313319.P18405569196744552504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312711 n + A290079 (A304830 (n + 1)).toNat

end

end A313319.P18405569196744552504

/-! ## A313319.P11944915882727032407

`A312711(n)+A030308(A260070(3*n+2))`
-/

namespace A313319.P11944915882727032407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312711 n + A030308 (A260070 (3 * n + 2)).toNat

end

end A313319.P11944915882727032407

/-! ## A313319.P2861249611224074004

`A290079(A304830(n+1))+A313170(n)-A014707(n²+7)`
-/

namespace A313319.P2861249611224074004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (A304830 (n + 1)).toNat + (A313170 n - A014707 (n ^ 2 + 7))

end

end A313319.P2861249611224074004

/-! ## A313319.P6155830094865321342

`A290079(A304830(n+1))+A274933(A250120(n)+A212172(n+1))`
-/

namespace A313319.P6155830094865321342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (A304830 (n + 1)).toNat + A274933 (A250120 n + A212172 (n + 1)).toNat

end

end A313319.P6155830094865321342

/-!
# A313320: Coordination sequence Gal.6.407.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313320, there is no canonical definition to state claims against.
-/

/-! ## A313320.P5561295870843372122

`A079000(A005245(floor(sqrt(8^n))))`
-/

namespace A313320.P5561295870843372122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A005245 (Nat.sqrt (8 ^ n))).toNat

end

end A313320.P5561295870843372122

/-! ## A313320.P9774203639964957423

`A313174(n)+A016389(A083658(n))`
-/

namespace A313320.P9774203639964957423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313174 n + A016389 (A083658 n).toNat

end

end A313320.P9774203639964957423

/-! ## A313320.P16614278586902975405

`A345452(n+1)+A001221(A001349(n))`
-/

namespace A313320.P16614278586902975405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1) + A001221 (A001349 n).toNat

end

end A313320.P16614278586902975405

/-! ## A313320.P13871711880563217887

`A206716(3*n+1)-A131531(A181471(3*n+1))`
-/

namespace A313320.P13871711880563217887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206716 (3 * n + 1) - A131531 (A181471 (3 * n + 1)).toNat

end

end A313320.P13871711880563217887

/-!
# A313321: Coordination sequence Gal.3.42.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313321, the canonical program `A313321.P15623248568632964517` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313321 has offset 0).

The definition of A313321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313321.P15623248568632964517

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16, a(4)=18, a(5)=24, a(6)=31, a(7)=34, a(8)=38, a(9)=42`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A313321

/-- `2*a(n-4)-a(n-8)` -/
def P15623248568632964517.Spec : Prop :=
  ∀ n, P15623248568632964517.a n = A313321 n

theorem P15623248568632964517.correct : P15623248568632964517.Spec := by
  intro n
  simp only [A313321]

end A313321

/-! ## A313321.P4860242927867366121

`A312304(n)+∑[A021913(n)]`
-/

namespace A313321.P4860242927867366121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313321.P4860242927867366121

namespace A313321

/-- `A312304(n)+∑[A021913(n)]` -/
def P4860242927867366121.Spec : Prop :=
  ∀ n, P4860242927867366121.a n = A313321 n

end A313321

/-! ## A313321.P9445189028967040755

`A312304(n)+Δ[A011848(n)]`
-/

namespace A313321.P9445189028967040755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 n + (f1 (n + 1) - f1 n)

end

end A313321.P9445189028967040755

namespace A313321

/-- `A312304(n)+Δ[A011848(n)]` -/
def P9445189028967040755.Spec : Prop :=
  ∀ n, P9445189028967040755.a n = A313321 n

end A313321

/-! ## A313321.P13890118697424632219

`A312304(n)+n-A004525(n)`
-/

namespace A313321.P13890118697424632219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312304 n + ((n : ℤ) - A004525 n)

end

end A313321.P13890118697424632219

namespace A313321

/-- `A312304(n)+n-A004525(n)` -/
def P13890118697424632219.Spec : Prop :=
  ∀ n, P13890118697424632219.a n = A313321 n

end A313321

/-! ## A313321.P5857505771030850808

`A008579(n)+A008706(n)-A314776(n)`
-/

namespace A313321.P5857505771030850808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + (A008706 n - A314776 n)

end

end A313321.P5857505771030850808

namespace A313321

/-- `A008579(n)+A008706(n)-A314776(n)` -/
def P5857505771030850808.Spec : Prop :=
  ∀ n, P5857505771030850808.a n = A313321 n

end A313321

/-! ## A313321.P13427990419573423685

`(A310546(n)+A008579(n))/2`
-/

namespace A313321.P13427990419573423685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310546 n + A008579 n : ℚ) / 2

end

end A313321.P13427990419573423685

namespace A313321

/-- `(A310546(n)+A008579(n))/2` -/
def P13427990419573423685.Spec : Prop :=
  ∀ n, P13427990419573423685.a n = (A313321 n : ℚ)

theorem P13427990419573423685.correct : P13427990419573423685.Spec := by
  intro n
  simp only [A313321, Nat.add_sub_cancel, A313321.P13427990419573423685.a, A313321.P15623248568632964517.a, A008579, A008579.P9321507706539872754.a, A310546, A310546.P18242339710196559366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313321

/-! ## A313321.P686662032863101040

`A008579(n)+A001281(A310546(n)-A008579(n))`
-/

namespace A313321.P686662032863101040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001281 (A310546 n - A008579 n).toNat

end

end A313321.P686662032863101040

namespace A313321

/-- `A008579(n)+A001281(A310546(n)-A008579(n))` -/
def P686662032863101040.Spec : Prop :=
  ∀ n, P686662032863101040.a n = A313321 n

end A313321

/-! ## A313321.P8749102154080446363

`A008579(n)+A004525(A310546(n)-A008579(n))`
-/

namespace A313321.P8749102154080446363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A310546 n - A008579 n).toNat

end

end A313321.P8749102154080446363

namespace A313321

/-- `A008579(n)+A004525(A310546(n)-A008579(n))` -/
def P8749102154080446363.Spec : Prop :=
  ∀ n, P8749102154080446363.a n = A313321 n

end A313321

/-! ## A313321.P7265992463955658609

`A026741(A310546(n)-A008579(n))+A008579(n)`
-/

namespace A313321.P7265992463955658609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A310546 n - A008579 n).toNat + A008579 n

end

end A313321.P7265992463955658609

namespace A313321

/-- `A026741(A310546(n)-A008579(n))+A008579(n)` -/
def P7265992463955658609.Spec : Prop :=
  ∀ n, P7265992463955658609.a n = A313321 n

end A313321

/-! ## A313321.P16664052358854783692

`A310546(n)-A004526(A310546(n)-A008579(n))`
-/

namespace A313321.P16664052358854783692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310546 n - A004526 (A310546 n - A008579 n).toNat

end

end A313321.P16664052358854783692

namespace A313321

/-- `A310546(n)-A004526(A310546(n)-A008579(n))` -/
def P16664052358854783692.Spec : Prop :=
  ∀ n, P16664052358854783692.a n = A313321 n

end A313321

/-! ## A313321.P7658003445566002063

`A008458(n)+A008579(n)-A315505(n)`
-/

namespace A313321.P7658003445566002063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315505 n)

end

end A313321.P7658003445566002063

namespace A313321

/-- `A008458(n)+A008579(n)-A315505(n)` -/
def P7658003445566002063.Spec : Prop :=
  ∀ n, P7658003445566002063.a n = A313321 n

end A313321

/-! ## A313321.P8883118664400498403

`A001281(A310546(n)+A008579(n))`
-/

namespace A313321.P8883118664400498403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310546 n + A008579 n).toNat

end

end A313321.P8883118664400498403

namespace A313321

/-- `A001281(A310546(n)+A008579(n))` -/
def P8883118664400498403.Spec : Prop :=
  ∀ n, P8883118664400498403.a n = A313321 n

end A313321

/-! ## A313321.P11532272702401853168

`A004525(A310546(n)+A008579(n))`
-/

namespace A313321.P11532272702401853168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310546 n + A008579 n).toNat

end

end A313321.P11532272702401853168

namespace A313321

/-- `A004525(A310546(n)+A008579(n))` -/
def P11532272702401853168.Spec : Prop :=
  ∀ n, P11532272702401853168.a n = A313321 n

end A313321

/-! ## A313321.P8719575251174121239

`A004526(A310546(n)+A008579(n))`
-/

namespace A313321.P8719575251174121239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310546 n + A008579 n).toNat

end

end A313321.P8719575251174121239

namespace A313321

/-- `A004526(A310546(n)+A008579(n))` -/
def P8719575251174121239.Spec : Prop :=
  ∀ n, P8719575251174121239.a n = A313321 n

end A313321

/-! ## A313321.P17605111309265219416

`A026741(A310546(n)+A008579(n))`
-/

namespace A313321.P17605111309265219416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A310546 n + A008579 n).toNat

end

end A313321.P17605111309265219416

namespace A313321

/-- `A026741(A310546(n)+A008579(n))` -/
def P17605111309265219416.Spec : Prop :=
  ∀ n, P17605111309265219416.a n = A313321 n

end A313321

/-! ## A313321.P6111965691862615194

`A000463(A008579(n)+A310546(n)-1)`
-/

namespace A313321.P6111965691862615194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A008579 n + (A310546 n - 1)).toNat

end

end A313321.P6111965691862615194

namespace A313321

/-- `A000463(A008579(n)+A310546(n)-1)` -/
def P6111965691862615194.Spec : Prop :=
  ∀ n, P6111965691862615194.a n = A313321 n

end A313321

/-! ## A313321.P18321526303398653640

`A000463(A008579(n)-(1-A310546(n)))`
-/

namespace A313321.P18321526303398653640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A008579 n - (1 - A310546 n)).toNat

end

end A313321.P18321526303398653640

namespace A313321

/-- `A000463(A008579(n)-(1-A310546(n)))` -/
def P18321526303398653640.Spec : Prop :=
  ∀ n, P18321526303398653640.a n = A313321 n

end A313321

/-!
# A313323: Coordination sequence Gal.6.409.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313323, there is no canonical definition to state claims against.
-/

/-! ## A313323.P2727312887922958040

`A313324(n)-A059448(A309861(n))`
-/

namespace A313323.P2727312887922958040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313324 n - A059448 (A309861 n).toNat

end

end A313323.P2727312887922958040

/-! ## A313323.P9791478744699860427

`A313324(n)-A079998(A032042(n+1))`
-/

namespace A313323.P9791478744699860427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313324 n - A079998 (A032042 (n + 1)).toNat

end

end A313323.P9791478744699860427

/-!
# A313324: Coordination sequence Gal.6.408.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313324, there is no canonical definition to state claims against.
-/

/-! ## A313324.P10851716616645372294

`A313323(n)+A059448(A309861(n))`
-/

namespace A313324.P10851716616645372294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313323 n + A059448 (A309861 n).toNat

end

end A313324.P10851716616645372294

/-! ## A313324.P646800606245255243

`A313323(n)+A079998(A032042(n+1))`
-/

namespace A313324.P646800606245255243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313323 n + A079998 (A032042 (n + 1)).toNat

end

end A313324.P646800606245255243

/-! ## A313324.P16366944467878775319

`A313323(n)+A238403(A153670(n+5))`
-/

namespace A313324.P16366944467878775319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313323 n + A238403 (A153670 (n + 5)).toNat

end

end A313324.P16366944467878775319

/-! ## A313324.P6784467940324292475

`A332874(n)+A328515(A309861(n))+A313323(n)`
-/

namespace A313324.P6784467940324292475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332874 n + (A328515 (A309861 n).toNat + A313323 n)

end

end A313324.P6784467940324292475

/-! ## A313324.P2405310686970005954

`(A328515(A309861(n))+A313323(n))%A141214(n)`
-/

namespace A313324.P2405310686970005954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328515 (A309861 n).toNat + A313323 n) (A141214 n)

end

end A313324.P2405310686970005954

/-!
# A313325: Coordination sequence Gal.5.228.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313325, there is no canonical definition to state claims against.
-/

/-! ## A313325.P6397775888605250746

`∑[A099375(A182815(n²))]`
-/

namespace A313325.P6397775888605250746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A182815 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313325.P6397775888605250746

/-! ## A313325.P11498827516123755124

`eq[1, A266152(A175427(n+1))]`
-/

namespace A313325.P11498827516123755124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266152 (A175427 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A313325.P11498827516123755124

/-! ## A313325.P16789159300770348005

`∑[A001222(A346102(n)²)+1]`
-/

namespace A313325.P16789159300770348005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A346102 n ^ 2).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313325.P16789159300770348005

/-!
# A313326: Coordination sequence Gal.6.540.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313326, there is no canonical definition to state claims against.
-/

/-! ## A313326.P11106223949532981386

`or(A283760(A046630(n)), A312785(n))`
-/

namespace A313326.P11106223949532981386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A283760 (A046630 n).toNat) (A312785 n)

end

end A313326.P11106223949532981386

/-! ## A313326.P821020032112917061

`A312712(n)+A001222(A132373(n))`
-/

namespace A313326.P821020032112917061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312712 n + A001222 (A132373 n).toNat

end

end A313326.P821020032112917061

/-! ## A313326.P2801969333975730595

`A313232(n)+A016345(A075719(n+1)+1+n)`
-/

namespace A313326.P2801969333975730595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313232 n + A016345 (A075719 (n + 1) + 1 + (n : ℤ)).toNat

end

end A313326.P2801969333975730595

/-! ## A313326.P14437116624975268045

`A313162(n)+A275946(A283421(n+1))`
-/

namespace A313326.P14437116624975268045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313162 n + A275946 (A283421 (n + 1)).toNat

end

end A313326.P14437116624975268045

/-! ## A313326.P5261242028892247961

`A111660(n)+A111660(A314871(n)+A312764(n))`
-/

namespace A313326.P5261242028892247961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 n + A111660 (A314871 n + A312764 n).toNat

end

end A313326.P5261242028892247961

/-!
# A313330: Coordination sequence Gal.5.225.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313330, there is no canonical definition to state claims against.
-/

/-! ## A313330.P3529072367388902718

`A310489(n)-A074290(A306485(n))`
-/

namespace A313330.P3529072367388902718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310489 n - A074290 (A306485 n).toNat

end

end A313330.P3529072367388902718

/-!
# A313332: Coordination sequence Gal.6.268.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313332, there is no canonical definition to state claims against.
-/

/-! ## A313332.P17891916187770394634

`A310495(n)-A093057(A033499(n+1))`
-/

namespace A313332.P17891916187770394634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310495 n - A093057 (A033499 (n + 1)).toNat

end

end A313332.P17891916187770394634

/-! ## A313332.P18315958657533991097

`A313201(A351870(n))+Δ[A011862(n)]`
-/

namespace A313332.P18315958657533991097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 (A351870 n).toNat + (f1 (n + 1) - f1 n)

end

end A313332.P18315958657533991097

/-! ## A313332.P14789387839209593051

`A310493(n)-A010815(A082271(2*n+5))`
-/

namespace A313332.P14789387839209593051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310493 n - A010815 (A082271 (2 * n + 5)).toNat

end

end A313332.P14789387839209593051

/-! ## A313332.P13645777466989276908

`A313241(n)+A016389(A001595(n))`
-/

namespace A313332.P13645777466989276908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n + A016389 (A001595 n).toNat

end

end A313332.P13645777466989276908

/-! ## A313332.P3418975832208158642

`A310495(n)-A014053(A014007(n))`
-/

namespace A313332.P3418975832208158642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310495 n - A014053 (A014007 n).toNat

end

end A313332.P3418975832208158642

/-!
# A313333: Coordination sequence Gal.6.452.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313333, there is no canonical definition to state claims against.
-/

/-! ## A313333.P13726156453338499015

`A313705(n)-A244895(n)`
-/

namespace A313333.P13726156453338499015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313705 n - A244895 n

end

end A313333.P13726156453338499015

/-! ## A313333.P1217562948321540906

`A313705(n)-A330025(2*n)`
-/

namespace A313333.P1217562948321540906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313705 n - A330025 (2 * n)

end

end A313333.P1217562948321540906

/-! ## A313333.P56542212986232491

`A330025(8*n)+A313705(n)`
-/

namespace A313333.P56542212986232491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (8 * n) + A313705 n

end

end A313333.P56542212986232491

/-! ## A313333.P426041638874242445

`A004525(A301299(2*n)+A047263(n+1))-A244895(n)`
-/

namespace A313333.P426041638874242445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A301299 (2 * n) + A047263 (n + 1)).toNat - A244895 n

end

end A313333.P426041638874242445

/-! ## A313333.P7374859889243486806

`A313334(n)-A083035(A009474(n+1))`
-/

namespace A313333.P7374859889243486806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313334 n - A083035 (A009474 (n + 1)).toNat

end

end A313333.P7374859889243486806

/-!
# A313334: Coordination sequence Gal.6.453.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313334, there is no canonical definition to state claims against.
-/

/-! ## A313334.P17039436536437846426

`A313709(n)-A244895(n)`
-/

namespace A313334.P17039436536437846426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n - A244895 n

end

end A313334.P17039436536437846426

/-! ## A313334.P6902018677572612542

`A313709(n)-A330025(2*n)`
-/

namespace A313334.P6902018677572612542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n - A330025 (2 * n)

end

end A313334.P6902018677572612542

/-! ## A313334.P7187453539315027607

`A313709(n)-A011582(A265188(n+1))`
-/

namespace A313334.P7187453539315027607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n - A011582 (A265188 (n + 1)).toNat

end

end A313334.P7187453539315027607

/-! ## A313334.P6756902702963464572

`A250120(n)+A313709(n)-A315187(n)`
-/

namespace A313334.P6756902702963464572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A313709 n - A315187 n)

end

end A313334.P6756902702963464572

/-! ## A313334.P18094667247204181717

`A313709(n)+A011582(2*A265188(n+1))`
-/

namespace A313334.P18094667247204181717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313709 n + A011582 (2 * A265188 (n + 1)).toNat

end

end A313334.P18094667247204181717

/-! ## A313334.P10022959178609017460

`A330025(8*n)+A313709(n)`
-/

namespace A313334.P10022959178609017460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (8 * n) + A313709 n

end

end A313334.P10022959178609017460

/-!
# A313335: Coordination sequence Gal.5.271.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313335, there is no canonical definition to state claims against.
-/

/-! ## A313335.P6755662476357359779

`(A310556(n)+A008579(n))/2`
-/

namespace A313335.P6755662476357359779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310556 n + A008579 n : ℚ) / 2

end

end A313335.P6755662476357359779

/-! ## A313335.P8124429175835306963

`A014682(A310556(n)+A008579(n))`
-/

namespace A313335.P8124429175835306963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A310556 n + A008579 n).toNat

end

end A313335.P8124429175835306963

/-! ## A313335.P8332198745776300507

`A008579(n)+A001281(A310556(n)-A008579(n))`
-/

namespace A313335.P8332198745776300507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A001281 (A310556 n - A008579 n).toNat

end

end A313335.P8332198745776300507

/-! ## A313335.P1249872202528216909

`A008579(n)+A004525(A310556(n)-A008579(n))`
-/

namespace A313335.P1249872202528216909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A004525 (A310556 n - A008579 n).toNat

end

end A313335.P1249872202528216909

/-! ## A313335.P1339141845906968398

`A008579(n)+A006370(A310556(n)-A008579(n))`
-/

namespace A313335.P1339141845906968398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n + A006370 (A310556 n - A008579 n).toNat

end

end A313335.P1339141845906968398

/-! ## A313335.P4497630706792848472

`A026741(A310556(n)-A008579(n))+A008579(n)`
-/

namespace A313335.P4497630706792848472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A310556 n - A008579 n).toNat + A008579 n

end

end A313335.P4497630706792848472

/-! ## A313335.P15384727784071282481

`A142150(A310556(n)-A008579(n))+A008579(n)`
-/

namespace A313335.P15384727784071282481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A310556 n - A008579 n).toNat + A008579 n

end

end A313335.P15384727784071282481

/-! ## A313335.P6419214762235656049

`A310556(n)-A004526(A310556(n)-A008579(n))`
-/

namespace A313335.P6419214762235656049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310556 n - A004526 (A310556 n - A008579 n).toNat

end

end A313335.P6419214762235656049

/-! ## A313335.P747976701270955205

`A008458(n)+A008579(n)-A315484(n)`
-/

namespace A313335.P747976701270955205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315484 n)

end

end A313335.P747976701270955205

/-! ## A313335.P2335317634706224220

`A001281(A310556(n)+A008579(n))`
-/

namespace A313335.P2335317634706224220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310556 n + A008579 n).toNat

end

end A313335.P2335317634706224220

/-! ## A313335.P3156268260679044815

`A004525(A310556(n)+A008579(n))`
-/

namespace A313335.P3156268260679044815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310556 n + A008579 n).toNat

end

end A313335.P3156268260679044815

/-! ## A313335.P8333815417506147817

`A004526(A310556(n)+A008579(n))`
-/

namespace A313335.P8333815417506147817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310556 n + A008579 n).toNat

end

end A313335.P8333815417506147817

/-! ## A313335.P9045184234278197997

`A006370(A310556(n)+A008579(n))`
-/

namespace A313335.P9045184234278197997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A310556 n + A008579 n).toNat

end

end A313335.P9045184234278197997

/-! ## A313335.P538554537306102851

`A026741(A310556(n)+A008579(n))`
-/

namespace A313335.P538554537306102851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A310556 n + A008579 n).toNat

end

end A313335.P538554537306102851

/-! ## A313335.P11360459770813671578

`A110654(A310556(n)+A008579(n))`
-/

namespace A313335.P11360459770813671578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A310556 n + A008579 n).toNat

end

end A313335.P11360459770813671578

/-! ## A313335.P17524279565584874009

`A142150(A310556(n)+A008579(n))`
-/

namespace A313335.P17524279565584874009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A310556 n + A008579 n).toNat

end

end A313335.P17524279565584874009

/-! ## A313335.P9585914169793970999

`A003602(A008579(n)+A310556(n)-1)`
-/

namespace A313335.P9585914169793970999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A008579 n + (A310556 n - 1)).toNat

end

end A313335.P9585914169793970999

/-! ## A313335.P18380184609590435297

`A003602(A008579(n)-(1-A310556(n)))`
-/

namespace A313335.P18380184609590435297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A008579 n - (1 - A310556 n)).toNat

end

end A313335.P18380184609590435297

/-! ## A313335.P8972705729424014304

`A110654(A008579(n)-(1-A310556(n)))`
-/

namespace A313335.P8972705729424014304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008579 n - (1 - A310556 n)).toNat

end

end A313335.P8972705729424014304

/-!
# A313336: Coordination sequence Gal.6.557.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313336, there is no canonical definition to state claims against.
-/

/-! ## A313336.P11558099561480203500

`A311355(n)+A135282(A135310(n))`
-/

namespace A313336.P11558099561480203500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311355 n + A135282 (A135310 n).toNat

end

end A313336.P11558099561480203500

/-! ## A313336.P10034969352688443331

`A312561(n)+A105700(A261664(n))`
-/

namespace A313336.P10034969352688443331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 n + A105700 (A261664 n).toNat

end

end A313336.P10034969352688443331

/-! ## A313336.P5591356229720459061

`A312466(n)+A006530(A178010(n+1))-1`
-/

namespace A313336.P5591356229720459061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312466 n + A006530 (A178010 (n + 1)).toNat - 1

end

end A313336.P5591356229720459061

/-! ## A313336.P17220851301881598285

`A006530(n!)-(1-A312464(n))`
-/

namespace A313336.P17220851301881598285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial n) - (1 - A312464 n)

end

end A313336.P17220851301881598285

/-! ## A313336.P15096505838337184191

`A313057(n)+A001222(A212419(n))`
-/

namespace A313336.P15096505838337184191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A001222 (A212419 n).toNat

end

end A313336.P15096505838337184191

/-!
# A313337: Coordination sequence Gal.6.571.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313337, there is no canonical definition to state claims against.
-/

/-! ## A313337.P13223691525819052944

`A312741(n)+A002264(A032559(n+1))`
-/

namespace A313337.P13223691525819052944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312741 n + A002264 (A032559 (n + 1)).toNat

end

end A313337.P13223691525819052944

/-! ## A313337.P16750505956966576595

`A312741(n)+A002264(A078213(n+1))`
-/

namespace A313337.P16750505956966576595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312741 n + A002264 (A078213 (n + 1)).toNat

end

end A313337.P16750505956966576595

/-! ## A313337.P16747741740899505066

`A240163(eq[A083890(n+1), A213666(2*(n+1))])`
-/

namespace A313337.P16747741740899505066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213666 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240163 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A313337.P16747741740899505066

/-!
# A313338: Coordination sequence Gal.6.75.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313338, there is no canonical definition to state claims against.
-/

/-! ## A313338.P431932737523255036

`A313358(n)-2%A132986(A000217(n))`
-/

namespace A313338.P431932737523255036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313358 n - Int.tmod 2 (A132986 (A000217 n).toNat)

end

end A313338.P431932737523255036

/-!
# A313339: Coordination sequence Gal.6.451.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313339, there is no canonical definition to state claims against.
-/

/-! ## A313339.P12061930461155419428

`∑[A265124(2*n+1)%8]`
-/

namespace A313339.P12061930461155419428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265124 (2 * n + 1)) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313339.P12061930461155419428

/-!
# A313340: Coordination sequence Gal.4.97.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313340, there is no canonical definition to state claims against.
-/

/-! ## A313340.P8895217546580032940

`A312580(n)+A001221(A063688(n+1))`
-/

namespace A313340.P8895217546580032940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312580 n + A001221 (A063688 (n + 1)).toNat

end

end A313340.P8895217546580032940

/-! ## A313340.P1602706450844980437

`eq[A014081(n), A112603(A005897(n))]`
-/

namespace A313340.P1602706450844980437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 (A005897 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313340.P1602706450844980437

/-!
# A313341: Coordination sequence Gal.6.576.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313341, there is no canonical definition to state claims against.
-/

/-! ## A313341.P555024138490836957

`eq[8, A019692(A134133(n+1))]-char[7]`
-/

namespace A313341.P555024138490836957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 ((A134133 (n + 1)).toNat + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A313341.P555024138490836957

/-! ## A313341.P13974843186712637856

`A313342(n)-A185284(A314663(n))`
-/

namespace A313341.P13974843186712637856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313342 n - A185284 (A314663 n).toNat

end

end A313341.P13974843186712637856

/-! ## A313341.P1986053476391599992

`A313246(n)+A081603(A038205(n))-char[7]`
-/

namespace A313341.P1986053476391599992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A081603 (A038205 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A313341.P1986053476391599992

/-! ## A313341.P15990427170568838702

`A331410(A284908(2*(n+2)))+A301293(n)`
-/

namespace A313341.P15990427170568838702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A284908 (2 * (n + 2))).toNat + A301293 n

end

end A313341.P15990427170568838702

/-!
# A313342: Coordination sequence Gal.6.575.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313342, there is no canonical definition to state claims against.
-/

/-! ## A313342.P11730712565122288589

`eq[8, A019692(A134133(n+1))]`
-/

namespace A313342.P11730712565122288589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 ((A134133 (n + 1)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A313342.P11730712565122288589

/-! ## A313342.P8935020880327193533

`A313246(n)+A081603(A038205(n))`
-/

namespace A313342.P8935020880327193533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A081603 (A038205 n).toNat

end

end A313342.P8935020880327193533

/-! ## A313342.P3495653808780855265

`A313341(n)+A185284(A314663(n))`
-/

namespace A313342.P3495653808780855265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313341 n + A185284 (A314663 n).toNat

end

end A313342.P3495653808780855265

/-! ## A313342.P12957555812506481052

`A316555(A189570(n))+A312623(n)`
-/

namespace A313342.P12957555812506481052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (A189570 n).toNat + A312623 n

end

end A313342.P12957555812506481052

/-! ## A313342.P9917997648595116889

`A313287(n)+A095076(A327611(n+1))`
-/

namespace A313342.P9917997648595116889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313287 n + A095076 (A327611 (n + 1)).toNat

end

end A313342.P9917997648595116889

/-!
# A313345: Coordination sequence Gal.5.226.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313345, there is no canonical definition to state claims against.
-/

/-! ## A313345.P13539313084503403291

`A313905(n)-A068426(A078213(n+1))`
-/

namespace A313345.P13539313084503403291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n - A068426 (A078213 (n + 1)).toNat

end

end A313345.P13539313084503403291

/-!
# A313346: Coordination sequence Gal.6.470.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313346, there is no canonical definition to state claims against.
-/

/-! ## A313346.P2302093776299954684

`A341258(A193843(n))+A313285(n)`
-/

namespace A313346.P2302093776299954684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341258 (A193843 n).toNat + A313285 n

end

end A313346.P2302093776299954684

/-! ## A313346.P4779115009644079207

`A313285(n)+A055641(A313285(n)+A226335(n+1))`
-/

namespace A313346.P4779115009644079207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313285 n + A055641 (A313285 n + A226335 (n + 1)).toNat

end

end A313346.P4779115009644079207

/-! ## A313346.P12532563039953168957

`A310542(n)-A334862(A061092(n))`
-/

namespace A313346.P12532563039953168957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310542 n - A334862 (A061092 n).toNat

end

end A313346.P12532563039953168957

/-! ## A313346.P5618162341521838477

`A310542(n)-A071625(A336616(n))`
-/

namespace A313346.P5618162341521838477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310542 n - A071625 (A336616 n).toNat

end

end A313346.P5618162341521838477

/-! ## A313346.P5614626215108299076

`A346131(A312066(n)-A074290(n+1))`
-/

namespace A313346.P5614626215108299076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (A312066 n - A074290 (n + 1)).toNat

end

end A313346.P5614626215108299076

/-!
# A313348: Coordination sequence Gal.6.489.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313348, there is no canonical definition to state claims against.
-/

/-! ## A313348.P18444213433227763978

`A310525(n)-A102683(A000244(n))`
-/

namespace A313348.P18444213433227763978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n - A102683 (A000244 n).toNat

end

end A313348.P18444213433227763978

/-! ## A313348.P5152432509529074561

`A310525(n)-A137560(A137613(3*(n+1)))`
-/

namespace A313348.P5152432509529074561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310525 n - A137560 (A137613 (3 * (n + 1))).toNat

end

end A313348.P5152432509529074561

/-! ## A313348.P3515093071187361492

`A002822(2*(n+1))-A296658(A076928(n+1))`
-/

namespace A313348.P3515093071187361492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (2 * (n + 1)) - A296658 (A076928 (n + 1)).toNat

end

end A313348.P3515093071187361492

/-! ## A313348.P8415260959866628441

`A330025(A244222(n+3))+A126281(A032557(n+1)+n)`
-/

namespace A313348.P8415260959866628441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A244222 (n + 3)).toNat + A126281 (A032557 (n + 1) + (n : ℤ)).toNat

end

end A313348.P8415260959866628441

/-! ## A313348.P13404566133888680562

`A330025(A244222(n+3))+A126281(A122619(n+1)+n)`
-/

namespace A313348.P13404566133888680562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A244222 (n + 3)).toNat + A126281 (A122619 (n + 1) + (n : ℤ)).toNat

end

end A313348.P13404566133888680562

/-!
# A313349: Coordination sequence Gal.6.577.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313349, there is no canonical definition to state claims against.
-/

/-! ## A313349.P7768919685800580471

`A008458(n)+A008579(n)-A315449(n)`
-/

namespace A313349.P7768919685800580471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A315449 n)

end

end A313349.P7768919685800580471

/-! ## A313349.P12450311780320582588

`A008579(n)-A315449(n)+A008574(n)+A005843(n)`
-/

namespace A313349.P12450311780320582588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A315449 n + (A008574 n + A005843 n)

end

end A313349.P12450311780320582588

/-! ## A313349.P10734670673523878700

`or(A313347(n), A318513(A000142(n)))`
-/

namespace A313349.P10734670673523878700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313347 n) (A318513 (A000142 n).toNat)

end

end A313349.P10734670673523878700

/-!
# A313350: Coordination sequence Gal.5.209.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313350, there is no canonical definition to state claims against.
-/

/-! ## A313350.P11810641388475468682

`A313292(n)+A055641(A236875(n+1))`
-/

namespace A313350.P11810641388475468682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 n + A055641 (A236875 (n + 1)).toNat

end

end A313350.P11810641388475468682

/-! ## A313350.P13335501175034650123

`A310529(n)-A055641(A034472(n))`
-/

namespace A313350.P13335501175034650123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n - A055641 (A034472 n).toNat

end

end A313350.P13335501175034650123

/-! ## A313350.P1527980815157985415

`A343397(A003173(n+1))+A310198(n)`
-/

namespace A313350.P1527980815157985415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343397 (A003173 (n + 1)).toNat + A310198 n

end

end A313350.P1527980815157985415

/-!
# A313351: Coordination sequence Gal.6.490.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313351, there is no canonical definition to state claims against.
-/

/-! ## A313351.P17221598475341981661

`A057354(2*n)+A312672(n)^gcd(71, A115110(n))`
-/

namespace A313351.P17221598475341981661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n) + A312672 n ^ Int.gcd 71 (A115110 n)

end

end A313351.P17221598475341981661

/-! ## A313351.P1678743447143621585

`A047263(n+1)+lt[A249072(A267742(n+5)), 1]+1`
-/

namespace A313351.P1678743447143621585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249072 (A267742 (n + 5)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A313351.P1678743447143621585

/-! ## A313351.P16894139185705348139

`A047263(n+1)+A310258(n)-A077814(A048855(n))`
-/

namespace A313351.P16894139185705348139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A310258 n - A077814 (A048855 n).toNat)

end

end A313351.P16894139185705348139

/-! ## A313351.P333041841054188731

`A057354(2*n)+A343858(A000217(n+4))+A312672(n)`
-/

namespace A313351.P333041841054188731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n) + (A343858 (A000217 (n + 4)).toNat + A312672 n)

end

end A313351.P333041841054188731

/-!
# A313353: Coordination sequence Gal.6.451.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313353, there is no canonical definition to state claims against.
-/

/-! ## A313353.P17157988895766701589

`A313301(n)+A271420(A149893(n))`
-/

namespace A313353.P17157988895766701589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313301 n + A271420 (A149893 n).toNat

end

end A313353.P17157988895766701589

/-!
# A313354: Coordination sequence Gal.6.586.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313354, there is no canonical definition to state claims against.
-/

/-! ## A313354.P14313296795786800624

`A081729(A161773(n+2))+A008706(n)`
-/

namespace A313354.P14313296795786800624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A161773 (n + 2)).toNat + A008706 n

end

end A313354.P14313296795786800624

/-!
# A313361: Coordination sequence Gal.6.613.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313361, there is no canonical definition to state claims against.
-/

/-! ## A313361.P5218770057182969793

`A313360(n)+A294937(A000238(n+1))`
-/

namespace A313361.P5218770057182969793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313360 n + A294937 (A000238 (n + 1)).toNat

end

end A313361.P5218770057182969793

/-! ## A313361.P1506446047195453340

`or(A313360(n), A347552(A049181(n+1)))`
-/

namespace A313361.P1506446047195453340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313360 n) (A347552 (A049181 (n + 1)).toNat)

end

end A313361.P1506446047195453340

/-! ## A313361.P12988956479997720747

`or(A287931(A000580(n+7)), A313360(n))`
-/

namespace A313361.P12988956479997720747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287931 (A000580 (n + 7)).toNat) (A313360 n)

end

end A313361.P12988956479997720747

/-! ## A313361.P4138278897885788864

`xor(A122083(A352650(2*(n+2))), A313360(n))`
-/

namespace A313361.P4138278897885788864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122083 (A352650 (2 * (n + 2))).toNat) (A313360 n)

end

end A313361.P4138278897885788864

/-! ## A313361.P14239279077713159873

`A313360(n)+A287931(A000580(n+7)+n)`
-/

namespace A313361.P14239279077713159873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313360 n + A287931 (A000580 (n + 7) + (n : ℤ)).toNat

end

end A313361.P14239279077713159873

/-!
# A313362: Coordination sequence Gal.6.82.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313362, there is no canonical definition to state claims against.
-/

/-! ## A313362.P10802682853965398558

`A228351(A213758(n+1))+ceil(7*n/2)`
-/

namespace A313362.P10802682853965398558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A213758 (n + 1)).toNat + ⌈7 * ((n : ℚ) / 2)⌉

end

end A313362.P10802682853965398558

/-! ## A313362.P12094663929640024753

`A183990(n+1)-A122285(A321725(n+1))`
-/

namespace A313362.P12094663929640024753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183990 (n + 1) - A122285 (A321725 (n + 1)).toNat

end

end A313362.P12094663929640024753

/-!
# A313363: Coordination sequence Gal.6.89.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313363, there is no canonical definition to state claims against.
-/

/-! ## A313363.P13329485281469679855

`A188043(n+1)-4-A269592(A317705(3*n+4))`
-/

namespace A313363.P13329485281469679855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188043 (n + 1) - 4 - A269592 (A317705 (3 * n + 4)).toNat

end

end A313363.P13329485281469679855

/-! ## A313363.P1102566723202493455

`A188376(n+1)+record[A186038(n)]`
-/

namespace A313363.P1102566723202493455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188376 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313363.P1102566723202493455

/-! ## A313363.P16583890640557574852

`A092673(A082482(2*n+1)+2*n)+4*n`
-/

namespace A313363.P16583890640557574852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A082482 (2 * n + 1) + (2 * n : ℤ)).toNat + (4 * n : ℤ)

end

end A313363.P16583890640557574852

/-! ## A313363.P17402973798267756803

`A313383(n)-A093879(A347829(n))`
-/

namespace A313363.P17402973798267756803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313383 n - A093879 (A347829 n).toNat

end

end A313363.P17402973798267756803

/-! ## A313363.P17707913804125077962

`A314590(n)+A059841(A049128(n+1))`
-/

namespace A313363.P17707913804125077962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314590 n + A059841 (A049128 (n + 1)).toNat

end

end A313363.P17707913804125077962

/-!
# A313365: Coordination sequence Gal.4.131.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313365, there is no canonical definition to state claims against.
-/

/-! ## A313365.P15016340850201461588

`A311228(n)+A257994(A212323(n)+1)`
-/

namespace A313365.P15016340850201461588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311228 n + A257994 (A212323 n + 1).toNat

end

end A313365.P15016340850201461588

/-!
# A313369: Coordination sequence Gal.6.29.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313369, there is no canonical definition to state claims against.
-/

/-! ## A313369.P4169892063149351007

`A070119(2*(n+1))-A038769(A128235(3*(n+1)))`
-/

namespace A313369.P4169892063149351007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070119 (2 * (n + 1)) - A038769 (A128235 (3 * (n + 1))).toNat

end

end A313369.P4169892063149351007

/-!
# A313371: Coordination sequence Gal.6.21.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313371, there is no canonical definition to state claims against.
-/

/-! ## A313371.P7769059577266051910

`A236842(3*(n+1))+A087960(A000667(n))`
-/

namespace A313371.P7769059577266051910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (3 * (n + 1)) + A087960 (A000667 n).toNat

end

end A313371.P7769059577266051910

/-! ## A313371.P17385440100403461566

`A236842(3*(n+1))+A087960(A009739(n)+A003701(n))`
-/

namespace A313371.P17385440100403461566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (3 * (n + 1)) + A087960 (A009739 n + A003701 n).toNat

end

end A313371.P17385440100403461566

/-! ## A313371.P2020878479442316129

`A236842(3*(n+1))+A087960(A230951(n)+A230950(n))`
-/

namespace A313371.P2020878479442316129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (3 * (n + 1)) + A087960 (A230951 n + A230950 n).toNat

end

end A313371.P2020878479442316129

/-! ## A313371.P1821253052726502864

`A236842(3*(n+1))+A087960(A230958(n)-A230950(n))`
-/

namespace A313371.P1821253052726502864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (3 * (n + 1)) + A087960 (A230958 n - A230950 n).toNat

end

end A313371.P1821253052726502864

/-! ## A313371.P15748946301676409066

`A236842(3*(n+1))+A087960(A062162(n)+2*A062161(n))`
-/

namespace A313371.P15748946301676409066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236842 (3 * (n + 1)) + A087960 (A062162 n + 2 * A062161 n).toNat

end

end A313371.P15748946301676409066

/-!
# A313372: Coordination sequence Gal.6.541.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313372, there is no canonical definition to state claims against.
-/

/-! ## A313372.P11560032144904987980

`xor(A025803(A032559(n+1)), A310398(n))`
-/

namespace A313372.P11560032144904987980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025803 (A032559 (n + 1)).toNat) (A310398 n)

end

end A313372.P11560032144904987980

/-!
# A313377: Coordination sequence Gal.6.113.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313377, there is no canonical definition to state claims against.
-/

/-! ## A313377.P6615415439234036553

`lt[A050144(A278114(n+1)), A121430(n+1)]`
-/

namespace A313377.P6615415439234036553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050144 (A278114 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A313377.P6615415439234036553

/-!
# A313378: Coordination sequence Gal.6.89.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313378, there is no canonical definition to state claims against.
-/

/-! ## A313378.P8027278395232284434

`A028769(3*n+1)-A091318(A054856(n))`
-/

namespace A313378.P8027278395232284434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028769 (3 * n + 1) - A091318 (A054856 n).toNat

end

end A313378.P8027278395232284434

/-!
# A313380: Coordination sequence Gal.6.68.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313380, there is no canonical definition to state claims against.
-/

/-! ## A313380.P14172319518973343014

`A313515(n)-A001222(A020092(n))`
-/

namespace A313380.P14172319518973343014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n - A001222 (A020092 n).toNat

end

end A313380.P14172319518973343014

/-!
# A313381: Coordination sequence Gal.5.211.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313381, there is no canonical definition to state claims against.
-/

/-! ## A313381.P14357785970631575822

`A313476(n)-A287524(A098641(n))`
-/

namespace A313381.P14357785970631575822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n - A287524 (A098641 n).toNat

end

end A313381.P14357785970631575822

/-! ## A313381.P14532675060014772719

`A313491(A062399(n))-A057354(A047263(n+1))`
-/

namespace A313381.P14532675060014772719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313491 (A062399 n).toNat - A057354 (A047263 (n + 1)).toNat

end

end A313381.P14532675060014772719

/-! ## A313381.P16419529914954443938

`A055047(n+1)+A000523(A000244(n))`
-/

namespace A313381.P16419529914954443938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1) + A000523 (A000244 n).toNat

end

end A313381.P16419529914954443938

/-! ## A313381.P4639836531046948684

`A005100(3*n+1)+A001222(A054108(n))`
-/

namespace A313381.P4639836531046948684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (3 * n + 1) + A001222 (A054108 n).toNat

end

end A313381.P4639836531046948684

/-!
# A313382: Coordination sequence Gal.4.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313382, there is no canonical definition to state claims against.
-/

/-! ## A313382.P17605137653599753656

`A313456(n)-A162781(A339112(n+1))`
-/

namespace A313382.P17605137653599753656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313456 n - A162781 (A339112 (n + 1)).toNat

end

end A313382.P17605137653599753656

/-!
# A313383: Coordination sequence Gal.6.85.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313383, there is no canonical definition to state claims against.
-/

/-! ## A313383.P11992381733541707251

`A313363(n)+A093879(A347829(n))`
-/

namespace A313383.P11992381733541707251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313363 n + A093879 (A347829 n).toNat

end

end A313383.P11992381733541707251

/-! ## A313383.P5666996800727479036

`or(A047999(A196265(n+1)), A313363(n))`
-/

namespace A313383.P5666996800727479036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047999 (A196265 (n + 1)).toNat) (A313363 n)

end

end A313383.P5666996800727479036

/-! ## A313383.P14029427958299208257

`A360872(A312623(2*n+1))+A005187(2*n)`
-/

namespace A313383.P14029427958299208257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360872 (A312623 (2 * n + 1)).toNat + A005187 (2 * n)

end

end A313383.P14029427958299208257

/-!
# A313384: Coordination sequence Gal.6.18.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313384, there is no canonical definition to state claims against.
-/

/-! ## A313384.P16586159983285678244

`A314656(n)+A010059(A002523(n))`
-/

namespace A313384.P16586159983285678244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314656 n + A010059 (A002523 n).toNat

end

end A313384.P16586159983285678244

/-! ## A313384.P7183222923631632922

`A315638(n)-A051903(A007691(n+1))`
-/

namespace A313384.P7183222923631632922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315638 n - A051903 (A007691 (n + 1)).toNat

end

end A313384.P7183222923631632922

/-! ## A313384.P2796013519988818014

`A313460(n)-A059841(A095062(2*(n+1)))`
-/

namespace A313384.P2796013519988818014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313460 n - A059841 (A095062 (2 * (n + 1))).toNat

end

end A313384.P2796013519988818014

/-! ## A313384.P17613813078657571357

`A313461(n)-A059841(A095062(2*(n+1)))`
-/

namespace A313384.P17613813078657571357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313461 n - A059841 (A095062 (2 * (n + 1))).toNat

end

end A313384.P17613813078657571357

/-!
# A313385: Coordination sequence Gal.6.498.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313385, there is no canonical definition to state claims against.
-/

/-! ## A313385.P16294922168114449913

`eq[A003557(n+1), A355072(A167707(n+1))]`
-/

namespace A313385.P16294922168114449913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355072 (A167707 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313385.P16294922168114449913

/-! ## A313385.P14681810635118331418

`A293521(A078213(n+1))+A080600(n)`
-/

namespace A313385.P14681810635118331418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 (A078213 (n + 1)).toNat + A080600 n

end

end A313385.P14681810635118331418

/-!
# A313386: Coordination sequence Gal.6.17.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313386, there is no canonical definition to state claims against.
-/

/-! ## A313386.P9473485490820283224

`A324848(A283434(n))+A313381(n)`
-/

namespace A313386.P9473485490820283224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (A283434 n).toNat + A313381 n

end

end A313386.P9473485490820283224

/-! ## A313386.P17538669325920854390

`A315175(n)-A060951(A149939(n))`
-/

namespace A313386.P17538669325920854390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315175 n - A060951 (A149939 n).toNat

end

end A313386.P17538669325920854390

/-! ## A313386.P6464358795756845449

`A311176(n)+A163540(A153678(n+1))`
-/

namespace A313386.P6464358795756845449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311176 n + A163540 (A153678 (n + 1)).toNat

end

end A313386.P6464358795756845449

/-! ## A313386.P4728048460709500639

`A307296(A294634(n+1))+A000201(2*n+1)`
-/

namespace A313386.P4728048460709500639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307296 (A294634 (n + 1)).toNat + A000201 (2 * n + 1)

end

end A313386.P4728048460709500639

/-!
# A313387: Coordination sequence Gal.6.443.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313387, there is no canonical definition to state claims against.
-/

/-! ## A313387.P5608068062500495334

`∑[A255054(A014138(n)+11)]`
-/

namespace A313387.P5608068062500495334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 (A014138 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313387.P5608068062500495334

/-! ## A313387.P10881395295570428033

`A351613(A003065(n))+4*n`
-/

namespace A313387.P10881395295570428033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351613 (A003065 n).toNat + (4 * n : ℤ)

end

end A313387.P10881395295570428033

/-! ## A313387.P16613464081091772137

`or(A008574(n), A351613(A003065(n)))`
-/

namespace A313387.P16613464081091772137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A351613 (A003065 n).toNat)

end

end A313387.P16613464081091772137

/-! ## A313387.P13715783379640834563

`lt[A114643(n+1), A114643(A062768(n+1))]`
-/

namespace A313387.P13715783379640834563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (A062768 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A313387.P13715783379640834563

/-! ## A313387.P11813892878884385718

`or(A025458(A009224(n+1)+2)+1, 4*n)`
-/

namespace A313387.P11813892878884385718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025458 (A009224 (n + 1) + 2).toNat + 1) (4 * n : ℤ)

end

end A313387.P11813892878884385718

/-!
# A313388: Coordination sequence Gal.6.55.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313388, there is no canonical definition to state claims against.
-/

/-! ## A313388.P16876960871494493305

`A313495(n)-A011655(A002807(n))`
-/

namespace A313388.P16876960871494493305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313495 n - A011655 (A002807 n).toNat

end

end A313388.P16876960871494493305

/-! ## A313388.P14575559156548975928

`A313495(n)-A046080(A000110(n))`
-/

namespace A313388.P14575559156548975928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313495 n - A046080 (A000110 n).toNat

end

end A313388.P14575559156548975928

/-! ## A313388.P14693306400847419074

`A313495(n)-A059841(A000568(n))`
-/

namespace A313388.P14693306400847419074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313495 n - A059841 (A000568 n).toNat

end

end A313388.P14693306400847419074

/-! ## A313388.P17248604256130244271

`A253620(n+1)+A253589(A017329(n))`
-/

namespace A313388.P17248604256130244271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253620 (n + 1) + A253589 (A017329 n).toNat

end

end A313388.P17248604256130244271

/-! ## A313388.P10415243922972324271

`A350427(n+2)+A124010(A070254(n+1))`
-/

namespace A313388.P10415243922972324271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350427 (n + 2) + A124010 (A070254 (n + 1)).toNat

end

end A313388.P10415243922972324271

/-!
# A313389: Coordination sequence Gal.6.497.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313389, there is no canonical definition to state claims against.
-/

/-! ## A313389.P6727194340799160776

`A314676(n)+A144195(A310249(n))`
-/

namespace A313389.P6727194340799160776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314676 n + A144195 (A310249 n).toNat

end

end A313389.P6727194340799160776

/-! ## A313389.P6040043361299212973

`or(A090996(A114750(n+1)), A311492(n))`
-/

namespace A313389.P6040043361299212973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090996 (A114750 (n + 1)).toNat) (A311492 n)

end

end A313389.P6040043361299212973

/-! ## A313389.P14220035690826512746

`or(A157226(A014137(n)), A311212(n))`
-/

namespace A313389.P14220035690826512746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A157226 (A014137 n).toNat) (A311212 n)

end

end A313389.P14220035690826512746

/-! ## A313389.P161259139549684342

`or(A081604(A246070(n)), A311216(n))`
-/

namespace A313389.P161259139549684342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A081604 (A246070 n).toNat) (A311216 n)

end

end A313389.P161259139549684342

/-!
# A313390: Coordination sequence Gal.6.416.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313390, there is no canonical definition to state claims against.
-/

/-! ## A313390.P13889288692994923829

`A330370(A238859(n))+4*n`
-/

namespace A313390.P13889288692994923829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330370 (A238859 n).toNat + (4 * n : ℤ)

end

end A313390.P13889288692994923829

/-! ## A313390.P2088447687352129211

`A265262(A344489(n))+4*n`
-/

namespace A313390.P2088447687352129211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265262 (A344489 n).toNat + (4 * n : ℤ)

end

end A313390.P2088447687352129211

/-! ## A313390.P2745525929163294051

`A333381(A014613(n+1))+4*n`
-/

namespace A313390.P2745525929163294051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A014613 (n + 1)).toNat + (4 * n : ℤ)

end

end A313390.P2745525929163294051

/-! ## A313390.P15938981044132606489

`4*n+2-A110161(A118589(n))`
-/

namespace A313390.P15938981044132606489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - A110161 (A118589 n).toNat

end

end A313390.P15938981044132606489

/-! ## A313390.P5812088961867743989

`∑[A002376(∑[A229337(3*n+1)])]`
-/

namespace A313390.P5812088961867743989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229337 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002376 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313390.P5812088961867743989

/-!
# A313391: Coordination sequence Gal.6.399.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313391, there is no canonical definition to state claims against.
-/

/-! ## A313391.P10734622514097905224

`A314680(n)+A123110(A328434(n))`
-/

namespace A313391.P10734622514097905224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314680 n + A123110 (A328434 n).toNat

end

end A313391.P10734622514097905224

/-! ## A313391.P7175682103803922892

`A301730(n)-A001221(A083100(n))`
-/

namespace A313391.P7175682103803922892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - A001221 (A083100 n).toNat

end

end A313391.P7175682103803922892

/-! ## A313391.P6504735806434669946

`A301730(n)-A001222(A143382(n))`
-/

namespace A313391.P6504735806434669946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - A001222 (A143382 n).toNat

end

end A313391.P6504735806434669946

/-! ## A313391.P3027825958908233553

`A335474(A058369(n+1))+A191105(n+1)`
-/

namespace A313391.P3027825958908233553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A058369 (n + 1)).toNat + A191105 (n + 1)

end

end A313391.P3027825958908233553

/-!
# A313392: Coordination sequence Gal.6.447.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313392, there is no canonical definition to state claims against.
-/

/-! ## A313392.P15178796524334179382

`eq[1, A087647(A259601(n+2))]`
-/

namespace A313392.P15178796524334179382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087647 (A259601 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A313392.P15178796524334179382

/-! ## A313392.P14606501449478316859

`A311217(n)+A122821(A060101(n))`
-/

namespace A313392.P14606501449478316859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311217 n + A122821 (A060101 n).toNat

end

end A313392.P14606501449478316859

/-! ## A313392.P14215543593948363922

`A311328(n)+A010873(A328041(n))`
-/

namespace A313392.P14215543593948363922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311328 n + A010873 (A328041 n).toNat

end

end A313392.P14215543593948363922

/-! ## A313392.P4493626961904426301

`eq[A321093(n), A344764(A026268(2*(n+1)))]`
-/

namespace A313392.P4493626961904426301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344764 (A026268 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A313392.P4493626961904426301

/-! ## A313392.P14014835712250500386

`A059659(record[A359043(2*n+1)+A267145(2*(n+1))])`
-/

namespace A313392.P14014835712250500386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (2 * n + 1) + A267145 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059659 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A313392.P14014835712250500386

/-!
# A313393: Coordination sequence Gal.5.184.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313393, there is no canonical definition to state claims against.
-/

/-! ## A313393.P11999902364676214547

`A312912(n)-A238468(2*n)`
-/

namespace A313393.P11999902364676214547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312912 n - A238468 (2 * n)

end

end A313393.P11999902364676214547

/-! ## A313393.P17015185718342335694

`A313522(n)-A051659(A312920(n))`
-/

namespace A313393.P17015185718342335694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313522 n - A051659 (A312920 n).toNat

end

end A313393.P17015185718342335694

/-! ## A313393.P735185151515733357

`A313694(n)-A063725(A071725(n))`
-/

namespace A313393.P735185151515733357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n - A063725 (A071725 n).toNat

end

end A313393.P735185151515733357

/-! ## A313393.P8510506279168276098

`or(A213911(A303284(n)), A313386(n))`
-/

namespace A313393.P8510506279168276098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213911 (A303284 n).toNat) (A313386 n)

end

end A313393.P8510506279168276098

/-! ## A313393.P13232193580420557305

`A137827(n+1)-A137779(A107334(n))`
-/

namespace A313393.P13232193580420557305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137827 (n + 1) - A137779 (A107334 n).toNat

end

end A313393.P13232193580420557305

/-!
# A313394: Coordination sequence Gal.6.30.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313394, there is no canonical definition to state claims against.
-/

/-! ## A313394.P656274191431424847

`A311766(n)+A243044(eq[6, A243060(n+1)])%(n+1)`
-/

namespace A313394.P656274191431424847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311766 n + Int.tmod (A243044 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (n + 1 : ℤ)

end

end A313394.P656274191431424847

/-!
# A313395: Coordination sequence Gal.6.56.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313395, there is no canonical definition to state claims against.
-/

/-! ## A313395.P14061499540817948422

`A036042(3^n)+or(2*n, n%4)`
-/

namespace A313395.P14061499540817948422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (3 ^ n) + (Nat.lor (2 * n) (n % 4) : ℤ)

end

end A313395.P14061499540817948422

/-! ## A313395.P4461331964147804531

`record[A338096(A093335(n))]`
-/

namespace A313395.P4461331964147804531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338096 (A093335 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313395.P4461331964147804531

/-! ## A313395.P1943568020306771479

`A313391(n)+A126792(A006925(n))`
-/

namespace A313395.P1943568020306771479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313391 n + A126792 (A006925 n).toNat

end

end A313395.P1943568020306771479

/-! ## A313395.P11653332988860310005

`A314017(n)-A001221(A177534(n))`
-/

namespace A313395.P11653332988860310005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314017 n - A001221 (A177534 n).toNat

end

end A313395.P11653332988860310005

/-! ## A313395.P7714868060838649591

`A301678(n)-A324724(A003094(n))`
-/

namespace A313395.P7714868060838649591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A324724 (A003094 n).toNat

end

end A313395.P7714868060838649591

/-!
# A313396: Coordination sequence Gal.6.559.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313396, there is no canonical definition to state claims against.
-/

/-! ## A313396.P4214188781393047370

`A302534(2*(n+1))+A163805(A302512(n+3))`
-/

namespace A313396.P4214188781393047370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302534 (2 * (n + 1)) + A163805 (A302512 (n + 3)).toNat

end

end A313396.P4214188781393047370

/-! ## A313396.P11588429272532073234

`gcd(A163805(A302529(n+1)), A302534(2*n+2))`
-/

namespace A313396.P11588429272532073234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163805 (A302529 (n + 1)).toNat) (A302534 (2 * n + 2))

end

end A313396.P11588429272532073234

/-!
# A313397: Coordination sequence Gal.6.517.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313397, there is no canonical definition to state claims against.
-/

/-! ## A313397.P12964153172936811320

`or(A040001(A048493(n)), A311172(n))`
-/

namespace A313397.P12964153172936811320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 (A048493 n).toNat) (A311172 n)

end

end A313397.P12964153172936811320

/-! ## A313397.P18377962133006218936

`or(A051700(A080039(n)), A311220(n))`
-/

namespace A313397.P18377962133006218936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051700 (A080039 n).toNat) (A311220 n)

end

end A313397.P18377962133006218936

/-! ## A313397.P941275066268886168

`A315172(n)-A010892(A185633(n+1))`
-/

namespace A313397.P941275066268886168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n - A010892 (A185633 (n + 1)).toNat

end

end A313397.P941275066268886168

/-! ## A313397.P9868747178304136582

`A315172(n)-A003056(A191903(n))%2`
-/

namespace A313397.P9868747178304136582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315172 n - Int.tmod (A003056 (A191903 n).toNat) 2

end

end A313397.P9868747178304136582

/-! ## A313397.P18384425355855505387

`or(A126307(A000032(n)), A311170(n))`
-/

namespace A313397.P18384425355855505387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126307 (A000032 n).toNat) (A311170 n)

end

end A313397.P18384425355855505387

/-!
# A313398: Coordination sequence Gal.6.532.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313398, there is no canonical definition to state claims against.
-/

/-! ## A313398.P16058843942720162545

`lt[A099477(n+1), A261641(A000217(3*n+1))]`
-/

namespace A313398.P16058843942720162545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261641 (A000217 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A313398.P16058843942720162545

/-! ## A313398.P4205536826308812571

`lt[A030132(3*(n+1))^A030132(n), A112678(2*(n+2))]`
-/

namespace A313398.P4205536826308812571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030132 (3 * (n + 1)) : ℚ) ^ (A030132 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112678 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A313398.P4205536826308812571

/-! ## A313398.P12883493441975401403

`A336424(or(1, (n+1)²))+4*n`
-/

namespace A313398.P12883493441975401403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336424 (Nat.lor 1 ((n + 1) ^ 2)) + (4 * n : ℤ)

end

end A313398.P12883493441975401403

/-! ## A313398.P11392136001930325392

`4*n+A020639(A226234(2*n))`
-/

namespace A313398.P11392136001930325392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + A020639 (A226234 (2 * n)).toNat

end

end A313398.P11392136001930325392

/-! ## A313398.P3096589148736394084

`A313401(n)-A124763(A074082(n))`
-/

namespace A313398.P3096589148736394084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313401 n - A124763 (A074082 n).toNat

end

end A313398.P3096589148736394084

/-!
# A313399: Coordination sequence Gal.6.444.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313399, there is no canonical definition to state claims against.
-/

/-! ## A313399.P2761783865962370328

`xor(A115199(A330300(n)), A313401(n))`
-/

namespace A313399.P2761783865962370328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115199 (A330300 n).toNat) (A313401 n)

end

end A313399.P2761783865962370328

/-! ## A313399.P3610222903363985998

`A289508(A085463(n+1))+A130091(3*n+1)`
-/

namespace A313399.P3610222903363985998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A085463 (n + 1)).toNat + A130091 (3 * n + 1)

end

end A313399.P3610222903363985998

/-! ## A313399.P14635261566173002511

`A320634(n+1)+record[A162201(n+1)]`
-/

namespace A313399.P14635261566173002511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313399.P14635261566173002511

/-! ## A313399.P2673464625165462923

`or(A224702(n), A349294(A008574(n)))`
-/

namespace A313399.P2673464625165462923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A224702 n) (A349294 (A008574 n).toNat)

end

end A313399.P2673464625165462923

/-! ## A313399.P9589500818553238396

`xor(A102679(A000719(n)), A313401(n))`
-/

namespace A313399.P9589500818553238396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102679 (A000719 n).toNat) (A313401 n)

end

end A313399.P9589500818553238396

