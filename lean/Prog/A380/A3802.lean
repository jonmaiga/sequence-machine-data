import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
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
# A380200: a(n) = A379343(A379343(n)).

The programs for A380200, the canonical program `A380200.P14247511761982515309` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380200 has offset 1).

The definition of A380200 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379343, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380200.P14247511761982515309

`A379343(A379343(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A380200

/-- `A379343(A379343(n+1))` -/
def P14247511761982515309.Spec : Prop :=
  ∀ n, P14247511761982515309.a n = A380200 (n + 1)

theorem P14247511761982515309.correct : P14247511761982515309.Spec := by
  intro n
  simp only [A380200, Nat.add_sub_cancel]

end A380200

/-! ## A380200.P16082461822759871311

`A376214(A379342(n+1))`
-/

namespace A380200.P16082461822759871311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A379342 (n + 1)).toNat

end

end A380200.P16082461822759871311

namespace A380200

/-- `A376214(A379342(n+1))` -/
def P16082461822759871311.Spec : Prop :=
  ∀ n, P16082461822759871311.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P1575662733757424975

`A380815(A376214(n+1))`
-/

namespace A380200.P1575662733757424975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A376214 (n + 1)).toNat

end

end A380200.P1575662733757424975

namespace A380200

/-- `A380815(A376214(n+1))` -/
def P1575662733757424975.Spec : Prop :=
  ∀ n, P1575662733757424975.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P10753709886703189419

`A381664(A378684(n+1))`
-/

namespace A380200.P10753709886703189419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A378684 (n + 1)).toNat

end

end A380200.P10753709886703189419

namespace A380200

/-- `A381664(A378684(n+1))` -/
def P10753709886703189419.Spec : Prop :=
  ∀ n, P10753709886703189419.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P10243552788314906954

`A378684(A381663(n+1))`
-/

namespace A380200.P10243552788314906954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381663 (n + 1)).toNat

end

end A380200.P10243552788314906954

namespace A380200

/-- `A378684(A381663(n+1))` -/
def P10243552788314906954.Spec : Prop :=
  ∀ n, P10243552788314906954.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P18439407934110779172

`A379342(A381662(n+1))`
-/

namespace A380200.P18439407934110779172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A381662 (n + 1)).toNat

end

end A380200.P18439407934110779172

namespace A380200

/-- `A379342(A381662(n+1))` -/
def P18439407934110779172.Spec : Prop :=
  ∀ n, P18439407934110779172.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P11896738786221070994

`A380245(A380817(n+1))`
-/

namespace A380200.P11896738786221070994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A380817 (n + 1)).toNat

end

end A380200.P11896738786221070994

namespace A380200

/-- `A380245(A380817(n+1))` -/
def P11896738786221070994.Spec : Prop :=
  ∀ n, P11896738786221070994.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P13949289657710628164

`A380817(A380815(n+1))`
-/

namespace A380200.P13949289657710628164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A380815 (n + 1)).toNat

end

end A380200.P13949289657710628164

namespace A380200

/-- `A380817(A380815(n+1))` -/
def P13949289657710628164.Spec : Prop :=
  ∀ n, P13949289657710628164.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P4741923446037626915

`A378200(A383589(n+1))`
-/

namespace A380200.P4741923446037626915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A383589 (n + 1)).toNat

end

end A380200.P4741923446037626915

namespace A380200

/-- `A378200(A383589(n+1))` -/
def P4741923446037626915.Spec : Prop :=
  ∀ n, P4741923446037626915.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P4794625435302382521

`A381662(A380245(n+1))`
-/

namespace A380200.P4794625435302382521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A380245 (n + 1)).toNat

end

end A380200.P4794625435302382521

namespace A380200

/-- `A381662(A380245(n+1))` -/
def P4794625435302382521.Spec : Prop :=
  ∀ n, P4794625435302382521.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P7429647365730350919

`A383723(A378200(n+1))`
-/

namespace A380200.P7429647365730350919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A378200 (n + 1)).toNat

end

end A380200.P7429647365730350919

namespace A380200

/-- `A383723(A378200(n+1))` -/
def P7429647365730350919.Spec : Prop :=
  ∀ n, P7429647365730350919.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P2041027607899645762

`A381663(A381664(n+1))`
-/

namespace A380200.P2041027607899645762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A381664 (n + 1)).toNat

end

end A380200.P2041027607899645762

namespace A380200

/-- `A381663(A381664(n+1))` -/
def P2041027607899645762.Spec : Prop :=
  ∀ n, P2041027607899645762.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P16084999435771571652

`A378200(A376214(A056023(n+1)))`
-/

namespace A380200.P16084999435771571652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A376214 (A056023 (n + 1)).toNat).toNat

end

end A380200.P16084999435771571652

namespace A380200

/-- `A378200(A376214(A056023(n+1)))` -/
def P16084999435771571652.Spec : Prop :=
  ∀ n, P16084999435771571652.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P11545238583594746858

`A380245(A056023(A378762(n+1)))`
-/

namespace A380200.P11545238583594746858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A056023 (A378762 (n + 1)).toNat).toNat

end

end A380200.P11545238583594746858

namespace A380200

/-- `A380245(A056023(A378762(n+1)))` -/
def P11545238583594746858.Spec : Prop :=
  ∀ n, P11545238583594746858.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P13501659903870191858

`A376214(A378705(A378705(n+1)))`
-/

namespace A380200.P13501659903870191858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A378705 (A378705 (n + 1)).toNat).toNat

end

end A380200.P13501659903870191858

namespace A380200

/-- `A376214(A378705(A378705(n+1)))` -/
def P13501659903870191858.Spec : Prop :=
  ∀ n, P13501659903870191858.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P16031610228948787116

`A382499(A378684(A381968(n+1)))`
-/

namespace A380200.P16031610228948787116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A378684 (A381968 (n + 1)).toNat).toNat

end

end A380200.P16031610228948787116

namespace A380200

/-- `A382499(A378684(A381968(n+1)))` -/
def P16031610228948787116.Spec : Prop :=
  ∀ n, P16031610228948787116.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P12010455341575855094

`A380815(A378762(A383723(n+1)))`
-/

namespace A380200.P12010455341575855094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A378762 (A383723 (n + 1)).toNat).toNat

end

end A380200.P12010455341575855094

namespace A380200

/-- `A380815(A378762(A383723(n+1)))` -/
def P12010455341575855094.Spec : Prop :=
  ∀ n, P12010455341575855094.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P17587655298762652446

`A381968(A378684(A382680(n+1)))`
-/

namespace A380200.P17587655298762652446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378684 (A382680 (n + 1)).toNat).toNat

end

end A380200.P17587655298762652446

namespace A380200

/-- `A381968(A378684(A382680(n+1)))` -/
def P17587655298762652446.Spec : Prop :=
  ∀ n, P17587655298762652446.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P17214759437282781495

`A382679(A378684(A382499(n+1)))`
-/

namespace A380200.P17214759437282781495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A378684 (A382499 (n + 1)).toNat).toNat

end

end A380200.P17214759437282781495

namespace A380200

/-- `A382679(A378684(A382499(n+1)))` -/
def P17214759437282781495.Spec : Prop :=
  ∀ n, P17214759437282781495.a n = A380200 (n + 1)

end A380200

/-! ## A380200.P14686065283451952653

`A382680(A378684(A382679(n+1)))`
-/

namespace A380200.P14686065283451952653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378684 (A382679 (n + 1)).toNat).toNat

end

end A380200.P14686065283451952653

namespace A380200

/-- `A382680(A378684(A382679(n+1)))` -/
def P14686065283451952653.Spec : Prop :=
  ∀ n, P14686065283451952653.a n = A380200 (n + 1)

end A380200

/-!
# A380201: Triangle T(n,k) read by rows, where row n is a permutation of numbers 1 through n, such that if a deck of n cards is prepared in this order, and SpellUnder-Down dealing is used, then the resulting cards are put down in increasing order.

The programs for A380201, there is no canonical definition to state claims against.
-/

/-! ## A380201.P9848944355792234245

`A381127(A080036(n+1))-1`
-/

namespace A380201.P9848944355792234245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381127 (A080036 (n + 1)).toNat - 1

end

end A380201.P9848944355792234245

/-! ## A380201.P17680903627446421763

`A112798(n+2)+A001878(A036721(n))`
-/

namespace A380201.P17680903627446421763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2) + A001878 (A036721 n).toNat

end

end A380201.P17680903627446421763

/-! ## A380201.P18232942448220138168

`A001222(A074477(n+1)+A022423(n))`
-/

namespace A380201.P18232942448220138168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074477 (n + 1) + A022423 n).toNat

end

end A380201.P18232942448220138168

/-! ## A380201.P14369920615364398274

`A368414(A055642(n)*A102185(n+1))`
-/

namespace A380201.P14369920615364398274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368414 (A055642 n * A102185 (n + 1)).toNat

end

end A380201.P14369920615364398274

/-! ## A380201.P14585146520777255488

`A000120(A104986(3*n)+A047999(n))`
-/

namespace A380201.P14585146520777255488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A104986 (3 * n) + A047999 n).toNat

end

end A380201.P14585146520777255488

/-!
# A380202: Number of card moves to deal n cards using the SpellUnder-Down dealing.

The programs for A380202, there is no canonical definition to state claims against.
-/

/-! ## A380202.P9951270138317122455

`A067278(n+1)+n+1`
-/

namespace A380202.P9951270138317122455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067278 (n + 1) + (n + 1 : ℤ)

end

end A380202.P9951270138317122455

/-! ## A380202.P9301459406395774535

`A381128(n+2)-1`
-/

namespace A380202.P9301459406395774535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381128 (n + 2) - 1

end

end A380202.P9301459406395774535

/-! ## A380202.P2115501461669585178

`A023443(A381128(n+2))`
-/

namespace A380202.P2115501461669585178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A381128 (n + 2)).toNat

end

end A380202.P2115501461669585178

/-!
# A380203: With given points 0,1 on the x-axis, a(n) is the number of ways to construct n with m circles where 2^(m-1)

The programs for A380203, there is no canonical definition to state claims against.
-/

/-! ## A380203.P3758749663614184166

`∏{e}[gcd(3*(n+1)-∑{d}[n+1, #], A005865(n+1)), #+1]`
-/

namespace A380203.P3758749663614184166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((3 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)) (A005865 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A380203.P3758749663614184166

/-! ## A380203.P5046188315824006528

`A003641(A389983(n))`
-/

namespace A380203.P5046188315824006528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003641 (A389983 n).toNat

end

end A380203.P5046188315824006528

/-! ## A380203.P15678409495721816219

`A046951(A304974(n)+10)`
-/

namespace A380203.P15678409495721816219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A304974 n + 10).toNat

end

end A380203.P15678409495721816219

/-! ## A380203.P6770221232727467405

`A124764(A117791(and(n, Δ[-n²])))+1`
-/

namespace A380203.P6770221232727467405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A117791 (Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat).toNat + 1

end

end A380203.P6770221232727467405

/-! ## A380203.P9256437448603178800

`A350843(A225766(n-2*floor(n/10))+2)`
-/

namespace A380203.P9256437448603178800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350843 (A225766 ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋).toNat + 2).toNat

end

end A380203.P9256437448603178800

/-!
# A380204: A version of the Josephus problem: a(n) is the surviving integer under the spelling version of the elimination process.

The programs for A380204, there is no canonical definition to state claims against.
-/

/-! ## A380204.P6624785935819542691

`A381129(n+2)-1`
-/

namespace A380204.P6624785935819542691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381129 (n + 2) - 1

end

end A380204.P6624785935819542691

/-! ## A380204.P13641183435058160998

`A023443(A381129(n+2))`
-/

namespace A380204.P13641183435058160998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A381129 (n + 2)).toNat

end

end A380204.P13641183435058160998

/-! ## A380204.P747740983258050150

`A057428(3*n+4)+A381129(n+2)`
-/

namespace A380204.P747740983258050150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * n + 4) + A381129 (n + 2)

