import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
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
import Seq.B006.C000
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
# A382302: Number of integer partitions of n with greatest part, greatest multiplicity, and number of distinct parts all equal.

The programs for A382302, there is no canonical definition to state claims against.
-/

/-! ## A382302.P17674482603764502144

`A358480(2*(n+1))+A327051(A062849(2*(n+2)))`
-/

namespace A382302.P17674482603764502144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358480 (2 * (n + 1)) + A327051 (A062849 (2 * (n + 2))).toNat

end

end A382302.P17674482603764502144

/-!
# A382303: Number of integer partitions of n with exactly as many ones as the next greatest multiplicity.

The programs for A382303, there is no canonical definition to state claims against.
-/

/-! ## A382303.P14279211910540133173

`A381544(n)-A382526(n)`
-/

namespace A382303.P14279211910540133173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381544 n - A382526 n

end

end A382303.P14279211910540133173

/-! ## A382303.P1231433270673163489

`Δ[A000041(n)-A381544(n)]`
-/

namespace A382303.P1231433270673163489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A381544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382303.P1231433270673163489

/-! ## A382303.P13771466136992426114

`A002865(n+1)+A381544(n)-A381544(n+1)`
-/

namespace A382303.P13771466136992426114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 1) + (A381544 n - A381544 (n + 1))

end

end A382303.P13771466136992426114

/-!
# A382304: MM-numbers of multiset partitions into sets with a common sum.

The programs for A382304, there is no canonical definition to state claims against.
-/

/-! ## A382304.P5341170399453180970

`∪[A302497(n+1), A244869(n)]`
-/

namespace A382304.P5341170399453180970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P5341170399453180970

/-! ## A382304.P6443245324442314861

`∪[A029555(n+1), A302497(n+1)]`
-/

namespace A382304.P6443245324442314861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P6443245324442314861

/-! ## A382304.P12342636873208631949

`∪[A044375(n+1), A302497(n+1)]`
-/

namespace A382304.P12342636873208631949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P12342636873208631949

/-! ## A382304.P16469777906354665076

`∪[A044756(n+1), A302497(n+1)]`
-/

namespace A382304.P16469777906354665076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P16469777906354665076

/-! ## A382304.P7402941807170100433

`∪[A074301(n+1), A302497(n+1)]`
-/

namespace A382304.P7402941807170100433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P7402941807170100433

/-! ## A382304.P3406905207763935348

`∪[A100164(n+1), A302497(n+1)]`
-/

namespace A382304.P3406905207763935348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P3406905207763935348

/-! ## A382304.P8351874285771806343

`∪[A108090(n+1), A302497(n+1)]`
-/

namespace A382304.P8351874285771806343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P8351874285771806343

/-! ## A382304.P1314558381617168114

`∪[A111185(n+1), A302497(n+1)]`
-/

namespace A382304.P1314558381617168114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111185 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P1314558381617168114

/-! ## A382304.P11695765101765676672

`∪[A156635(n+1), A302497(n+1)]`
-/

namespace A382304.P11695765101765676672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P11695765101765676672

/-! ## A382304.P4749174726315090328

`∪[A159054(n+1), A302497(n+1)]`
-/

namespace A382304.P4749174726315090328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382304.P4749174726315090328

/-!
# A382306: a(n) is the number of values m that satisfy floor(sqrt(m))=n and A382286(m)=1.

The programs for A382306, there is no canonical definition to state claims against.
-/

/-! ## A382306.P14029179922209674700

`A194959(lt[A344739(2*n+3), A057149(n+1)])`
-/

namespace A382306.P14029179922209674700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194959 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382306.P14029179922209674700

/-!
# A382308: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A382308, the canonical program `A382308.P5793244383514553140` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382308 has offset 0).

The definition of A382308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382308.P5793244383514553140

`2*(A000045(n)+1)²-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A382308

/-- `2*(A000045(n)+1)²-1` -/
def P5793244383514553140.Spec : Prop :=
  ∀ n, P5793244383514553140.a n = A382308 n

theorem P5793244383514553140.correct : P5793244383514553140.Spec := by
  intro n
  simp only [A382308]

end A382308

/-! ## A382308.P4572669073252583175

`2*(A212804(n+1)+1)²-1`
-/

namespace A382308.P4572669073252583175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212804 (n + 1) + 1) ^ 2 - 1

end

end A382308.P4572669073252583175

namespace A382308

/-- `2*(A212804(n+1)+1)²-1` -/
def P4572669073252583175.Spec : Prop :=
  ∀ n, P4572669073252583175.a n = A382308 n

end A382308

/-! ## A382308.P14596655250831288467

`A382609(n)+A000045(n)`
-/

namespace A382308.P14596655250831288467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382609 n + A000045 n

end

end A382308.P14596655250831288467

namespace A382308

/-- `A382609(n)+A000045(n)` -/
def P14596655250831288467.Spec : Prop :=
  ∀ n, P14596655250831288467.a n = A382308 n

end A382308

/-! ## A382308.P7916894990685035227

`A382608(n)+A001588(n)`
-/

namespace A382308.P7916894990685035227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382608 n + A001588 n

end

end A382308.P7916894990685035227

namespace A382308

/-- `A382608(n)+A001588(n)` -/
def P7916894990685035227.Spec : Prop :=
  ∀ n, P7916894990685035227.a n = A382308 n

end A382308

/-! ## A382308.P18050456456688708229

`A229912(n)+A187893(n)`
-/

namespace A382308.P18050456456688708229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n + A187893 n

end

end A382308.P18050456456688708229

namespace A382308

/-- `A229912(n)+A187893(n)` -/
def P18050456456688708229.Spec : Prop :=
  ∀ n, P18050456456688708229.a n = A382308 n

end A382308

/-! ## A382308.P10280486984511283646

`A392415(n+1)+A022087(n)`
-/

namespace A382308.P10280486984511283646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) + A022087 n

end

end A382308.P10280486984511283646

namespace A382308

/-- `A392415(n+1)+A022087(n)` -/
def P10280486984511283646.Spec : Prop :=
  ∀ n, P10280486984511283646.a n = A382308 n

end A382308

/-! ## A382308.P1665853014858468905

`A000045(n)+A382608(n)+A001611(n)`
-/

namespace A382308.P1665853014858468905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A382608 n + A001611 n)

end

end A382308.P1665853014858468905

namespace A382308

/-- `A000045(n)+A382608(n)+A001611(n)` -/
def P1665853014858468905.Spec : Prop :=
  ∀ n, P1665853014858468905.a n = A382308 n

end A382308

/-! ## A382308.P10427981703967192277

`A000045(n)+A001588(n)*A001611(n)`
-/

namespace A382308.P10427981703967192277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A001588 n * A001611 n

end

end A382308.P10427981703967192277

namespace A382308

/-- `A000045(n)+A001588(n)*A001611(n)` -/
def P10427981703967192277.Spec : Prop :=
  ∀ n, P10427981703967192277.a n = A382308 n

end A382308

/-! ## A382308.P12827890174870562188

`A382609(n)+A382610(n)/A382609(n)`
-/

namespace A382308.P12827890174870562188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382609 n : ℚ) + (A382610 n : ℚ) / (A382609 n : ℚ)

end

end A382308.P12827890174870562188

namespace A382308

/-- `A382609(n)+A382610(n)/A382609(n)` -/
def P12827890174870562188.Spec : Prop :=
  ∀ n, P12827890174870562188.a n = (A382308 n : ℚ)

end A382308

/-!
# A382309: Number of permutations of [2n] with exactly n ascents and an even number of inversions.

The programs for A382309, there is no canonical definition to state claims against.
-/

/-! ## A382309.P2210209547769022324

`A145882(n*(2*n-1)+1)`
-/

namespace A382309.P2210209547769022324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145882 ((n : ℤ) * ((2 * n : ℤ) - 1) + 1).toNat

end

end A382309.P2210209547769022324

/-! ## A382309.P2489740708341410351

`A128612(A058331(n))`
-/

namespace A382309.P2489740708341410351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128612 (A058331 n).toNat

end

end A382309.P2489740708341410351

/-! ## A382309.P15276158573029688814

`A128612(A084849(n)-n)`
-/

namespace A382309.P15276158573029688814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128612 (A084849 n - (n : ℤ)).toNat

end

end A382309.P15276158573029688814

/-!
# A382312: Irregular triangle read by rows: T(n,k) is the number of compositions of n with k records.

The programs for A382312, there is no canonical definition to state claims against.
-/

/-! ## A382312.P13036907687615011830

`A216448(A242027(n))`
-/

namespace A382312.P13036907687615011830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216448 (A242027 n).toNat

end

end A382312.P13036907687615011830

/-! ## A382312.P16178284913726437644

`A373953(A180047(n)+A000007(n))`
-/

namespace A382312.P16178284913726437644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A180047 n + A000007 n).toNat

end

end A382312.P16178284913726437644

/-! ## A382312.P10323362488139269549

`A357621(A291929(n)^A000700(n))`
-/

namespace A382312.P10323362488139269549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (SequenceMachineLib.roundAway ((A291929 n : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A382312.P10323362488139269549

/-! ## A382312.P17150221013681586443

`A321878(n)+A112765(A005585(n+1))`
-/

namespace A382312.P17150221013681586443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 n + A112765 (A005585 (n + 1)).toNat

end

end A382312.P17150221013681586443

/-! ## A382312.P11859332024087089848

`A001221(C(A272919(n+3), A362615(n)))`
-/

namespace A382312.P11859332024087089848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A272919 (n + 3)).toNat (A362615 n).toNat)

end

end A382312.P11859332024087089848

/-!
# A382315: G.f. satisfies A(x) = x + Sum_{n>=1} A(x^n)^2.

The programs for A382315, there is no canonical definition to state claims against.
-/

/-! ## A382315.P18407611885581833144

`A349798(A000988(n))+A192401(n)`
-/

namespace A382315.P18407611885581833144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (A000988 n).toNat + A192401 n

end

end A382315.P18407611885581833144

/-! ## A382315.P13833841187337116413

`A363808(A005651(n))+A192401(n)`
-/

namespace A382315.P13833841187337116413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363808 (A005651 n).toNat + A192401 n

end

end A382315.P13833841187337116413

/-! ## A382315.P17569054256412890486

`A391034(n)+A368094(A303368(n+1))`
-/

namespace A382315.P17569054256412890486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391034 n + A368094 (A303368 (n + 1)).toNat

end

end A382315.P17569054256412890486

/-!
# A382317: G.f. satisfies A(x) = A(x^3)/(A(x^2) - A(x^3)), with A(0) = 0, A'(0) = 1.

The programs for A382317, there is no canonical definition to state claims against.
-/

/-! ## A382317.P6347481014621570837

`A203827(A264039(n))-A341288(n)`
-/

namespace A382317.P6347481014621570837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203827 (A264039 n).toNat - A341288 n

end

end A382317.P6347481014621570837

/-! ## A382317.P17315325320696223075

`A059832(A221632(2*n+1))-A007318(n)`
-/

namespace A382317.P17315325320696223075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059832 (A221632 (2 * n + 1)).toNat - A007318 n

end

end A382317.P17315325320696223075

/-!
# A382318: G.f. A(x) satisfies A(x) = x + ( Sum_{n>=1} A(x^n) )^3.

The programs for A382318, there is no canonical definition to state claims against.
-/

/-! ## A382318.P11710898982348280427

`∑{d}[n+1, A008683(#)*A382319((n+1)/#)]`
-/

namespace A382318.P11710898982348280427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A382319 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382318.P11710898982348280427

/-! ## A382318.P17864385621922566817

`A279544(n)-A000035(A005165(n))`
-/

namespace A382318.P17864385621922566817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279544 n - A000035 (A005165 n).toNat

end

end A382318.P17864385621922566817

/-! ## A382318.P14202700845139350580

`A001462(A295739(n))-A319951(n)`
-/

namespace A382318.P14202700845139350580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A295739 n).toNat - A319951 n

end

end A382318.P14202700845139350580

/-! ## A382318.P16918516371783663122

`A089429(n)-A099563(A241454(n+1))`
-/

namespace A382318.P16918516371783663122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089429 n - A099563 (A241454 (n + 1)).toNat

end

end A382318.P16918516371783663122

/-!
# A382319: G.f. A(x) satisfies A(x) = x/(1-x) + Sum_{n>=1} A(x^n)^3.

The programs for A382319, there is no canonical definition to state claims against.
-/

/-! ## A382319.P11768821010499617321

`∑{d}[n+1, A382318(#)]`
-/

namespace A382319.P11768821010499617321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A382318 d

end

end A382319.P11768821010499617321

/-! ## A382319.P7577728989886058091

`A024417(∑[A047022(n)])`
-/

namespace A382319.P7577728989886058091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382319.P7577728989886058091

/-! ## A382319.P16787850937424252337

`A245898(n+1)+Δ[A033630(n)]`
-/

namespace A382319.P16787850937424252337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + (f1 (n + 1) - f1 n)

end

end A382319.P16787850937424252337

/-! ## A382319.P14677876351749559258

`A245898(n+1)+Δ[A372360(n+4)]`
-/

namespace A382319.P14677876351749559258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372360 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + (f1 (n + 1) - f1 n)

end

end A382319.P14677876351749559258

/-!
# A382320: G.f. A(x) satisfies A(x) = x + ( Sum_{n>=1} A(x^n) )^2.

The programs for A382320, there is no canonical definition to state claims against.
-/

/-! ## A382320.P2719545569573598625

`∑{d}[n+1, A008683(#)*A382321((n+1)/#)]`
-/

namespace A382320.P2719545569573598625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A382321 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382320.P2719545569573598625

/-! ## A382320.P13500040200681741175

`A161576(A369489(n))`
-/

namespace A382320.P13500040200681741175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161576 (A369489 n).toNat

end

end A382320.P13500040200681741175

/-! ## A382320.P1013729977391312697

`A161576(A392978(n))`
-/

namespace A382320.P1013729977391312697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161576 (A392978 n).toNat

end

end A382320.P1013729977391312697

/-!
# A382321: G.f. satisfies A(x) = x/(1-x) + Sum_{n>=1} A(x^n)^2.

The programs for A382321, there is no canonical definition to state claims against.
-/

/-! ## A382321.P13517204032778901856

`∑{d}[n+1, A382320(#)]`
-/

namespace A382321.P13517204032778901856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A382320 d

end

end A382321.P13517204032778901856

/-! ## A382321.P7025156167686415810

`A387141(A150150(n+1))`
-/

namespace A382321.P7025156167686415810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A150150 (n + 1)).toNat

end

end A382321.P7025156167686415810

/-! ## A382321.P13212242383137155379

`A387141(A150151(n+1))`
-/

namespace A382321.P13212242383137155379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A150151 (n + 1)).toNat

end

end A382321.P13212242383137155379

/-!
# A382322: G.f. A(x) satisfies -2 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n+1) * (1 + x^n)^(n+1) * A(x)^n.

The programs for A382322, there is no canonical definition to state claims against.
-/

/-! ## A382322.P16708643391524055654

`A349151(A306504(n))`
-/

namespace A382322.P16708643391524055654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349151 (A306504 n).toNat

end

end A382322.P16708643391524055654

/-!
# A382323: G.f. A(x) satisfies -3 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n+1) * (1 + x^n)^(n+1) * A(x)^n.

The programs for A382323, there is no canonical definition to state claims against.
-/

/-! ## A382323.P11697865964665854960

`∏{e}[n+1, C(#+2, 2)]*A115947(A018010(n))`
-/

namespace A382323.P11697865964665854960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℤ) * A115947 (A018010 n).toNat

end

end A382323.P11697865964665854960