end

end A380204.P747740983258050150

/-!
# A380209: Expansion of e.g.f. exp( (1+2*x)^(3/2) - 1 ).

The programs for A380209, there is no canonical definition to state claims against.
-/

/-! ## A380209.P4949270330847714856

`A038554(n)+Δ[A019503(n+1)]`
-/

namespace A380209.P4949270330847714856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n + (f1 (n + 1) - f1 n)

end

end A380209.P4949270330847714856

/-! ## A380209.P13157412523545062770

`A004526(A083065(n)+A000051(n))`
-/

namespace A380209.P13157412523545062770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A083065 n + A000051 n).toNat

end

end A380209.P13157412523545062770

/-!
# A380211: Number of rooted binary normal unlabeled galled trees with n leaves.

The programs for A380211, there is no canonical definition to state claims against.
-/

/-! ## A380211.P14428352071267404852

`A026922(A179190(n))`
-/

namespace A380211.P14428352071267404852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A179190 n).toNat

end

end A380211.P14428352071267404852

/-! ## A380211.P12403304007906360697

`A331803(A025227(n))`
-/

namespace A380211.P12403304007906360697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331803 (A025227 n).toNat

end

end A380211.P12403304007906360697

/-! ## A380211.P10171715926038543271

`A246552(2*A025227(n))`
-/

namespace A380211.P10171715926038543271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (2 * A025227 n).toNat

end

end A380211.P10171715926038543271

/-! ## A380211.P12579796157929494514

`A106609(4*floor(A179190(n)/2))`
-/

namespace A380211.P12579796157929494514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (4 * ⌊(A179190 n : ℚ) / 2⌋).toNat

end

end A380211.P12579796157929494514

/-! ## A380211.P7230435880682044045

`A025227(n)/A020639(A000142(n))`
-/

namespace A380211.P7230435880682044045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025227 n : ℚ) / (A020639 (A000142 n).toNat : ℚ)

end

end A380211.P7230435880682044045

/-!
# A380212: Expansion of e.g.f. exp( 1/(1-2*x)^(3/2) - 1 ).

The programs for A380212, there is no canonical definition to state claims against.
-/

/-! ## A380212.P6502392671145245613

`A008486(A067550(n+1)-A074909(n))`
-/

namespace A380212.P6502392671145245613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A067550 (n + 1) - A074909 n).toNat

end

end A380212.P6502392671145245613

/-!
# A380214: Expansion of e.g.f. exp( 1/(1-3*x)^(2/3) - 1 ).

The programs for A380214, there is no canonical definition to state claims against.
-/

/-! ## A380214.P6494555651367574192

`A001961(A001813(n))`
-/

namespace A380214.P6494555651367574192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A001813 n).toNat

end

end A380214.P6494555651367574192

/-!
# A380215: Expansion of e.g.f. exp( (1+3*x)^(2/3) - 1 ).

The programs for A380215, there is no canonical definition to state claims against.
-/

/-! ## A380215.P3643510688266361658

`2^∑{e}[n+1, #]*A156925(A371832(n))`
-/

namespace A380215.P3643510688266361658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) * A156925 (A371832 n).toNat

end

end A380215.P3643510688266361658

/-!
# A380216: Numbers whose prime indices have (product)/(sum) equal to an integer > 1.

The programs for A380216, there is no canonical definition to state claims against.
-/

/-! ## A380216.P13976623641626950235

`∩[A325037(n+1), A326149(n+1)]`
-/

namespace A380216.P13976623641626950235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380216.P13976623641626950235

/-! ## A380216.P15147699298712079188

`∩[A325037(n+1), A326150(n+1)]`
-/

namespace A380216.P15147699298712079188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380216.P15147699298712079188

/-!
# A380217: Numbers whose product of prime indices is a multiple of their sum of prime indices plus one.

The programs for A380217, there is no canonical definition to state claims against.
-/

/-! ## A380217.P3824767607053147904

`A379319(n+1)/2`
-/

namespace A380217.P3824767607053147904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379319 (n + 1) : ℚ) / 2

end

end A380217.P3824767607053147904

/-! ## A380217.P11815598892423482896

`record[A130472(A326149(n+1))]`
-/

namespace A380217.P11815598892423482896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A326149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380217.P11815598892423482896

/-! ## A380217.P18321208540566548613

`∩[A326149(n+1), A004275(n)]/2`
-/

namespace A380217.P18321208540566548613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A380217.P18321208540566548613

/-! ## A380217.P4913511016179232132

`∩[A326149(n+1), A004277(n)]/2`
-/

namespace A380217.P4913511016179232132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A380217.P4913511016179232132

/-! ## A380217.P2084149650600489790

`∩[A326149(n+1), A005843(n)]/2`
-/

namespace A380217.P2084149650600489790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A380217.P2084149650600489790

/-!
# A380218: Number of integer partitions of n with product n+1.

The programs for A380218, there is no canonical definition to state claims against.
-/

/-! ## A380218.P13027204594939610728

`A028422(A178915(n+1))`
-/

namespace A380218.P13027204594939610728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A178915 (n + 1)).toNat

end

end A380218.P13027204594939610728

/-! ## A380218.P13337255729961232230

`xor(A028422(n+1), A154281(n+1))`
-/

namespace A380218.P13337255729961232230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028422 (n + 1)) (A154281 (n + 1))

end

end A380218.P13337255729961232230

/-! ## A380218.P10602635818572635918

`A001055(n+1)-A001222(A046022(n+1))`
-/

namespace A380218.P10602635818572635918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A001222 (A046022 (n + 1)).toNat

end

end A380218.P10602635818572635918

/-! ## A380218.P10885634434533287505

`A028422(C(A130893(3*n+1), A001597(n+1))+n+1)`
-/

namespace A380218.P10885634434533287505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (Nat.choose (A130893 (3 * n + 1)).toNat (A001597 (n + 1)).toNat + n + 1)

end

end A380218.P10885634434533287505

/-! ## A380218.P8074321547554905564

`A028422(n+1)-A010815(A167793(n+1))`
-/

namespace A380218.P8074321547554905564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (n + 1) - A010815 (A167793 (n + 1)).toNat

end

end A380218.P8074321547554905564

/-! ## A380218.P12712161659882163203

`A066032(A347513(n+3))`
-/

namespace A380218.P12712161659882163203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066032 (A347513 (n + 3)).toNat

end

end A380218.P12712161659882163203

/-! ## A380218.P242854428760492668

`A001055(n+1)+A379720(n+1)-A002865(n+1)`
-/

namespace A380218.P242854428760492668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) + (A379720 (n + 1) - A002865 (n + 1))

end

end A380218.P242854428760492668

/-!
# A380219: Number of integer partitions of n whose product is a proper multiple of n.

The programs for A380219, there is no canonical definition to state claims against.
-/

/-! ## A380219.P17683055243104240944

`A057568(n+1)-A001055(n+1)`
-/

namespace A380219.P17683055243104240944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057568 (n + 1) - A001055 (n + 1)

end

end A380219.P17683055243104240944

/-! ## A380219.P2164031269231130930

`A057568(n+1)-(A028422(n+1)+1)`
-/

namespace A380219.P2164031269231130930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057568 (n + 1) - (A028422 (n + 1) + 1)

end

end A380219.P2164031269231130930

/-! ## A380219.P6707730875146752587

`A057568(n+1)-A344368(n+1)/(n+1)`
-/

namespace A380219.P6707730875146752587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057568 (n + 1) : ℚ) - (A344368 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A380219.P6707730875146752587

/-! ## A380219.P5305383551361191040

`A057568(n+1)+A096276(n)-A096276(n+1)`
-/

namespace A380219.P5305383551361191040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057568 (n + 1) + (A096276 n - A096276 (n + 1))

end

end A380219.P5305383551361191040

/-! ## A380219.P15774875867042849477

`A057568(n+1)+A339564(n+1)-A057567(n+1)`
-/

namespace A380219.P15774875867042849477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057568 (n + 1) + (A339564 (n + 1) - A057567 (n + 1))

end

end A380219.P15774875867042849477

/-!
# A380221: Number of strict integer partitions of n containing 1 whose product of parts is a multiple of n.

The programs for A380221, there is no canonical definition to state claims against.
-/

/-! ## A380221.P16091119902522417183

`A379733(n+1)-A379735(n+1)`
-/

namespace A380221.P16091119902522417183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379733 (n + 1) - A379735 (n + 1)

end

end A380221.P16091119902522417183

/-! ## A380221.P6746850063414379501

`and(A034296(n), A053839(A006794(n+1)))`
-/

namespace A380221.P6746850063414379501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034296 n) (A053839 (A006794 (n + 1)).toNat)

end

end A380221.P6746850063414379501

/-! ## A380221.P473494207118809116

`A354911(record[A085079(n+1)])`
-/

namespace A380221.P473494207118809116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354911 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A380221.P473494207118809116

/-! ## A380221.P7411720586829331634

`A124762(A040722(n)*A379320(n))`
-/

namespace A380221.P7411720586829331634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A040722 n * A379320 n).toNat

end

end A380221.P7411720586829331634

/-! ## A380221.P5615825052629365991

`A322989(n+1)+A263428(A010120(n))`
-/

namespace A380221.P5615825052629365991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322989 (n + 1) + A263428 (A010120 n).toNat

end

end A380221.P5615825052629365991

/-!
# A380223: Positions of ones in A379880.

The programs for A380223, there is no canonical definition to state claims against.
-/

/-! ## A380223.P13790454264585959844

`eq[1, A379880(n+1)]+1`
-/

namespace A380223.P13790454264585959844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A380223.P13790454264585959844

/-! ## A380223.P18220420242385819817

`A257019(A032563(n+1)+A010784(n+4))`
-/

namespace A380223.P18220420242385819817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257019 (A032563 (n + 1) + A010784 (n + 4)).toNat

end

end A380223.P18220420242385819817

/-! ## A380223.P2766495328438762882

`A325389(A189383(3*n+4))-A008587(n)`
-/

namespace A380223.P2766495328438762882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (A189383 (3 * n + 4)).toNat - A008587 n

end

end A380223.P2766495328438762882

/-! ## A380223.P13796836512026808941

`A235991(2*n+5)+A011655(A364495(n+1))`
-/

namespace A380223.P13796836512026808941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235991 (2 * n + 5) + A011655 (A364495 (n + 1)).toNat

end

end A380223.P13796836512026808941

/-!
# A380224: Terms b(k) (for k > 0, and in order of appearance) such that both |b(k) - b(k-1)| and |b(k+1) - b(k)| are greater than 1, where b is A377091.

The programs for A380224, there is no canonical definition to state claims against.
-/

/-! ## A380224.P14441814057149770689

`A377091(A380225(n+1))`
-/

namespace A380224.P14441814057149770689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A380225 (n + 1)).toNat

end

end A380224.P14441814057149770689

/-!
# A380226: 10^n-th perfect power.

The programs for A380226, there is no canonical definition to state claims against.
-/

/-! ## A380226.P8454470358980675850

`A001597(10^n)`
-/

namespace A380226.P8454470358980675850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (10 ^ n)

end

end A380226.P8454470358980675850

/-!
# A380228: Expansion of e.g.f. exp( exp( (exp(2*x)-1)/2 ) - 1 ).

The programs for A380228, there is no canonical definition to state claims against.
-/

/-! ## A380228.P1766478575265871039

`or(A000720(A231617(n)), A298952(n))`
-/

namespace A380228.P1766478575265871039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000720 (A231617 n).toNat) (A298952 n)

end

end A380228.P1766478575265871039

/-! ## A380228.P12353325126256498703

`A087866(A097188(n)-A085263(n+1))`
-/

namespace A380228.P12353325126256498703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087866 (A097188 n - A085263 (n + 1)).toNat

end

end A380228.P12353325126256498703

/-!
# A380229: Expansion of e.g.f. exp( exp( (exp(3*x)-1)/3 ) - 1 ).

The programs for A380229, there is no canonical definition to state claims against.
-/

/-! ## A380229.P1807685694360299580

`A130342(n^n)`
-/

namespace A380229.P1807685694360299580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130342 (n ^ n)

end

end A380229.P1807685694360299580

/-!
# A380230: a(n) = n*A070939(n).

The programs for A380230, the canonical program `A380230.P9860135547969315712` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380230 has offset 0).

The definition of A380230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A070939(n)` (program `A380230.P9860135547969315712`, by `A380230.P9860135547969315712.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A380230.P9860135547969315712