/-!
# A382325: Numbers with a record ratio of proper factorizations to nontrivial divisors.

The programs for A382325, there is no canonical definition to state claims against.
-/

/-! ## A382325.P12252173991428572200

`4*A002024(A257284(n+1))`
-/

namespace A382325.P12252173991428572200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002024 (A257284 (n + 1)).toNat

end

end A382325.P12252173991428572200

/-! ## A382325.P2500077339206372710

`A342126(A003022(3*n+4)-A357976(n+1))`
-/

namespace A382325.P2500077339206372710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A003022 (3 * n + 4) - A357976 (n + 1)).toNat

end

end A382325.P2500077339206372710

/-! ## A382325.P8284170413751651821

`A342126(A003022(3*n+4)-A079426(n+2))`
-/

namespace A382325.P8284170413751651821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A003022 (3 * n + 4) - A079426 (n + 2)).toNat

end

end A382325.P8284170413751651821

/-! ## A382325.P12516284848278726069

`A342126(A003022(3*n+4)-A079430(n+2))`
-/

namespace A382325.P12516284848278726069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A003022 (3 * n + 4) - A079430 (n + 2)).toNat

end

end A382325.P12516284848278726069

/-! ## A382325.P11798839550283274121

`A342126(A003022(3*n+4)-A178403(3*(n+1)))`
-/

namespace A382325.P11798839550283274121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A003022 (3 * n + 4) - A178403 (3 * (n + 1))).toNat

end

end A382325.P11798839550283274121

/-!
# A382326: Numbers with a record ratio of nontrivial divisors to prime factors (counted with multiplicity).

The programs for A382326, there is no canonical definition to state claims against.
-/

/-! ## A382326.P3422422562479632657

`A308471(A077168(n+1))`
-/

namespace A382326.P3422422562479632657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (A077168 (n + 1)).toNat

end

end A382326.P3422422562479632657

/-! ## A382326.P16187430166825089755

`A308471(A043319(n+2))`
-/

namespace A382326.P16187430166825089755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (A043319 (n + 2)).toNat

end

end A382326.P16187430166825089755

/-! ## A382326.P15409108050280607605

`A308471(A044916(n+2))`
-/

namespace A382326.P15409108050280607605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (A044916 (n + 2)).toNat

end

end A382326.P15409108050280607605

/-! ## A382326.P14487129622805824663

`A308471(A065672(n+2))`
-/

namespace A382326.P14487129622805824663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (A065672 (n + 2)).toNat

end

end A382326.P14487129622805824663

/-! ## A382326.P9148012479707415271

`A308471(A065673(n+2))`
-/

namespace A382326.P9148012479707415271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (A065673 (n + 2)).toNat

end

end A382326.P9148012479707415271

/-!
# A382327: Numbers with a record ratio of proper factorizations to prime factors (counted with multiplicity).

The programs for A382327, there is no canonical definition to state claims against.
-/

/-! ## A382327.P14548432473180414054

`filter[A218980(n+1), A011765(#)]`
-/

namespace A382327.P14548432473180414054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A382327.P14548432473180414054

/-! ## A382327.P15091184319941822687

`filter[A218980(n+1), A121262(#)]`
-/

namespace A382327.P15091184319941822687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A382327.P15091184319941822687

/-! ## A382327.P4616109435279231470

`filter[A218980(n+1), A341996(#)]`
-/

namespace A382327.P4616109435279231470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A382327.P4616109435279231470

/-! ## A382327.P17346265688126413478

`filter[A218980(n+1), A342023(#)]`
-/

namespace A382327.P17346265688126413478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A382327.P17346265688126413478

/-!
# A382328: Maximum possible product of differences of every pair in a set of nonnegative integers with sum n.

The programs for A382328, there is no canonical definition to state claims against.
-/

/-! ## A382328.P4101581450852258616

`A295585(A018141(n))`
-/

namespace A382328.P4101581450852258616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295585 (A018141 n).toNat

end

end A382328.P4101581450852258616

/-! ## A382328.P16565211095246514230

`A081156(n)-A076483(A284826(n+1))`
-/

namespace A382328.P16565211095246514230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081156 n - A076483 (A284826 (n + 1)).toNat

end

end A382328.P16565211095246514230

/-! ## A382328.P13465105235593907194

`A002093(A067659(2*(n+1))%A345670(2*n+1))`
-/

namespace A382328.P13465105235593907194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (Int.tmod (A067659 (2 * (n + 1))) (A345670 (2 * n + 1))).toNat

end

end A382328.P13465105235593907194

/-!
# A382329: Least positive integer that gives a square of an integer when multiplied by the n-th harmonic number.

The programs for A382329, the canonical program `A382329.P9326233385756962870` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382329 has offset 1).

The definition of A382329 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007913, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382329.P9326233385756962870