`n*A070939(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A380230

/-- `n*A070939(n)` -/
def P9860135547969315712.Spec : Prop :=
  ∀ n, P9860135547969315712.a n = A380230 n

theorem P9860135547969315712.correct : P9860135547969315712.Spec := by
  intro n
  simp only [A380230]

end A380230

/-! ## A380230.P1578388852707486144

`n*ceil(log2(n+1))`
-/

namespace A380230.P1578388852707486144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A380230.P1578388852707486144

namespace A380230

/-- `n*ceil(log2(n+1))` -/
def P1578388852707486144.Spec : Prop :=
  ∀ n, P1578388852707486144.a n = A380230 n

end A380230

/-! ## A380230.P10921709512579088956

`record[floor(log2(n+1))*A025480(n)]`
-/

namespace A380230.P10921709512579088956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) * A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380230.P10921709512579088956

namespace A380230

/-- `record[floor(log2(n+1))*A025480(n)]` -/
def P10921709512579088956.Spec : Prop :=
  ∀ n, P10921709512579088956.a n = A380230 n

end A380230

/-! ## A380230.P3563581057630277696

`n*A029837(2*n+1)-n`
-/

namespace A380230.P3563581057630277696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A029837 (2 * n + 1) - (n : ℤ)

end

end A380230.P3563581057630277696

namespace A380230

/-- `n*A029837(2*n+1)-n` -/
def P3563581057630277696.Spec : Prop :=
  ∀ n, P3563581057630277696.a n = A380230 n

end A380230

/-! ## A380230.P17649931170350561929

`A004526(A005843(n)*A029837(n+1))`
-/

namespace A380230.P17649931170350561929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005843 n * A029837 (n + 1)).toNat

end

end A380230.P17649931170350561929

namespace A380230

/-- `A004526(A005843(n)*A029837(n+1))` -/
def P17649931170350561929.Spec : Prop :=
  ∀ n, P17649931170350561929.a n = A380230 n

end A380230

/-! ## A380230.P18242900313705206384

`A001787(n)*A029837(n+1)/A011782(n)`
-/

namespace A380230.P18242900313705206384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n * A029837 (n + 1) : ℚ) / (A011782 n : ℚ)

end

end A380230.P18242900313705206384

namespace A380230

/-- `A001787(n)*A029837(n+1)/A011782(n)` -/
def P18242900313705206384.Spec : Prop :=
  ∀ n, P18242900313705206384.a n = (A380230 n : ℚ)

end A380230

/-! ## A380230.P6714919324421248945

`floor(log2(A048731(n))+n)`
-/

namespace A380230.P6714919324421248945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A048731 n : ℝ) + (n : ℝ)⌋

end

end A380230.P6714919324421248945

namespace A380230

/-- `floor(log2(A048731(n))+n)` -/
def P6714919324421248945.Spec : Prop :=
  ∀ n, P6714919324421248945.a n = A380230 n

end A380230

/-! ## A380230.P6947454364584699445

`A295513(n)+A062383(n)`
-/

namespace A380230.P6947454364584699445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295513 n + A062383 n

end

end A380230.P6947454364584699445

namespace A380230

/-- `A295513(n)+A062383(n)` -/
def P6947454364584699445.Spec : Prop :=
  ∀ n, P6947454364584699445.a n = A380230 n

end A380230

/-!
# A380231: Alternating row sums of triangle A237591.

The programs for A380231, there is no canonical definition to state claims against.
-/

/-! ## A380231.P6042656974752507726

`2*A240542(n+1)-(n+1)`
-/

namespace A380231.P6042656974752507726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A240542 (n + 1) - (n + 1 : ℤ)

end

end A380231.P6042656974752507726

/-! ## A380231.P13447664834115098724

`n+1-2*A322141(n+1)`
-/

namespace A380231.P13447664834115098724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A322141 (n + 1)

end

end A380231.P13447664834115098724

/-! ## A380231.P1957030312415875101

`A240542(n+1)-A322141(n+1)`
-/

namespace A380231.P1957030312415875101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (n + 1) - A322141 (n + 1)

end

end A380231.P1957030312415875101

/-! ## A380231.P15464292529104787303

`∑[2*A067742(n+1)]-(n+1)`
-/

namespace A380231.P15464292529104787303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A380231.P15464292529104787303

/-! ## A380231.P17329003007357914945

`n-A060747(A322141(n+1))`
-/

namespace A380231.P17329003007357914945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A060747 (A322141 (n + 1)).toNat

end

end A380231.P17329003007357914945

/-! ## A380231.P9400826608641481759

`A005843(A240542(n+1))-A000027(n+1)`
-/

namespace A380231.P9400826608641481759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A240542 (n + 1)).toNat - A000027 (n + 1)

end

end A380231.P9400826608641481759

/-! ## A380231.P13917105477458145383

`A005408(A240542(n+1))-A020725(n+1)`
-/

namespace A380231.P13917105477458145383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A240542 (n + 1)).toNat - A020725 (n + 1)

end

end A380231.P13917105477458145383

/-!
# A380233: Odd abundant numbers not divisible by 5 that are also doublets (cf. A020338).

The programs for A380233, there is no canonical definition to state claims against.
-/

/-! ## A380233.P14314292694433118855

`∩[A020338(n+1), A064001(n+1)]`
-/

namespace A380233.P14314292694433118855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064001 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380233.P14314292694433118855

/-! ## A380233.P15748675769619593260

`∩[A064001(n+1), A248038(n+1)]`
-/

namespace A380233.P15748675769619593260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380233.P15748675769619593260

/-! ## A380233.P16682740061268027563

`∩[A064001(n+1), A249166(n+1)]`
-/

namespace A380233.P16682740061268027563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380233.P16682740061268027563

/-! ## A380233.P5397727611316979805

`∩[A064001(n+1), A380232(n+1)]`
-/

namespace A380233.P5397727611316979805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380233.P5397727611316979805

/-! ## A380233.P4724377905773588122

`A064001(record[A279317(n+1)])`
-/

namespace A380233.P4724377905773588122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064001 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A380233.P4724377905773588122

/-!
# A380234: Triangle read by rows: T(n,k) is the number of achiral combinatorial maps with n edges and genus k, 0 <= k <= floor(n/2).

The programs for A380234, there is no canonical definition to state claims against.
-/

/-! ## A380234.P18148880769641179450

`2*A379439(n)-A379438(n)`
-/

namespace A380234.P18148880769641179450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379439 n - A379438 n

end

end A380234.P18148880769641179450

/-! ## A380234.P3621157253287339023

`A005843(A379439(n))-A379438(n)`
-/

namespace A380234.P3621157253287339023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A379439 n).toNat - A379438 n

end

end A380234.P3621157253287339023

/-!
# A380236: Number of non-orientable genus n maps with n edges.

The programs for A380236, there is no canonical definition to state claims against.
-/

/-! ## A380236.P16160733689390633058

`A380235(∑[n+1])`
-/

namespace A380236.P16160733689390633058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380235 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380236.P16160733689390633058

/-! ## A380236.P4352400120987339092

`record[A380235(n+1)/A051339(n)]`
-/

namespace A380236.P4352400120987339092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380235 (n + 1) : ℚ) / (A051339 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380236.P4352400120987339092

/-! ## A380236.P16162625882451598280

`A380235(A000217(n+1))+A248805(n+1)`
-/

namespace A380236.P16162625882451598280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380235 (A000217 (n + 1)).toNat + A248805 (n + 1)

end

end A380236.P16162625882451598280

/-! ## A380236.P11087798600965789094

`A380235(A000217(n+1))%A083973(n+1)`
-/

namespace A380236.P11087798600965789094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380235 (A000217 (n + 1)).toNat) (A083973 (n + 1))

end

end A380236.P11087798600965789094

/-! ## A380236.P15660901490539021385

`A010684(2*(n+2))*A380235(A000217(n+1))`
-/

namespace A380236.P15660901490539021385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (2 * (n + 2)) * A380235 (A000217 (n + 1)).toNat

end

end A380236.P15660901490539021385

/-!
# A380237: Number of sensed planar maps with n vertices and 2 faces.

The programs for A380237, there is no canonical definition to state claims against.
-/

/-! ## A380237.P11057047555709547296

`(A210736(n+1)+A060404(n+1))/2`
-/

namespace A380237.P11057047555709547296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) + A060404 (n + 1) : ℚ) / 2

end

end A380237.P11057047555709547296

/-! ## A380237.P1704616011532715087

`A384966(n+1)+A001895(n+1)`
-/

namespace A380237.P1704616011532715087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384966 (n + 1) + A001895 (n + 1)

end

end A380237.P1704616011532715087

/-! ## A380237.P12381492253048044277

`2*A380239(n+1)-A380238(n+1)`
-/

namespace A380237.P12381492253048044277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380239 (n + 1) - A380238 (n + 1)

end

end A380237.P12381492253048044277

/-! ## A380237.P17531196015530558877

`A380615(∑[n+1]+n)`
-/

namespace A380237.P17531196015530558877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A380237.P17531196015530558877

/-! ## A380237.P15543175036651978102

`A379430(∑[n+2])`
-/

namespace A380237.P15543175036651978102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379430 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380237.P15543175036651978102

/-!
# A380238: Number of achiral planar maps with n vertices and 2 faces.

The programs for A380238, there is no canonical definition to state claims against.
-/

/-! ## A380238.P16569874539145798466

`2*A380239(n+1)-A380237(n+1)`
-/

namespace A380238.P16569874539145798466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380239 (n + 1) - A380237 (n + 1)

end

end A380238.P16569874539145798466

/-! ## A380238.P8437776044168445862

`A379431(∑[n+2])`
-/

namespace A380238.P8437776044168445862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380238.P8437776044168445862

/-! ## A380238.P6120667640377317977

`A380617(∑[n+1]+n)`
-/

namespace A380238.P6120667640377317977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380617 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A380238.P6120667640377317977

/-! ## A380238.P3575362318370433007

`record[A010054(n)*A379431(n+2)]`
-/

namespace A380238.P3575362318370433007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A379431 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380238.P3575362318370433007

/-! ## A380238.P8585296206629115154

`record[A155031(n+1)*A379431(n+3)]`
-/

namespace A380238.P8585296206629115154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155031 (n + 1) * A379431 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380238.P8585296206629115154

/-!
# A380239: Number of unsensed planar maps with n vertices and 2 faces.

The programs for A380239, there is no canonical definition to state claims against.
-/

/-! ## A380239.P18126619779588004838

`(A380237(n+1)+A380238(n+1))/2`
-/

namespace A380239.P18126619779588004838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380237 (n + 1) + A380238 (n + 1) : ℚ) / 2

end

end A380239.P18126619779588004838

/-! ## A380239.P4341827192242708072

`A277741(∑[n+2])`
-/

namespace A380239.P4341827192242708072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380239.P4341827192242708072

/-! ## A380239.P4120348993502684824

`A380616(∑[n+1]+n)`
-/

namespace A380239.P4120348993502684824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380616 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A380239.P4120348993502684824

/-! ## A380239.P12298217170187778672

`record[A010054(n)*A277741(n+2)]`
-/

namespace A380239.P12298217170187778672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A277741 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380239.P12298217170187778672

/-! ## A380239.P1215544433659024888

`record[A277741(n+2)/A007318(n)]`
-/

namespace A380239.P1215544433659024888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277741 (n + 2) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A380239.P1215544433659024888

/-!
# A380242: Number of rooted 6-regular planar maps with n vertices.

The programs for A380242, the canonical program `A380242.P6520623249172853521` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380242 has offset 0).

The definition of A380242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380242.P6520623249172853521

`2*10^n*(3*n)!/(n!*(2*n+2)!)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A380242

/-- `2*10^n*(3*n)!/(n!*(2*n+2)!)` -/
def P6520623249172853521.Spec : Prop :=
  ∀ n, P6520623249172853521.a n = (A380242 n : ℚ)

end A380242

/-! ## A380242.P17416912516628256302

`5^n*A000309(n)`
-/

namespace A380242.P17416912516628256302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000309 n

end

end A380242.P17416912516628256302

namespace A380242

/-- `5^n*A000309(n)` -/
def P17416912516628256302.Spec : Prop :=
  ∀ n, P17416912516628256302.a n = A380242 n

end A380242

/-! ## A380242.P14560170534979861965

`A001764(n)/(n+1)*10^n`
-/

namespace A380242.P14560170534979861965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n : ℚ) / (n + 1 : ℚ) * (10 ^ n : ℚ)

end

end A380242.P14560170534979861965

namespace A380242

/-- `A001764(n)/(n+1)*10^n` -/
def P14560170534979861965.Spec : Prop :=
  ∀ n, P14560170534979861965.a n = (A380242 n : ℚ)

end A380242

/-! ## A380242.P10305879762317199806

`A000309(n)*A000351(n)`
-/

namespace A380242.P10305879762317199806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000309 n * A000351 n

end

end A380242.P10305879762317199806

namespace A380242

/-- `A000309(n)*A000351(n)` -/
def P10305879762317199806.Spec : Prop :=
  ∀ n, P10305879762317199806.a n = A380242 n

end A380242

/-! ## A380242.P6972790097003766008

`A001764(n)*A011557(n)/(n+1)`
-/

namespace A380242.P6972790097003766008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n * A011557 n : ℚ) / (n + 1 : ℚ)

end

end A380242.P6972790097003766008

namespace A380242

/-- `A001764(n)*A011557(n)/(n+1)` -/
def P6972790097003766008.Spec : Prop :=
  ∀ n, P6972790097003766008.a n = (A380242 n : ℚ)

end A380242

/-!
# A380243: Number of rooted 2n-regular planar maps with 3 vertices.

The programs for A380243, the canonical program `A380243.P1182176127585751644` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380243 has offset 1).

The definition of A380243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380243.P1182176127585751644

`(n+1)*C(2*(n+1)-1, n+1)^3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A380243

/-- `(n+1)*C(2*(n+1)-1, n+1)^3` -/
def P1182176127585751644.Spec : Prop :=
  ∀ n, (P1182176127585751644.a n : ℤ) = A380243 (n + 1)

theorem P1182176127585751644.correct : P1182176127585751644.Spec := by
  intro n
  simp only [A380243, Nat.add_sub_cancel]

end A380243

/-! ## A380243.P12384793868374220921

`(n+1)*A001700(n)^3`
-/

namespace A380243.P12384793868374220921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001700 n ^ 3

end

end A380243.P12384793868374220921

namespace A380243

/-- `(n+1)*A001700(n)^3` -/
def P12384793868374220921.Spec : Prop :=
  ∀ n, P12384793868374220921.a n = A380243 (n + 1)

end A380243

/-! ## A380243.P3110267060051609830

`(n+1)*A088218(n+1)^3`
-/

namespace A380243.P3110267060051609830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A088218 (n + 1) ^ 3

end

end A380243.P3110267060051609830

namespace A380243

/-- `(n+1)*A088218(n+1)^3` -/
def P3110267060051609830.Spec : Prop :=
  ∀ n, P3110267060051609830.a n = A380243 (n + 1)

end A380243

/-! ## A380243.P6423465019696795250

`A001700(n)²*A002457(n)`
-/

namespace A380243.P6423465019696795250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n ^ 2 * A002457 n

end

end A380243.P6423465019696795250

namespace A380243

/-- `A001700(n)²*A002457(n)` -/
def P6423465019696795250.Spec : Prop :=
  ∀ n, P6423465019696795250.a n = A380243 (n + 1)

end A380243

/-! ## A380243.P8082277508451495041

`A056040(2*n+1)*A060150(n+1)`
-/

namespace A380243.P8082277508451495041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n + 1) * A060150 (n + 1)

end

end A380243.P8082277508451495041

namespace A380243

/-- `A056040(2*n+1)*A060150(n+1)` -/
def P8082277508451495041.Spec : Prop :=
  ∀ n, P8082277508451495041.a n = A380243 (n + 1)

end A380243

/-! ## A380243.P18351218640934492360

`A018224(2*n+1)*A056040(2*n+1)`
-/

namespace A380243.P18351218640934492360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018224 (2 * n + 1) * A056040 (2 * n + 1)

end

end A380243.P18351218640934492360

namespace A380243

/-- `A018224(2*n+1)*A056040(2*n+1)` -/
def P18351218640934492360.Spec : Prop :=
  ∀ n, P18351218640934492360.a n = A380243 (n + 1)

end A380243

/-! ## A380243.P1874378758601432288

`A001405(2*n+1)²*A056040(2*n+1)`
-/

namespace A380243.P1874378758601432288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) ^ 2 * A056040 (2 * n + 1)

end

end A380243.P1874378758601432288

namespace A380243

/-- `A001405(2*n+1)²*A056040(2*n+1)` -/
def P1874378758601432288.Spec : Prop :=
  ∀ n, P1874378758601432288.a n = A380243 (n + 1)

end A380243

/-! ## A380243.P15366835172909566624

`A037952(2*n+1)²*A056040(2*n+1)`
-/

namespace A380243.P15366835172909566624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n + 1) ^ 2 * A056040 (2 * n + 1)

end

end A380243.P15366835172909566624

namespace A380243

/-- `A037952(2*n+1)²*A056040(2*n+1)` -/
def P15366835172909566624.Spec : Prop :=
  ∀ n, P15366835172909566624.a n = A380243 (n + 1)

end A380243

/-! ## A380243.P8550792271331839308

`A001405(2*n+1)²*A100071(2*n+1)`
-/

namespace A380243.P8550792271331839308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) ^ 2 * A100071 (2 * n + 1)

end

end A380243.P8550792271331839308

namespace A380243

/-- `A001405(2*n+1)²*A100071(2*n+1)` -/
def P8550792271331839308.Spec : Prop :=
  ∀ n, P8550792271331839308.a n = A380243 (n + 1)

end A380243

/-! ## A380243.P15507491975442560011

`A057977(2*n+1)²*A056040(2*n+1)`
-/

namespace A380243.P15507491975442560011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n + 1) ^ 2 * A056040 (2 * n + 1)

end

end A380243.P15507491975442560011

namespace A380243

/-- `A057977(2*n+1)²*A056040(2*n+1)` -/
def P15507491975442560011.Spec : Prop :=
  ∀ n, P15507491975442560011.a n = A380243 (n + 1)

end A380243

/-!
# A380244: The Collatz (or 3x+1) trajectory starting at a(n) contains exactly n odd integers and a(n) is the n-th number with this property.

The programs for A380244, there is no canonical definition to state claims against.
-/

/-! ## A380244.P8710842527497247687

`A354236((n+1)²+n²)`
-/

namespace A380244.P8710842527497247687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 ((n + 1) ^ 2 + n ^ 2)

end

end A380244.P8710842527497247687

/-! ## A380244.P6016324347660375797

`A354236(A001844(n))+A000007(n+4)`
-/

namespace A380244.P6016324347660375797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A001844 n).toNat + A000007 (n + 4)

end

end A380244.P6016324347660375797

/-! ## A380244.P14905139691603424108

`A354236(A001844(n))%A089981(n+1)`
-/

namespace A380244.P14905139691603424108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354236 (A001844 n).toNat) (A089981 (n + 1))

end

end A380244.P14905139691603424108

/-! ## A380244.P10642129918578913366

`A354236(A001844(n))+A005843(n)%2`
-/

namespace A380244.P10642129918578913366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A001844 n).toNat + Int.tmod (A005843 n) 2

end

end A380244.P10642129918578913366

/-! ## A380244.P17968855951414962866

`A354236(A001844(n))+floor(A000120(n)/10)`
-/

namespace A380244.P17968855951414962866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A001844 n).toNat + ⌊(A000120 n : ℚ) / 10⌋

end

end A380244.P17968855951414962866

/-! ## A380244.P16420439554831721798

`A354236(A001844(n))+floor(A226056(n)/10)`
-/

namespace A380244.P16420439554831721798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A001844 n).toNat + ⌊(A226056 n : ℚ) / 10⌋

end

end A380244.P16420439554831721798

/-! ## A380244.P8894097726967874485

`A354236(A001844(n))+A001473(n+4)%2`
-/

namespace A380244.P8894097726967874485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A001844 n).toNat + Int.tmod (A001473 (n + 4)) 2

end

end A380244.P8894097726967874485

/-! ## A380244.P3110139048870120930

`A354236(A001844(n))+A024023(n+4)%2`
-/

namespace A380244.P3110139048870120930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A001844 n).toNat + Int.tmod (A024023 (n + 4)) 2

end

end A380244.P3110139048870120930

/-! ## A380244.P14366531350316627492

`A354236(A001844(n))+A101705(n+4)%2`
-/

namespace A380244.P14366531350316627492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A001844 n).toNat + Int.tmod (A101705 (n + 4)) 2

end

end A380244.P14366531350316627492

/-! ## A380244.P17762715342379929855

`A354236(A001844(n))+A230197(A000120(n+4))`
-/

namespace A380244.P17762715342379929855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A001844 n).toNat + A230197 (A000120 (n + 4)).toNat

end

end A380244.P17762715342379929855

/-!
# A380245: a(n) = A378684(A379343(n)).

The programs for A380245, the canonical program `A380245.P13671026361183525430` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380245 has offset 1).

The definition of A380245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378684, A379343, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A380245.P13671026361183525430

`A378684(A379343(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A380245

/-- `A378684(A379343(n+1))` -/
def P13671026361183525430.Spec : Prop :=
  ∀ n, P13671026361183525430.a n = A380245 (n + 1)

theorem P13671026361183525430.correct : P13671026361183525430.Spec := by
  intro n
  simp only [A380245, Nat.add_sub_cancel]

end A380245

/-! ## A380245.P15055438732005020693

`A185180(A199855(n+1))`
-/

namespace A380245.P15055438732005020693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (A199855 (n + 1)).toNat

end

end A380245.P15055438732005020693

namespace A380245

/-- `A185180(A199855(n+1))` -/
def P15055438732005020693.Spec : Prop :=
  ∀ n, P15055438732005020693.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P17387752120945283937

`A056023(A378200(n+1))`
-/

namespace A380245.P17387752120945283937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A378200 (n + 1)).toNat

end

end A380245.P17387752120945283937

namespace A380245

/-- `A056023(A378200(n+1))` -/
def P17387752120945283937.Spec : Prop :=
  ∀ n, P17387752120945283937.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P17331066073423652217

`A379342(A376214(n+1))`
-/

namespace A380245.P17331066073423652217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A376214 (n + 1)).toNat

end

end A380245.P17331066073423652217

namespace A380245

/-- `A379342(A376214(n+1))` -/
def P17331066073423652217.Spec : Prop :=
  ∀ n, P17331066073423652217.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P5465137176566459521

`A376214(A380815(n+1))`
-/

namespace A380245.P5465137176566459521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A380815 (n + 1)).toNat

end

end A380245.P5465137176566459521

namespace A380245

/-- `A376214(A380815(n+1))` -/
def P5465137176566459521.Spec : Prop :=
  ∀ n, P5465137176566459521.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P17282703120734348833

`A380817(A379342(n+1))`
-/

namespace A380245.P17282703120734348833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A379342 (n + 1)).toNat

end

end A380245.P17282703120734348833

namespace A380245

/-- `A380817(A379342(n+1))` -/
def P17282703120734348833.Spec : Prop :=
  ∀ n, P17282703120734348833.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P15636031203315702421

`A381663(A378684(n+1))`
-/

namespace A380245.P15636031203315702421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381663 (A378684 (n + 1)).toNat

end

end A380245.P15636031203315702421

namespace A380245

/-- `A381663(A378684(n+1))` -/
def P15636031203315702421.Spec : Prop :=
  ∀ n, P15636031203315702421.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P5252647050693299958

`A379343(A381663(n+1))`
-/

namespace A380245.P5252647050693299958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381663 (n + 1)).toNat

end

end A380245.P5252647050693299958

namespace A380245