`A002805(n+1)*A007913(A001008(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A382329

/-- `A002805(n+1)*A007913(A001008(n+1))` -/
def P9326233385756962870.Spec : Prop :=
  ∀ n, P9326233385756962870.a n = A382329 (n + 1)

theorem P9326233385756962870.correct : P9326233385756962870.Spec := by
  intro n
  simp only [A382329, Nat.add_sub_cancel]

end A382329

/-! ## A382329.P12190599210699493804

`A007913(A001008(n+1))*A203811(n+1)`
-/

namespace A382329.P12190599210699493804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001008 (n + 1)).toNat * A203811 (n + 1)

end

end A382329.P12190599210699493804

namespace A382329

/-- `A007913(A001008(n+1))*A203811(n+1)` -/
def P12190599210699493804.Spec : Prop :=
  ∀ n, P12190599210699493804.a n = A382329 (n + 1)

end A382329

/-! ## A382329.P893267666883103332

`A035047(2*(n+1))/2*A038387(A064169(n+1)+A002805(n+1))`
-/

namespace A382329.P893267666883103332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035047 (2 * (n + 1)) : ℚ) / 2 * (A038387 (A064169 (n + 1) + A002805 (n + 1)).toNat : ℚ)

end

end A382329.P893267666883103332

namespace A382329

/-- `A035047(2*(n+1))/2*A038387(A064169(n+1)+A002805(n+1))` -/
def P893267666883103332.Spec : Prop :=
  ∀ n, P893267666883103332.a n = (A382329 (n + 1) : ℚ)

end A382329

/-! ## A382329.P15901585839671319769

`A035047(2*(n+1))/2*A038387(A025529(n+1)/A110566(n+1))`
-/

namespace A382329.P15901585839671319769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035047 (2 * (n + 1)) : ℚ) / 2 * (A038387 (SequenceMachineLib.roundAway ((A025529 (n + 1) : ℚ) / (A110566 (n + 1) : ℚ))).toNat : ℚ)

end

end A382329.P15901585839671319769

namespace A382329

/-- `A035047(2*(n+1))/2*A038387(A025529(n+1)/A110566(n+1))` -/
def P15901585839671319769.Spec : Prop :=
  ∀ n, P15901585839671319769.a n = (A382329 (n + 1) : ℚ)

end A382329

/-!
# A382331: If n = Product (p_j^k_j) then a(n) = -Sum ((-1)^k_j * p_j).

The programs for A382331, there is no canonical definition to state claims against.
-/

/-! ## A382331.P4928136330371503478

`A382477(A003557(n+1))+A382477(n+1)`
-/

namespace A382331.P4928136330371503478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382477 (A003557 (n + 1)).toNat + A382477 (n + 1)

end

end A382331.P4928136330371503478

/-! ## A382331.P4168732976584222897

`A001414(n+1)-A001414(A011264(n+1))`
-/

namespace A382331.P4168732976584222897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (A011264 (n + 1)).toNat

end

end A382331.P4168732976584222897

/-! ## A382331.P8509496255228460555

`A001414(A011262(n+1))-A001414(n+1)`
-/

namespace A382331.P8509496255228460555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A011262 (n + 1)).toNat - A001414 (n + 1)

end

end A382331.P8509496255228460555

/-! ## A382331.P18297880715015696682

`A195017(A306916(n+1))`
-/

namespace A382331.P18297880715015696682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A306916 (n + 1)).toNat

end

end A382331.P18297880715015696682

/-!
# A382332: Expansion of 1/(1 - 4*x/(1-x)^2)^(7/2).

The programs for A382332, the canonical program `A382332.P7410682287686130856` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382332 has offset 0).

The definition of A382332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382332.P7410682287686130856

`((7*n+7)*a(n-1)-(7*n-28)*a(n-2)+(n-3)*a(n-3))/n` with `a(0)=1, a(1)=14, a(2)=154`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A382332

/-- `((7*n+7)*a(n-1)-(7*n-28)*a(n-2)+(n-3)*a(n-3))/n` -/
def P7410682287686130856.Spec : Prop :=
  ∀ n, P7410682287686130856.a n = (A382332 n : ℚ)

end A382332

/-!
# A382337: Palindromes in base 10 in which the difference between the sums of the digits in the even and odd positions is zero.

The programs for A382337, there is no canonical definition to state claims against.
-/

/-! ## A382337.P8198602445542442801

`eq[A055017(n), A056965(n)]`
-/

namespace A382337.P8198602445542442801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382337.P8198602445542442801

/-! ## A382337.P12917178547286834967

`∩[A068062(n+1), A008593(n)]`
-/

namespace A382337.P12917178547286834967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382337.P12917178547286834967

/-! ## A382337.P6977808072763347077

`∩[A083852(n+1), A064544(n)]`
-/

namespace A382337.P6977808072763347077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064544 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382337.P6977808072763347077

/-! ## A382337.P2500332693867588363

`∩[A083852(n+1), A067030(n)]`
-/

namespace A382337.P2500332693867588363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382337.P2500332693867588363

/-! ## A382337.P9151985019935965650

`∩[A068062(n+1), A083852(n+1)]`
-/

namespace A382337.P9151985019935965650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382337.P9151985019935965650

/-!
# A382339: Triangle read by rows: T(n,k) is the number of partitions of a 2-colored set of n objects into exactly k parts with 0 <= k <= n.

The programs for A382339, there is no canonical definition to state claims against.
-/

/-! ## A382339.P14844348212867045481

`A325191(n)+A000007(A007598(n))`
-/

namespace A382339.P14844348212867045481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A000007 (A007598 n).toNat

end

end A382339.P14844348212867045481

/-! ## A382339.P17114262016090640313

`A325191(n)+A036987(A026597(n))`
-/

namespace A382339.P17114262016090640313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A036987 (A026597 n).toNat

end

end A382339.P17114262016090640313

/-! ## A382339.P6323335798187551693

`A333755(A000217(n))+A325191(n)`
-/

namespace A382339.P6323335798187551693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (A000217 n).toNat + A325191 n

end

end A382339.P6323335798187551693

/-! ## A382339.P9314876795096556975

`A325191(n)+A063524(A285928(n))`
-/

namespace A382339.P9314876795096556975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A063524 (A285928 n).toNat

end

end A382339.P9314876795096556975

/-! ## A382339.P8168147799198914673

`A325191(n)+A127648(A341681(n))`
-/

namespace A382339.P8168147799198914673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 n + A127648 (A341681 n).toNat

end

end A382339.P8168147799198914673

/-!
# A382342: Triangle read by rows: T(n, k) is the number of partitions of n into k parts where 0 <= k <= n, and each part is one of two kinds.

The programs for A382342, there is no canonical definition to state claims against.
-/

/-! ## A382342.P9997904238356623196

`A382345(A061579(n))`
-/

namespace A382342.P9997904238356623196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382345 (A061579 n).toNat

end

end A382342.P9997904238356623196

/-! ## A382342.P16080579797814658538

`A198632(n)-A373264(A228267(2*n+1))`
-/

namespace A382342.P16080579797814658538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 n - A373264 (A228267 (2 * n + 1)).toNat

end

end A382342.P16080579797814658538

/-! ## A382342.P9330571571017956301

`A198632(n)-A247505(A007318(3*(n+1)))`
-/

namespace A382342.P9330571571017956301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 n - A247505 (A007318 (3 * (n + 1))).toNat

end

end A382342.P9330571571017956301

/-! ## A382342.P18261538880105570699

`A198632(n)-A373264(A077615(n+1))`
-/

namespace A382342.P18261538880105570699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198632 n - A373264 (A077615 (n + 1)).toNat

end

end A382342.P18261538880105570699

/-! ## A382342.P7717315405944028196

`A330416(A141660(n+1))`
-/

namespace A382342.P7717315405944028196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330416 (A141660 (n + 1)).toNat

end

end A382342.P7717315405944028196

/-!
# A382343: Triangle read by rows: T(n, k) is the number of partitions of n into k parts where 0 <= k <= n, and each part is one of 3 kinds.

The programs for A382343, there is no canonical definition to state claims against.
-/

/-! ## A382343.P1686428383052915976

`A382521(A061579(n))`
-/

namespace A382343.P1686428383052915976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382521 (A061579 n).toNat

end

end A382343.P1686428383052915976

/-! ## A382343.P6335205917778637448

`A382521(A038722(n+1)-1)`
-/

namespace A382343.P6335205917778637448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382521 (A038722 (n + 1) - 1).toNat

end

end A382343.P6335205917778637448

/-! ## A382343.P4502971534466789965

`A020639(A097134(n))*A108458(n+1)`
-/

namespace A382343.P4502971534466789965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A097134 n).toNat * A108458 (n + 1)

end

end A382343.P4502971534466789965

/-!
# A382344: Triangle read by rows: T(n, k) is the number of partitions of n into k parts where 0 <= k <= n, and each part is one of 4 kinds.

The programs for A382344, there is no canonical definition to state claims against.
-/

/-! ## A382344.P4856837282920115149

`A382522(A061579(n))`
-/

namespace A382344.P4856837282920115149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382522 (A061579 n).toNat

end

end A382344.P4856837282920115149

/-! ## A382344.P931813409319866293

`and(A161511(A070933(n)), A359675(n+1))`
-/

namespace A382344.P931813409319866293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161511 (A070933 n).toNat) (A359675 (n + 1))

end

end A382344.P931813409319866293

/-!
# A382345: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where n unlabeled objects are distributed into k containers of two kinds. Containers may be left empty.

The programs for A382345, there is no canonical definition to state claims against.
-/

/-! ## A382345.P11899894798358143481

`A382342(A061579(n))`
-/

namespace A382345.P11899894798358143481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382342 (A061579 n).toNat

end

end A382345.P11899894798358143481

/-! ## A382345.P11338137445933199002

`A122200(n)+A183135(n)-A337380(A005207(n))`
-/

namespace A382345.P11338137445933199002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122200 n + (A183135 n - A337380 (A005207 n).toNat)

end

end A382345.P11338137445933199002

/-! ## A382345.P15767232251110989161

`A333766(A396431(n))+A122200(n)`
-/

namespace A382345.P15767232251110989161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A396431 n).toNat + A122200 n

end

end A382345.P15767232251110989161

/-! ## A382345.P9254283077116617877

`A242378(n)+A005091(A028491(n+1))`
-/

namespace A382345.P9254283077116617877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242378 n + A005091 (A028491 (n + 1)).toNat

end

end A382345.P9254283077116617877

/-! ## A382345.P872689330104280425

`A269027(A377659(n))+A074650(n+1)`
-/

namespace A382345.P872689330104280425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269027 (A377659 n).toNat + A074650 (n + 1)

end

end A382345.P872689330104280425

/-!
# A382349: a(n) = [x^n] Product_{k=0..n} (1 + (3*n+k)*x).

The programs for A382349, there is no canonical definition to state claims against.
-/

/-! ## A382349.P4710795957962422052

`A382347(∑[n+4]+2)`
-/

namespace A382349.P4710795957962422052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382347 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A382349.P4710795957962422052

/-! ## A382349.P12612609095951397147

`A105954(A139276(n))`
-/

namespace A382349.P12612609095951397147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105954 (A139276 n).toNat

end

end A382349.P12612609095951397147

/-!
# A382351: Numbers with an integer harmonic mean of the indices of distinct prime factors.

The programs for A382351, there is no canonical definition to state claims against.
-/

/-! ## A382351.P3007852207705858409

`A268082(n+2)%A096519(n+1)`
-/

namespace A382351.P3007852207705858409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268082 (n + 2)) (A096519 (n + 1))

end

end A382351.P3007852207705858409

/-! ## A382351.P10043384855946533739

`lt[A071912(A071944(n)), A063973(n+1)]`
-/

namespace A382351.P10043384855946533739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (A071944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382351.P10043384855946533739

/-! ## A382351.P5592426340882300896

`A246655(n+1)-A394092(A097805(3*n))`
-/

namespace A382351.P5592426340882300896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A394092 (A097805 (3 * n)).toNat

end

end A382351.P5592426340882300896

/-! ## A382351.P10588344433207085053

`A268082(n+2)+A129251(A107809(3*n+2))`
-/

namespace A382351.P10588344433207085053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 2) + A129251 (A107809 (3 * n + 2)).toNat

end

end A382351.P10588344433207085053

/-!
# A382352: Numbers k such that the sum of the reciprocals of the indices of distinct prime factors of k is an integer.

The programs for A382352, there is no canonical definition to state claims against.
-/

/-! ## A382352.P9855022295954741573

`eq[A002487(n), A051159(A051159(n+1))]`
-/

namespace A382352.P9855022295954741573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A051159 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382352.P9855022295954741573

/-! ## A382352.P8633659560535675831

`eq[A229819(n), A346775(n)]`
-/

namespace A382352.P8633659560535675831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346775 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382352.P8633659560535675831

/-!
# A382354: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and under-down-under dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A382354, there is no canonical definition to state claims against.
-/

/-! ## A382354.P1352446452603169502

`A380195(A066181(n+1))`
-/

namespace A382354.P1352446452603169502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380195 (A066181 (n + 1)).toNat

end

end A382354.P1352446452603169502

/-! ## A382354.P12379844877113163329

`A381622(A066182(n+1))`
-/

namespace A382354.P12379844877113163329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381622 (A066182 (n + 1)).toNat

end

end A382354.P12379844877113163329

/-! ## A382354.P2194803451082504704

`A044944(A286166(n+1))`
-/

namespace A382354.P2194803451082504704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044944 (A286166 (n + 1)).toNat

end

end A382354.P2194803451082504704

/-! ## A382354.P6850571811476587173

`A001221(A293934(3*n)+15)`
-/

namespace A382354.P6850571811476587173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A293934 (3 * n) + 15).toNat

end

end A382354.P6850571811476587173

/-! ## A382354.P10296771813168507920

`A124767(A014612(n+1)^A376631(n))`
-/

namespace A382354.P10296771813168507920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (SequenceMachineLib.roundAway ((A014612 (n + 1) : ℚ) ^ (A376631 n : ℤ))).toNat

end

end A382354.P10296771813168507920

/-!
# A382355: A version of the Josephus problem: a(n) is the surviving integer under the skip-eliminate-skip version of the elimination process.

The programs for A382355, there is no canonical definition to state claims against.
-/

/-! ## A382355.P8415937765013725950

`(a(n-1)+3)%(2*n-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A382355.P8415937765013725950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.tmod (a (n - 1) + 3) ((2 * n : ℤ) - a (n - 1))

end

end A382355.P8415937765013725950

/-! ## A382355.P8339466279860979331

`(a(n-1)+2)%(n-a(n-1)+n)+1` with `a(0)=1`
-/

namespace A382355.P8339466279860979331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 2) ((n : ℤ) - a (n - 1) + (n : ℤ)) + 1