/-- `A379343(A381663(n+1))` -/
def P5252647050693299958.Spec : Prop :=
  ∀ n, P5252647050693299958.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P3747299003294116384

`A380200(A380817(n+1))`
-/

namespace A380245.P3747299003294116384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A380817 (n + 1)).toNat

end

end A380245.P3747299003294116384

namespace A380245

/-- `A380200(A380817(n+1))` -/
def P3747299003294116384.Spec : Prop :=
  ∀ n, P3747299003294116384.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P18187370995281118191

`A381662(A380200(n+1))`
-/

namespace A380245.P18187370995281118191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A380200 (n + 1)).toNat

end

end A380245.P18187370995281118191

namespace A380245

/-- `A381662(A380200(n+1))` -/
def P18187370995281118191.Spec : Prop :=
  ∀ n, P18187370995281118191.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P1134256961085035067

`A378200(A383723(n+1))`
-/

namespace A380245.P1134256961085035067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A383723 (n + 1)).toNat

end

end A380245.P1134256961085035067

namespace A380245

/-- `A378200(A383723(n+1))` -/
def P1134256961085035067.Spec : Prop :=
  ∀ n, P1134256961085035067.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P1696894406397765364

`A380815(A381662(n+1))`
-/

namespace A380245.P1696894406397765364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A381662 (n + 1)).toNat

end

end A380245.P1696894406397765364

namespace A380245

/-- `A380815(A381662(n+1))` -/
def P1696894406397765364.Spec : Prop :=
  ∀ n, P1696894406397765364.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P15207629838650108536

`A381664(A381664(n+1))`
-/

namespace A380245.P15207629838650108536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381664 (A381664 (n + 1)).toNat

end

end A380245.P15207629838650108536

namespace A380245

/-- `A381664(A381664(n+1))` -/
def P15207629838650108536.Spec : Prop :=
  ∀ n, P15207629838650108536.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P9476609652482997650

`A056023(A380815(A056023(n+1)))`
-/

namespace A380245.P9476609652482997650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A380815 (A056023 (n + 1)).toNat).toNat

end

end A380245.P9476609652482997650

namespace A380245

/-- `A056023(A380815(A056023(n+1)))` -/
def P9476609652482997650.Spec : Prop :=
  ∀ n, P9476609652482997650.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P654314630790294566

`A378200(A376214(A378762(n+1)))`
-/

namespace A380245.P654314630790294566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A376214 (A378762 (n + 1)).toNat).toNat

end

end A380245.P654314630790294566

namespace A380245

/-- `A378200(A376214(A378762(n+1)))` -/
def P654314630790294566.Spec : Prop :=
  ∀ n, P654314630790294566.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P9950087068810451898

`A380817(A378705(A378705(n+1)))`
-/

namespace A380245.P9950087068810451898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A378705 (A378705 (n + 1)).toNat).toNat

end

end A380245.P9950087068810451898

namespace A380245

/-- `A380817(A378705(A378705(n+1)))` -/
def P9950087068810451898.Spec : Prop :=
  ∀ n, P9950087068810451898.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P17090436325807769570

`A379343(A378705(A383589(n+1)))`
-/

namespace A380245.P17090436325807769570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A378705 (A383589 (n + 1)).toNat).toNat

end

end A380245.P17090436325807769570

namespace A380245

/-- `A379343(A378705(A383589(n+1)))` -/
def P17090436325807769570.Spec : Prop :=
  ∀ n, P17090436325807769570.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P7596241047238061089

`A381968(A378684(A381968(n+1)))`
-/

namespace A380245.P7596241047238061089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378684 (A381968 (n + 1)).toNat).toNat

end

end A380245.P7596241047238061089

namespace A380245

/-- `A381968(A378684(A381968(n+1)))` -/
def P7596241047238061089.Spec : Prop :=
  ∀ n, P7596241047238061089.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P14884353129006314310

`A382680(A378684(A382499(n+1)))`
-/

namespace A380245.P14884353129006314310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378684 (A382499 (n + 1)).toNat).toNat

end

end A380245.P14884353129006314310

namespace A380245

/-- `A382680(A378684(A382499(n+1)))` -/
def P14884353129006314310.Spec : Prop :=
  ∀ n, P14884353129006314310.a n = A380245 (n + 1)

end A380245

/-! ## A380245.P12800600223979081793

`A378200(A381968(A383722(n+1)))`
-/

namespace A380245.P12800600223979081793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A381968 (A383722 (n + 1)).toNat).toNat

end

end A380245.P12800600223979081793

namespace A380245

/-- `A378200(A381968(A383722(n+1)))` -/
def P12800600223979081793.Spec : Prop :=
  ∀ n, P12800600223979081793.a n = A380245 (n + 1)

end A380245

/-!
# A380246: Elimination order of the first person in a variation of the Josephus problem, where the number of skipped people correspond to the number of letters in consecutive numbers, called SpellUnder-Down.

The programs for A380246, there is no canonical definition to state claims against.
-/

/-! ## A380246.P8417387883545190597

`A380201(∑[n]+1)`
-/

namespace A380246.P8417387883545190597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A380246.P8417387883545190597

/-! ## A380246.P16417194577487243319

`A380201(A000124(n))%13`
-/

namespace A380246.P16417194577487243319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380201 (A000124 n).toNat) 13

end

end A380246.P16417194577487243319

/-! ## A380246.P1624944919918760088

`A000027(A380201(n²-C(n, 2)+1))`
-/

namespace A380246.P1624944919918760088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A380201 ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) + 1).toNat).toNat

end

end A380246.P1624944919918760088

/-!
# A380249: a(n) = 4^n - binomial(n,2)*3^(n-2).

The programs for A380249, the canonical program `A380249.P3319547393693526859` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380249 has offset 0).

The definition of A380249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A380249.P3319547393693526859

`4^n-C(n, 2)*3^(n-2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A380249

/-- `4^n-C(n, 2)*3^(n-2)` -/
def P3319547393693526859.Spec : Prop :=
  ∀ n, P3319547393693526859.a n = (A380249 n : ℚ)

end A380249

/-! ## A380249.P8951733476338430714

`A380024(n)+3^n`
-/

namespace A380249.P8951733476338430714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380024 n + (3 ^ n : ℤ)

end

end A380249.P8951733476338430714

namespace A380249

/-- `A380024(n)+3^n` -/
def P8951733476338430714.Spec : Prop :=
  ∀ n, P8951733476338430714.a n = A380249 n

end A380249

/-! ## A380249.P14695000831216288883

`A074605(n)-A081909(n)`
-/

namespace A380249.P14695000831216288883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074605 n - A081909 n

end

end A380249.P14695000831216288883

namespace A380249

/-- `A074605(n)-A081909(n)` -/
def P14695000831216288883.Spec : Prop :=
  ∀ n, P14695000831216288883.a n = A380249 n

end A380249

/-! ## A380249.P16099902971696617692

`A384415(n)+A006234(n+3)`
-/

namespace A380249.P16099902971696617692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384415 n + A006234 (n + 3)

end

end A380249.P16099902971696617692

namespace A380249

/-- `A384415(n)+A006234(n+3)` -/
def P16099902971696617692.Spec : Prop :=
  ∀ n, P16099902971696617692.a n = A380249 n

end A380249

/-! ## A380249.P2548017651145818533

`A006234(n+3)+A086443(n)+A380024(n)-A005061(n)`
-/

namespace A380249.P2548017651145818533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3) + (A086443 n + (A380024 n - A005061 n))

end

end A380249.P2548017651145818533

namespace A380249

/-- `A006234(n+3)+A086443(n)+A380024(n)-A005061(n)` -/
def P2548017651145818533.Spec : Prop :=
  ∀ n, P2548017651145818533.a n = A380249 n

end A380249

/-!
# A380250: a(n) is the maximum value of A377091(k) with k in 0..n.

The programs for A380250, there is no canonical definition to state claims against.
-/

/-! ## A380250.P2639872009436623137

`A379074(∑[char[A379075(n+1)]])`
-/

namespace A380250.P2639872009436623137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379075 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379074 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380250.P2639872009436623137

/-!
# A380251: a(n) is the minimum value, negated, of A377091(k) with k in 0..n.

The programs for A380251, there is no canonical definition to state claims against.
-/

/-! ## A380251.P8450190399961674711

`A379076(∑[char[A379077(n+1)]])`
-/

namespace A380251.P8450190399961674711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379077 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379076 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A380251.P8450190399961674711

/-!
# A380254: Number of powerful numbers (in A001694) that do not exceed primorial A002110(n).

The programs for A380254, there is no canonical definition to state claims against.
-/

/-! ## A380254.P5921329208133130005

`A008616(A150007(n+1))`
-/

namespace A380254.P5921329208133130005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A150007 (n + 1)).toNat

end

end A380254.P5921329208133130005

/-! ## A380254.P5562985434857736771

`A024417(A003000(n)*A148193(n))`
-/

namespace A380254.P5562985434857736771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A003000 n * A148193 n).toNat

end

end A380254.P5562985434857736771

/-! ## A380254.P8696912771120330154

`or(A143227(A279563(n)), A279563(n))`
-/

namespace A380254.P8696912771120330154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A143227 (A279563 n).toNat) (A279563 n)

end

end A380254.P8696912771120330154

/-!
# A380256: Number of rooted binary normal unlabeled galled trees with n leaves and exactly 1 gall.

The programs for A380256, there is no canonical definition to state claims against.
-/

/-! ## A380256.P8120552337413437201

`A014419(A133405(n))`
-/

namespace A380256.P8120552337413437201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 (A133405 n).toNat

end

end A380256.P8120552337413437201

/-! ## A380256.P9604048808815246946

`A165927(A001998(n))`
-/

namespace A380256.P9604048808815246946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165927 (A001998 n).toNat

end

end A380256.P9604048808815246946

/-! ## A380256.P8656250854947826843

`A321994(n+1)-A002379(n)`
-/

namespace A380256.P8656250854947826843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 1) - A002379 n

end

end A380256.P8656250854947826843

/-! ## A380256.P17190412706218135980

`A321994(n+1)-A052284(n+2)`
-/

namespace A380256.P17190412706218135980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 1) - A052284 (n + 2)

end

end A380256.P17190412706218135980

/-!
# A380257: Expansion of e.g.f. exp( (1/(1-3*x)^(2/3) - 1)/2 ).

The programs for A380257, there is no canonical definition to state claims against.
-/

/-! ## A380257.P9929491122997913199

`A005229(n^ceil(sqrt(∑[2*n])))`
-/

namespace A380257.P9929491122997913199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ : ℤ))).toNat

end

end A380257.P9929491122997913199

/-!
# A380258: Expansion of e.g.f. exp( (1/(1-5*x)^(2/5) - 1)/2 ).

The programs for A380258, there is no canonical definition to state claims against.
-/

/-! ## A380258.P16643885864628884952

`A122797(A122746(∑[n]))`
-/

namespace A380258.P16643885864628884952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (A122746 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A380258.P16643885864628884952

/-!
# A380259: Expansion of e.g.f. exp( (1/(1-2*x)^(3/2) - 1)/3 ).

The programs for A380259, there is no canonical definition to state claims against.
-/

/-! ## A380259.P14818894052199393844

`A357620(A006966(n))+A000405(n)`
-/

namespace A380259.P14818894052199393844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357620 (A006966 n).toNat + A000405 n

end

end A380259.P14818894052199393844

/-! ## A380259.P8581177886208045304

`or(A000405(n), A322337(A309267(n)))`
-/

namespace A380259.P8581177886208045304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000405 n) (A322337 (A309267 n).toNat)

end

end A380259.P8581177886208045304

/-!
# A380260: Expansion of e.g.f. exp( ((1+2*x)^(3/2) - 1)/3 ).

The programs for A380260, there is no canonical definition to state claims against.
-/

/-! ## A380260.P2944341103471513258

`A128870(A108694(n))`
-/

namespace A380260.P2944341103471513258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128870 (A108694 n).toNat

end

end A380260.P2944341103471513258

/-! ## A380260.P15440832693192792751

`∑{d}[A219229(n), A318393(#)]`
-/

namespace A380260.P15440832693192792751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A318393 d

end

end A380260.P15440832693192792751

/-! ## A380260.P14584127761484304041

`A208482(A000088(n))+A034887(n)`
-/

namespace A380260.P14584127761484304041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208482 (A000088 n).toNat + A034887 n

end

end A380260.P14584127761484304041

/-!
# A380262: Expansion of e.g.f. exp( ((1+5*x)^(2/5) - 1)/2 ).

The programs for A380262, there is no canonical definition to state claims against.
-/

/-! ## A380262.P2212953149372527075

`A362028(A028310(n)^(n+1))`
-/

namespace A380262.P2212953149372527075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362028 (A028310 n ^ (n + 1)).toNat

end

end A380262.P2212953149372527075

/-!
# A380263: a(n) is the minimum number of elements to add to the set {A377091(k), k = 0..n} in order to obtain an integer interval.

The programs for A380263, there is no canonical definition to state claims against.
-/

/-! ## A380263.P3359028412511016145

`A380250(n)+A380251(n)-n`
-/

namespace A380263.P3359028412511016145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380250 n + A380251 n - (n : ℤ)

end

end A380263.P3359028412511016145

/-! ## A380263.P10585787771508388321

`and(A112056(n+1), A378385(n))`
-/

namespace A380263.P10585787771508388321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112056 (n + 1)) (A378385 n)

end

end A380263.P10585787771508388321

/-! ## A380263.P3422692851478157504

`and(A182474(n+1), A378385(n))`
-/

namespace A380263.P3422692851478157504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182474 (n + 1)) (A378385 n)