end

end A382355.P8339466279860979331

/-! ## A382355.P11473286925902901215

`A002260(A054995(n+1)+A000096(n))`
-/

namespace A382355.P11473286925902901215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A054995 (n + 1) + A000096 n).toNat

end

end A382355.P11473286925902901215

/-! ## A382355.P5306613055163927769

`A133310(A008486(n))-A193298(n+1)`
-/

namespace A382355.P5306613055163927769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A008486 n).toNat - A193298 (n + 1)

end

end A382355.P5306613055163927769

/-!
# A382356: Elimination order of the first person in a variation of the Josephus problem, where there are n people total. During each round the first person is skipped, the second is eliminated and the third person is skipped. Then the process repeats.

The programs for A382356, there is no canonical definition to state claims against.
-/

/-! ## A382356.P1820613082665428556

`n+1-A263390(2*n)`
-/

namespace A382356.P1820613082665428556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A263390 (2 * n)

end

end A382356.P1820613082665428556

/-! ## A382356.P240993200654783432

`n-A163491(2*n+1)+2`
-/

namespace A382356.P240993200654783432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A163491 (2 * n + 1) + 2

end

end A382356.P240993200654783432

/-! ## A382356.P11866542110956730607

`A381622(∑[n+1])`
-/

namespace A382356.P11866542110956730607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382356.P11866542110956730607

/-! ## A382356.P16404565587253229833

`A382354(∑[n]+1)`
-/

namespace A382356.P16404565587253229833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382354 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A382356.P16404565587253229833

/-! ## A382356.P7332226703828155019

`A380195(∑[n]+2)`
-/

namespace A382356.P7332226703828155019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380195 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A382356.P7332226703828155019

/-!
# A382358: Triangle read by rows: T(n,k) is the number of the k-th eliminated person in the variation of the Josephus elimination process for n people, where in each round, the first person is skipped, the second eliminated and the third is skipped.

The programs for A382358, there is no canonical definition to state claims against.
-/

/-! ## A382358.P2260800900389904639

`A273138(A225472(n))`
-/

namespace A382358.P2260800900389904639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273138 (A225472 n).toNat

end

end A382358.P2260800900389904639

/-! ## A382358.P13110976501463536076

`A000120(A002243(n+1)+comp[xor(n, 2*n+1)]%2)`
-/

namespace A382358.P13110976501463536076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002243 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ)).toNat

end

end A382358.P13110976501463536076

/-! ## A382358.P18075779205197793671

`A000120(A002243(n+1)+2*n+1-comp[xor(n, 2*n)])`
-/

namespace A382358.P18075779205197793671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A002243 (n + 1) + ((2 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))).toNat

end

end A382358.P18075779205197793671

/-! ## A382358.P11149975879331402704

`A000120(A010060(n)+A002243(n+1))`
-/

namespace A382358.P11149975879331402704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A010060 n + A002243 (n + 1)).toNat

end

end A382358.P11149975879331402704

/-! ## A382358.P15300135957200335439

`A048793(A010349(n+1)^A124765(n))`
-/

namespace A382358.P15300135957200335439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (SequenceMachineLib.roundAway ((A010349 (n + 1) : ℚ) ^ (A124765 n : ℤ))).toNat

end

end A382358.P15300135957200335439

/-!
# A382359: Number of labeled deterministic finite automata with n states and two letters.

The programs for A382359, the canonical program `A382359.P11163966396715271792` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382359 has offset 1).

The definition of A382359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382359.P11163966396715271792

`(n+1)*2^(n+1)*(n+1)^(2*(n+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A382359

/-- `(n+1)*2^(n+1)*(n+1)^(2*(n+1))` -/
def P11163966396715271792.Spec : Prop :=
  ∀ n, (P11163966396715271792.a n : ℤ) = A382359 (n + 1)

theorem P11163966396715271792.correct : P11163966396715271792.Spec := by
  intro n
  simp only [A382359, Nat.add_sub_cancel]

end A382359

/-! ## A382359.P11248683608695241712

`floor((n+1)*∑[a(n-1)+4]^(n+1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A382359.P11248683608695241712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A382359.P11248683608695241712

namespace A382359

/-- `floor((n+1)*∑[a(n-1)+4]^(n+1))` -/
def P11248683608695241712.Spec : Prop :=
  ∀ n, (P11248683608695241712.a n : ℤ) = A382359 (n + 1)

end A382359

/-! ## A382359.P3891244365217898152

`A007778(2*(n+1))/A020707(n)`
-/

namespace A382359.P3891244365217898152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007778 (2 * (n + 1)) : ℚ) / (A020707 n : ℚ)

end

end A382359.P3891244365217898152

namespace A382359

/-- `A007778(2*(n+1))/A020707(n)` -/
def P3891244365217898152.Spec : Prop :=
  ∀ n, P3891244365217898152.a n = (A382359 (n + 1) : ℚ)

end A382359

/-! ## A382359.P13988731927428266405

`A065440(2*n+3)/A011782(n+3)`
-/

namespace A382359.P13988731927428266405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065440 (2 * n + 3) : ℚ) / (A011782 (n + 3) : ℚ)

end

end A382359.P13988731927428266405

namespace A382359

/-- `A065440(2*n+3)/A011782(n+3)` -/
def P13988731927428266405.Spec : Prop :=
  ∀ n, P13988731927428266405.a n = (A382359 (n + 1) : ℚ)

end A382359

/-! ## A382359.P8167350206528363633

`A007778(2*(n+1))/record[A048675(2*n+5)]`
-/

namespace A382359.P8167350206528363633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (2 * n + 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007778 (2 * (n + 1)) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A382359.P8167350206528363633

namespace A382359

/-- `A007778(2*(n+1))/record[A048675(2*n+5)]` -/
def P8167350206528363633.Spec : Prop :=
  ∀ n, P8167350206528363633.a n = (A382359 (n + 1) : ℚ)

end A382359

/-!
# A382361: Number of nonnesting permutations of the multiset {1,1,2,2,...,n,n} that avoid 123.

The programs for A382361, there is no canonical definition to state claims against.
-/

/-! ## A382361.P16742347591535506372

`A113981(A099012(n+1))`
-/

namespace A382361.P16742347591535506372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113981 (A099012 (n + 1)).toNat

end

end A382361.P16742347591535506372

/-!
# A382362: Number of oriented Eulerian circuits from a fixed start vertex in the complete digraph K_n, counting distinct first arcs.

The programs for A382362, the canonical program `A382362.P16241766810211919050` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382362 has offset 2).

The definition of A382362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382362.P16241766810211919050

`(n+1)*(n+2)^n*n!^(n+2)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A382362

/-- `(n+1)*(n+2)^n*n!^(n+2)` -/
def P16241766810211919050.Spec : Prop :=
  ∀ n, (P16241766810211919050.a n : ℤ) = A382362 (n + 2)

theorem P16241766810211919050.correct : P16241766810211919050.Spec := by
  intro n
  simp only [A382362, Nat.add_sub_cancel]

end A382362

/-! ## A382362.P2178645466952208506

`(n+1)*A232545(n+2)`
-/

namespace A382362.P2178645466952208506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A232545 (n + 2)

end

end A382362.P2178645466952208506

namespace A382362

/-- `(n+1)*A232545(n+2)` -/
def P2178645466952208506.Spec : Prop :=
  ∀ n, P2178645466952208506.a n = A382362 (n + 2)

end A382362

/-!
# A382363: Rectangular array read by antidiagonals, T(n,k) is the number of labeled digraphs on [n] along with a (coloring) function c:[n] -> [k] such that for all u,v in [n], u->v implies u<=v and c(u)<=c(v), n>=0, k>=0.

The programs for A382363, there is no canonical definition to state claims against.
-/

/-! ## A382363.P8766859974520725573

`A371592(A360604(n))`
-/

namespace A382363.P8766859974520725573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371592 (A360604 n).toNat

end

end A382363.P8766859974520725573

/-! ## A382363.P3688753826542055123

`A012265(A084938(n)²)`
-/

namespace A382363.P3688753826542055123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A084938 n ^ 2).toNat

end

end A382363.P3688753826542055123

/-! ## A382363.P17326004308341228774

`A172263(A180401(n+1))`
-/

namespace A382363.P17326004308341228774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A180401 (n + 1)).toNat

end

end A382363.P17326004308341228774

/-! ## A382363.P11957668125753674726

`A329295(A084938(n)+1)`
-/

namespace A382363.P11957668125753674726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329295 (A084938 n + 1).toNat

end

end A382363.P11957668125753674726

/-! ## A382363.P11612037089497745826

`A012265(A084938(n)*A084938(n))`
-/

namespace A382363.P11612037089497745826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (A084938 n * A084938 n).toNat

end

end A382363.P11612037089497745826

/-!
# A382365: Expansion of 1/( 1 - 4 * Sum_{k>=0} x^(2^k) / (1 - x^(2^k)) )^(1/2).

The programs for A382365, there is no canonical definition to state claims against.
-/

/-! ## A382365.P8445717522853401314

`A048569(floor(exp(n)))`
-/

namespace A382365.P8445717522853401314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048569 ⌊Real.exp (n : ℝ)⌋.toNat

end

end A382365.P8445717522853401314

/-!
# A382366: Expansion of 1/( 1 - 9 * Sum_{k>=0} x^(2^k) / (1 - x^(2^k)) )^(1/3).

The programs for A382366, there is no canonical definition to state claims against.
-/

/-! ## A382366.P4377902077364467034

`A289166(A378891(n))-A004111(n)`
-/

namespace A382366.P4377902077364467034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289166 (A378891 n).toNat - A004111 n

end

end A382366.P4377902077364467034

/-!
# A382368: Expansion of 1/( 1 - 4 * Sum_{k>=0} x^(3^k) / (1 - x^(3^k)) )^(1/2).

The programs for A382368, there is no canonical definition to state claims against.
-/

/-! ## A382368.P12613529953946662067

`A285126(A150660(n))`
-/

namespace A382368.P12613529953946662067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285126 (A150660 n).toNat

end

end A382368.P12613529953946662067

/-! ## A382368.P16432091682984369307

`A130916(A152124(n))`
-/

namespace A382368.P16432091682984369307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A152124 n).toNat

end

end A382368.P16432091682984369307

/-!
# A382369: Expansion of 1/( 1 - 9 * Sum_{k>=0} x^(3^k) / (1 - x^(3^k)) )^(1/3).

The programs for A382369, there is no canonical definition to state claims against.
-/

/-! ## A382369.P333668908594072422

`A248375(round(A066381(n)/2))`
-/

namespace A382369.P333668908594072422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (SequenceMachineLib.roundAway ((A066381 n : ℚ) / 2)).toNat

end

end A382369.P333668908594072422

/-!
# A382371: Remove all occurrences of a digit from n such that the resulting number, formed by the remaining digits in their original order, is as large as possible. If no digits remain, a(n)=0.

The programs for A382371, there is no canonical definition to state claims against.
-/

/-! ## A382371.P2763438947822432569

`A382401(n+1)%A000578(A089597(n))`
-/

namespace A382371.P2763438947822432569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382401 (n + 1)) (A000578 (A089597 n).toNat)

end

end A382371.P2763438947822432569

/-! ## A382371.P16389497448355146906

`and(A086827(n+1), A382401(n+1))`
-/

namespace A382371.P16389497448355146906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A382401 (n + 1))

end

end A382371.P16389497448355146906

/-! ## A382371.P4760627280888665860

`A001222(2^A382401(n+1))`
-/

namespace A382371.P4760627280888665860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A382401 (n + 1) : ℤ))).toNat

end

end A382371.P4760627280888665860

/-! ## A382371.P12032285208488372912

`A051903(2^A382401(n+1))`
-/

namespace A382371.P12032285208488372912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A382401 (n + 1) : ℤ))).toNat

end

end A382371.P12032285208488372912

/-! ## A382371.P4903169479053302987

`A382401(n+1)%A000321(n)`
-/

namespace A382371.P4903169479053302987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382401 (n + 1)) (A000321 n)

end

end A382371.P4903169479053302987

/-! ## A382371.P7074906013250336748

`A382401(n+1)+A000007(A254053(n+1))`
-/

namespace A382371.P7074906013250336748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382401 (n + 1) + A000007 (A254053 (n + 1)).toNat

end

end A382371.P7074906013250336748

/-! ## A382371.P1288300108018174677

`A382401(n+1)+A000007(((n+1)/10^val(n+1, 10))%A344729(n+1))`
-/

namespace A382371.P1288300108018174677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382401 (n + 1) + A000007 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) (A344729 (n + 1))).toNat

end

end A382371.P1288300108018174677

/-! ## A382371.P14131825587294994673

`∑{d}[n+1, A145459(#-1)*A382401((n+1)/#)]`
-/

namespace A382371.P14131825587294994673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145459 (d - 1) * A382401 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382371.P14131825587294994673

/-! ## A382371.P10775334911708716012

`and(A121263(n), A382401(n+1))`
-/

namespace A382371.P10775334911708716012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A121263 (n + 10)) (A382401 (n + 1))

end

end A382371.P10775334911708716012

/-! ## A382371.P1515798676118992978

`and(A058000(n+1), A382401(n+1))`
-/

namespace A382371.P1515798676118992978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A382401 (n + 1))