end

end A380263.P3422692851478157504

/-! ## A380263.P17116909657379577040

`and(A378385(n), A387415(n+1))`
-/

namespace A380263.P17116909657379577040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A378385 n) (A387415 (n + 1))

end

end A380263.P17116909657379577040

/-! ## A380263.P7998764071402444147

`and(A378385(n), A387418(n+1))`
-/

namespace A380263.P7998764071402444147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A378385 n) (A387418 (n + 1))

end

end A380263.P7998764071402444147

/-!
# A380267: a(n) is the denominator of the mean value of A051904(k) at the range k = 1..n.

The programs for A380267, there is no canonical definition to state claims against.
-/

/-! ## A380267.P10616632157638498477

`gcd(n+1, A070108(A125244(n+3)))`
-/

namespace A380267.P10616632157638498477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A070108 (A125244 (n + 3)).toNat)

end

end A380267.P10616632157638498477

/-!
# A380268: a(n) is the number of positive values minus the number of negative values in the set {A377091(k), k = 0..n}.

The programs for A380268, there is no canonical definition to state claims against.
-/

/-! ## A380268.P7188467001862668282

`A398502(n)-A398503(n)`
-/

namespace A380268.P7188467001862668282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398502 n - A398503 n

end

end A380268.P7188467001862668282

/-!
# A380271: Denominators of coefficients in expansion of exp(-1 + 1 / Product_{k>=1} (1 - x^k)).

The programs for A380271, there is no canonical definition to state claims against.
-/

/-! ## A380271.P14749798191591986187

`A000142(n)/A069293(A218356(n+1))`
-/

namespace A380271.P14749798191591986187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A069293 (A218356 (n + 1)).toNat : ℚ)

end

end A380271.P14749798191591986187

/-! ## A380271.P1865310141663096672

`A000142(n)/A290569(A244137(n))`
-/

namespace A380271.P1865310141663096672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A290569 (A244137 n).toNat : ℚ)

end

end A380271.P1865310141663096672

/-! ## A380271.P6824071358786565250

`A000142(n)/A060904(A380459(n+5))`
-/

namespace A380271.P6824071358786565250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A060904 (A380459 (n + 5)).toNat : ℚ)

end

end A380271.P6824071358786565250

/-! ## A380271.P3354703259860049234

`A000142(n)/A250120(A096577(2*(n+1)))`
-/

namespace A380271.P3354703259860049234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A250120 (A096577 (2 * (n + 1))).toNat : ℚ)

end

end A380271.P3354703259860049234

/-! ## A380271.P12188699998452109351

`A000142(n)/A060904(A371795(3*n+2))`
-/

namespace A380271.P12188699998452109351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A060904 (A371795 (3 * n + 2)).toNat : ℚ)

end

end A380271.P12188699998452109351

/-!
# A380273: Irregular table T(n, k), n >= 0, k = 1..A380272(n), read by rows; the n-th row lists the integers m in 0..n such that the nonadjacent forms for m-n and m can be added without carries.

The programs for A380273, there is no canonical definition to state claims against.
-/

/-! ## A380273.P3783845834011290496

`A363930(n)+A000007(A157726(n))`
-/

namespace A380273.P3783845834011290496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363930 n + A000007 (A157726 n).toNat

end

end A380273.P3783845834011290496

/-! ## A380273.P15436707213809251988

`A105586(abs(A236191(n)))*A363930(n)`
-/

namespace A380273.P15436707213809251988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105586 |A236191 n|.toNat * A363930 n

end

end A380273.P15436707213809251988

/-! ## A380273.P16699147610812202091

`A266314(A048247(n)²)*A363930(n)`
-/

namespace A380273.P16699147610812202091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266314 (A048247 n ^ 2).toNat * A363930 n

end

end A380273.P16699147610812202091

/-! ## A380273.P7364514785157538568

`A105586(A103609(2*n))*A363930(n)`
-/

namespace A380273.P7364514785157538568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105586 (A103609 (2 * n)).toNat * A363930 n

end

end A380273.P7364514785157538568

/-! ## A380273.P15299802620916243261

`A105586(A157726(n)-3)*A363930(n)`
-/

namespace A380273.P15299802620916243261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105586 (A157726 n - 3).toNat * A363930 n

end

end A380273.P15299802620916243261

/-!
# A380274: Sum of cubes of coefficients of q in the q-factorials.

The programs for A380274, there is no canonical definition to state claims against.
-/

/-! ## A380274.P5186784867292871362

`∏[A099521(n!)]`
-/

namespace A380274.P5186784867292871362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099521 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A380274.P5186784867292871362

/-!
# A380275: Sum of the fourth powers of the coefficients of q in the q-factorials.

The programs for A380275, there is no canonical definition to state claims against.
-/

/-! ## A380275.P3706727917050260769

`A246392(A000178(n))-A057992(n)`
-/

namespace A380275.P3706727917050260769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246392 (A000178 n).toNat - A057992 n

end

end A380275.P3706727917050260769

/-!
# A380279: Numbers k such that A377091(k) corresponds to a tie.

The programs for A380279, there is no canonical definition to state claims against.
-/

/-! ## A380279.P5379866022426427043

`A379059(A380280(n+1))`
-/

namespace A380279.P5379866022426427043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A380280 (n + 1)).toNat

end

end A380279.P5379866022426427043

/-! ## A380279.P5203939188432328339

`A360164(A173033(n))+A002943(n)`
-/

namespace A380279.P5203939188432328339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360164 (A173033 n).toNat + A002943 n

end

end A380279.P5203939188432328339

/-! ## A380279.P7907651328051377518

`A123023(A147001(n+1))+A054569(n+1)`
-/

namespace A380279.P7907651328051377518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123023 (A147001 (n + 1)).toNat + A054569 (n + 1)

end

end A380279.P7907651328051377518

/-! ## A380279.P15368574195803768896

`A353353(A000129(n+2))+A054569(n+1)`
-/

namespace A380279.P15368574195803768896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 (A000129 (n + 2)).toNat + A054569 (n + 1)

end

end A380279.P15368574195803768896

/-! ## A380279.P14682749138185932662

`A371766(A098825(2*n+1))+A002943(n)`
-/

namespace A380279.P14682749138185932662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371766 (A098825 (2 * n + 1)).toNat + A002943 n

end

end A380279.P14682749138185932662

/-!
# A380280: Values corresponding to ties in A377091, in order of appearance.

The programs for A380280, there is no canonical definition to state claims against.
-/

/-! ## A380280.P10717844311659406728

`A377091(A380279(n+1))`
-/

namespace A380280.P10717844311659406728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A380279 (n + 1)).toNat

end

end A380280.P10717844311659406728

/-! ## A380280.P2098109787063415687

`A379070(A380279(2*n+1-n))`
-/

namespace A380280.P2098109787063415687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A380279 (2 * n + 1 - n)).toNat

end

end A380280.P2098109787063415687

/-!
# A380281: Triangle T(n, k) read by rows: T(n, k) = 2^n*binomial(2*n + 1, 2*k + 1) * Pochhammer(1/2, n - k) * Pochhammer(1/2, k).

The programs for A380281, the canonical program `A380281.P6966654181893979849` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A380281 has offset 0).

The definition of A380281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A380281.P6966654181893979849

`A103327(n)*A173424(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A380281

/-- `A103327(n)*A173424(n)` -/
def P6966654181893979849.Spec : Prop :=
  ∀ n, P6966654181893979849.a n = A380281 n

theorem P6966654181893979849.correct : P6966654181893979849.Spec := by
  intro n
  simp only [A380281]

end A380281

/-! ## A380281.P10593474906465654698

`A344678(A212782(n+1))`
-/

namespace A380281.P10593474906465654698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344678 (A212782 (n + 1)).toNat

end

end A380281.P10593474906465654698

namespace A380281

/-- `A344678(A212782(n+1))` -/
def P10593474906465654698.Spec : Prop :=
  ∀ n, P10593474906465654698.a n = A380281 n

end A380281

/-! ## A380281.P2849122078247464308

`lcm(A130757(n), A228525(A216508(n)))`
-/

namespace A380281.P2849122078247464308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130757 n) (A228525 (A216508 n).toNat)

end

end A380281.P2849122078247464308

namespace A380281

/-- `lcm(A130757(n), A228525(A216508(n)))` -/
def P2849122078247464308.Spec : Prop :=
  ∀ n, (P2849122078247464308.a n : ℤ) = A380281 n

end A380281

/-!
# A380282: Irregular triangle read by rows: T(n,k) is the number of free polyominoes with n cells having k regions between the polyominoes and their bounding boxes, n >= 1, k >= 0.

The programs for A380282, there is no canonical definition to state claims against.
-/

/-! ## A380282.P128155603874485898

`A227739(A332834(n)+A058318(2*n+3))`
-/

namespace A380282.P128155603874485898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227739 (A332834 n + A058318 (2 * n + 3)).toNat

end

end A380282.P128155603874485898

/-!
# A380285: Total number of regions between the free polyominoes with n cells and their bounding boxes.

The programs for A380285, there is no canonical definition to state claims against.
-/

/-! ## A380285.P4934842695336725706

`A247589(A036256(n))`
-/

namespace A380285.P4934842695336725706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247589 (A036256 n).toNat

end

end A380285.P4934842695336725706

/-! ## A380285.P8597402121990409658

`A247589(A093629(n))`
-/

namespace A380285.P8597402121990409658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247589 (A093629 n).toNat

end

end A380285.P8597402121990409658

/-! ## A380285.P15257963702256054073

`A247589(A174566(n))`
-/

namespace A380285.P15257963702256054073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247589 (A174566 n).toNat

end

end A380285.P15257963702256054073

/-!
# A380286: Number of distinct values of the number of regions between the free polyominoes with n cells and their bounding boxes.

The programs for A380286, there is no canonical definition to state claims against.
-/

/-! ## A380286.P358775089074186583

`A300402(n)+A004524(n)`
-/

namespace A380286.P358775089074186583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300402 n + A004524 n

end

end A380286.P358775089074186583

/-!
# A380287: Sum of the perimeters of the free polyominoes with n cells.

The programs for A380287, there is no canonical definition to state claims against.
-/

/-! ## A380287.P11924288713635074118

`2*A380575(n+1)`
-/

namespace A380287.P11924288713635074118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A380575 (n + 1)

end

end A380287.P11924288713635074118

/-! ## A380287.P15304828448424802118

`A380575(A000027(n+1))+A380575(n+1)`
-/

namespace A380287.P15304828448424802118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380575 (A000027 (n + 1)).toNat + A380575 (n + 1)

end

end A380287.P15304828448424802118

/-! ## A380287.P4947398827573987396

`A380575(A004441(n+1))+A380575(n+1)`
-/

namespace A380287.P4947398827573987396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380575 (A004441 (n + 1)).toNat + A380575 (n + 1)

end

end A380287.P4947398827573987396

/-! ## A380287.P17971219884620189568

`A380575(A067080(n+1))+A380575(n+1)`
-/

namespace A380287.P17971219884620189568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380575 (A067080 (n + 1)).toNat + A380575 (n + 1)

end

end A380287.P17971219884620189568

/-! ## A380287.P8919475376642652100

`A380575(A130446(n+1))+A380575(n+1)`
-/

namespace A380287.P8919475376642652100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380575 (A130446 (n + 1)).toNat + A380575 (n + 1)

end

end A380287.P8919475376642652100

/-!
# A380288: a(n) is the number of divisors d of n such that 2^d - 1 is not prime.

The programs for A380288, there is no canonical definition to state claims against.
-/

/-! ## A380288.P9721759158945038093

`A000005(n+1)-A379590(n+1)`
-/

namespace A380288.P9721759158945038093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A379590 (n + 1)

end

end A380288.P9721759158945038093

/-! ## A380288.P3629226489002417089

`A179941(n+1)-A379590(n+1)`
-/

namespace A380288.P3629226489002417089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1) - A379590 (n + 1)

end

end A380288.P3629226489002417089

/-! ## A380288.P13152431731402382969

`A076142(A324922(n+1))+A033273(n+1)`
-/

namespace A380288.P13152431731402382969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076142 (A324922 (n + 1)).toNat + A033273 (n + 1)

end

end A380288.P13152431731402382969

/-! ## A380288.P17584750197315519879

`A000005(n+1)-(A001221(n+1)-A076142(A324922(n+1)))`
-/

namespace A380288.P17584750197315519879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A001221 (n + 1) - A076142 (A324922 (n + 1)).toNat)

end

end A380288.P17584750197315519879

/-!
# A380289: Unitary Double Zumkeller numbers: numbers whose set of unitary divisors can be partitioned into two disjoint sets with equal sums and equal cardinalities.

The programs for A380289, there is no canonical definition to state claims against.
-/

/-! ## A380289.P6067388994785000096

`∩[A034683(n+1), A394569(n+1)]`
-/

namespace A380289.P6067388994785000096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380289.P6067388994785000096

/-!
# A380290: a(n) = [x^n] G(x)^n, where G(x) = Product_{k >= 1} 1/(1 - x^k)^(k^2) is the g.f. of A023871.

The programs for A380290, there is no canonical definition to state claims against.
-/

/-! ## A380290.P3907614938588569554

`A129748(A025237(n))`
-/

namespace A380290.P3907614938588569554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129748 (A025237 n).toNat

end

end A380290.P3907614938588569554

/-!
# A380291: a(n) = [x^n] G(x)^n, where G(x) = Product_{k >= 1} (1 + x^k)^(k^2) is the g.f. of A027998.

The programs for A380291, there is no canonical definition to state claims against.
-/

/-! ## A380291.P8167747692700985518

`A060789(A060774(n))`
-/

namespace A380291.P8167747692700985518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A060774 n).toNat

end

end A380291.P8167747692700985518

/-!
# A380293: Triangle read by rows: T(n, k) (2 <= k <= n) is the smallest positive integer m >= k such that the digits of m expressed in base n are the same as the first digits in base k.

The programs for A380293, there is no canonical definition to state claims against.
-/

/-! ## A380293.P10129584912693636954

`A230498(2*a(n-1)-2)` with `a(0)=2, a(1)=9, a(2)=3, a(3)=4`
-/

namespace A380293.P10129584912693636954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 9, 3, 4] fun n a =>
  A230498 (2 * a (n - 1) - 2).toNat

end

end A380293.P10129584912693636954

/-!
# A380294: The Golomb-Rice encoding of n, with M = A070939(A070939(n)).

The programs for A380294, there is no canonical definition to state claims against.
-/

/-! ## A380294.P1387242138584924540

`∑[gcd(A000351(n), A323460(3*n+2))]`
-/

namespace A380294.P1387242138584924540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000351 n) (A323460 (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380294.P1387242138584924540

/-! ## A380294.P17936536194341800877

`∑[A000188(A077195(n+1))]`
-/

namespace A380294.P17936536194341800877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A077195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A380294.P17936536194341800877

/-!
# A380297: Denominators of the determinant of matrix (M(n) - H(n)), where H(n) is the n-th Hilbert matrix and M(n) is an n X n matrix with i,j-th entry i+j-1.

The programs for A380297, there is no canonical definition to state claims against.
-/

/-! ## A380297.P5113714324271863658

`lcm(A000312(n), A079210(A001044(n)))`
-/

namespace A380297.P5113714324271863658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000312 n) (A079210 (A001044 n).toNat)

end

end A380297.P5113714324271863658