end

end A382371.P1515798676118992978

/-!
# A382372: Expansion of 1/( 1 - Sum_{k>=0} x^(4^k) / (1 - x^(4^k)) ).

The programs for A382372, there is no canonical definition to state claims against.
-/

/-! ## A382372.P14193066166652136498

`A185195(A029759(n))`
-/

namespace A382372.P14193066166652136498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A029759 n).toNat

end

end A382372.P14193066166652136498

/-! ## A382372.P17563677926499299496

`A276571(A049168(n))`
-/

namespace A382372.P17563677926499299496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A049168 n).toNat

end

end A382372.P17563677926499299496

/-! ## A382372.P9805236644096602520

`A276571(A193621(n))`
-/

namespace A382372.P9805236644096602520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A193621 n).toNat

end

end A382372.P9805236644096602520

/-! ## A382372.P15965286719208582058

`A000006(∑[A148360(n)])`
-/

namespace A382372.P15965286719208582058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382372.P15965286719208582058

/-! ## A382372.P17366649756994695552

`A172471(A332280(∑[n]))`
-/

namespace A382372.P17366649756994695552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A332280 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A382372.P17366649756994695552

/-!
# A382373: Expansion of 1/( 1 - Sum_{k>=0} x^(5^k) / (1 - x^(5^k)) ).

The programs for A382373, there is no canonical definition to state claims against.
-/

/-! ## A382373.P7276150032653418751

`A001462(A192906(n))`
-/

namespace A382373.P7276150032653418751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A192906 n).toNat

end

end A382373.P7276150032653418751

/-! ## A382373.P3958863378224199571

`A001462(∑[A192904(n)])`
-/

namespace A382373.P3958863378224199571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382373.P3958863378224199571

/-! ## A382373.P1072092596964357921

`A226190(A129682(n+1))`
-/

namespace A382373.P1072092596964357921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A129682 (n + 1)).toNat

end

end A382373.P1072092596964357921

/-! ## A382373.P8186418638967414008

`A249728(A226510(n+1))`
-/

namespace A382373.P8186418638967414008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A226510 (n + 1)).toNat

end

end A382373.P8186418638967414008

/-! ## A382373.P5604412556402982350

`A003056(A149353(n))`
-/

namespace A382373.P5604412556402982350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A149353 n).toNat

end

end A382373.P5604412556402982350

/-!
# A382378: Expansion of 1/( 1 - Sum_{k>=0} x^(6^k) / (1 - x^(6^k)) ).

The programs for A382378, there is no canonical definition to state claims against.
-/

/-! ## A382378.P2666095760247271822

`A000006(A000011(2*n+1)-A248813(n))`
-/

namespace A382378.P2666095760247271822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000011 (2 * n + 1) - A248813 n).toNat

end

end A382378.P2666095760247271822

/-! ## A382378.P7472738600045553692

`A000006(A000011(2*n+1)-A354907(n))`
-/

namespace A382378.P7472738600045553692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000011 (2 * n + 1) - A354907 n).toNat

end

end A382378.P7472738600045553692

/-! ## A382378.P896186965305464460

`A000006(A000011(2*n+1)-A000523(n+1))`
-/

namespace A382378.P896186965305464460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A000011 (2 * n + 1) - A000523 (n + 1)).toNat

end

end A382378.P896186965305464460

/-! ## A382378.P16695530060774994708

`A235963(A049165(n))`
-/

namespace A382378.P16695530060774994708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A049165 n).toNat

end

end A382378.P16695530060774994708

/-! ## A382378.P6615106998472577902

`A235963(A148984(n))`
-/

namespace A382378.P6615106998472577902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A148984 n).toNat

end

end A382378.P6615106998472577902

/-!
# A382379: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A382379, the canonical program `A382379.P10739304604407682157` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382379 has offset 0).

The definition of A382379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382379.P10739304604407682157

`2*A000032(n)*(A000032(n)-1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A382379

/-- `2*A000032(n)*(A000032(n)-1)` -/
def P10739304604407682157.Spec : Prop :=
  ∀ n, P10739304604407682157.a n = A382379 n

theorem P10739304604407682157.correct : P10739304604407682157.Spec := by
  intro n
  simp only [A382379]

end A382379

/-! ## A382379.P17277229172273753876

`A382409(n)-A000032(n)`
-/

namespace A382379.P17277229172273753876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382409 n - A000032 n

end

end A382379.P17277229172273753876

namespace A382379

/-- `A382409(n)-A000032(n)` -/
def P17277229172273753876.Spec : Prop :=
  ∀ n, P17277229172273753876.a n = A382379 n

end A382379

/-! ## A382379.P15034260891450267993

`A386201(n)-A156279(n)`
-/

namespace A382379.P15034260891450267993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386201 n - A156279 n

end

end A382379.P15034260891450267993

namespace A382379

/-- `A386201(n)-A156279(n)` -/
def P15034260891450267993.Spec : Prop :=
  ∀ n, P15034260891450267993.a n = A382379 n

end A382379

/-! ## A382379.P11894966109945297086

`2*(A001254(n)-A000032(n))`
-/

namespace A382379.P11894966109945297086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001254 n - A000032 n)

end

end A382379.P11894966109945297086

namespace A382379

/-- `2*(A001254(n)-A000032(n))` -/
def P11894966109945297086.Spec : Prop :=
  ∀ n, P11894966109945297086.a n = A382379 n

end A382379

/-! ## A382379.P16740211996270662085

`A382409(n)-A127218(2*n)`
-/

namespace A382379.P16740211996270662085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382409 n - A127218 (2 * n)

end

end A382379.P16740211996270662085

namespace A382379

/-- `A382409(n)-A127218(2*n)` -/
def P16740211996270662085.Spec : Prop :=
  ∀ n, P16740211996270662085.a n = A382379 n

end A382379

/-! ## A382379.P2885612555359985368

`2*A244310(n)/A000032(n)`
-/

namespace A382379.P2885612555359985368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A244310 n : ℚ) / (A000032 n : ℚ)

end

end A382379.P2885612555359985368

namespace A382379

/-- `2*A244310(n)/A000032(n)` -/
def P2885612555359985368.Spec : Prop :=
  ∀ n, P2885612555359985368.a n = (A382379 n : ℚ)

end A382379

/-!
# A382380: Greater of twin self numbers, i.e., larger member of the pair of self numbers differing by 2.

The programs for A382380, there is no canonical definition to state claims against.
-/

/-! ## A382380.P6329214915891278310

`A374101(n+1)+2`
-/

namespace A382380.P6329214915891278310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374101 (n + 1) + 2

end

end A382380.P6329214915891278310

/-! ## A382380.P12842351780518398178

`record[root(A003052(n+2), A163139(n+1))]`
-/

namespace A382380.P12842351780518398178
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003052 (n + 2) : ℝ) ^ (1 / (A163139 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382380.P12842351780518398178

/-! ## A382380.P9033144738930841276

`∩[A003052(n+1)+2, A003052(n+1)]`
-/

namespace A382380.P9033144738930841276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382380.P9033144738930841276

/-! ## A382380.P15214451145693221254

`A009056(A374101(n+1))`
-/

namespace A382380.P15214451145693221254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A374101 (n + 1)).toNat

end

end A382380.P15214451145693221254

/-!
# A382381: Lexicographically earliest sequence of distinct positive integers such that any two subsets with at least two terms have distinct variances.

The programs for A382381, there is no canonical definition to state claims against.
-/

/-! ## A382381.P9045371031166037019

`eq[1, A381856(n+1)]+1`
-/

namespace A382381.P9045371031166037019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382381.P9045371031166037019

/-!
# A382383: Number of distinct variances of nonempty subsets of {1, ..., n}.

The programs for A382383, there is no canonical definition to state claims against.
-/

/-! ## A382383.P3955076910296191404

`A123068(A018154(n))`
-/

namespace A382383.P3955076910296191404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A018154 n).toNat

end

end A382383.P3955076910296191404

/-! ## A382383.P1028495595546799961

`A071626(A149864(n))`
-/

namespace A382383.P1028495595546799961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A149864 n).toNat

end

end A382383.P1028495595546799961

/-! ## A382383.P10429366252608274360

`A071626(A149865(n))`
-/

namespace A382383.P10429366252608274360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A149865 n).toNat

end

end A382383.P10429366252608274360

/-! ## A382383.P3498340319132121298

`A259361(A018045(n))`
-/

namespace A382383.P3498340319132121298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A018045 n).toNat

end

end A382383.P3498340319132121298

/-! ## A382383.P8846762971204959846

`A259361(A018046(n))`
-/

namespace A382383.P8846762971204959846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A018046 n).toNat

end

end A382383.P8846762971204959846

/-!
# A382386: Number of minimum dominating sets in the n X n giraffe graph.

The programs for A382386, there is no canonical definition to state claims against.
-/

/-! ## A382386.P1013575833749677079

`A298857(A042175(n))`
-/

namespace A382386.P1013575833749677079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298857 (A042175 n).toNat

end

end A382386.P1013575833749677079

/-! ## A382386.P14053901447941821108

`A324342(4*A006129(n))`
-/

namespace A382386.P14053901447941821108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324342 (4 * A006129 n).toNat

end

end A382386.P14053901447941821108

/-!
# A382391: Numbers k such that (23^k - 3^k)/20 is prime.

The programs for A382391, there is no canonical definition to state claims against.
-/

/-! ## A382391.P13849149938422541011

`A165887(A023865(n+1))`
-/

namespace A382391.P13849149938422541011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165887 (A023865 (n + 1)).toNat

end

end A382391.P13849149938422541011

/-! ## A382391.P6101060218072683584

`or(n+1, A327473(A158015(2*n+1)))`
-/

namespace A382391.P6101060218072683584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A327473 (A158015 (2 * n + 1)).toNat)

end

end A382391.P6101060218072683584

/-!
# A382392: a(n) is the least prime number whose factorial base expansion contains the digit n.

The programs for A382392, there is no canonical definition to state claims against.
-/

/-! ## A382392.P17118393770465757294

`A151800(Δ[n!])`
-/

namespace A382392.P17118393770465757294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A382392.P17118393770465757294

/-! ## A382392.P3529077025046731762

`A151800(n*n!)`
-/

namespace A382392.P3529077025046731762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n * Nat.factorial n)

end

end A382392.P3529077025046731762

/-! ## A382392.P15786927947720369407

`A151800(Δ[n*a(n-1)])` with `a(0)=1`
-/

namespace A382392.P15786927947720369407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A382392.P15786927947720369407

/-! ## A382392.P11788373130253282658

`A151800(n*∏[ceil(abs(γ-n))])`
-/

namespace A382392.P11788373130253282658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A382392.P11788373130253282658

/-!
# A382394: a(n) = Sum_{k=0..n} A128899(n,k)^3.

The programs for A382394, there is no canonical definition to state claims against.
-/

/-! ## A382394.P5878842685724341411

`A003161(xor(1, comp[2*n+3]))`
-/

namespace A382394.P5878842685724341411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003161 (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A382394.P5878842685724341411

/-! ## A382394.P15404642883107481003

`A003161(record[A026741(n)])`
-/

namespace A382394.P15404642883107481003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003161 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382394.P15404642883107481003

/-! ## A382394.P10664882206191534958

`A003161(lt[A110164(n), 2])`
-/

namespace A382394.P10664882206191534958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110164 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003161 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A382394.P10664882206191534958

/-! ## A382394.P823044762899308679

`A003161(comp[A028913(n+1)])`
-/

namespace A382394.P823044762899308679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003161 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A382394.P823044762899308679

/-! ## A382394.P5033247219929999811

`A003161(lt[n, A304882(n+1)])`
-/

namespace A382394.P5033247219929999811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A382394.P5033247219929999811

/-!
# A382395: Number of maximum sized subsets of {1..n} such that every pair of distinct elements has a different difference.

The programs for A382395, there is no canonical definition to state claims against.
-/

/-! ## A382395.P3767383267293980076

`A381476(A392517(n+1)%A079435(n+4))`
-/

namespace A382395.P3767383267293980076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381476 (Int.tmod (A392517 (n + 1)) (A079435 (n + 4))).toNat

end

end A382395.P3767383267293980076

/-!
# A382397: Minimum size of a maximal subset of {1..n} such that every pair of distinct elements has a different difference.

The programs for A382397, there is no canonical definition to state claims against.
-/

/-! ## A382397.P16425343348908350369

`round(sqrt((2*n)^ϕ/(n+1)))`
-/

namespace A382397.P16425343348908350369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * n : ℝ) ^ Real.goldenRatio / (n + 1 : ℝ)))

end

end A382397.P16425343348908350369

/-! ## A382397.P7006549904341743385

`floor(∑[5/∑[1/a(n-1)]])` with `a(0)=6`
-/

namespace A382397.P7006549904341743385
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [6] fun n f2 =>
  1 / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 / (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A382397.P7006549904341743385

/-! ## A382397.P14381683912479550040

`∑[char[A064934(n)]]`
-/

namespace A382397.P14381683912479550040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064934 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382397.P14381683912479550040

/-! ## A382397.P7901197024445914547

`∑[char[A281969(n)]]`
-/

namespace A382397.P7901197024445914547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281969 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382397.P7901197024445914547

/-! ## A382397.P4648791473621370182

`ceil(log(∑[A117535(n)]))`
-/

namespace A382397.P4648791473621370182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉

end

end A382397.P4648791473621370182

/-! ## A382397.P5936483054176266813

`floor(log(A219657(n+1)))`
-/

namespace A382397.P5936483054176266813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A219657 (n + 1) : ℝ)⌋

end

end A382397.P5936483054176266813

/-! ## A382397.P6544176794746870700

`floor(log2(A035500(n+2)))`
-/

namespace A382397.P6544176794746870700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A035500 (n + 2)).toNat

end

end A382397.P6544176794746870700

/-! ## A382397.P7240303425462826894

`∑[char[A124920(n+1)]]`
-/

namespace A382397.P7240303425462826894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124920 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382397.P7240303425462826894

/-! ## A382397.P8547800365996701419

`∑[char[A173599(2*n)]]`
-/

namespace A382397.P8547800365996701419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173599 (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382397.P8547800365996701419

/-! ## A382397.P9605518002204681962

`∑[char[A237754(2*n+1)]]`
-/

namespace A382397.P9605518002204681962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237754 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382397.P9605518002204681962

