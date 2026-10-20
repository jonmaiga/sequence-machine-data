import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A171501: Inverse binomial transform of A084640.

The programs for A171501, the canonical program `A171501.P2483416715752926748` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171501 has offset 0).

The definition of A171501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171501.P13279847538693306555

`∑[ogf((x+4x^2)/(1+2x))]`
-/

namespace A171501.P13279847538693306555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171501.P13279847538693306555

namespace A171501

/-- `∑[ogf((x+4x^2)/(1+2x))]` -/
def P13279847538693306555.Spec : Prop :=
  ∀ n, P13279847538693306555.a n = A171501 n

end A171501

/-! ## A171501.P14509963721716043443

`ogf((x+4x^2)/(1+x-2x^2))`
-/

namespace A171501.P14509963721716043443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, 1, -2] n

end

end A171501.P14509963721716043443

namespace A171501

/-- `ogf((x+4x^2)/(1+x-2x^2))` -/
def P14509963721716043443.Spec : Prop :=
  ∀ n, P14509963721716043443.a n = A171501 n

end A171501

/-! ## A171501.P2483416715752926748

`5-2*a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171501

/-- `5-2*a(n-1)` -/
def P2483416715752926748.Spec : Prop :=
  ∀ n, P2483416715752926748.a n = A171501 n

theorem P2483416715752926748.correct : P2483416715752926748.Spec := by
  intro n
  simp only [A171501]

end A171501

/-! ## A171501.P6400658557138670120

`a(n-1)-(-2)^(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A171501.P6400658557138670120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A171501.P6400658557138670120

namespace A171501

/-- `a(n-1)-(-2)^(n-1)` -/
def P6400658557138670120.Spec : Prop :=
  ∀ n, P6400658557138670120.a n = (A171501 n : ℚ)

end A171501

/-! ## A171501.P6371999623949686427

`5-(a(n-1)+a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A171501.P6371999623949686427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 - (a (n - 1) + a (n - 1))

end

end A171501.P6371999623949686427

namespace A171501

/-- `5-(a(n-1)+a(n-1))` -/
def P6371999623949686427.Spec : Prop :=
  ∀ n, P6371999623949686427.a n = A171501 n

theorem P6371999623949686427.correct : P6371999623949686427.Spec := by
  intro n
  simp only [A171501, Nat.add_sub_cancel, A171501.P6371999623949686427.a, A171501.P2483416715752926748.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171501

/-! ## A171501.P6952537257464014903

`5-a(n-1)-a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A171501.P6952537257464014903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  5 - a (n - 1) - a (n - 1)

end

end A171501.P6952537257464014903

namespace A171501

/-- `5-a(n-1)-a(n-1)` -/
def P6952537257464014903.Spec : Prop :=
  ∀ n, P6952537257464014903.a n = A171501 n

theorem P6952537257464014903.correct : P6952537257464014903.Spec := by
  intro n
  simp only [A171501, Nat.add_sub_cancel, A171501.P6952537257464014903.a, A171501.P2483416715752926748.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171501

/-! ## A171501.P14339258146360350989

`A140966(n)-A000038(n)`
-/

namespace A171501.P14339258146360350989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 n - A000038 n

end

end A171501.P14339258146360350989

namespace A171501

/-- `A140966(n)-A000038(n)` -/
def P14339258146360350989.Spec : Prop :=
  ∀ n, P14339258146360350989.a n = A171501 n

end A171501

/-! ## A171501.P2227209151525203708

`A122553(n)-A084247(n)`
-/

namespace A171501.P2227209151525203708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n - A084247 n

end

end A171501.P2227209151525203708

namespace A171501

/-- `A122553(n)-A084247(n)` -/
def P2227209151525203708.Spec : Prop :=
  ∀ n, P2227209151525203708.a n = A171501 n

end A171501

/-! ## A171501.P2224239110674965970

`A057427(n)*A140966(n)`
-/

namespace A171501.P2224239110674965970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A140966 n

end

end A171501.P2224239110674965970

namespace A171501

/-- `A057427(n)*A140966(n)` -/
def P2224239110674965970.Spec : Prop :=
  ∀ n, P2224239110674965970.a n = A171501 n

end A171501

/-! ## A171501.P11842824844887593700

`and(A057428(n), A140966(n))`
-/

namespace A171501.P11842824844887593700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A140966 n)

end

end A171501.P11842824844887593700

namespace A171501

/-- `and(A057428(n), A140966(n))` -/
def P11842824844887593700.Spec : Prop :=
  ∀ n, P11842824844887593700.a n = A171501 n

end A171501

/-! ## A171501.P4848097870031417877

`and(A134824(n), A140966(n))`
-/

namespace A171501.P4848097870031417877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A140966 n)

end

end A171501.P4848097870031417877

namespace A171501

/-- `and(A134824(n), A140966(n))` -/
def P4848097870031417877.Spec : Prop :=
  ∀ n, P4848097870031417877.a n = A171501 n

end A171501

/-! ## A171501.P9633285014746852081

`and(A140966(n), A260196(n))`
-/

namespace A171501.P9633285014746852081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140966 n) (A260196 n)

end

end A171501.P9633285014746852081

namespace A171501

/-- `and(A140966(n), A260196(n))` -/
def P9633285014746852081.Spec : Prop :=
  ∀ n, P9633285014746852081.a n = A171501 n

end A171501

/-! ## A171501.P15775834058164029538

`A153284(n+1)-A167193(n)`
-/

namespace A171501.P15775834058164029538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) - A167193 n

end

end A171501.P15775834058164029538

namespace A171501

/-- `A153284(n+1)-A167193(n)` -/
def P15775834058164029538.Spec : Prop :=
  ∀ n, P15775834058164029538.a n = A171501 n

end A171501

/-! ## A171501.P9432113450474127635

`(1-A000007(n))*A140966(n)`
-/

namespace A171501.P9432113450474127635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A140966 n

end

end A171501.P9432113450474127635

namespace A171501

/-- `(1-A000007(n))*A140966(n)` -/
def P9432113450474127635.Spec : Prop :=
  ∀ n, P9432113450474127635.a n = A171501 n

end A171501

/-! ## A171501.P16598299842265341849

`and(A140966(n), A153881(n+1))`
-/

namespace A171501.P16598299842265341849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140966 n) (A153881 (n + 1))

end

end A171501.P16598299842265341849

namespace A171501

/-- `and(A140966(n), A153881(n+1))` -/
def P16598299842265341849.Spec : Prop :=
  ∀ n, P16598299842265341849.a n = A171501 n

end A171501

/-! ## A171501.P14090086486390073229

`(A157532(n+1)-2)*A140966(n)`
-/

namespace A171501.P14090086486390073229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) - 2) * A140966 n

end

end A171501.P14090086486390073229

namespace A171501

/-- `(A157532(n+1)-2)*A140966(n)` -/
def P14090086486390073229.Spec : Prop :=
  ∀ n, P14090086486390073229.a n = A171501 n

end A171501

/-! ## A171501.P5203749205460436964

`2-A084247(n)-A280193(A006257(n))`
-/

namespace A171501.P5203749205460436964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084247 n - A280193 (A006257 n).toNat

end

end A171501.P5203749205460436964

namespace A171501

/-- `2-A084247(n)-A280193(A006257(n))` -/
def P5203749205460436964.Spec : Prop :=
  ∀ n, P5203749205460436964.a n = A171501 n

end A171501

/-! ## A171501.P14860696654264229403

`A000007(A000007(n)*A140966(n))*A140966(n)`
-/

namespace A171501.P14860696654264229403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A140966 n).toNat * A140966 n

end

end A171501.P14860696654264229403

namespace A171501

/-- `A000007(A000007(n)*A140966(n))*A140966(n)` -/
def P14860696654264229403.Spec : Prop :=
  ∀ n, P14860696654264229403.a n = A171501 n

end A171501

/-! ## A171501.P5333228173922405305

`xor(1, A078052(2*n))`
-/

namespace A171501.P5333228173922405305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A078052 (2 * n))

end

end A171501.P5333228173922405305

namespace A171501

/-- `xor(1, A078052(2*n))` -/
def P5333228173922405305.Spec : Prop :=
  ∀ n, P5333228173922405305.a n = A171501 n

end A171501

/-! ## A171501.P16363204361514736163

`A140966(n)%A000051(n)`
-/

namespace A171501.P16363204361514736163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140966 n) (A000051 n)

end

end A171501.P16363204361514736163

namespace A171501

/-- `A140966(n)%A000051(n)` -/
def P16363204361514736163.Spec : Prop :=
  ∀ n, P16363204361514736163.a n = A171501 n

end A171501

/-!
# A171503: Number of 2 X 2 integer matrices with entries from {0,1,...,n} having determinant 1.

The programs for A171503, the canonical program `A171503.P13940415937448439247` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171503 has offset 0).

The definition of A171503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171503.P1564391831661169659

`ceil(A209982(n)/8)`
-/

namespace A171503.P1564391831661169659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A209982 n : ℚ) / 8⌉

end

end A171503.P1564391831661169659

namespace A171503

/-- `ceil(A209982(n)/8)` -/
def P1564391831661169659.Spec : Prop :=
  ∀ n, P1564391831661169659.a n = A171503 n

end A171503

/-! ## A171503.P13940415937448439247

`A002246(n)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A171503

/-- `A002246(n)+a(n-1)` -/
def P13940415937448439247.Spec : Prop :=
  ∀ n, P13940415937448439247.a n = A171503 n

theorem P13940415937448439247.correct : P13940415937448439247.Spec := by
  intro n
  simp only [A171503]

end A171503

/-! ## A171503.P12332767344742414734

`a(n-1)+4*A000010(n)` with `a(0)=0, a(1)=3`
-/

namespace A171503.P12332767344742414734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + 4 * A000010 n

end

end A171503.P12332767344742414734

namespace A171503

/-- `a(n-1)+4*A000010(n)` -/
def P12332767344742414734.Spec : Prop :=
  ∀ n, P12332767344742414734.a n = A171503 n

end A171503

/-! ## A171503.P7774371733366252176

`A140466(n)+A057428(n)`
-/

namespace A171503.P7774371733366252176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n + A057428 n

end

end A171503.P7774371733366252176

namespace A171503

/-- `A140466(n)+A057428(n)` -/
def P7774371733366252176.Spec : Prop :=
  ∀ n, P7774371733366252176.a n = A171503 n

end A171503

/-! ## A171503.P2648479973988541147

`A140466(n)-A057427(n)`
-/

namespace A171503.P2648479973988541147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n - A057427 n

end

end A171503.P2648479973988541147

namespace A171503

/-- `A140466(n)-A057427(n)` -/
def P2648479973988541147.Spec : Prop :=
  ∀ n, P2648479973988541147.a n = A171503 n

end A171503

/-! ## A171503.P15171147789977476006

`A100449(n)-A036453(n+1)`
-/

namespace A171503.P15171147789977476006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n - A036453 (n + 1)

end

end A171503.P15171147789977476006

namespace A171503

/-- `A100449(n)-A036453(n+1)` -/
def P15171147789977476006.Spec : Prop :=
  ∀ n, P15171147789977476006.a n = A171503 n

end A171503

/-! ## A171503.P2051889608427813360

`A057428(n)+A100449(n)-1`
-/

namespace A171503.P2051889608427813360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A100449 n - 1)

end

end A171503.P2051889608427813360

namespace A171503

/-- `A057428(n)+A100449(n)-1` -/
def P2051889608427813360.Spec : Prop :=
  ∀ n, P2051889608427813360.a n = A171503 n

end A171503

/-! ## A171503.P7118977913458878009

`A000007(n)+A100449(n)-2`
-/

namespace A171503.P7118977913458878009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A100449 n - 2)

end

end A171503.P7118977913458878009

namespace A171503

/-- `A000007(n)+A100449(n)-2` -/
def P7118977913458878009.Spec : Prop :=
  ∀ n, P7118977913458878009.a n = A171503 n

end A171503

/-! ## A171503.P5054059603152862169

`A057428(n)+2*A049696(n)`
-/

namespace A171503.P5054059603152862169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + 2 * A049696 n

end

end A171503.P5054059603152862169

namespace A171503

/-- `A057428(n)+2*A049696(n)` -/
def P5054059603152862169.Spec : Prop :=
  ∀ n, P5054059603152862169.a n = A171503 n

end A171503

/-! ## A171503.P3010670841492073849

`2*A049696(n)-A057427(n)`
-/

namespace A171503.P3010670841492073849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049696 n - A057427 n

end

end A171503.P3010670841492073849

namespace A171503

/-- `2*A049696(n)-A057427(n)` -/
def P3010670841492073849.Spec : Prop :=
  ∀ n, P3010670841492073849.a n = A171503 n

end A171503

/-! ## A171503.P13216944379091491681

`(A209993(n)-A059306(n))/2`
-/

namespace A171503.P13216944379091491681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209993 n - A059306 n : ℚ) / 2

end

end A171503.P13216944379091491681

namespace A171503

/-- `(A209993(n)-A059306(n))/2` -/
def P13216944379091491681.Spec : Prop :=
  ∀ n, P13216944379091491681.a n = (A171503 n : ℚ)

end A171503

/-! ## A171503.P1283050983666255702

`A140466(n)-(n-A014681(n))²`
-/

namespace A171503.P1283050983666255702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n - ((n : ℤ) - A014681 n) ^ 2

end

end A171503.P1283050983666255702

namespace A171503

/-- `A140466(n)-(n-A014681(n))²` -/
def P1283050983666255702.Spec : Prop :=
  ∀ n, P1283050983666255702.a n = A171503 n

end A171503

/-! ## A171503.P14308934687828584955

`A206350(n+1)+A049696(n)-1`
-/

namespace A171503.P14308934687828584955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 1) + (A049696 n - 1)

end

end A171503.P14308934687828584955

namespace A171503

/-- `A206350(n+1)+A049696(n)-1` -/
def P14308934687828584955.Spec : Prop :=
  ∀ n, P14308934687828584955.a n = A171503 n

end A171503

/-! ## A171503.P7017282481812492183

`A100449(n)-A174237(n+1)%3`
-/

namespace A171503.P7017282481812492183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n - Int.tmod (A174237 (n + 1)) 3

end

end A171503.P7017282481812492183

namespace A171503

/-- `A100449(n)-A174237(n+1)%3` -/
def P7017282481812492183.Spec : Prop :=
  ∀ n, P7017282481812492183.a n = A171503 n

end A171503

/-! ## A171503.P16723961121702296748

`A140466(n)-and(1, A000040(n+1))`
-/

namespace A171503.P16723961121702296748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n - Int.land 1 (A000040 (n + 1))

end

end A171503.P16723961121702296748

namespace A171503

/-- `A140466(n)-and(1, A000040(n+1))` -/
def P16723961121702296748.Spec : Prop :=
  ∀ n, P16723961121702296748.a n = A171503 n

end A171503

/-! ## A171503.P8852859668616841169

`∑[A002246(n+1)]-A002246(n+1)`
-/

namespace A171503.P8852859668616841169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002246 (n + 1)

end

end A171503.P8852859668616841169

namespace A171503

/-- `∑[A002246(n+1)]-A002246(n+1)` -/
def P8852859668616841169.Spec : Prop :=
  ∀ n, P8852859668616841169.a n = A171503 n

end A171503

/-! ## A171503.P13036709299095427909

`A100449(n)-A254438(round(n/(n+1))+1)`
-/

namespace A171503.P13036709299095427909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n - A254438 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) + 1).toNat

end

end A171503.P13036709299095427909

namespace A171503

/-- `A100449(n)-A254438(round(n/(n+1))+1)` -/
def P13036709299095427909.Spec : Prop :=
  ∀ n, P13036709299095427909.a n = A171503 n

end A171503

/-! ## A171503.P13982003817732642641

`A100449(n)-A020639(A004277(n))`
-/

namespace A171503.P13982003817732642641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n - A020639 (A004277 n).toNat

end

end A171503.P13982003817732642641

namespace A171503

/-- `A100449(n)-A020639(A004277(n))` -/
def P13982003817732642641.Spec : Prop :=
  ∀ n, P13982003817732642641.a n = A171503 n

end A171503

/-! ## A171503.P4617921405511908872

`A100449(n)-A000005(A020639(n+1))`
-/

namespace A171503.P4617921405511908872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n - A000005 (A020639 (n + 1)).toNat

end

end A171503.P4617921405511908872

namespace A171503

/-- `A100449(n)-A000005(A020639(n+1))` -/
def P4617921405511908872.Spec : Prop :=
  ∀ n, P4617921405511908872.a n = A171503 n

end A171503

/-!
# A171504: a(n) = n-th nonprime + n.

The programs for A171504, the canonical program `A171504.P6118621284767366624` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171504 has offset 1).

The definition of A171504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171504.P6118621284767366624

`A018252(n+1)+n+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171504

/-- `A018252(n+1)+n+1` -/
def P6118621284767366624.Spec : Prop :=
  ∀ n, P6118621284767366624.a n = A171504 (n + 1)

theorem P6118621284767366624.correct : P6118621284767366624.Spec := by
  intro n
  simp only [A171504, Nat.add_sub_cancel]

end A171504

/-! ## A171504.P13279417017916810245

`∑[A054546(n+1)+1]`
-/

namespace A171504.P13279417017916810245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171504.P13279417017916810245

namespace A171504

/-- `∑[A054546(n+1)+1]` -/
def P13279417017916810245.Spec : Prop :=
  ∀ n, P13279417017916810245.a n = A171504 (n + 1)

end A171504

/-! ## A171504.P17073247254713729327

`Δ[A051349(n)]+1+n`
-/

namespace A171504.P17073247254713729327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A171504.P17073247254713729327

namespace A171504

/-- `Δ[A051349(n)]+1+n` -/
def P17073247254713729327.Spec : Prop :=
  ∀ n, P17073247254713729327.a n = A171504 (n + 1)

end A171504

/-! ## A171504.P17968827561661311969

`n+1+A141468(n+2)`
-/

namespace A171504.P17968827561661311969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A141468 (n + 2)

end

end A171504.P17968827561661311969

namespace A171504

/-- `n+1+A141468(n+2)` -/
def P17968827561661311969.Spec : Prop :=
  ∀ n, P17968827561661311969.a n = A171504 (n + 1)

end A171504

/-! ## A171504.P4450121005788526625

`A073425(n)+2*(n+1)`
-/

namespace A171504.P4450121005788526625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n + (2 * (n + 1) : ℤ)

end

end A171504.P4450121005788526625

namespace A171504

/-- `A073425(n)+2*(n+1)` -/
def P4450121005788526625.Spec : Prop :=
  ∀ n, P4450121005788526625.a n = A171504 (n + 1)

end A171504

/-! ## A171504.P2939536933689478540

`A222307(Δ[n²])+n+1`
-/

namespace A171504.P2939536933689478540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A171504.P2939536933689478540

namespace A171504

/-- `A222307(Δ[n²])+n+1` -/
def P2939536933689478540.Spec : Prop :=
  ∀ n, P2939536933689478540.a n = A171504 (n + 1)

end A171504

/-! ## A171504.P5214596462755110481

`sqrt(A062312(n+1))+1+n`
-/

namespace A171504.P5214596462755110481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A171504.P5214596462755110481

namespace A171504

/-- `sqrt(A062312(n+1))+1+n` -/
def P5214596462755110481.Spec : Prop :=
  ∀ n, P5214596462755110481.a n = (A171504 (n + 1) : ℝ)

end A171504

/-! ## A171504.P17648019411350231676

`A222307(2*n+1)+1+n`
-/

namespace A171504.P17648019411350231676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1) + 1 + (n : ℤ)

end

end A171504.P17648019411350231676

namespace A171504

/-- `A222307(2*n+1)+1+n` -/
def P17648019411350231676.Spec : Prop :=
  ∀ n, P17648019411350231676.a n = A171504 (n + 1)

end A171504

/-! ## A171504.P12466605944773572957

`A139270(n+1)/2+n+1`
-/

namespace A171504.P12466605944773572957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139270 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A171504.P12466605944773572957

namespace A171504

/-- `A139270(n+1)/2+n+1` -/
def P12466605944773572957.Spec : Prop :=
  ∀ n, P12466605944773572957.a n = (A171504 (n + 1) : ℚ)

end A171504

/-! ## A171504.P11630489895306271430

`a(n-1)+A065310(n)+1` with `a(0)=2`
-/

namespace A171504.P11630489895306271430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A065310 n + 1)

end

end A171504.P11630489895306271430

namespace A171504

/-- `a(n-1)+A065310(n)+1` -/
def P11630489895306271430.Spec : Prop :=
  ∀ n, P11630489895306271430.a n = A171504 (n + 1)

end A171504

/-! ## A171504.P318298594585322458

`comp[record[A000010(n+1)]]+2+n`
-/

namespace A171504.P318298594585322458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A171504.P318298594585322458

namespace A171504

/-- `comp[record[A000010(n+1)]]+2+n` -/
def P318298594585322458.Spec : Prop :=
  ∀ n, (P318298594585322458.a n : ℤ) = A171504 (n + 1)

end A171504

/-! ## A171504.P8743925280167002659

`comp[A040976(n+1)+1]+n+2`
-/

namespace A171504.P8743925280167002659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 2)

end

end A171504.P8743925280167002659

namespace A171504

/-- `comp[A040976(n+1)+1]+n+2` -/
def P8743925280167002659.Spec : Prop :=
  ∀ n, (P8743925280167002659.a n : ℤ) = A171504 (n + 1)

end A171504

/-! ## A171504.P12103884665167505224

`comp[A000040(n+1)-1]+2+n`
-/

namespace A171504.P12103884665167505224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A171504.P12103884665167505224

namespace A171504

/-- `comp[A000040(n+1)-1]+2+n` -/
def P12103884665167505224.Spec : Prop :=
  ∀ n, (P12103884665167505224.a n : ℤ) = A171504 (n + 1)

end A171504

/-! ## A171504.P6894774586817751202

`comp[A006530(n+2)-1]+n+2`
-/

namespace A171504.P6894774586817751202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 2)

end

end A171504.P6894774586817751202

namespace A171504

/-- `comp[A006530(n+2)-1]+n+2` -/
def P6894774586817751202.Spec : Prop :=
  ∀ n, (P6894774586817751202.a n : ℤ) = A171504 (n + 1)

end A171504

/-! ## A171504.P9999665838230450443

`comp[A020639(n+2)-1]+2+n`
-/

namespace A171504.P9999665838230450443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 + n

end

end A171504.P9999665838230450443

namespace A171504

/-- `comp[A020639(n+2)-1]+2+n` -/
def P9999665838230450443.Spec : Prop :=
  ∀ n, (P9999665838230450443.a n : ℤ) = A171504 (n + 1)

end A171504

/-! ## A171504.P7786882518795124276

`comp[eq[1, A001222(n+1)]]+n+2`
-/

namespace A171504.P7786882518795124276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2)

end

end A171504.P7786882518795124276

namespace A171504

/-- `comp[eq[1, A001222(n+1)]]+n+2` -/
def P7786882518795124276.Spec : Prop :=
  ∀ n, (P7786882518795124276.a n : ℤ) = A171504 (n + 1)

end A171504

/-! ## A171504.P14512045653321533637

`A171523(n+1)/(n+1)+n+1`
-/

namespace A171504.P14512045653321533637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171523 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A171504.P14512045653321533637

namespace A171504

/-- `A171523(n+1)/(n+1)+n+1` -/
def P14512045653321533637.Spec : Prop :=
  ∀ n, P14512045653321533637.a n = (A171504 (n + 1) : ℚ)

end A171504

/-! ## A171504.P15858547584309814915

`lt[A020639(n+1)², n+2]+n+2`
-/

namespace A171504.P15858547584309814915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (n + 2)

end

end A171504.P15858547584309814915

namespace A171504

/-- `lt[A020639(n+1)², n+2]+n+2` -/
def P15858547584309814915.Spec : Prop :=
  ∀ n, (P15858547584309814915.a n : ℤ) = A171504 (n + 1)

end A171504

/-! ## A171504.P6271543938251200561

`lt[2*A006530(n+1), n+3]+n+2`
-/

namespace A171504.P6271543938251200561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (n + 2)

end

end A171504.P6271543938251200561

namespace A171504

/-- `lt[2*A006530(n+1), n+3]+n+2` -/
def P6271543938251200561.Spec : Prop :=
  ∀ n, (P6271543938251200561.a n : ℤ) = A171504 (n + 1)

end A171504

/-! ## A171504.P2720571971655186731

`2*n-(n-1-A018252(2*n-(n-1)))`
-/

namespace A171504.P2720571971655186731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - A018252 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A171504.P2720571971655186731

namespace A171504

/-- `2*n-(n-1-A018252(2*n-(n-1)))` -/
def P2720571971655186731.Spec : Prop :=
  ∀ n, P2720571971655186731.a n = A171504 (n + 1)

end A171504

/-!
# A171506: Coefficients of expansion polynomials related to fish weight allometric equation: p(x,t)=-Exp[t*x]*(1 - Exp[t/3])^3.

The programs for A171506, there is no canonical definition to state claims against.
-/

/-! ## A171506.P17562596687672048098

`A000009(n+4)*A160738(A251483(n))`
-/

namespace A171506.P17562596687672048098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 4) * A160738 (A251483 n).toNat

end

end A171506.P17562596687672048098

/-!
# A171507: a(n) = (5*2^(n+1)-9-(-1)^n)/6-2*n.

The programs for A171507, the canonical program `A171507.P13086555374085975948` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171507 has offset 0).

The definition of A171507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171507.P13086555374085975948

`A084640(n)-A042948(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171507

/-- `A084640(n)-A042948(n)` -/
def P13086555374085975948.Spec : Prop :=
  ∀ n, P13086555374085975948.a n = A171507 n

theorem P13086555374085975948.correct : P13086555374085975948.Spec := by
  intro n
  simp only [A171507]

end A171507

/-! ## A171507.P16332211189034397273

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6`
-/

namespace A171507.P16332211189034397273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 6] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + 2 * a (n - 4)

end

end A171507.P16332211189034397273

namespace A171507

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P16332211189034397273.Spec : Prop :=
  ∀ n, P16332211189034397273.a n = A171507 n

end A171507

/-! ## A171507.P7929847407598138493

`(5*2^(n+1)-9-(-1)^n)/6-2*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171507.P7929847407598138493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ (n + 1) : ℤ) - 9 - (-1) ^ n : ℚ) / 6 - (2 * n : ℚ)

end

end A171507.P7929847407598138493

namespace A171507

/-- `(5*2^(n+1)-9-(-1)^n)/6-2*n` -/
def P7929847407598138493.Spec : Prop :=
  ∀ n, P7929847407598138493.a n = (A171507 n : ℚ)

end A171507

/-! ## A171507.P11843226409490421064

`ogf((x^2+3x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A171507.P11843226409490421064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 3] [1, -3, 1, 3, -2] n

end

end A171507.P11843226409490421064

namespace A171507

/-- `ogf((x^2+3x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P11843226409490421064.Spec : Prop :=
  ∀ n, P11843226409490421064.a n = A171507 n

end A171507

/-!
# A171508: Numbers that are not the sum of the k-th noncomposite number and k for any k >= 1.

The programs for A171508, there is no canonical definition to state claims against.
-/

/-! ## A171508.P55128186353204110

`∑[C(n, ∏{d}[n, #])+1]`
-/

namespace A171508.P55128186353204110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ d ∈ Nat.divisors (f2 n), d) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171508.P55128186353204110

/-! ## A171508.P11418398738707418277

`∑[2^C(n, ∏{d}[n, #])]`
-/

namespace A171508.P11418398738707418277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.choose n (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171508.P11418398738707418277

/-! ## A171508.P8858573426584895226

`∑[C(2, C(n, ∏{d}[n, #]))]`
-/

namespace A171508.P8858573426584895226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose n (∏ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171508.P8858573426584895226

/-! ## A171508.P3173803843805891485

`∑[∏{p}[n, val(#, n)]]+n`
-/

namespace A171508.P3173803843805891485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A171508.P3173803843805891485

/-! ## A171508.P382249327409358039

`∑[∏{p}[n, C(#, n)]]+n`
-/

namespace A171508.P382249327409358039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A171508.P382249327409358039

/-! ## A171508.P7618929584694623246

`∑[ceil((n+1)/∏{d}[n, #])]`
-/

namespace A171508.P7618929584694623246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171508.P7618929584694623246

/-! ## A171508.P10834065965336980593

`∑[char[A166333(n)]+1]`
-/

namespace A171508.P10834065965336980593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171508.P10834065965336980593

/-! ## A171508.P12045454278442350493

`∑[char[A199333(n)]+1]`
-/

namespace A171508.P12045454278442350493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199333 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171508.P12045454278442350493

/-! ## A171508.P10860268425180653421

`comp[A173137(n+1)-1]`
-/

namespace A171508.P10860268425180653421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173137 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171508.P10860268425180653421

/-! ## A171508.P7020376809879201967

`comp[A158611(n+1)+n]`
-/

namespace A171508.P7020376809879201967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171508.P7020376809879201967

/-!
# A171509: Riordan array (f(x), x*f(x)) where f(x) is the g.f. of A126931.

The programs for A171509, there is no canonical definition to state claims against.
-/

/-! ## A171509.P8221438533643270155

`A132964(n)+A016389(A106187(n))`
-/

namespace A171509.P8221438533643270155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132964 n + A016389 (A106187 n).toNat

end

end A171509.P8221438533643270155

/-! ## A171509.P17548360617913091025

`A132964(n)+A016389(A272946(n))`
-/

namespace A171509.P17548360617913091025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132964 n + A016389 (A272946 n).toNat

end

end A171509.P17548360617913091025

/-! ## A171509.P10101692049098707168

`A132964(n)+A025469(A320733(n))`
-/

namespace A171509.P10101692049098707168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132964 n + A025469 (A320733 n).toNat

end

end A171509.P10101692049098707168

/-! ## A171509.P11336211540988061180

`A132964(n)-A178798(A067176(n))`
-/

namespace A171509.P11336211540988061180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132964 n - A178798 (A067176 n).toNat

end

end A171509.P11336211540988061180

/-! ## A171509.P14249036133385729456

`A132964(n)+A025466(A005957(n+2))`
-/

namespace A171509.P14249036133385729456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132964 n + A025466 (A005957 (n + 2)).toNat

end

end A171509.P14249036133385729456

/-!
# A171510: a(n) = 10*a(n-1) + a(n-2), with a(1)=2 and a(2)=1.

The programs for A171510, the canonical program `A171510.P8939063844320653229` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171510 has offset 1).

The definition of A171510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+a(n-2)` (program `A171510.P8939063844320653229`, by `A171510.P8939063844320653229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171510.P8939063844320653229

`10*a(n-1)+a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171510

/-- `10*a(n-1)+a(n-2)` -/
def P8939063844320653229.Spec : Prop :=
  ∀ n, (P8939063844320653229.a n : ℤ) = A171510 (n + 1)

theorem P8939063844320653229.correct : P8939063844320653229.Spec := by
  intro n
  simp only [A171510, Nat.add_sub_cancel]

end A171510

/-! ## A171510.P15505309612390527688

`ogf((-2+19x)/(-1+10x+x^2))`
-/

namespace A171510.P15505309612390527688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -19] [1, -10, -1] n

end

end A171510.P15505309612390527688

namespace A171510

/-- `ogf((-2+19x)/(-1+10x+x^2))` -/
def P15505309612390527688.Spec : Prop :=
  ∀ n, P15505309612390527688.a n = A171510 (n + 1)

end A171510

/-! ## A171510.P15431413278859861975

`a(n-1)+a(n-2)+a(n-1)/(1/3)²` with `a(0)=2, a(1)=1`
-/

namespace A171510.P15431413278859861975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 1) / ((1 : ℚ) / 3) ^ 2)

end

end A171510.P15431413278859861975

namespace A171510

/-- `a(n-1)+a(n-2)+a(n-1)/(1/3)²` -/
def P15431413278859861975.Spec : Prop :=
  ∀ n, P15431413278859861975.a n = (A171510 (n + 1) : ℚ)

end A171510

/-! ## A171510.P18178350561644520924

`a(n-2)+10*a(A023443(n))` with `a(0)=2, a(1)=1`
-/

namespace A171510.P18178350561644520924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 2) + 10 * a (A023443 n).toNat

end

end A171510.P18178350561644520924

namespace A171510

/-- `a(n-2)+10*a(A023443(n))` -/
def P18178350561644520924.Spec : Prop :=
  ∀ n, (P18178350561644520924.a n : ℤ) = A171510 (n + 1)

end A171510

/-! ## A171510.P3948761181536566220

`A086927(n)%lcm(3, A155199(n))`
-/

namespace A171510.P3948761181536566220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086927 n) (Int.lcm 3 (A155199 n) : ℤ)

end

end A171510.P3948761181536566220

namespace A171510

/-- `A086927(n)%lcm(3, A155199(n))` -/
def P3948761181536566220.Spec : Prop :=
  ∀ n, P3948761181536566220.a n = A171510 (n + 1)

end A171510

/-! ## A171510.P15888699719625496584

`A015456(n)+A086927(n)-A041041(n)`
-/

namespace A171510.P15888699719625496584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015456 n + (A086927 n - A041041 n)

end

end A171510.P15888699719625496584

namespace A171510

/-- `A015456(n)+A086927(n)-A041041(n)` -/
def P15888699719625496584.Spec : Prop :=
  ∀ n, P15888699719625496584.a n = A171510 (n + 1)

end A171510

/-! ## A171510.P11692082671481246913

`A086927(n)-A155199(n)%A041041(n)`
-/

namespace A171510.P11692082671481246913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086927 n - Int.tmod (A155199 n) (A041041 n)

end

end A171510.P11692082671481246913

namespace A171510

/-- `A086927(n)-A155199(n)%A041041(n)` -/
def P11692082671481246913.Spec : Prop :=
  ∀ n, P11692082671481246913.a n = A171510 (n + 1)

end A171510

/-!
# A171511: Numbers that are not the sum of the k-th composite number and k for any k >= 1.

The programs for A171511, the canonical program `A171511.P11743782956848612865` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171511 has offset 1).

The definition of A171511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171511.P11743782956848612865

`∑[2-∏{p}[n, val(#, n)]]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171511

/-- `∑[2-∏{p}[n, val(#, n)]]` -/
def P11743782956848612865.Spec : Prop :=
  ∀ n, P11743782956848612865.a n = A171511 (n + 1)

theorem P11743782956848612865.correct : P11743782956848612865.Spec := by
  intro n
  simp only [A171511, Nat.add_sub_cancel]

end A171511

/-! ## A171511.P3810911987235274091

`∑[2-∏{p}[n, C(#, n)]]`
-/

namespace A171511.P3810911987235274091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171511.P3810911987235274091

namespace A171511

/-- `∑[2-∏{p}[n, C(#, n)]]` -/
def P3810911987235274091.Spec : Prop :=
  ∀ n, P3810911987235274091.a n = A171511 (n + 1)

end A171511

/-! ## A171511.P4119627268484371171

`comp[comp[A130008(n)]+n]`
-/

namespace A171511.P4119627268484371171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P4119627268484371171

namespace A171511

/-- `comp[comp[A130008(n)]+n]` -/
def P4119627268484371171.Spec : Prop :=
  ∀ n, (P4119627268484371171.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P3355701209302945737

`∑[char[Δ[A053767(n)]]+1]`
-/

namespace A171511.P3355701209302945737
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171511.P3355701209302945737

namespace A171511

/-- `∑[char[Δ[A053767(n)]]+1]` -/
def P3355701209302945737.Spec : Prop :=
  ∀ n, (P3355701209302945737.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P15434190380198632446

`∑[char[A002808(n+1)]+1]`
-/

namespace A171511.P15434190380198632446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171511.P15434190380198632446

namespace A171511

/-- `∑[char[A002808(n+1)]+1]` -/
def P15434190380198632446.Spec : Prop :=
  ∀ n, (P15434190380198632446.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P16208076167153574781

`∑[char[A018252(n+2)]+1]`
-/

namespace A171511.P16208076167153574781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171511.P16208076167153574781

namespace A171511

/-- `∑[char[A018252(n+2)]+1]` -/
def P16208076167153574781.Spec : Prop :=
  ∀ n, (P16208076167153574781.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P1909023122513848334

`∑[2-char[A158611(n+1)]]`
-/

namespace A171511.P1909023122513848334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171511.P1909023122513848334

namespace A171511

/-- `∑[2-char[A158611(n+1)]]` -/
def P1909023122513848334.Spec : Prop :=
  ∀ n, P1909023122513848334.a n = A171511 (n + 1)

end A171511

/-! ## A171511.P13477253774266630217

`comp[comp[A006530(n+1)]+n]`
-/

namespace A171511.P13477253774266630217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P13477253774266630217

namespace A171511

/-- `comp[comp[A006530(n+1)]+n]` -/
def P13477253774266630217.Spec : Prop :=
  ∀ n, (P13477253774266630217.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P15464073145828397626

`comp[comp[A008578(n+1)]+n]`
-/

namespace A171511.P15464073145828397626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P15464073145828397626

namespace A171511

/-- `comp[comp[A008578(n+1)]+n]` -/
def P15464073145828397626.Spec : Prop :=
  ∀ n, (P15464073145828397626.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P5614858932475613683

`comp[comp[A020639(n+1)]+n]`
-/

namespace A171511.P5614858932475613683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P5614858932475613683

namespace A171511

/-- `comp[comp[A020639(n+1)]+n]` -/
def P5614858932475613683.Spec : Prop :=
  ∀ n, (P5614858932475613683.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P878772927013399011

`comp[comp[A025473(n+1)]+n]`
-/

namespace A171511.P878772927013399011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P878772927013399011

namespace A171511

/-- `comp[comp[A025473(n+1)]+n]` -/
def P878772927013399011.Spec : Prop :=
  ∀ n, (P878772927013399011.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P10733520131918248653

`comp[comp[A079068(n+1)]+n]`
-/

namespace A171511.P10733520131918248653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P10733520131918248653

namespace A171511

/-- `comp[comp[A079068(n+1)]+n]` -/
def P10733520131918248653.Spec : Prop :=
  ∀ n, (P10733520131918248653.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P9702052416661598975

`comp[comp[A166333(n)]+n]`
-/

namespace A171511.P9702052416661598975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P9702052416661598975

namespace A171511

/-- `comp[comp[A166333(n)]+n]` -/
def P9702052416661598975.Spec : Prop :=
  ∀ n, (P9702052416661598975.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P13493460666696144286

`comp[comp[A153023(n+1)]+n]`
-/

namespace A171511.P13493460666696144286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153023 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P13493460666696144286

namespace A171511

/-- `comp[comp[A153023(n+1)]+n]` -/
def P13493460666696144286.Spec : Prop :=
  ∀ n, (P13493460666696144286.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P17764670756251888069

`∑[char[A191558(n+2)]]+n`
-/

namespace A171511.P17764670756251888069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A171511.P17764670756251888069

namespace A171511

/-- `∑[char[A191558(n+2)]]+n` -/
def P17764670756251888069.Spec : Prop :=
  ∀ n, (P17764670756251888069.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P617870881273259068

`comp[comp[A014963(n+1)]+n]`
-/

namespace A171511.P617870881273259068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P617870881273259068

namespace A171511

/-- `comp[comp[A014963(n+1)]+n]` -/
def P617870881273259068.Spec : Prop :=
  ∀ n, (P617870881273259068.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P8845039834376225843

`comp[comp[A014973(n+1)]+n]`
-/

namespace A171511.P8845039834376225843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P8845039834376225843

namespace A171511

/-- `comp[comp[A014973(n+1)]+n]` -/
def P8845039834376225843.Spec : Prop :=
  ∀ n, (P8845039834376225843.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P11567890829616126891

`comp[comp[A078833(n+1)]+n]`
-/

namespace A171511.P11567890829616126891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078833 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P11567890829616126891

namespace A171511

/-- `comp[comp[A078833(n+1)]+n]` -/
def P11567890829616126891.Spec : Prop :=
  ∀ n, (P11567890829616126891.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P15429656152811332804

`comp[comp[A089026(n+1)]+n]`
-/

namespace A171511.P15429656152811332804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P15429656152811332804

namespace A171511

/-- `comp[comp[A089026(n+1)]+n]` -/
def P15429656152811332804.Spec : Prop :=
  ∀ n, (P15429656152811332804.a n : ℤ) = A171511 (n + 1)

end A171511

/-! ## A171511.P10535181315593378939

`comp[comp[A284694(n+1)]+n]`
-/

namespace A171511.P10535181315593378939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171511.P10535181315593378939

namespace A171511

/-- `comp[comp[A284694(n+1)]+n]` -/
def P10535181315593378939.Spec : Prop :=
  ∀ n, (P10535181315593378939.a n : ℤ) = A171511 (n + 1)

end A171511

/-!
# A171512: a(n) = numbers m such that are not the sum of k-th nonprime number and k for any k >= 1.

The programs for A171512, there is no canonical definition to state claims against.
-/

/-! ## A171512.P1118317156623605149

`∑[2-C(∑{p}[n, #], n)]`
-/

namespace A171512.P1118317156623605149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171512.P1118317156623605149

/-! ## A171512.P5066422962463614239

`∑[gcd(2, C(∑{p}[n, #], n))]`
-/

namespace A171512.P5066422962463614239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171512.P5066422962463614239

/-! ## A171512.P14149263153540353350

`comp[comp[p?[xor(1, n)]]+n]`
-/

namespace A171512.P14149263153540353350
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171512.P14149263153540353350

/-! ## A171512.P1575109323288038190

`∑[2-char[record[∑{p}[n, #]]]]`
-/

namespace A171512.P1575109323288038190
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171512.P1575109323288038190

/-! ## A171512.P3095019775857103373

`comp[comp[p?[comp[n²]]]+n]`
-/

namespace A171512.P3095019775857103373
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171512.P3095019775857103373

/-! ## A171512.P18042851603402209445

`comp[comp[eq[1, ∑{e}[n, #]]]+n]`
-/

namespace A171512.P18042851603402209445
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171512.P18042851603402209445

/-! ## A171512.P17641059758664190552

`∑[2/(C(∑{p}[n, #], n)+1)]`
-/

namespace A171512.P17641059758664190552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171512.P17641059758664190552

/-! ## A171512.P6012505668983361163

`2*n-∑[char[p?[xor(1, n)]]]+1`
-/

namespace A171512.P6012505668983361163
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1

end

end A171512.P6012505668983361163

/-! ## A171512.P8233791957612182419

`1-∑[char[p?[xor(1, n)]]]+n+n`
-/

namespace A171512.P8233791957612182419
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)

end

end A171512.P8233791957612182419

/-! ## A171512.P12779617499436262679

`A282029(Δ[n²])`
-/

namespace A171512.P12779617499436262679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282029 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A171512.P12779617499436262679

/-!
# A171513: a(n) = 1 + 8*10^n + 100^n.

The programs for A171513, the canonical program `A171513.P15181314882156444991` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171513 has offset 0).

The definition of A171513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+8*10^n+100^n` (program `A171513.P15181314882156444991`, by `A171513.P15181314882156444991.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171513.P15181314882156444991

`1+8*10^n+100^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171513

/-- `1+8*10^n+100^n` -/
def P15181314882156444991.Spec : Prop :=
  ∀ n, (P15181314882156444991.a n : ℤ) = A171513 n

theorem P15181314882156444991.correct : P15181314882156444991.Spec := by
  intro n
  simp only [A171513]

end A171513

/-! ## A171513.P2509540244030955671

`abs(A011557(n)-A171553(n))`
-/

namespace A171513.P2509540244030955671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A171553 n|

end

end A171513.P2509540244030955671

namespace A171513

/-- `abs(A011557(n)-A171553(n))` -/
def P2509540244030955671.Spec : Prop :=
  ∀ n, P2509540244030955671.a n = A171513 n

end A171513

/-! ## A171513.P15154108056218836683

`(A225813(n)+A171553(n))/2`
-/

namespace A171513.P15154108056218836683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225813 n + A171553 n : ℚ) / 2

end

end A171513.P15154108056218836683

namespace A171513

/-- `(A225813(n)+A171553(n))/2` -/
def P15154108056218836683.Spec : Prop :=
  ∀ n, P15154108056218836683.a n = (A171513 n : ℚ)

end A171513

/-! ## A171513.P8810322129490082833

`abs(A168624(n)+Δ[A002283(n)])`
-/

namespace A171513.P8810322129490082833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168624 n + (f1 (n + 1) - f1 n)|

end

end A171513.P8810322129490082833

namespace A171513

/-- `abs(A168624(n)+Δ[A002283(n)])` -/
def P8810322129490082833.Spec : Prop :=
  ∀ n, P8810322129490082833.a n = A171513 n

end A171513

/-! ## A171513.P17269434742695460172

`abs(A225810(n)+Δ[A093140(n)])`
-/

namespace A171513.P17269434742695460172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225810 n + (f1 (n + 1) - f1 n)|

end

end A171513.P17269434742695460172

namespace A171513

/-- `abs(A225810(n)+Δ[A093140(n)])` -/
def P17269434742695460172.Spec : Prop :=
  ∀ n, P17269434742695460172.a n = A171513 n

end A171513

/-!
# A171514: Numbers k such that 1 + 8*10^k + 100^k is prime.

The programs for A171514, there is no canonical definition to state claims against.
-/

/-! ## A171514.P17434179553377643294

`floor(A100458(n+1)/2)`
-/

namespace A171514.P17434179553377643294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100458 (n + 1) : ℚ) / 2⌋

end

end A171514.P17434179553377643294

/-! ## A171514.P13836305936709806089

`A004524(A100458(n+1))`
-/

namespace A171514.P13836305936709806089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A100458 (n + 1)).toNat

end

end A171514.P13836305936709806089

/-! ## A171514.P1354223197380513773

`A065423(A100458(n+1)+1)`
-/

namespace A171514.P1354223197380513773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A100458 (n + 1) + 1).toNat

end

end A171514.P1354223197380513773

/-! ## A171514.P10078917325598660612

`A001281(A100458(n+1)-1)`
-/

namespace A171514.P10078917325598660612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A100458 (n + 1) - 1).toNat

end

end A171514.P10078917325598660612

/-!
# A171516: a(n) = a(n-1) + a(n-2) + k, n>1; with a(0) = 1, a(1) = 2, k = 3.

The programs for A171516, the canonical program `A171516.P3433251004724366765` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171516 has offset 0).

The definition of A171516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171516.P3433251004724366765

`a(n-1)+a(n-2)+3` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171516

/-- `a(n-1)+a(n-2)+3` -/
def P3433251004724366765.Spec : Prop :=
  ∀ n, (P3433251004724366765.a n : ℤ) = A171516 n

theorem P3433251004724366765.correct : P3433251004724366765.Spec := by
  intro n
  simp only [A171516]

end A171516

/-! ## A171516.P15670787381239209347

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A171516.P15670787381239209347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A171516.P15670787381239209347

namespace A171516

/-- `2*a(n-1)-a(n-3)` -/
def P15670787381239209347.Spec : Prop :=
  ∀ n, P15670787381239209347.a n = A171516 n

end A171516

/-! ## A171516.P14843712682070153806

`A000285(n+1)-3`
-/

namespace A171516.P14843712682070153806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 (n + 1) - 3

end

end A171516.P14843712682070153806

namespace A171516

/-- `A000285(n+1)-3` -/
def P14843712682070153806.Spec : Prop :=
  ∀ n, P14843712682070153806.a n = A171516 n

end A171516

/-! ## A171516.P13443458907278579262

`ogf((1+2x^2)/(1-2x+x^3))`
-/

namespace A171516.P13443458907278579262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -2, 0, 1] n

end

end A171516.P13443458907278579262

namespace A171516

/-- `ogf((1+2x^2)/(1-2x+x^3))` -/
def P13443458907278579262.Spec : Prop :=
  ∀ n, P13443458907278579262.a n = A171516 n

end A171516

/-! ## A171516.P9346634262982537879

`4-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A171516.P9346634262982537879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (1 - a (n - 1) - a (n - 2))

end

end A171516.P9346634262982537879

namespace A171516

/-- `4-floor(1-a(n-1)-a(n-2))` -/
def P9346634262982537879.Spec : Prop :=
  ∀ n, P9346634262982537879.a n = A171516 n

end A171516

/-! ## A171516.P17686129349143386703

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A171516.P17686129349143386703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A171516.P17686129349143386703

namespace A171516

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P17686129349143386703.Spec : Prop :=
  ∀ n, P17686129349143386703.a n = A171516 n

end A171516

/-! ## A171516.P15689275553342321166

`4-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A171516.P15689275553342321166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A171516.P15689275553342321166

namespace A171516

/-- `4-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P15689275553342321166.Spec : Prop :=
  ∀ n, P15689275553342321166.a n = A171516 n

end A171516

/-! ## A171516.P10654262878371054075

`A030119(n)+n`
-/

namespace A171516.P10654262878371054075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n + (n : ℤ)

end

end A171516.P10654262878371054075

namespace A171516

/-- `A030119(n)+n` -/
def P10654262878371054075.Spec : Prop :=
  ∀ n, P10654262878371054075.a n = A171516 n

end A171516

/-! ## A171516.P9500872308329481737

`∑[A104449(n)]-2`
-/

namespace A171516.P9500872308329481737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A171516.P9500872308329481737

namespace A171516

/-- `∑[A104449(n)]-2` -/
def P9500872308329481737.Spec : Prop :=
  ∀ n, P9500872308329481737.a n = A171516 n

end A171516

/-! ## A171516.P3524533467970077086

`A022308(n+1)-2`
-/

namespace A171516.P3524533467970077086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 (n + 1) - 2

end

end A171516.P3524533467970077086

namespace A171516

/-- `A022308(n+1)-2` -/
def P3524533467970077086.Spec : Prop :=
  ∀ n, P3524533467970077086.a n = A171516 n

end A171516

/-! ## A171516.P7126338333053920897

`A104449(n+2)-3`
-/

namespace A171516.P7126338333053920897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 2) - 3

end

end A171516.P7126338333053920897

namespace A171516

/-- `A104449(n+2)-3` -/
def P7126338333053920897.Spec : Prop :=
  ∀ n, P7126338333053920897.a n = A171516 n

end A171516

/-! ## A171516.P8257561122861133472

`A192981(n)+2*n`
-/

namespace A171516.P8257561122861133472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192981 n + (2 * n : ℤ)

end

end A171516.P8257561122861133472

namespace A171516

/-- `A192981(n)+2*n` -/
def P8257561122861133472.Spec : Prop :=
  ∀ n, P8257561122861133472.a n = A171516 n

end A171516

/-! ## A171516.P15291702394627322782

`A001911(n)+A001595(n)`
-/

namespace A171516.P15291702394627322782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + A001595 n

end

end A171516.P15291702394627322782

namespace A171516

/-- `A001911(n)+A001595(n)` -/
def P15291702394627322782.Spec : Prop :=
  ∀ n, P15291702394627322782.a n = A171516 n

end A171516

/-! ## A171516.P12559941288281380593

`A154691(n)-A000045(n)`
-/

namespace A171516.P12559941288281380593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n - A000045 n

end

end A171516.P12559941288281380593

namespace A171516

/-- `A154691(n)-A000045(n)` -/
def P12559941288281380593.Spec : Prop :=
  ∀ n, P12559941288281380593.a n = A171516 n

end A171516

/-! ## A171516.P10421630380919286789

`A192746(n)-A022086(n)`
-/

namespace A171516.P10421630380919286789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 n - A022086 n

end

end A171516.P10421630380919286789

namespace A171516

/-- `A192746(n)-A022086(n)` -/
def P10421630380919286789.Spec : Prop :=
  ∀ n, P10421630380919286789.a n = A171516 n

end A171516

/-! ## A171516.P16230361046059459887

`A014739(n)+A000071(n+1)`
-/

namespace A171516.P16230361046059459887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + A000071 (n + 1)

end

end A171516.P16230361046059459887

namespace A171516

/-- `A014739(n)+A000071(n+1)` -/
def P16230361046059459887.Spec : Prop :=
  ∀ n, P16230361046059459887.a n = A171516 n

end A171516

/-! ## A171516.P14039113708807806859

`A022319(n+1)-A018910(n)`
-/

namespace A171516.P14039113708807806859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 (n + 1) - A018910 n

end

end A171516.P14039113708807806859

namespace A171516

/-- `A022319(n+1)-A018910(n)` -/
def P14039113708807806859.Spec : Prop :=
  ∀ n, P14039113708807806859.a n = A171516 n

end A171516

/-! ## A171516.P16008873907058517773

`A111314(n)+A000071(n+2)`
-/

namespace A171516.P16008873907058517773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + A000071 (n + 2)

end

end A171516.P16008873907058517773

namespace A171516

/-- `A111314(n)+A000071(n+2)` -/
def P16008873907058517773.Spec : Prop :=
  ∀ n, P16008873907058517773.a n = A171516 n

end A171516

/-! ## A171516.P12694389392388694771

`A168193(n)+1-A000045(n)`
-/

namespace A171516.P12694389392388694771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + (1 - A000045 n)

end

end A171516.P12694389392388694771

namespace A171516

/-- `A168193(n)+1-A000045(n)` -/
def P12694389392388694771.Spec : Prop :=
  ∀ n, P12694389392388694771.a n = A171516 n

end A171516

/-!
# A171517: Primes p such that 2*p+11 is prime.

The programs for A171517, the canonical program `A171517.P13209293710807330525` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171517 has offset 1).

The definition of A171517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171517.P896061181658011346

`p?[2*A111199(n+1)-1]`
-/

namespace A171517.P896061181658011346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111199 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P896061181658011346

namespace A171517

/-- `p?[2*A111199(n+1)-1]` -/
def P896061181658011346.Spec : Prop :=
  ∀ n, P896061181658011346.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P3291582168703000008

`p?[A111215(n+1)+A111215(n+1)-3]`
-/

namespace A171517.P3291582168703000008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + (A111215 (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P3291582168703000008

namespace A171517

/-- `p?[A111215(n+1)+A111215(n+1)-3]` -/
def P3291582168703000008.Spec : Prop :=
  ∀ n, P3291582168703000008.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P15761448117283628099

`p?[A005098(n+1)+A005098(n+1)-5]`
-/

namespace A171517.P15761448117283628099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + (A005098 (n + 1) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P15761448117283628099

namespace A171517

/-- `p?[A005098(n+1)+A005098(n+1)-5]` -/
def P15761448117283628099.Spec : Prop :=
  ∀ n, P15761448117283628099.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P12784159279761587811

`p?[A004525(A082073(n+1))+a(n-1)]` with `a(0)=1`
-/

namespace A171517.P12784159279761587811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004525 (A082073 (n + 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P12784159279761587811

namespace A171517

/-- `p?[A004525(A082073(n+1))+a(n-1)]` -/
def P12784159279761587811.Spec : Prop :=
  ∀ n, P12784159279761587811.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P13209293710807330525

`p?[A101448(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171517

/-- `p?[A101448(n+1)]` -/
def P13209293710807330525.Spec : Prop :=
  ∀ n, P13209293710807330525.a n = A171517 (n + 1)

theorem P13209293710807330525.correct : P13209293710807330525.Spec := by
  intro n
  simp only [A171517, Nat.add_sub_cancel]

end A171517

/-! ## A171517.P2639592457699020498

`p?[∑[A028334(n+5)]]`
-/

namespace A171517.P2639592457699020498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P2639592457699020498

namespace A171517

/-- `p?[∑[A028334(n+5)]]` -/
def P2639592457699020498.Spec : Prop :=
  ∀ n, P2639592457699020498.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P1177681345490947853

`p?[A153081(n+1)+1]`
-/

namespace A171517.P1177681345490947853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P1177681345490947853

namespace A171517

/-- `p?[A153081(n+1)+1]` -/
def P1177681345490947853.Spec : Prop :=
  ∀ n, P1177681345490947853.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P8530462318152762495

`p?[A089559(n+1)+2]`
-/

namespace A171517.P8530462318152762495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P8530462318152762495

namespace A171517

/-- `p?[A089559(n+1)+2]` -/
def P8530462318152762495.Spec : Prop :=
  ∀ n, P8530462318152762495.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P14670607334537506287

`p?[A155722(n+1)-1]`
-/

namespace A171517.P14670607334537506287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P14670607334537506287

namespace A171517

/-- `p?[A155722(n+1)-1]` -/
def P14670607334537506287.Spec : Prop :=
  ∀ n, P14670607334537506287.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P17810286783152564983

`p?[A105760(n+1)-2]`
-/

namespace A171517.P17810286783152564983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P17810286783152564983

namespace A171517

/-- `p?[A105760(n+1)-2]` -/
def P17810286783152564983.Spec : Prop :=
  ∀ n, P17810286783152564983.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P12513160777538764382

`p?[A067076(n+1)-4]`
-/

namespace A171517.P12513160777538764382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P12513160777538764382

namespace A171517

/-- `p?[A067076(n+1)-4]` -/
def P12513160777538764382.Spec : Prop :=
  ∀ n, P12513160777538764382.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P5480277964820408624

`p?[A161720(n+3)-2]`
-/

namespace A171517.P5480277964820408624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P5480277964820408624

namespace A171517

/-- `p?[A161720(n+3)-2]` -/
def P5480277964820408624.Spec : Prop :=
  ∀ n, P5480277964820408624.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P8864645341690179006

`p?[A005097(n+1)-5]`
-/

namespace A171517.P8864645341690179006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P8864645341690179006

namespace A171517

/-- `p?[A005097(n+1)-5]` -/
def P8864645341690179006.Spec : Prop :=
  ∀ n, P8864645341690179006.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P6547753837741980673

`p?[A130290(n+1)-5]`
-/

namespace A171517.P6547753837741980673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P6547753837741980673

namespace A171517

/-- `p?[A130290(n+1)-5]` -/
def P6547753837741980673.Spec : Prop :=
  ∀ n, P6547753837741980673.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P6424613012325756171

`p?[A006254(n+1)-6]`
-/

namespace A171517.P6424613012325756171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P6424613012325756171

namespace A171517

/-- `p?[A006254(n+1)-6]` -/
def P6424613012325756171.Spec : Prop :=
  ∀ n, P6424613012325756171.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P6685771985011825963

`p?[A098090(n+1)-7]`
-/

namespace A171517.P6685771985011825963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P6685771985011825963

namespace A171517

/-- `p?[A098090(n+1)-7]` -/
def P6685771985011825963.Spec : Prop :=
  ∀ n, P6685771985011825963.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P16565936138510117957

`p?[A089192(n+1)-9]`
-/

namespace A171517.P16565936138510117957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171517.P16565936138510117957

namespace A171517

/-- `p?[A089192(n+1)-9]` -/
def P16565936138510117957.Spec : Prop :=
  ∀ n, P16565936138510117957.a n = A171517 (n + 1)

end A171517

/-! ## A171517.P10723524937475971579

`record[A020639(A101448(n+3))]`
-/

namespace A171517.P10723524937475971579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A101448 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171517.P10723524937475971579

namespace A171517

/-- `record[A020639(A101448(n+3))]` -/
def P10723524937475971579.Spec : Prop :=
  ∀ n, P10723524937475971579.a n = A171517 (n + 1)

end A171517

/-!
# A171518: Primes p such that 3*p-+8 are primes.

The programs for A171518, there is no canonical definition to state claims against.
-/

/-! ## A171518.P10091474370618934387

`p?[ceil(A087682(n+1)/3)]`
-/

namespace A171518.P10091474370618934387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087682 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171518.P10091474370618934387

/-! ## A171518.P7942460170964461855

`record[A006530(A087682(n+2))]`
-/

namespace A171518.P7942460170964461855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087682 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171518.P7942460170964461855

/-! ## A171518.P1353878415749909405

`record[A006530(A049488(n+2)+8)]`
-/

namespace A171518.P1353878415749909405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049488 (n + 2) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171518.P1353878415749909405

/-! ## A171518.P14235398762564233427

`p?[A006083(A087682(n+1))]`
-/

namespace A171518.P14235398762564233427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006083 (A087682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171518.P14235398762564233427

/-! ## A171518.P17280295291153584922

`p?[A026166(A088768(n+1))]`
-/

namespace A171518.P17280295291153584922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (A088768 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171518.P17280295291153584922

/-! ## A171518.P11116762524841793607

`p?[A004396(A088768(n+2))]`
-/

namespace A171518.P11116762524841793607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A088768 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171518.P11116762524841793607

/-! ## A171518.P10075182853994061569

`A080512(p?[A322982(A087682(n+1))])`
-/

namespace A171518.P10075182853994061569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322982 (A087682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171518.P10075182853994061569

/-!
# A171519: a(n) = numbers m such that are not the product of k-th noncomposite number and k for any k >= 1.

The programs for A171519, there is no canonical definition to state claims against.
-/

/-! ## A171519.P10155467029920018823

`comp[C(n, 3)]+char[6]`
-/

namespace A171519.P10155467029920018823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (if ∃ j, f2 j = n then 1 else 0)

end

end A171519.P10155467029920018823

/-! ## A171519.P7845763227835154708

`comp[∑[∑[n]]-char[3]]`
-/

namespace A171519.P7845763227835154708
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171519.P7845763227835154708

/-! ## A171519.P12051684314476326267

`comp[A066186(n)]%56`
-/

namespace A171519.P12051684314476326267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 56

end

end A171519.P12051684314476326267

/-! ## A171519.P8429493120532040441

`comp[A000292(n)]+char[6]`
-/

namespace A171519.P8429493120532040441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (if ∃ j, f2 j = n then 1 else 0)

end

end A171519.P8429493120532040441

/-! ## A171519.P8167616382398933360

`A145397(n+1)+char[6]`
-/

namespace A171519.P8167616382398933360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145397 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A171519.P8167616382398933360

/-! ## A171519.P8915932042362351137

`round(∑[ratio[A001359(n+4)]])`
-/

namespace A171519.P8915932042362351137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 4)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171519.P8915932042362351137

/-! ## A171519.P3292685147962972144

`comp[∑[A152749(n)]+n]+1`
-/

namespace A171519.P3292685147962972144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171519.P3292685147962972144

/-! ## A171519.P8571786718155939990

`comp[A066186(n+1)-1]+1`
-/

namespace A171519.P8571786718155939990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171519.P8571786718155939990

/-! ## A171519.P594081502387313880

`A296882(comp[record[A182700(n)]])`
-/

namespace A171519.P594081502387313880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A171519.P594081502387313880

/-!
# A171520: Integers m that are not the product of k-th prime and k for any k >= 1.

The programs for A171520, the canonical program `A171520.P5490596902077466460` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171520 has offset 1).

The definition of A171520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171520.P5490596902077466460

`comp[n*record[∑{p}[n, #]]]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171520

/-- `comp[n*record[∑{p}[n, #]]]` -/
def P5490596902077466460.Spec : Prop :=
  ∀ n, (P5490596902077466460.a n : ℤ) = A171520 (n + 1)

theorem P5490596902077466460.correct : P5490596902077466460.Spec := by
  intro n
  simp only [A171520, Nat.add_sub_cancel]

end A171520

/-! ## A171520.P11926598719245035602

`comp[n*record[A047814(n)]]`
-/

namespace A171520.P11926598719245035602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171520.P11926598719245035602

namespace A171520

/-- `comp[n*record[A047814(n)]]` -/
def P11926598719245035602.Spec : Prop :=
  ∀ n, (P11926598719245035602.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P16344243172753575453

`comp[n*comp[A251756(n)]]`
-/

namespace A171520.P16344243172753575453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251756 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171520.P16344243172753575453

namespace A171520

/-- `comp[n*comp[A251756(n)]]` -/
def P16344243172753575453.Spec : Prop :=
  ∀ n, (P16344243172753575453.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P1934294312119332505

`comp[n*A008578(n+1)]`
-/

namespace A171520.P1934294312119332505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171520.P1934294312119332505

namespace A171520

/-- `comp[n*A008578(n+1)]` -/
def P1934294312119332505.Spec : Prop :=
  ∀ n, (P1934294312119332505.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P2355767802703826778

`comp[n*A015919(n+1)]`
-/

namespace A171520.P2355767802703826778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A015919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171520.P2355767802703826778

namespace A171520

/-- `comp[n*A015919(n+1)]` -/
def P2355767802703826778.Spec : Prop :=
  ∀ n, (P2355767802703826778.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P9237472887515686811

`comp[n*A182986(n+1)]`
-/

namespace A171520.P9237472887515686811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171520.P9237472887515686811

namespace A171520

/-- `comp[n*A182986(n+1)]` -/
def P9237472887515686811.Spec : Prop :=
  ∀ n, (P9237472887515686811.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P11393563662388794794

`comp[n*record[A006530(n+1)]]`
-/

namespace A171520.P11393563662388794794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171520.P11393563662388794794

namespace A171520

/-- `comp[n*record[A006530(n+1)]]` -/
def P11393563662388794794.Spec : Prop :=
  ∀ n, (P11393563662388794794.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P13063978498015396149

`comp[n*record[A014963(n+1)]]`
-/

namespace A171520.P13063978498015396149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171520.P13063978498015396149

namespace A171520

/-- `comp[n*record[A014963(n+1)]]` -/
def P13063978498015396149.Spec : Prop :=
  ∀ n, (P13063978498015396149.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P7588121295848292097

`comp[n*record[A020639(n+1)]]`
-/

namespace A171520.P7588121295848292097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171520.P7588121295848292097

namespace A171520

/-- `comp[n*record[A020639(n+1)]]` -/
def P7588121295848292097.Spec : Prop :=
  ∀ n, (P7588121295848292097.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P5421234225716845845

`comp[n*comp[A018252(n+1)]]`
-/

namespace A171520.P5421234225716845845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171520.P5421234225716845845

namespace A171520

/-- `comp[n*comp[A018252(n+1)]]` -/
def P5421234225716845845.Spec : Prop :=
  ∀ n, (P5421234225716845845.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P11400773233435765095

`comp[lcm(n-1, comp[A018252(n+2)])]`
-/

namespace A171520.P11400773233435765095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171520.P11400773233435765095

namespace A171520

/-- `comp[lcm(n-1, comp[A018252(n+2)])]` -/
def P11400773233435765095.Spec : Prop :=
  ∀ n, (P11400773233435765095.a n : ℤ) = A171520 (n + 1)

end A171520

/-! ## A171520.P3753827251444038893

`comp[A056811(n+1)*A056813(n+1)]`
-/

namespace A171520.P3753827251444038893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (n + 1) * A056813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171520.P3753827251444038893

namespace A171520

/-- `comp[A056811(n+1)*A056813(n+1)]` -/
def P3753827251444038893.Spec : Prop :=
  ∀ n, (P3753827251444038893.a n : ℤ) = A171520 (n + 1)

end A171520

/-!
# A171521: Numbers that are not the product of k-th composite number and k for any k >= 1.

The programs for A171521, the canonical program `A171521.P5013932242876019724` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171521 has offset 1).

The definition of A171521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171521.P5013932242876019724

`comp[(n-2)*comp[p?[2*n+1]]]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171521

/-- `comp[(n-2)*comp[p?[2*n+1]]]` -/
def P5013932242876019724.Spec : Prop :=
  ∀ n, (P5013932242876019724.a n : ℤ) = A171521 (n + 1)

theorem P5013932242876019724.correct : P5013932242876019724.Spec := by
  intro n
  simp only [A171521, Nat.add_sub_cancel]

end A171521

/-! ## A171521.P7501328206182078187

`comp[n*Δ[A051349(n)]]`
-/

namespace A171521.P7501328206182078187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171521.P7501328206182078187

namespace A171521

/-- `comp[n*Δ[A051349(n)]]` -/
def P7501328206182078187.Spec : Prop :=
  ∀ n, (P7501328206182078187.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P298247914940714151

`comp[n*comp[A047814(n)]]`
-/

namespace A171521.P298247914940714151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171521.P298247914940714151

namespace A171521

/-- `comp[n*comp[A047814(n)]]` -/
def P298247914940714151.Spec : Prop :=
  ∀ n, (P298247914940714151.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P15846279587375877350

`comp[n*comp[A092386(n)]]`
-/

namespace A171521.P15846279587375877350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092386 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171521.P15846279587375877350

namespace A171521

/-- `comp[n*comp[A092386(n)]]` -/
def P15846279587375877350.Spec : Prop :=
  ∀ n, (P15846279587375877350.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P17458985528052167369

`comp[n*comp[A130008(n)]]`
-/

namespace A171521.P17458985528052167369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171521.P17458985528052167369

namespace A171521

/-- `comp[n*comp[A130008(n)]]` -/
def P17458985528052167369.Spec : Prop :=
  ∀ n, (P17458985528052167369.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P15050298614438259201

`comp[n*A018252(n+1)]`
-/

namespace A171521.P15050298614438259201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171521.P15050298614438259201

namespace A171521

/-- `comp[n*A018252(n+1)]` -/
def P15050298614438259201.Spec : Prop :=
  ∀ n, (P15050298614438259201.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P9092795159773763114

`comp[n*comp[A006530(n+1)]]`
-/

namespace A171521.P9092795159773763114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171521.P9092795159773763114

namespace A171521

/-- `comp[n*comp[A006530(n+1)]]` -/
def P9092795159773763114.Spec : Prop :=
  ∀ n, (P9092795159773763114.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P12435091443283052193

`comp[n*comp[A014963(n+1)]]`
-/

namespace A171521.P12435091443283052193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171521.P12435091443283052193

namespace A171521

/-- `comp[n*comp[A014963(n+1)]]` -/
def P12435091443283052193.Spec : Prop :=
  ∀ n, (P12435091443283052193.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P15104591161849389610

`comp[n*comp[A020639(n+1)]]`
-/

namespace A171521.P15104591161849389610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171521.P15104591161849389610

namespace A171521

/-- `comp[n*comp[A020639(n+1)]]` -/
def P15104591161849389610.Spec : Prop :=
  ∀ n, (P15104591161849389610.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P14889147432742533692

`comp[(n-1)*comp[A000040(n+1)]]`
-/

namespace A171521.P14889147432742533692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171521.P14889147432742533692

namespace A171521

/-- `comp[(n-1)*comp[A000040(n+1)]]` -/
def P14889147432742533692.Spec : Prop :=
  ∀ n, (P14889147432742533692.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P9021366411835772345

`comp[n*(comp[record[A000010(n+1)]]+1)]`
-/

namespace A171521.P9021366411835772345
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171521.P9021366411835772345

namespace A171521

/-- `comp[n*(comp[record[A000010(n+1)]]+1)]` -/
def P9021366411835772345.Spec : Prop :=
  ∀ n, (P9021366411835772345.a n : ℤ) = A171521 (n + 1)

end A171521

/-! ## A171521.P3009713116995324432

`comp[n*record[A018252(A274640(n))]]`
-/

namespace A171521.P3009713116995324432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171521.P3009713116995324432

namespace A171521

/-- `comp[n*record[A018252(A274640(n))]]` -/
def P3009713116995324432.Spec : Prop :=
  ∀ n, (P3009713116995324432.a n : ℤ) = A171521 (n + 1)

end A171521

/-!
# A171522: Denominator of 1/n^2-1/(n+2)^2.

The programs for A171522, the canonical program `A171522.P16063199169324206122` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171522 has offset 0).

The definition of A171522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171522.P16063199169324206122

`A066830(n+1)²`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171522

/-- `A066830(n+1)²` -/
def P16063199169324206122.Spec : Prop :=
  ∀ n, P16063199169324206122.a n = A171522 n

theorem P16063199169324206122.correct : P16063199169324206122.Spec := by
  intro n
  simp only [A171522]

end A171522

/-! ## A171522.P15968000148916091263

`lcm(n, n+2)²`
-/

namespace A171522.P15968000148916091263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 2) ^ 2

end

end A171522.P15968000148916091263

namespace A171522

/-- `lcm(n, n+2)²` -/
def P15968000148916091263.Spec : Prop :=
  ∀ n, (P15968000148916091263.a n : ℤ) = A171522 n

end A171522

/-! ## A171522.P15461993348336021905

`lcm(n², record[(2-n)²])`
-/

namespace A171522.P15461993348336021905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A171522.P15461993348336021905

namespace A171522

/-- `lcm(n², record[(2-n)²])` -/
def P15461993348336021905.Spec : Prop :=
  ∀ n, (P15461993348336021905.a n : ℤ) = A171522 n

end A171522

/-! ## A171522.P17182861161397596107

`((n+2)*gcd(n, ∑[n]))²`
-/

namespace A171522.P17182861161397596107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A171522.P17182861161397596107

namespace A171522

/-- `((n+2)*gcd(n, ∑[n]))²` -/
def P17182861161397596107.Spec : Prop :=
  ∀ n, (P17182861161397596107.a n : ℤ) = A171522 n

end A171522

/-! ## A171522.P10007291154527686661

`sqrt(lcm((n+2)^4, n^4))`
-/

namespace A171522.P10007291154527686661
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm ((n + 2) ^ 4) (n ^ 4) : ℝ)

end

end A171522.P10007291154527686661

namespace A171522

/-- `sqrt(lcm((n+2)^4, n^4))` -/
def P10007291154527686661.Spec : Prop :=
  ∀ n, P10007291154527686661.a n = (A171522 n : ℝ)

end A171522

/-! ## A171522.P3790949545104106476

`((n+2)*n/gcd(2, n²))²`
-/

namespace A171522.P3790949545104106476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) * ((n : ℚ) / (Nat.gcd 2 (n ^ 2) : ℚ))) ^ 2

end

end A171522.P3790949545104106476

namespace A171522

/-- `((n+2)*n/gcd(2, n²))²` -/
def P3790949545104106476.Spec : Prop :=
  ∀ n, P3790949545104106476.a n = (A171522 n : ℚ)

end A171522

/-! ## A171522.P2781131137444825983

`gcd(n*(n+2), C((n+1)², 2))²`
-/

namespace A171522.P2781131137444825983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n * (n + 2)) (Nat.choose ((n + 1) ^ 2) 2) ^ 2

end

end A171522.P2781131137444825983

namespace A171522

/-- `gcd(n*(n+2), C((n+1)², 2))²` -/
def P2781131137444825983.Spec : Prop :=
  ∀ n, (P2781131137444825983.a n : ℤ) = A171522 n

end A171522

/-! ## A171522.P1647628615576741022

`(n*Δ[A008795(n)])²`
-/

namespace A171522.P1647628615576741022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n)) ^ 2

end

end A171522.P1647628615576741022

namespace A171522

/-- `(n*Δ[A008795(n)])²` -/
def P1647628615576741022.Spec : Prop :=
  ∀ n, P1647628615576741022.a n = A171522 n

end A171522

/-! ## A171522.P2255637419784812197

`(lcm(2, A005563(n))/2)²`
-/

namespace A171522.P2255637419784812197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 (A005563 n) : ℚ) / 2) ^ 2

end

end A171522.P2255637419784812197

namespace A171522

/-- `(lcm(2, A005563(n))/2)²` -/
def P2255637419784812197.Spec : Prop :=
  ∀ n, P2255637419784812197.a n = (A171522 n : ℚ)

end A171522

/-! ## A171522.P3355496556207908004

`(n*A145051(n+1))²`
-/

namespace A171522.P3355496556207908004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A145051 (n + 1)) ^ 2

end

end A171522.P3355496556207908004

namespace A171522

/-- `(n*A145051(n+1))²` -/
def P3355496556207908004.Spec : Prop :=
  ∀ n, P3355496556207908004.a n = A171522 n

end A171522

/-! ## A171522.P4559893749135895492

`((n+2)*A026741(n))²`
-/

namespace A171522.P4559893749135895492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A026741 n) ^ 2

end

end A171522.P4559893749135895492

namespace A171522

/-- `((n+2)*A026741(n))²` -/
def P4559893749135895492.Spec : Prop :=
  ∀ n, P4559893749135895492.a n = A171522 n

end A171522

/-! ## A171522.P12488571669909389835

`(n+2)²*A168077(n)`
-/

namespace A171522.P12488571669909389835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) * A168077 n

end

end A171522.P12488571669909389835

namespace A171522

/-- `(n+2)²*A168077(n)` -/
def P12488571669909389835.Spec : Prop :=
  ∀ n, P12488571669909389835.a n = A171522 n

end A171522

/-! ## A171522.P339225378133659237

`(n*(1-A174390(n)))²`
-/

namespace A171522.P339225378133659237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (1 - A174390 n)) ^ 2

end

end A171522.P339225378133659237

namespace A171522

/-- `(n*(1-A174390(n)))²` -/
def P339225378133659237.Spec : Prop :=
  ∀ n, P339225378133659237.a n = A171522 n

end A171522

/-! ## A171522.P8641963934379789448

`((n+2)*A176447(n))²`
-/

namespace A171522.P8641963934379789448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A176447 n) ^ 2

end

end A171522.P8641963934379789448

namespace A171522

/-- `((n+2)*A176447(n))²` -/
def P8641963934379789448.Spec : Prop :=
  ∀ n, P8641963934379789448.a n = A171522 n

end A171522

/-! ## A171522.P5019109801564581908

`A099761(n)/gcd(2, n)²`
-/

namespace A171522.P5019109801564581908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099761 n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

end

end A171522.P5019109801564581908

namespace A171522

/-- `A099761(n)/gcd(2, n)²` -/
def P5019109801564581908.Spec : Prop :=
  ∀ n, P5019109801564581908.a n = (A171522 n : ℚ)

end A171522

/-! ## A171522.P13811573522854286070

`(n*A339913(2*(n+1)))²`
-/

namespace A171522.P13811573522854286070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A339913 (2 * (n + 1))) ^ 2

end

end A171522.P13811573522854286070

namespace A171522

/-- `(n*A339913(2*(n+1)))²` -/
def P13811573522854286070.Spec : Prop :=
  ∀ n, P13811573522854286070.a n = A171522 n

end A171522

/-! ## A171522.P11044864322786458588

`n*(n+2)*A142705(n+1)`
-/

namespace A171522.P11044864322786458588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℤ) * A142705 (n + 1)

end

end A171522.P11044864322786458588

namespace A171522

/-- `n*(n+2)*A142705(n+1)` -/
def P11044864322786458588.Spec : Prop :=
  ∀ n, P11044864322786458588.a n = A171522 n

end A171522

/-! ## A171522.P4276205930947935455

`((n+2)*n/A000032(and(1, n-2)))²`
-/

namespace A171522.P4276205930947935455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) * ((n : ℚ) / (A000032 (Int.land 1 ((n : ℤ) - 2)).toNat : ℚ))) ^ 2

end

end A171522.P4276205930947935455

namespace A171522

/-- `((n+2)*n/A000032(and(1, n-2)))²` -/
def P4276205930947935455.Spec : Prop :=
  ∀ n, P4276205930947935455.a n = (A171522 n : ℚ)

end A171522

/-! ## A171522.P5925596779553094926

`A099761(n)/A040005(n)`
-/

namespace A171522.P5925596779553094926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099761 n : ℚ) / (A040005 n : ℚ)

end

end A171522.P5925596779553094926

namespace A171522

/-- `A099761(n)/A040005(n)` -/
def P5925596779553094926.Spec : Prop :=
  ∀ n, P5925596779553094926.a n = (A171522 n : ℚ)

end A171522

/-! ## A171522.P337533435952571782

`(A005563(n)/A040001(n))²`
-/

namespace A171522.P337533435952571782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005563 n : ℚ) / (A040001 n : ℚ)) ^ 2

end

end A171522.P337533435952571782

namespace A171522

/-- `(A005563(n)/A040001(n))²` -/
def P337533435952571782.Spec : Prop :=
  ∀ n, P337533435952571782.a n = (A171522 n : ℚ)

end A171522

/-!
# A171523: a(n) = n*(n-th nonprime number).

The programs for A171523, the canonical program `A171523.P12339869199135669520` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171523 has offset 1).

The definition of A171523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171523.P12339869199135669520

`(n+1)*Δ[A051349(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A171523

/-- `(n+1)*Δ[A051349(n)]` -/
def P12339869199135669520.Spec : Prop :=
  ∀ n, P12339869199135669520.a n = A171523 (n + 1)

theorem P12339869199135669520.correct : P12339869199135669520.Spec := by
  intro n
  simp only [A171523, Nat.add_sub_cancel]

end A171523

/-! ## A171523.P5352168928587007721

`(n+1)*A018252(n+1)`
-/

namespace A171523.P5352168928587007721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A018252 (n + 1)

end

end A171523.P5352168928587007721

namespace A171523

/-- `(n+1)*A018252(n+1)` -/
def P5352168928587007721.Spec : Prop :=
  ∀ n, P5352168928587007721.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P12220874927311647241

`(n+1)*A141468(n+2)`
-/

namespace A171523.P12220874927311647241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A141468 (n + 2)

end

end A171523.P12220874927311647241

namespace A171523

/-- `(n+1)*A141468(n+2)` -/
def P12220874927311647241.Spec : Prop :=
  ∀ n, P12220874927311647241.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P16123966561737934626

`(n+1)*A222307(Δ[n²])`
-/

namespace A171523.P16123966561737934626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A222307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A171523.P16123966561737934626

namespace A171523

/-- `(n+1)*A222307(Δ[n²])` -/
def P16123966561737934626.Spec : Prop :=
  ∀ n, P16123966561737934626.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P4806517813268621331

`(n+1)*sqrt(A062312(n+1))`
-/

namespace A171523.P4806517813268621331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A062312 (n + 1) : ℝ)

end

end A171523.P4806517813268621331

namespace A171523

/-- `(n+1)*sqrt(A062312(n+1))` -/
def P4806517813268621331.Spec : Prop :=
  ∀ n, P4806517813268621331.a n = (A171523 (n + 1) : ℝ)

end A171523

/-! ## A171523.P11805472502557459248

`(n+1)*∑[A054546(n+1)]`
-/

namespace A171523.P11805472502557459248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171523.P11805472502557459248

namespace A171523

/-- `(n+1)*∑[A054546(n+1)]` -/
def P11805472502557459248.Spec : Prop :=
  ∀ n, P11805472502557459248.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P6478780033131921109

`(n+1)/2*A139270(n+1)`
-/

namespace A171523.P6478780033131921109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A139270 (n + 1) : ℚ)

end

end A171523.P6478780033131921109

namespace A171523

/-- `(n+1)/2*A139270(n+1)` -/
def P6478780033131921109.Spec : Prop :=
  ∀ n, P6478780033131921109.a n = (A171523 (n + 1) : ℚ)

end A171523

/-! ## A171523.P161563013853288938

`(n+1)*(A073425(n)+1+n)`
-/

namespace A171523.P161563013853288938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A073425 n + 1 + (n : ℤ))

end

end A171523.P161563013853288938

namespace A171523

/-- `(n+1)*(A073425(n)+1+n)` -/
def P161563013853288938.Spec : Prop :=
  ∀ n, P161563013853288938.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P16852655010313880796

`(n+1)*(comp[A006093(n+1)]+1)`
-/

namespace A171523.P16852655010313880796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171523.P16852655010313880796

namespace A171523

/-- `(n+1)*(comp[A006093(n+1)]+1)` -/
def P16852655010313880796.Spec : Prop :=
  ∀ n, (P16852655010313880796.a n : ℤ) = A171523 (n + 1)

end A171523

/-! ## A171523.P2114653787690941742

`(n+1)*(A171504(n+1)-(n+1))`
-/

namespace A171523.P2114653787690941742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A171504 (n + 1) - (n + 1 : ℤ))

end

end A171523.P2114653787690941742

namespace A171523

/-- `(n+1)*(A171504(n+1)-(n+1))` -/
def P2114653787690941742.Spec : Prop :=
  ∀ n, P2114653787690941742.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P7219393432703611035

`(n+1)*(comp[record[A000010(n+1)]]+1)`
-/

namespace A171523.P7219393432703611035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171523.P7219393432703611035

namespace A171523

/-- `(n+1)*(comp[record[A000010(n+1)]]+1)` -/
def P7219393432703611035.Spec : Prop :=
  ∀ n, (P7219393432703611035.a n : ℤ) = A171523 (n + 1)

end A171523

/-! ## A171523.P10302675172295843145

`(n+1)*(comp[A000040(n+1)-1]+1)`
-/

namespace A171523.P10302675172295843145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171523.P10302675172295843145

namespace A171523

/-- `(n+1)*(comp[A000040(n+1)-1]+1)` -/
def P10302675172295843145.Spec : Prop :=
  ∀ n, (P10302675172295843145.a n : ℤ) = A171523 (n + 1)

end A171523

/-! ## A171523.P7819151383352548814

`(n+1)*(comp[A006530(n+2)-1]+1)`
-/

namespace A171523.P7819151383352548814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171523.P7819151383352548814

namespace A171523

/-- `(n+1)*(comp[A006530(n+2)-1]+1)` -/
def P7819151383352548814.Spec : Prop :=
  ∀ n, (P7819151383352548814.a n : ℤ) = A171523 (n + 1)

end A171523

/-! ## A171523.P12840892838294606607

`(n+1)*(comp[A020639(n+2)-1]+1)`
-/

namespace A171523.P12840892838294606607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A171523.P12840892838294606607

namespace A171523

/-- `(n+1)*(comp[A020639(n+2)-1]+1)` -/
def P12840892838294606607.Spec : Prop :=
  ∀ n, (P12840892838294606607.a n : ℤ) = A171523 (n + 1)

end A171523

/-! ## A171523.P10823204575836144747

`(n+1)*sqrt(A161753(n+2))`
-/

namespace A171523.P10823204575836144747
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A161753 (n + 2) : ℝ)

end

end A171523.P10823204575836144747

namespace A171523

/-- `(n+1)*sqrt(A161753(n+2))` -/
def P10823204575836144747.Spec : Prop :=
  ∀ n, P10823204575836144747.a n = (A171523 (n + 1) : ℝ)

end A171523

/-! ## A171523.P11866814740070297968

`(n+1)*Δ[A175967(n+1)]`
-/

namespace A171523.P11866814740070297968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A171523.P11866814740070297968

namespace A171523

/-- `(n+1)*Δ[A175967(n+1)]` -/
def P11866814740070297968.Spec : Prop :=
  ∀ n, P11866814740070297968.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P1947007377545650819

`(n+1)/2*A176100(n+2)`
-/

namespace A171523.P1947007377545650819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A176100 (n + 2) : ℚ)

end

end A171523.P1947007377545650819

namespace A171523

/-- `(n+1)/2*A176100(n+2)` -/
def P1947007377545650819.Spec : Prop :=
  ∀ n, P1947007377545650819.a n = (A171523 (n + 1) : ℚ)

end A171523

/-! ## A171523.P8582530568463118209

`(n+1)*A240024(A239965(n+1))`
-/

namespace A171523.P8582530568463118209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A240024 (A239965 (n + 1)).toNat

end

end A171523.P8582530568463118209

namespace A171523

/-- `(n+1)*A240024(A239965(n+1))` -/
def P8582530568463118209.Spec : Prop :=
  ∀ n, P8582530568463118209.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P6893023936870172976

`(n+1)*A014681(A163975(n+2))`
-/

namespace A171523.P6893023936870172976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014681 (A163975 (n + 2)).toNat

end

end A171523.P6893023936870172976

namespace A171523

/-- `(n+1)*A014681(A163975(n+2))` -/
def P6893023936870172976.Spec : Prop :=
  ∀ n, P6893023936870172976.a n = A171523 (n + 1)

end A171523

/-! ## A171523.P18375210081677534119

`(n+1)*lt[∑{p}[n, #], n]`
-/

namespace A171523.P18375210081677534119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A171523.P18375210081677534119

namespace A171523

/-- `(n+1)*lt[∑{p}[n, #], n]` -/
def P18375210081677534119.Spec : Prop :=
  ∀ n, (P18375210081677534119.a n : ℤ) = A171523 (n + 1)

end A171523

/-!
# A171524: a(n) = numbers m such that are not the product of k-th nonprime number and k for any k >= 1.

The programs for A171524, there is no canonical definition to state claims against.
-/

/-! ## A171524.P16273224669380649387

`comp[n*comp[p?[xor(1, n)]]]`
-/

namespace A171524.P16273224669380649387
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171524.P16273224669380649387

/-! ## A171524.P8711720239407244245

`comp[n*comp[p?[comp[n²]]]]`
-/

namespace A171524.P8711720239407244245
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171524.P8711720239407244245

/-! ## A171524.P11105747047390146896

`comp[n*comp[eq[1, ∑{e}[n, #]]]]`
-/

namespace A171524.P11105747047390146896
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171524.P11105747047390146896

/-! ## A171524.P16434902886360182979

`comp[n*Δ[floor((5/8-n)²)]]`
-/

namespace A171524.P16434902886360182979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((5 : ℚ) / 8 - (n : ℚ)) ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171524.P16434902886360182979

/-! ## A171524.P12236538732438977112

`∪[A026470(n+1), A204232(n+1)]`
-/

namespace A171524.P12236538732438977112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171524.P12236538732438977112

/-! ## A171524.P2870773348870701812

`∪[A026470(n+1), A221265(n+1)]`
-/

namespace A171524.P2870773348870701812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171524.P2870773348870701812

/-! ## A171524.P7194243262809704829

`∪[A026470(n+1), A230486(n+1)]`
-/

namespace A171524.P7194243262809704829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171524.P7194243262809704829

/-! ## A171524.P15359676497554854203

`∪[A026470(n+1), A268379(n+1)]`
-/

namespace A171524.P15359676497554854203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171524.P15359676497554854203

/-! ## A171524.P7163070927106222169

`∪[A000028(n+1), A328321(n+1)]`
-/

namespace A171524.P7163070927106222169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171524.P7163070927106222169

/-!
# A171525: Numerator of (n-th noncomposite/n).

The programs for A171525, the canonical program `A171525.P9266908463684690377` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171525 has offset 1).

The definition of A171525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171525.P9266908463684690377

`or(1, p?[a(n-2)+3]-1)` with `a(0)=2, a(1)=2, a(2)=0, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171525

/-- `or(1, p?[a(n-2)+3]-1)` -/
def P9266908463684690377.Spec : Prop :=
  ∀ n, P9266908463684690377.a n = A171525 (n + 1)

theorem P9266908463684690377.correct : P9266908463684690377.Spec := by
  intro n
  simp only [A171525, Nat.add_sub_cancel]

end A171525

/-! ## A171525.P412749229459714763

`∏{p}[2*p?[a(n-1)+2], #]/2` with `a(0)=2, a(1)=2, a(2)=1, a(3)=2, a(4)=5`
-/

namespace A171525.P412749229459714763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 2, 5] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2

end

end A171525.P412749229459714763

namespace A171525

/-- `∏{p}[2*p?[a(n-1)+2], #]/2` -/
def P412749229459714763.Spec : Prop :=
  ∀ n, P412749229459714763.a n = (A171525 (n + 1) : ℚ)

end A171525

/-! ## A171525.P12591336749774014104

`A006005(gcd(n, C(2, n)))`
-/

namespace A171525.P12591336749774014104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Nat.gcd n (Nat.choose 2 n))

end

end A171525.P12591336749774014104

namespace A171525

/-- `A006005(gcd(n, C(2, n)))` -/
def P12591336749774014104.Spec : Prop :=
  ∀ n, P12591336749774014104.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P9587083035640885052

`A006005(abs(C(2, n)-n))`
-/

namespace A171525.P9587083035640885052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 |(Nat.choose 2 n : ℤ) - (n : ℤ)|.toNat

end

end A171525.P9587083035640885052

namespace A171525

/-- `A006005(abs(C(2, n)-n))` -/
def P9587083035640885052.Spec : Prop :=
  ∀ n, P9587083035640885052.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P90718690982395943

`lcm(6, A008578(n+1))/6`
-/

namespace A171525.P90718690982395943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 (A008578 (n + 1)) : ℚ) / 6

end

end A171525.P90718690982395943

namespace A171525

/-- `lcm(6, A008578(n+1))/6` -/
def P90718690982395943.Spec : Prop :=
  ∀ n, P90718690982395943.a n = (A171525 (n + 1) : ℚ)

end A171525

/-! ## A171525.P7730253025644304716

`A006005(n^(1-C(2, n)))`
-/

namespace A171525.P7730253025644304716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (Nat.choose 2 n : ℤ) : ℤ))).toNat

end

end A171525.P7730253025644304716

namespace A171525

/-- `A006005(n^(1-C(2, n)))` -/
def P7730253025644304716.Spec : Prop :=
  ∀ n, P7730253025644304716.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P15778778189251963047

`A008578(A171526(n+1))`
-/

namespace A171525.P15778778189251963047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A171526 (n + 1)).toNat

end

end A171525.P15778778189251963047

namespace A171525

/-- `A008578(A171526(n+1))` -/
def P15778778189251963047.Spec : Prop :=
  ∀ n, P15778778189251963047.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P17478811950646682125

`gcd(A130713(n), A175787(n+1))`
-/

namespace A171525.P17478811950646682125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130713 n) (A175787 (n + 1))

end

end A171525.P17478811950646682125

namespace A171525

/-- `gcd(A130713(n), A175787(n+1))` -/
def P17478811950646682125.Spec : Prop :=
  ∀ n, (P17478811950646682125.a n : ℤ) = A171525 (n + 1)

end A171525

/-! ## A171525.P17458811121990068209

`gcd(A130779(n), A182986(n+1))`
-/

namespace A171525.P17458811121990068209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130779 n) (A182986 (n + 1))

end

end A171525.P17458811121990068209

namespace A171525

/-- `gcd(A130779(n), A182986(n+1))` -/
def P17458811121990068209.Spec : Prop :=
  ∀ n, (P17458811121990068209.a n : ℤ) = A171525 (n + 1)

end A171525

/-! ## A171525.P16215994411445557836

`A171526(n+1)+A162177(n+1)`
-/

namespace A171525.P16215994411445557836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (n + 1) + A162177 (n + 1)

end

end A171525.P16215994411445557836

namespace A171525

/-- `A171526(n+1)+A162177(n+1)` -/
def P16215994411445557836.Spec : Prop :=
  ∀ n, P16215994411445557836.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P3673027767964565926

`A175787(n+1)-A173012(n+1)`
-/

namespace A171525.P3673027767964565926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) - A173012 (n + 1)

end

end A171525.P3673027767964565926

namespace A171525

/-- `A175787(n+1)-A173012(n+1)` -/
def P3673027767964565926.Spec : Prop :=
  ∀ n, P3673027767964565926.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P1211111997912024333

`A008578(n+1)-n*A130716(n)`
-/

namespace A171525.P1211111997912024333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - (n : ℤ) * A130716 n

end

end A171525.P1211111997912024333

namespace A171525

/-- `A008578(n+1)-n*A130716(n)` -/
def P1211111997912024333.Spec : Prop :=
  ∀ n, P1211111997912024333.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P3851249977425109581

`A008578(n+1)/gcd(A008458(n), A008578(n+1))`
-/

namespace A171525.P3851249977425109581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 1) : ℚ) / (Int.gcd (A008458 n) (A008578 (n + 1)) : ℚ)

end

end A171525.P3851249977425109581

namespace A171525

/-- `A008578(n+1)/gcd(A008458(n), A008578(n+1))` -/
def P3851249977425109581.Spec : Prop :=
  ∀ n, P3851249977425109581.a n = (A171525 (n + 1) : ℚ)

end A171525

/-! ## A171525.P1675213184064889556

`A151800(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A171525.P1675213184064889556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5] fun n a =>
  A151800 (a (n - 1)).toNat

end

end A171525.P1675213184064889556

namespace A171525

/-- `A151800(a(n-1))` -/
def P1675213184064889556.Spec : Prop :=
  ∀ n, P1675213184064889556.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P7222695121361072854

`A000265(A335402(n+2))`
-/

namespace A171525.P7222695121361072854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A335402 (n + 2)).toNat

end

end A171525.P7222695121361072854

namespace A171525

/-- `A000265(A335402(n+2))` -/
def P7222695121361072854.Spec : Prop :=
  ∀ n, P7222695121361072854.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P489157806374176038

`A130008(A267873(n))`
-/

namespace A171525.P489157806374176038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (A267873 n).toNat

end

end A171525.P489157806374176038

namespace A171525

/-- `A130008(A267873(n))` -/
def P489157806374176038.Spec : Prop :=
  ∀ n, P489157806374176038.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P1730094416192324069

`A093411(record[2*A020639(n+1)])`
-/

namespace A171525.P1730094416192324069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171525.P1730094416192324069

namespace A171525

/-- `A093411(record[2*A020639(n+1)])` -/
def P1730094416192324069.Spec : Prop :=
  ∀ n, P1730094416192324069.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P14857575535721759183

`A067792(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A171525.P14857575535721759183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 5] fun n a =>
  A067792 (a (n - 1)).toNat

end

end A171525.P14857575535721759183

namespace A171525

/-- `A067792(a(n-1))` -/
def P14857575535721759183.Spec : Prop :=
  ∀ n, P14857575535721759183.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P5078341069550616538

`A355944(A355944(A356164(A000040(n+1))))`
-/

namespace A171525.P5078341069550616538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355944 (A355944 (A356164 (A000040 (n + 1)).toNat).toNat).toNat

end

end A171525.P5078341069550616538

namespace A171525

/-- `A355944(A355944(A356164(A000040(n+1))))` -/
def P5078341069550616538.Spec : Prop :=
  ∀ n, P5078341069550616538.a n = A171525 (n + 1)

end A171525

/-! ## A171525.P4937329414158691811

`A356151(A356164(A356164(A065091(n+1))))`
-/

namespace A171525.P4937329414158691811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356151 (A356164 (A356164 (A065091 (n + 1)).toNat).toNat).toNat

end

end A171525.P4937329414158691811

namespace A171525

/-- `A356151(A356164(A356164(A065091(n+1))))` -/
def P4937329414158691811.Spec : Prop :=
  ∀ n, P4937329414158691811.a n = A171525 (n + 1)

end A171525

/-!
# A171526: Denominator of (n-th noncomposite/n).

The programs for A171526, the canonical program `A171526.P15179837515072613262` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171526 has offset 1).

The definition of A171526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171526.P15179837515072613262

`gcd(n+1, C(5, n²))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171526

/-- `gcd(n+1, C(5, n²))` -/
def P15179837515072613262.Spec : Prop :=
  ∀ n, (P15179837515072613262.a n : ℤ) = A171526 (n + 1)

theorem P15179837515072613262.correct : P15179837515072613262.Spec := by
  intro n
  simp only [A171526, Nat.add_sub_cancel]

end A171526

/-!
# A171527: Numerator of (n-th composite/n).

The programs for A171527, the canonical program `A171527.P2890916841386247195` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171527 has offset 1).

The definition of A171527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171527.P2890916841386247195

`A071224(n+1)/(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A171527

/-- `A071224(n+1)/(n+1)` -/
def P2890916841386247195.Spec : Prop :=
  ∀ n, P2890916841386247195.a n = (A171527 (n + 1) : ℚ)

end A171527

/-! ## A171527.P16278329363301829788

`lcm(n+1, A002808(n+1))/(n+1)`
-/

namespace A171527.P16278329363301829788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A002808 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A171527.P16278329363301829788

namespace A171527

/-- `lcm(n+1, A002808(n+1))/(n+1)` -/
def P16278329363301829788.Spec : Prop :=
  ∀ n, P16278329363301829788.a n = (A171527 (n + 1) : ℚ)

end A171527

/-! ## A171527.P15810761511314338515

`Δ[A053767(n)]/A064814(n+1)`
-/

namespace A171527.P15810761511314338515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A064814 (n + 1) : ℚ)

end

end A171527.P15810761511314338515

namespace A171527

/-- `Δ[A053767(n)]/A064814(n+1)` -/
def P15810761511314338515.Spec : Prop :=
  ∀ n, P15810761511314338515.a n = (A171527 (n + 1) : ℚ)

end A171527

/-! ## A171527.P14099679211189126620

`A002808(n+1)/A064814(n+1)`
-/

namespace A171527.P14099679211189126620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A064814 (n + 1) : ℚ)

end

end A171527.P14099679211189126620

namespace A171527

/-- `A002808(n+1)/A064814(n+1)` -/
def P14099679211189126620.Spec : Prop :=
  ∀ n, P14099679211189126620.a n = (A171527 (n + 1) : ℚ)

end A171527

/-! ## A171527.P18289207346835641252

`A002808(n+1)/(n+1)*A171528(n+1)`
-/

namespace A171527.P18289207346835641252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (n + 1 : ℚ) * (A171528 (n + 1) : ℚ)

end

end A171527.P18289207346835641252

namespace A171527

/-- `A002808(n+1)/(n+1)*A171528(n+1)` -/
def P18289207346835641252.Spec : Prop :=
  ∀ n, P18289207346835641252.a n = (A171527 (n + 1) : ℚ)

end A171527

/-! ## A171527.P15429296796761511106

`A002808(n+1)/gcd(n+1, A018252(n+2))`
-/

namespace A171527.P15429296796761511106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A018252 (n + 2)) : ℚ)

end

end A171527.P15429296796761511106

namespace A171527

/-- `A002808(n+1)/gcd(n+1, A018252(n+2))` -/
def P15429296796761511106.Spec : Prop :=
  ∀ n, P15429296796761511106.a n = (A171527 (n + 1) : ℚ)

end A171527

/-! ## A171527.P5995137543012710413

`(comp[A006093(n+1)-2]+3)/A064814(n+1)`
-/

namespace A171527.P5995137543012710413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3 : ℚ) / (A064814 (n + 1) : ℚ)

end

end A171527.P5995137543012710413

namespace A171527

/-- `(comp[A006093(n+1)-2]+3)/A064814(n+1)` -/
def P5995137543012710413.Spec : Prop :=
  ∀ n, P5995137543012710413.a n = (A171527 (n + 1) : ℚ)

end A171527

/-! ## A171527.P1549039731349767991

`A002808(n+1)/gcd(A000027(n+1), A002808(n+1))`
-/

namespace A171527.P1549039731349767991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A002808 (n + 1)) : ℚ)

end

end A171527.P1549039731349767991

namespace A171527

/-- `A002808(n+1)/gcd(A000027(n+1), A002808(n+1))` -/
def P1549039731349767991.Spec : Prop :=
  ∀ n, P1549039731349767991.a n = (A171527 (n + 1) : ℚ)

end A171527

/-!
# A171528: Denominator of (n-th composite/n).

The programs for A171528, the canonical program `A171528.P4705350279154627572` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171528 has offset 1).

The definition of A171528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171528.P13478249976747666434

`(n+1)/A064814(n+1)`
-/

namespace A171528.P13478249976747666434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064814 (n + 1) : ℚ)

end

end A171528.P13478249976747666434

namespace A171528

/-- `(n+1)/A064814(n+1)` -/
def P13478249976747666434.Spec : Prop :=
  ∀ n, P13478249976747666434.a n = (A171528 (n + 1) : ℚ)

end A171528

/-! ## A171528.P9098121373318499908

`(n+1)/gcd(n+1, Δ[A053767(n)])`
-/

namespace A171528.P9098121373318499908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n) : ℚ)

end

end A171528.P9098121373318499908

namespace A171528

/-- `(n+1)/gcd(n+1, Δ[A053767(n)])` -/
def P9098121373318499908.Spec : Prop :=
  ∀ n, P9098121373318499908.a n = (A171528 (n + 1) : ℚ)

end A171528

/-! ## A171528.P5578099121962591990

`(n+1)/gcd(xor(n, -1), A002808(n+1))`
-/

namespace A171528.P5578099121962591990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (Int.xor (n : ℤ) (-1)) (A002808 (n + 1)) : ℚ)

end

end A171528.P5578099121962591990

namespace A171528

/-- `(n+1)/gcd(xor(n, -1), A002808(n+1))` -/
def P5578099121962591990.Spec : Prop :=
  ∀ n, P5578099121962591990.a n = (A171528 (n + 1) : ℚ)

end A171528

/-! ## A171528.P17179640650130051104

`A071224(n+1)/A002808(n+1)`
-/

namespace A171528.P17179640650130051104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071224 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)

end

end A171528.P17179640650130051104

namespace A171528

/-- `A071224(n+1)/A002808(n+1)` -/
def P17179640650130051104.Spec : Prop :=
  ∀ n, P17179640650130051104.a n = (A171528 (n + 1) : ℚ)

end A171528

/-! ## A171528.P4705350279154627572

`A071224(n+1)%A072668(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A171528

/-- `A071224(n+1)%A072668(n+1)` -/
def P4705350279154627572.Spec : Prop :=
  ∀ n, P4705350279154627572.a n = A171528 (n + 1)

theorem P4705350279154627572.correct : P4705350279154627572.Spec := by
  intro n
  simp only [A171528, Nat.add_sub_cancel]

end A171528

/-! ## A171528.P13513634396163626720

`(n+1)/A002808(n+1)*A171527(n+1)`
-/

namespace A171528.P13513634396163626720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002808 (n + 1) : ℚ) * (A171527 (n + 1) : ℚ)

end

end A171528.P13513634396163626720

namespace A171528

/-- `(n+1)/A002808(n+1)*A171527(n+1)` -/
def P13513634396163626720.Spec : Prop :=
  ∀ n, P13513634396163626720.a n = (A171528 (n + 1) : ℚ)

end A171528

/-! ## A171528.P5626729851207568708

`lcm(A018252(n+2), n+1)/A018252(n+2)`
-/

namespace A171528.P5626729851207568708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A018252 (n + 2)) (n + 1 : ℤ) : ℚ) / (A018252 (n + 2) : ℚ)

end

end A171528.P5626729851207568708

namespace A171528

/-- `lcm(A018252(n+2), n+1)/A018252(n+2)` -/
def P5626729851207568708.Spec : Prop :=
  ∀ n, P5626729851207568708.a n = (A171528 (n + 1) : ℚ)

end A171528

/-! ## A171528.P4440258325395707065

`A054531(A064814(n+1)+∑[n])`
-/

namespace A171528.P4440258325395707065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A064814 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A171528.P4440258325395707065

namespace A171528

/-- `A054531(A064814(n+1)+∑[n])` -/
def P4440258325395707065.Spec : Prop :=
  ∀ n, P4440258325395707065.a n = A171528 (n + 1)

end A171528

/-! ## A171528.P9041021052911205641

`A126988(A064814(n+1)+∑[n])`
-/

namespace A171528.P9041021052911205641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A064814 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A171528.P9041021052911205641

namespace A171528

/-- `A126988(A064814(n+1)+∑[n])` -/
def P9041021052911205641.Spec : Prop :=
  ∀ n, P9041021052911205641.a n = A171528 (n + 1)

end A171528

/-!
# A171529: Numerator of (n-th nonprime/n).

The programs for A171529, the canonical program `A171529.P9866664600957756723` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171529 has offset 1).

The definition of A171529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171529.P9866664600957756723

`lcm(n+1, A018252(n+1))/(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171529

/-- `lcm(n+1, A018252(n+1))/(n+1)` -/
def P9866664600957756723.Spec : Prop :=
  ∀ n, P9866664600957756723.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P9011426097633813451

`Δ[A051349(n)]/A118310(n+1)`
-/

namespace A171529.P9011426097633813451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171529.P9011426097633813451

namespace A171529

/-- `Δ[A051349(n)]/A118310(n+1)` -/
def P9011426097633813451.Spec : Prop :=
  ∀ n, P9011426097633813451.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P8432735666814905747

`A018252(n+1)/A118310(n+1)`
-/

namespace A171529.P8432735666814905747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171529.P8432735666814905747

namespace A171529

/-- `A018252(n+1)/A118310(n+1)` -/
def P8432735666814905747.Spec : Prop :=
  ∀ n, P8432735666814905747.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P7470042958788553253

`A141468(n+2)/A118310(n+1)`
-/

namespace A171529.P7470042958788553253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 2) : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171529.P7470042958788553253

namespace A171529

/-- `A141468(n+2)/A118310(n+1)` -/
def P7470042958788553253.Spec : Prop :=
  ∀ n, P7470042958788553253.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P4426453282113883504

`sqrt(A062312(n+1))/A118310(n+1)`
-/

namespace A171529.P4426453282113883504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062312 (n + 1) : ℝ) / (A118310 (n + 1) : ℝ)

end

end A171529.P4426453282113883504

namespace A171529

/-- `sqrt(A062312(n+1))/A118310(n+1)` -/
def P4426453282113883504.Spec : Prop :=
  ∀ n, P4426453282113883504.a n = (A171529 (n + 1) : ℝ)

end A171529

/-! ## A171529.P17890120500179644054

`∑{d}[n+1, A361709(#)]/A118310(n+1)`
-/

namespace A171529.P17890120500179644054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A361709 d : ℤ) : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171529.P17890120500179644054

namespace A171529

/-- `∑{d}[n+1, A361709(#)]/A118310(n+1)` -/
def P17890120500179644054.Spec : Prop :=
  ∀ n, P17890120500179644054.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P13655307649593547418

`Δ[A051349(n)]/gcd(n+1, A018252(n+1))`
-/

namespace A171529.P13655307649593547418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Int.gcd (n + 1 : ℤ) (A018252 (n + 1)) : ℚ)

end

end A171529.P13655307649593547418

namespace A171529

/-- `Δ[A051349(n)]/gcd(n+1, A018252(n+1))` -/
def P13655307649593547418.Spec : Prop :=
  ∀ n, P13655307649593547418.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P11663658339689522567

`(comp[record[A000010(n+1)]]+1)/A118310(n+1)`
-/

namespace A171529.P11663658339689522567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171529.P11663658339689522567

namespace A171529

/-- `(comp[record[A000010(n+1)]]+1)/A118310(n+1)` -/
def P11663658339689522567.Spec : Prop :=
  ∀ n, P11663658339689522567.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P7807259637666544960

`(comp[A000040(n+1)-1]+1)/A118310(n+1)`
-/

namespace A171529.P7807259637666544960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171529.P7807259637666544960

namespace A171529

/-- `(comp[A000040(n+1)-1]+1)/A118310(n+1)` -/
def P7807259637666544960.Spec : Prop :=
  ∀ n, P7807259637666544960.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P13027217191205927028

`(A166037(n+2)-A002808(n+1))/A118310(n+1)`
-/

namespace A171529.P13027217191205927028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166037 (n + 2) - A002808 (n + 1) : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171529.P13027217191205927028

namespace A171529

/-- `(A166037(n+2)-A002808(n+1))/A118310(n+1)` -/
def P13027217191205927028.Spec : Prop :=
  ∀ n, P13027217191205927028.a n = (A171529 (n + 1) : ℚ)

end A171529

/-! ## A171529.P613545639814443709

`A392359(A018252(n+1))`
-/

namespace A171529.P613545639814443709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (A018252 (n + 1)).toNat

end

end A171529.P613545639814443709

namespace A171529

/-- `A392359(A018252(n+1))` -/
def P613545639814443709.Spec : Prop :=
  ∀ n, P613545639814443709.a n = A171529 (n + 1)

end A171529

/-! ## A171529.P14349782809182641875

`A392359(A141468(n+2))`
-/

namespace A171529.P14349782809182641875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (A141468 (n + 2)).toNat

end

end A171529.P14349782809182641875

namespace A171529

/-- `A392359(A141468(n+2))` -/
def P14349782809182641875.Spec : Prop :=
  ∀ n, P14349782809182641875.a n = A171529 (n + 1)

end A171529

/-! ## A171529.P14252947572545982727

`A073846(2*n+1)/A118310(n+1)`
-/

namespace A171529.P14252947572545982727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073846 (2 * n + 1) : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171529.P14252947572545982727

namespace A171529

/-- `A073846(2*n+1)/A118310(n+1)` -/
def P14252947572545982727.Spec : Prop :=
  ∀ n, P14252947572545982727.a n = (A171529 (n + 1) : ℚ)

end A171529

/-!
# A171530: Denominator of (n-th nonprime/n).

The programs for A171530, the canonical program `A171530.P8623497175201674934` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171530 has offset 1).

The definition of A171530 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171530.P8623497175201674934

`(n+1)/gcd(comp[p?[xor(1, n)]-1]+1, 2*n+1-n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171530

/-- `(n+1)/gcd(comp[p?[xor(1, n)]-1]+1, 2*n+1-n)` -/
def P8623497175201674934.Spec : Prop :=
  ∀ n, P8623497175201674934.a n = (A171530 (n + 1) : ℚ)

end A171530

/-! ## A171530.P148561411025765583

`(n+1)/A118310(n+1)`
-/

namespace A171530.P148561411025765583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A118310 (n + 1) : ℚ)

end

end A171530.P148561411025765583

namespace A171530

/-- `(n+1)/A118310(n+1)` -/
def P148561411025765583.Spec : Prop :=
  ∀ n, P148561411025765583.a n = (A171530 (n + 1) : ℚ)

end A171530

/-! ## A171530.P11063296383062503249

`(n+1)/gcd(n+1, A018252(n+1))`
-/

namespace A171530.P11063296383062503249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A018252 (n + 1)) : ℚ)

end

end A171530.P11063296383062503249

namespace A171530

/-- `(n+1)/gcd(n+1, A018252(n+1))` -/
def P11063296383062503249.Spec : Prop :=
  ∀ n, P11063296383062503249.a n = (A171530 (n + 1) : ℚ)

end A171530

/-! ## A171530.P11390681852169526868

`A102614(Δ[A051349(n)])`
-/

namespace A171530.P11390681852169526868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (f1 (n + 1) - f1 n).toNat

end

end A171530.P11390681852169526868

namespace A171530

/-- `A102614(Δ[A051349(n)])` -/
def P11390681852169526868.Spec : Prop :=
  ∀ n, P11390681852169526868.a n = A171530 (n + 1)

end A171530

/-! ## A171530.P18307250940886504916

`A102614(A018252(n+1))`
-/

namespace A171530.P18307250940886504916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (A018252 (n + 1)).toNat

end

end A171530.P18307250940886504916

namespace A171530

/-- `A102614(A018252(n+1))` -/
def P18307250940886504916.Spec : Prop :=
  ∀ n, P18307250940886504916.a n = A171530 (n + 1)

end A171530

/-! ## A171530.P17794883883187543637

`A102614(A065090(n+2))`
-/

namespace A171530.P17794883883187543637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (A065090 (n + 2)).toNat

end

end A171530.P17794883883187543637

namespace A171530

/-- `A102614(A065090(n+2))` -/
def P17794883883187543637.Spec : Prop :=
  ∀ n, P17794883883187543637.a n = A171530 (n + 1)

end A171530

/-! ## A171530.P1106600529030886306

`A102614(A141468(n+2))`
-/

namespace A171530.P1106600529030886306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (A141468 (n + 2)).toNat

end

end A171530.P1106600529030886306

namespace A171530

/-- `A102614(A141468(n+2))` -/
def P1106600529030886306.Spec : Prop :=
  ∀ n, P1106600529030886306.a n = A171530 (n + 1)

end A171530

/-!
# A171532: Coefficients of partition Hermite-Eulerian polynomials: p(x,n)= If[n == 0, 1, HermiteH[n, x]*Sum[Eulerian[n-1, k-1]*x^(k - 1), {k, 1, n}]/2^Floor[n/2]].

The programs for A171532, there is no canonical definition to state claims against.
-/

/-! ## A171532.P6270711097769555997

`A171531(n)*A190676(A083117(n+1)+1)`
-/

namespace A171532.P6270711097769555997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171531 n * A190676 (A083117 (n + 1) + 1).toNat

end

end A171532.P6270711097769555997

/-!
# A171533: Coefficients of partition Hermite-MacMahon polynomials: p(x,n)= If[n == 0, 1, HermiteH[n, x]*Sum[MacMahon[n-1, k-1]*x^(k - 1), {k, 1, n}]/2^Floor[n/2]].

The programs for A171533, there is no canonical definition to state claims against.
-/

/-! ## A171533.P16213822796430326608

`A171531(n)*A195825(A111910(n+2))`
-/

namespace A171533.P16213822796430326608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171531 n * A195825 (A111910 (n + 2)).toNat

end

end A171533.P16213822796430326608

/-!
# A171539: Decimal expansion of sqrt(6/35).

The programs for A171539, there is no canonical definition to state claims against.
-/

/-! ## A171539.P8834088722728116333

`A176457(abs(1-n)+1)`
-/

namespace A171539.P8834088722728116333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176457 ((|1 - (n : ℤ)| + 1).toNat + 1)

end

end A171539.P8834088722728116333

/-! ## A171539.P10574234042036812990

`A176457(n)/(floor(acot(n))+1)`
-/

namespace A171539.P10574234042036812990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176457 (n + 1) : ℚ) / (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 : ℚ)

end

end A171539.P10574234042036812990

/-!
# A171551: Numbers k such that the decimal expansion of 3^k - 2^k contains no pair of consecutive equal digits (probably finite).

The programs for A171551, there is no canonical definition to state claims against.
-/

/-! ## A171551.P1414711626328120448

`eq[A337565(A034500(n+1)+1), A337565(n)]`
-/

namespace A171551.P1414711626328120448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 (A034500 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171551.P1414711626328120448

/-! ## A171551.P18417253180114930505

`lt[A049325(A373404(2*n+5)), A008528(3*n+2)]`
-/

namespace A171551.P18417253180114930505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049325 (A373404 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008528 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171551.P18417253180114930505

/-! ## A171551.P17087567196792587521

`eq[1, A337565(A249013(n+1))]`
-/

namespace A171551.P17087567196792587521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 (A249013 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171551.P17087567196792587521

/-! ## A171551.P16342548064409743280

`eq[∏[A180466(n+1)], A337565(n)]`
-/

namespace A171551.P16342548064409743280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A171551.P16342548064409743280

/-! ## A171551.P7456863508465323650

`eq[1, A337565(A034500(n+1)+n)]`
-/

namespace A171551.P7456863508465323650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 (A034500 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171551.P7456863508465323650

/-!
# A171552: a(n) = 2^n*floor((5-2*n)/3).

The programs for A171552, the canonical program `A171552.P131137928242601340` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171552 has offset 0).

The definition of A171552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*floor((5-2*n)/3)` (program `A171552.P131137928242601340`, by `A171552.P131137928242601340.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171552.P131137928242601340

`2^n*floor((5-2*n)/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171552

/-- `2^n*floor((5-2*n)/3)` -/
def P131137928242601340.Spec : Prop :=
  ∀ n, P131137928242601340.a n = A171552 n

theorem P131137928242601340.correct : P131137928242601340.Spec := by
  intro n
  simp only [A171552]

end A171552

/-! ## A171552.P12647235081348398912

`2^n-2^n*A004523(n)`
-/

namespace A171552.P12647235081348398912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (2 ^ n : ℤ) * A004523 n

end

end A171552.P12647235081348398912

namespace A171552

/-- `2^n-2^n*A004523(n)` -/
def P12647235081348398912.Spec : Prop :=
  ∀ n, P12647235081348398912.a n = A171552 n

end A171552

/-! ## A171552.P4854919651286525540

`(A168054(n)+A000079(n))/2`
-/

namespace A171552.P4854919651286525540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168054 n + A000079 n : ℚ) / 2

end

end A171552.P4854919651286525540

namespace A171552

/-- `(A168054(n)+A000079(n))/2` -/
def P4854919651286525540.Spec : Prop :=
  ∀ n, P4854919651286525540.a n = (A171552 n : ℚ)

end A171552

/-! ## A171552.P493972342482433362

`A000079(n)-A000079(n)*A002264(2*n)`
-/

namespace A171552.P493972342482433362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A000079 n * A002264 (2 * n)

end

end A171552.P493972342482433362

namespace A171552

/-- `A000079(n)-A000079(n)*A002264(2*n)` -/
def P493972342482433362.Spec : Prop :=
  ∀ n, P493972342482433362.a n = A171552 n

end A171552

/-! ## A171552.P8904309498788661644

`A011782(n+1)-A004523(n)*A011782(n+1)`
-/

namespace A171552.P8904309498788661644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A004523 n * A011782 (n + 1)

end

end A171552.P8904309498788661644

namespace A171552

/-- `A011782(n+1)-A004523(n)*A011782(n+1)` -/
def P8904309498788661644.Spec : Prop :=
  ∀ n, P8904309498788661644.a n = A171552 n

end A171552

/-! ## A171552.P10261361551448036624

`A011782(n+1)-A002264(2*n)*A011782(n+1)`
-/

namespace A171552.P10261361551448036624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A002264 (2 * n) * A011782 (n + 1)

end

end A171552.P10261361551448036624

namespace A171552

/-- `A011782(n+1)-A002264(2*n)*A011782(n+1)` -/
def P10261361551448036624.Spec : Prop :=
  ∀ n, P10261361551448036624.a n = A171552 n

end A171552

/-! ## A171552.P8746942860883894177

`A131577(n+1)-A002264(2*n)*A131577(n+1)`
-/

namespace A171552.P8746942860883894177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A002264 (2 * n) * A131577 (n + 1)

end

end A171552.P8746942860883894177

namespace A171552

/-- `A131577(n+1)-A002264(2*n)*A131577(n+1)` -/
def P8746942860883894177.Spec : Prop :=
  ∀ n, P8746942860883894177.a n = A171552 n

end A171552

/-! ## A171552.P10667692996347526393

`A016116(2*n)-A002264(2*n)*A016116(2*n)`
-/

namespace A171552.P10667692996347526393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A002264 (2 * n) * A016116 (2 * n)

end

end A171552.P10667692996347526393

namespace A171552

/-- `A016116(2*n)-A002264(2*n)*A016116(2*n)` -/
def P10667692996347526393.Spec : Prop :=
  ∀ n, P10667692996347526393.a n = A171552 n

end A171552

/-! ## A171552.P13746811540472152724

`A060546(2*n)-A002264(2*n)*A060546(2*n)`
-/

namespace A171552.P13746811540472152724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * n) - A002264 (2 * n) * A060546 (2 * n)

end

end A171552.P13746811540472152724

namespace A171552

/-- `A060546(2*n)-A002264(2*n)*A060546(2*n)` -/
def P13746811540472152724.Spec : Prop :=
  ∀ n, P13746811540472152724.a n = A171552 n

end A171552

/-! ## A171552.P1297205682180576245

`A060546(2*(n+1))-A051274(2*n)*A060546(2*n)`
-/

namespace A171552.P1297205682180576245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * (n + 1)) - A051274 (2 * n) * A060546 (2 * n)

end

end A171552.P1297205682180576245

namespace A171552

/-- `A060546(2*(n+1))-A051274(2*n)*A060546(2*n)` -/
def P1297205682180576245.Spec : Prop :=
  ∀ n, P1297205682180576245.a n = A171552 n

end A171552

/-! ## A171552.P8691288745095829404

`A060546(2*(n+1))-A060546(2*n)*A341307(2*n)`
-/

namespace A171552.P8691288745095829404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * (n + 1)) - A060546 (2 * n) * A341307 (2 * n)

end

end A171552.P8691288745095829404

namespace A171552

/-- `A060546(2*(n+1))-A060546(2*n)*A341307(2*n)` -/
def P8691288745095829404.Spec : Prop :=
  ∀ n, P8691288745095829404.a n = A171552 n

end A171552

/-! ## A171552.P4911309188339042777

`A164073(2*n+1)-A002264(2*n)*A164073(2*n+1)`
-/

namespace A171552.P4911309188339042777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (2 * n + 1) - A002264 (2 * n) * A164073 (2 * n + 1)

end

end A171552.P4911309188339042777

namespace A171552

/-- `A164073(2*n+1)-A002264(2*n)*A164073(2*n+1)` -/
def P4911309188339042777.Spec : Prop :=
  ∀ n, P4911309188339042777.a n = A171552 n

end A171552

/-!
# A171553: a(n) = 9*10^n + 100^n + 1.

The programs for A171553, the canonical program `A171553.P11689869298719501407` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171553 has offset 0).

The definition of A171553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*10^n+100^n+1` (program `A171553.P11689869298719501407`, by `A171553.P11689869298719501407.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171553.P13803146343054383755

`1+9*10^n+100^n`
-/

namespace A171553.P13803146343054383755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 9 * 10 ^ n + 100 ^ n

end

end A171553.P13803146343054383755

namespace A171553

/-- `1+9*10^n+100^n` -/
def P13803146343054383755.Spec : Prop :=
  ∀ n, (P13803146343054383755.a n : ℤ) = A171553 n

theorem P13803146343054383755.correct : P13803146343054383755.Spec := by
  intro n
  simp only [A171553, Nat.add_sub_cancel, A171553.P13803146343054383755.a, A171553.P11689869298719501407.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171553

/-! ## A171553.P11689869298719501407

`9*10^n+100^n+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171553

/-- `9*10^n+100^n+1` -/
def P11689869298719501407.Spec : Prop :=
  ∀ n, (P11689869298719501407.a n : ℤ) = A171553 n

theorem P11689869298719501407.correct : P11689869298719501407.Spec := by
  intro n
  simp only [A171553]

end A171553

/-! ## A171553.P4814901371452026077

`abs(A152756(n+1)+Δ[or(1, 10^n)])`
-/

namespace A171553.P4814901371452026077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (10 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152756 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A171553.P4814901371452026077

namespace A171553

/-- `abs(A152756(n+1)+Δ[or(1, 10^n)])` -/
def P4814901371452026077.Spec : Prop :=
  ∀ n, P4814901371452026077.a n = A171553 n

end A171553

/-! ## A171553.P16572226317888757888

`abs(A103461(2*n)+A063945(n+1))`
-/

namespace A171553.P16572226317888757888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103461 (2 * n) + A063945 (n + 1)|

end

end A171553.P16572226317888757888

namespace A171553

/-- `abs(A103461(2*n)+A063945(n+1))` -/
def P16572226317888757888.Spec : Prop :=
  ∀ n, P16572226317888757888.a n = A171553 n

end A171553

/-! ## A171553.P12226393525315407042

`A062397(2*(n+1))%Δ[A168624(n)]`
-/

namespace A171553.P12226393525315407042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062397 (2 * (n + 1))) (f1 (n + 1) - f1 n)

end

end A171553.P12226393525315407042

namespace A171553

/-- `A062397(2*(n+1))%Δ[A168624(n)]` -/
def P12226393525315407042.Spec : Prop :=
  ∀ n, P12226393525315407042.a n = A171553 n

end A171553

/-!
# A171554: Numbers k such that 1 + 9*10^k + 100^k is prime.

The programs for A171554, there is no canonical definition to state claims against.
-/

/-! ## A171554.P3910912892316138955

`n!*∑[(n^and(1, n))²]-1`
-/

namespace A171554.P3910912892316138955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1

end

end A171554.P3910912892316138955

/-!
# A171555: Integers of the form prime(k)*(prime(k)-1)/4.

The programs for A171555, the canonical program `A171555.P928708241190925261` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171555 has offset 1).

The definition of A171555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171555.P928708241190925261

`floor(p?[2*n+2*n+1]/4)*p?[4*n+1]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171555

/-- `floor(p?[2*n+2*n+1]/4)*p?[4*n+1]` -/
def P928708241190925261.Spec : Prop :=
  ∀ n, P928708241190925261.a n = A171555 (n + 1)

theorem P928708241190925261.correct : P928708241190925261.Spec := by
  intro n
  simp only [A171555, Nat.add_sub_cancel]

end A171555

/-! ## A171555.P14364365875713557373

`C(A002144(n+1), 2)/2`
-/

namespace A171555.P14364365875713557373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002144 (n + 1)).toNat 2 : ℚ) / 2

end

end A171555.P14364365875713557373

namespace A171555

/-- `C(A002144(n+1), 2)/2` -/
def P14364365875713557373.Spec : Prop :=
  ∀ n, P14364365875713557373.a n = (A171555 (n + 1) : ℚ)

end A171555

/-! ## A171555.P4012103367591537466

`C(A152680(n+1)+1, 2)/2`
-/

namespace A171555.P4012103367591537466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A152680 (n + 1) + 1).toNat 2 : ℚ) / 2

end

end A171555.P4012103367591537466

namespace A171555

/-- `C(A152680(n+1)+1, 2)/2` -/
def P4012103367591537466.Spec : Prop :=
  ∀ n, P4012103367591537466.a n = (A171555 (n + 1) : ℚ)

end A171555

/-! ## A171555.P10259793566588635157

`p?[4*n+1]*A005098(n+1)`
-/

namespace A171555.P10259793566588635157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A005098 (n + 1)

end

end A171555.P10259793566588635157

namespace A171555

/-- `p?[4*n+1]*A005098(n+1)` -/
def P10259793566588635157.Spec : Prop :=
  ∀ n, P10259793566588635157.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P17155860789404867280

`A002144(n+1)*A005098(n+1)`
-/

namespace A171555.P17155860789404867280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) * A005098 (n + 1)

end

end A171555.P17155860789404867280

namespace A171555

/-- `A002144(n+1)*A005098(n+1)` -/
def P17155860789404867280.Spec : Prop :=
  ∀ n, P17155860789404867280.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P16601652994688610216

`A055131(n)/3*A005098(n+1)`
-/

namespace A171555.P16601652994688610216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3 * (A005098 (n + 1) : ℚ)

end

end A171555.P16601652994688610216

namespace A171555

/-- `A055131(n)/3*A005098(n+1)` -/
def P16601652994688610216.Spec : Prop :=
  ∀ n, P16601652994688610216.a n = (A171555 (n + 1) : ℚ)

end A171555

/-! ## A171555.P10846604404562631953

`sqrt(A080109(n+1))*A005098(n+1)`
-/

namespace A171555.P10846604404562631953
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ) * (A005098 (n + 1) : ℝ)

end

end A171555.P10846604404562631953

namespace A171555

/-- `sqrt(A080109(n+1))*A005098(n+1)` -/
def P10846604404562631953.Spec : Prop :=
  ∀ n, P10846604404562631953.a n = (A171555 (n + 1) : ℝ)

end A171555

/-! ## A171555.P1091226359874735932

`(A111215(n+1)+1)*A002144(n+1)`
-/

namespace A171555.P1091226359874735932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111215 (n + 1) + 1) * A002144 (n + 1)

end

end A171555.P1091226359874735932

namespace A171555

/-- `(A111215(n+1)+1)*A002144(n+1)` -/
def P1091226359874735932.Spec : Prop :=
  ∀ n, P1091226359874735932.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P582243410930050742

`(A152680(n+1)+1)*A005098(n+1)`
-/

namespace A171555.P582243410930050742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) + 1) * A005098 (n + 1)

end

end A171555.P582243410930050742

namespace A171555

/-- `(A152680(n+1)+1)*A005098(n+1)` -/
def P582243410930050742.Spec : Prop :=
  ∀ n, P582243410930050742.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P10354092264645251965

`(A152676(n+1)+A002314(n+1))*A005098(n+1)`
-/

namespace A171555.P10354092264645251965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152676 (n + 1) + A002314 (n + 1)) * A005098 (n + 1)

end

end A171555.P10354092264645251965

namespace A171555

/-- `(A152676(n+1)+A002314(n+1))*A005098(n+1)` -/
def P10354092264645251965.Spec : Prop :=
  ∀ n, P10354092264645251965.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P16654930837304052320

`C(A002313(n+2), 2)/2`
-/

namespace A171555.P16654930837304052320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002313 (n + 2)).toNat 2 : ℚ) / 2

end

end A171555.P16654930837304052320

namespace A171555

/-- `C(A002313(n+2), 2)/2` -/
def P16654930837304052320.Spec : Prop :=
  ∀ n, P16654930837304052320.a n = (A171555 (n + 1) : ℚ)

end A171555

/-! ## A171555.P10120490607705241500

`C(A280084(n+2), 2)/2`
-/

namespace A171555.P10120490607705241500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A280084 (n + 2)).toNat 2 : ℚ) / 2

end

end A171555.P10120490607705241500

namespace A171555

/-- `C(A280084(n+2), 2)/2` -/
def P10120490607705241500.Spec : Prop :=
  ∀ n, P10120490607705241500.a n = (A171555 (n + 1) : ℚ)

end A171555

/-! ## A171555.P16014695030612114391

`A002313(n+2)*A005098(n+1)`
-/

namespace A171555.P16014695030612114391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) * A005098 (n + 1)

end

end A171555.P16014695030612114391

namespace A171555

/-- `A002313(n+2)*A005098(n+1)` -/
def P16014695030612114391.Spec : Prop :=
  ∀ n, P16014695030612114391.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P8443647752290247820

`(A034954(n+2)-A002313(n+2))/2`
-/

namespace A171555.P8443647752290247820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034954 (n + 2) - A002313 (n + 2) : ℚ) / 2

end

end A171555.P8443647752290247820

namespace A171555

/-- `(A034954(n+2)-A002313(n+2))/2` -/
def P8443647752290247820.Spec : Prop :=
  ∀ n, P8443647752290247820.a n = (A171555 (n + 1) : ℚ)

end A171555

/-! ## A171555.P5457356273515549865

`A076409(A080147(n+1))`
-/

namespace A171555.P5457356273515549865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076409 (A080147 (n + 1)).toNat

end

end A171555.P5457356273515549865

namespace A171555

/-- `A076409(A080147(n+1))` -/
def P5457356273515549865.Spec : Prop :=
  ∀ n, P5457356273515549865.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P11314491820118386846

`record[A020639(4*(n+1)+1)]*lt[n+1, A020639(4*n+1)]`
-/

namespace A171555.P11314491820118386846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

end

end A171555.P11314491820118386846

namespace A171555

/-- `record[A020639(4*(n+1)+1)]*lt[n+1, A020639(4*n+1)]` -/
def P11314491820118386846.Spec : Prop :=
  ∀ n, P11314491820118386846.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P13867539920868046798

`record[A020639(4*(n+1)+1)]*eq[4*n, A000010(4*n+1)]`
-/

namespace A171555.P13867539920868046798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A171555.P13867539920868046798

namespace A171555

/-- `record[A020639(4*(n+1)+1)]*eq[4*n, A000010(4*n+1)]` -/
def P13867539920868046798.Spec : Prop :=
  ∀ n, P13867539920868046798.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P1827786631822320254

`A007742(A005098(n+1))`
-/

namespace A171555.P1827786631822320254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 (A005098 (n + 1)).toNat

end

end A171555.P1827786631822320254

namespace A171555

/-- `A007742(A005098(n+1))` -/
def P1827786631822320254.Spec : Prop :=
  ∀ n, P1827786631822320254.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P53805290490010965

`A111215(n+1)+A053755(A111215(n+1)+1)`
-/

namespace A171555.P53805290490010965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + A053755 (A111215 (n + 1) + 1).toNat

end

end A171555.P53805290490010965

namespace A171555

/-- `A111215(n+1)+A053755(A111215(n+1)+1)` -/
def P53805290490010965.Spec : Prop :=
  ∀ n, P53805290490010965.a n = A171555 (n + 1)

end A171555

/-! ## A171555.P6254349693092260987

`A000217(A152680(n+1))/2`
-/

namespace A171555.P6254349693092260987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A152680 (n + 1)).toNat : ℚ) / 2

end

end A171555.P6254349693092260987

namespace A171555

/-- `A000217(A152680(n+1))/2` -/
def P6254349693092260987.Spec : Prop :=
  ∀ n, P6254349693092260987.a n = (A171555 (n + 1) : ℚ)

end A171555

/-!
# A171556: a(n) = 3*C(n)-2, where C(n) = A000108(n).

The programs for A171556, the canonical program `A171556.P13391373783144301351` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171556 has offset 0).

The definition of A171556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171556.P13391373783144301351

`3*A000108(n)-2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171556

/-- `3*A000108(n)-2` -/
def P13391373783144301351.Spec : Prop :=
  ∀ n, P13391373783144301351.a n = A171556 n

theorem P13391373783144301351.correct : P13391373783144301351.Spec := by
  intro n
  simp only [A171556]

end A171556

/-! ## A171556.P8799315948338234666

`3*A120304(n)+4`
-/

namespace A171556.P8799315948338234666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A120304 n + 4

end

end A171556.P8799315948338234666

namespace A171556

/-- `3*A120304(n)+4` -/
def P8799315948338234666.Spec : Prop :=
  ∀ n, P8799315948338234666.a n = A171556 n

end A171556

/-! ## A171556.P462304257286559397

`A126324(Δ[n²])-2`
-/

namespace A171556.P462304257286559397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A171556.P462304257286559397

namespace A171556

/-- `A126324(Δ[n²])-2` -/
def P462304257286559397.Spec : Prop :=
  ∀ n, P462304257286559397.a n = A171556 n

end A171556

/-! ## A171556.P5923491465788800615

`abs(3*A168491(n))-2`
-/

namespace A171556.P5923491465788800615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A168491 n| - 2

end

end A171556.P5923491465788800615

namespace A171556

/-- `abs(3*A168491(n))-2` -/
def P5923491465788800615.Spec : Prop :=
  ∀ n, P5923491465788800615.a n = A171556 n

end A171556

/-! ## A171556.P4605072664052951172

`3*A120588(n+1)-2`
-/

namespace A171556.P4605072664052951172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A120588 (n + 1) - 2

end

end A171556.P4605072664052951172

namespace A171556

/-- `3*A120588(n+1)-2` -/
def P4605072664052951172.Spec : Prop :=
  ∀ n, P4605072664052951172.a n = A171556 n

end A171556

/-! ## A171556.P18216516843226305228

`3*A028303(2*n)-2`
-/

namespace A171556.P18216516843226305228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028303 (2 * n) - 2

end

end A171556.P18216516843226305228

namespace A171556

/-- `3*A028303(2*n)-2` -/
def P18216516843226305228.Spec : Prop :=
  ∀ n, P18216516843226305228.a n = A171556 n

end A171556

/-! ## A171556.P672099459996584266

`3*A126120(2*n)-2`
-/

namespace A171556.P672099459996584266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126120 (2 * n) - 2

end

end A171556.P672099459996584266

namespace A171556

/-- `3*A126120(2*n)-2` -/
def P672099459996584266.Spec : Prop :=
  ∀ n, P672099459996584266.a n = A171556 n

end A171556

/-! ## A171556.P9742676572566442969

`3*A089408(Δ[n²])-2`
-/

namespace A171556.P9742676572566442969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 2

end

end A171556.P9742676572566442969

namespace A171556

/-- `3*A089408(Δ[n²])-2` -/
def P9742676572566442969.Spec : Prop :=
  ∀ n, P9742676572566442969.a n = A171556 n

end A171556

/-! ## A171556.P3440642269451325413

`3*A097331(2*n+1)-2`
-/

namespace A171556.P3440642269451325413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097331 (2 * n + 1) - 2

end

end A171556.P3440642269451325413

namespace A171556

/-- `3*A097331(2*n+1)-2` -/
def P3440642269451325413.Spec : Prop :=
  ∀ n, P3440642269451325413.a n = A171556 n

end A171556

/-! ## A171556.P2369467875253059163

`3*A028304(A004277(n))-2`
-/

namespace A171556.P2369467875253059163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A028304 (A004277 n).toNat - 2

end

end A171556.P2369467875253059163

namespace A171556

/-- `3*A028304(A004277(n))-2` -/
def P2369467875253059163.Spec : Prop :=
  ∀ n, P2369467875253059163.a n = A171556 n

end A171556

/-! ## A171556.P17509561640857298718

`A120304(n)+A131428(n)+1`
-/

namespace A171556.P17509561640857298718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + (A131428 n + 1)

end

end A171556.P17509561640857298718

namespace A171556

/-- `A120304(n)+A131428(n)+1` -/
def P17509561640857298718.Spec : Prop :=
  ∀ n, P17509561640857298718.a n = A171556 n

end A171556

/-! ## A171556.P7247731547992366994

`A000108(n)+A131428(n)-1`
-/

namespace A171556.P7247731547992366994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A131428 n - 1)

end

end A171556.P7247731547992366994

namespace A171556

/-- `A000108(n)+A131428(n)-1` -/
def P7247731547992366994.Spec : Prop :=
  ∀ n, P7247731547992366994.a n = A171556 n

end A171556

/-! ## A171556.P2092237356379302947

`A000108(n)-(A002420(n+1)+2)`
-/

namespace A171556.P2092237356379302947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (A002420 (n + 1) + 2)

end

end A171556.P2092237356379302947

namespace A171556

/-- `A000108(n)-(A002420(n+1)+2)` -/
def P2092237356379302947.Spec : Prop :=
  ∀ n, P2092237356379302947.a n = A171556 n

end A171556

/-! ## A171556.P14175106803767391762

`A208355(2*n)-(A002420(n+1)+2)`
-/

namespace A171556.P14175106803767391762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - (A002420 (n + 1) + 2)

end

end A171556.P14175106803767391762

namespace A171556

/-- `A208355(2*n)-(A002420(n+1)+2)` -/
def P14175106803767391762.Spec : Prop :=
  ∀ n, P14175106803767391762.a n = A171556 n

end A171556

/-! ## A171556.P2462908668368831334

`A000108(n)+A120304(n)+A000108(n)`
-/

namespace A171556.P2462908668368831334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A120304 n + A000108 n)

end

end A171556.P2462908668368831334

namespace A171556

/-- `A000108(n)+A120304(n)+A000108(n)` -/
def P2462908668368831334.Spec : Prop :=
  ∀ n, P2462908668368831334.a n = A171556 n

end A171556

/-!
# A171557: a(n) = 3^n*A168053(n).

The programs for A171557, the canonical program `A171557.P6596492913375790893` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171557 has offset 0).

The definition of A171557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A168053(n)` (program `A171557.P6596492913375790893`, by `A171557.P6596492913375790893.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171557.P6596492913375790893

`3^n*A168053(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171557

/-- `3^n*A168053(n)` -/
def P6596492913375790893.Spec : Prop :=
  ∀ n, P6596492913375790893.a n = A171557 n

theorem P6596492913375790893.correct : P6596492913375790893.Spec := by
  intro n
  simp only [A171557]

end A171557

/-! ## A171557.P5021229509005636229

`3^n*∑[(1-∑[n])%3]`
-/

namespace A171557.P5021229509005636229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171557.P5021229509005636229

namespace A171557

/-- `3^n*∑[(1-∑[n])%3]` -/
def P5021229509005636229.Spec : Prop :=
  ∀ n, P5021229509005636229.a n = A171557 n

end A171557

/-! ## A171557.P9148904237782027933

`(2-A168056(n))*3^n`
-/

namespace A171557.P9148904237782027933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A168056 n) * (3 ^ n : ℤ)

end

end A171557.P9148904237782027933

namespace A171557

/-- `(2-A168056(n))*3^n` -/
def P9148904237782027933.Spec : Prop :=
  ∀ n, P9148904237782027933.a n = A171557 n

end A171557

/-! ## A171557.P9373245150007301614

`∑[(1-∑[n])%3]*A000244(n)`
-/

namespace A171557.P9373245150007301614
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A171557.P9373245150007301614

namespace A171557

/-- `∑[(1-∑[n])%3]*A000244(n)` -/
def P9373245150007301614.Spec : Prop :=
  ∀ n, P9373245150007301614.a n = A171557 n

end A171557

/-! ## A171557.P4523444976843932068

`A168053(n)*A258439(2*n)`
-/

namespace A171557.P4523444976843932068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168053 n * A258439 (2 * n)

end

end A171557.P4523444976843932068

namespace A171557

/-- `A168053(n)*A258439(2*n)` -/
def P4523444976843932068.Spec : Prop :=
  ∀ n, P4523444976843932068.a n = A171557 n

end A171557

/-! ## A171557.P17056384977787108619

`(2-A130823(2*n+1))*A108411(2*n)`
-/

namespace A171557.P17056384977787108619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130823 (2 * n + 1)) * A108411 (2 * n)

end

end A171557.P17056384977787108619

namespace A171557

/-- `(2-A130823(2*n+1))*A108411(2*n)` -/
def P17056384977787108619.Spec : Prop :=
  ∀ n, P17056384977787108619.a n = A171557 n

end A171557

/-! ## A171557.P15602392990905518701

`A168072(n)+A000244(n)*A004523(n)`
-/

namespace A171557.P15602392990905518701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168072 n + A000244 n * A004523 n

end

end A171557.P15602392990905518701

namespace A171557

/-- `A168072(n)+A000244(n)*A004523(n)` -/
def P15602392990905518701.Spec : Prop :=
  ∀ n, P15602392990905518701.a n = A171557 n

end A171557

/-! ## A171557.P1798815698325209079

`A034472(n)*A168053(n)-A168053(n)`
-/

namespace A171557.P1798815698325209079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n * A168053 n - A168053 n

end

end A171557.P1798815698325209079

namespace A171557

/-- `A034472(n)*A168053(n)-A168053(n)` -/
def P1798815698325209079.Spec : Prop :=
  ∀ n, P1798815698325209079.a n = A171557 n

end A171557

/-! ## A171557.P89647788741680777

`A168053(n)/A168071(n)*A168072(n)`
-/

namespace A171557.P89647788741680777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168053 n : ℚ) / (A168071 n : ℚ) * (A168072 n : ℚ)

end

end A171557.P89647788741680777

namespace A171557

/-- `A168053(n)/A168071(n)*A168072(n)` -/
def P89647788741680777.Spec : Prop :=
  ∀ n, P89647788741680777.a n = (A171557 n : ℚ)

end A171557

/-! ## A171557.P14879046385782159292

`A038754(2*n)-A002264(2*n)*A038754(2*n+1)`
-/

namespace A171557.P14879046385782159292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n) - A002264 (2 * n) * A038754 (2 * n + 1)

end

end A171557.P14879046385782159292

namespace A171557

/-- `A038754(2*n)-A002264(2*n)*A038754(2*n+1)` -/
def P14879046385782159292.Spec : Prop :=
  ∀ n, P14879046385782159292.a n = A171557 n

end A171557

/-!
# A171558: Squares in lunar arithmetic in base 5 written in base 10.

The programs for A171558, there is no canonical definition to state claims against.
-/

/-! ## A171558.P11784307294228410359

`A028900(A171564(n))`
-/

namespace A171558.P11784307294228410359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A171564 n).toNat

end

end A171558.P11784307294228410359

/-! ## A171558.P3131173618501746699

`A028900(∩[A007091(n), A171717(n)])`
-/

namespace A171558.P3131173618501746699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171717 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A171558.P3131173618501746699

/-! ## A171558.P10704371358239215015

`eq[A000010(A260529(n+2)), A065648(2*n+1)]`
-/

namespace A171558.P10704371358239215015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A260529 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171558.P10704371358239215015

/-! ## A171558.P18078901072294559083

`∑[A251593(A322788(n+1))]`
-/

namespace A171558.P18078901072294559083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251593 (A322788 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171558.P18078901072294559083

/-! ## A171558.P3649012282676984491

`lt[A002415(n), A006567(A046716(n))]`
-/

namespace A171558.P3649012282676984491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A046716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171558.P3649012282676984491

/-!
# A171559: Powers of 2 (cf. A000079) with 1 replaced by 3.

The programs for A171559, the canonical program `A171559.P12439098341873083968` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171559 has offset 0).

The definition of A171559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171559.P874109426277526269

`ogf((3-4x)/(1-2x))`
-/

namespace A171559.P874109426277526269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -2] n

end

end A171559.P874109426277526269

namespace A171559

/-- `ogf((3-4x)/(1-2x))` -/
def P874109426277526269.Spec : Prop :=
  ∀ n, P874109426277526269.a n = A171559 n

end A171559

/-! ## A171559.P12439098341873083968

`xor(1, 2^n+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171559

/-- `xor(1, 2^n+1)` -/
def P12439098341873083968.Spec : Prop :=
  ∀ n, (P12439098341873083968.a n : ℤ) = A171559 n

theorem P12439098341873083968.correct : P12439098341873083968.Spec := by
  intro n
  simp only [A171559]

end A171559

/-! ## A171559.P11635461879986741629

`2*a(n-1)` with `a(0)=3, a(1)=2`
-/

namespace A171559.P11635461879986741629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  2 * a (n - 1)

end

end A171559.P11635461879986741629

namespace A171559

/-- `2*a(n-1)` -/
def P11635461879986741629.Spec : Prop :=
  ∀ n, (P11635461879986741629.a n : ℤ) = A171559 n

end A171559

/-! ## A171559.P17936089904042917878

`abs(2-2^n)+2`
-/

namespace A171559.P17936089904042917878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (2 ^ n : ℤ)| + 2

end

end A171559.P17936089904042917878

namespace A171559

/-- `abs(2-2^n)+2` -/
def P17936089904042917878.Spec : Prop :=
  ∀ n, P17936089904042917878.a n = A171559 n

end A171559

/-! ## A171559.P9507845303641364142

`abs(xor(2, 2-2^n))`
-/

namespace A171559.P9507845303641364142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 2 (2 - (2 ^ n : ℤ))|

end

end A171559.P9507845303641364142

namespace A171559

/-- `abs(xor(2, 2-2^n))` -/
def P9507845303641364142.Spec : Prop :=
  ∀ n, P9507845303641364142.a n = A171559 n

end A171559

/-! ## A171559.P10846639261805027531

`floor(2^n+acot(n)²)`
-/

namespace A171559.P10846639261805027531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A171559.P10846639261805027531

namespace A171559

/-- `floor(2^n+acot(n)²)` -/
def P10846639261805027531.Spec : Prop :=
  ∀ n, P10846639261805027531.a n = A171559 n

end A171559

/-! ## A171559.P15682671753410546969

`2^n*ceil(acot(n)²)`
-/

namespace A171559.P15682671753410546969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ⌈SequenceMachineLib.acot (n : ℝ) ^ 2⌉

end

end A171559.P15682671753410546969

namespace A171559

/-- `2^n*ceil(acot(n)²)` -/
def P15682671753410546969.Spec : Prop :=
  ∀ n, P15682671753410546969.a n = A171559 n

end A171559

/-! ## A171559.P13988070526220323862

`round(acot(2*n)+2^n)`
-/

namespace A171559.P13988070526220323862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 * n : ℝ) + (2 ^ n : ℝ))

end

end A171559.P13988070526220323862

namespace A171559

/-- `round(acot(2*n)+2^n)` -/
def P13988070526220323862.Spec : Prop :=
  ∀ n, P13988070526220323862.a n = A171559 n

end A171559

/-! ## A171559.P4260156527126051567

`ceil(atan(a(n-1)))^n` with `a(0)=3`
-/

namespace A171559.P4260156527126051567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈Real.arctan (a (n - 1) : ℝ)⌉ ^ n

end

end A171559.P4260156527126051567

namespace A171559

/-- `ceil(atan(a(n-1)))^n` -/
def P4260156527126051567.Spec : Prop :=
  ∀ n, P4260156527126051567.a n = A171559 n

end A171559

/-! ## A171559.P12802342740649116895

`a(((-1)^n)²)^n` with `a(0)=3, a(1)=2`
-/

namespace A171559.P12802342740649116895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (((-1) ^ n) ^ 2).toNat ^ n

end

end A171559.P12802342740649116895

namespace A171559

/-- `a(((-1)^n)²)^n` -/
def P12802342740649116895.Spec : Prop :=
  ∀ n, (P12802342740649116895.a n : ℤ) = A171559 n

end A171559

/-! ## A171559.P16422701397692579050

`gcd(2, a(n-1))^n` with `a(0)=3, a(1)=2`
-/

namespace A171559.P16422701397692579050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  Nat.gcd 2 (a (n - 1)) ^ n

end

end A171559.P16422701397692579050

namespace A171559

/-- `gcd(2, a(n-1))^n` -/
def P16422701397692579050.Spec : Prop :=
  ∀ n, (P16422701397692579050.a n : ℤ) = A171559 n

end A171559

/-! ## A171559.P16998398769250062357

`lcm(2^n, a(n-1))` with `a(0)=3, a(1)=2`
-/

namespace A171559.P16998398769250062357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  Nat.lcm (2 ^ n) (a (n - 1))

end

end A171559.P16998398769250062357

namespace A171559

/-- `lcm(2^n, a(n-1))` -/
def P16998398769250062357.Spec : Prop :=
  ∀ n, (P16998398769250062357.a n : ℤ) = A171559 n

end A171559

/-! ## A171559.P2959244630064232122

`or(2^n, C(2, (n+1)²))`
-/

namespace A171559.P2959244630064232122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ n) (Nat.choose 2 ((n + 1) ^ 2))

end

end A171559.P2959244630064232122

namespace A171559

/-- `or(2^n, C(2, (n+1)²))` -/
def P2959244630064232122.Spec : Prop :=
  ∀ n, (P2959244630064232122.a n : ℤ) = A171559 n

end A171559

/-! ## A171559.P18233083382196225447

`2^n*C(3, C(3, n²))`
-/

namespace A171559.P18233083382196225447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose 3 (Nat.choose 3 (n ^ 2))

end

end A171559.P18233083382196225447

namespace A171559

/-- `2^n*C(3, C(3, n²))` -/
def P18233083382196225447.Spec : Prop :=
  ∀ n, (P18233083382196225447.a n : ℤ) = A171559 n

end A171559

/-! ## A171559.P11360720308187569499

`a(n-1)/sqrt(1/4)` with `a(0)=3, a(1)=2`
-/

namespace A171559.P11360720308187569499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 1) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A171559.P11360720308187569499

namespace A171559

/-- `a(n-1)/sqrt(1/4)` -/
def P11360720308187569499.Spec : Prop :=
  ∀ n, P11360720308187569499.a n = (A171559 n : ℝ)

end A171559

/-! ## A171559.P15670103348076900057

`2^(log2(a(n-1))+1)` with `a(0)=3, a(1)=2`
-/

namespace A171559.P15670103348076900057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3, 2] fun n a =>
  (2 : ℝ) ^ (Real.logb 2 (a (n - 1)) + 1)

end

end A171559.P15670103348076900057

namespace A171559

/-- `2^(log2(a(n-1))+1)` -/
def P15670103348076900057.Spec : Prop :=
  ∀ n, P15670103348076900057.a n = (A171559 n : ℝ)

end A171559

/-! ## A171559.P2189348251198024959

`2^(val(a(n-1), 2)+1)` with `a(0)=3`
-/

namespace A171559.P2189348251198024959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 ^ (SequenceMachineLib.valuation (a (n - 1)) 2 + 1)

end

end A171559.P2189348251198024959

namespace A171559

/-- `2^(val(a(n-1), 2)+1)` -/
def P2189348251198024959.Spec : Prop :=
  ∀ n, (P2189348251198024959.a n : ℤ) = A171559 n

end A171559

/-! ## A171559.P11004532015416397877

`and(1-a(n-1), 2^n)` with `a(0)=3`
-/

namespace A171559.P11004532015416397877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land (1 - a (n - 1)) (2 ^ n : ℤ)

end

end A171559.P11004532015416397877

namespace A171559

/-- `and(1-a(n-1), 2^n)` -/
def P11004532015416397877.Spec : Prop :=
  ∀ n, P11004532015416397877.a n = A171559 n

end A171559

/-! ## A171559.P8623073633395368973

`(2-val(a(n-1), 5))^n` with `a(0)=3`
-/

namespace A171559.P8623073633395368973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (2 - (SequenceMachineLib.valuation (a (n - 1)).toNat 5 : ℤ)) ^ n

end

end A171559.P8623073633395368973

namespace A171559

/-- `(2-val(a(n-1), 5))^n` -/
def P8623073633395368973.Spec : Prop :=
  ∀ n, P8623073633395368973.a n = A171559 n

end A171559

/-! ## A171559.P3826720896329085590

`2^-or(-n, a(n-1))` with `a(0)=3`
-/

namespace A171559.P3826720896329085590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (2 : ℚ) ^ (-Int.lor (-(n : ℤ)) (SequenceMachineLib.roundAway (a (n - 1))) : ℤ)

end

end A171559.P3826720896329085590

namespace A171559

/-- `2^-or(-n, a(n-1))` -/
def P3826720896329085590.Spec : Prop :=
  ∀ n, P3826720896329085590.a n = (A171559 n : ℚ)

end A171559

/-!
# A171560: The product of the n-th run of identical consecutive values of A123387.

The programs for A171560, there is no canonical definition to state claims against.
-/

/-! ## A171560.P1211532113068932020

`(n+2)^A282518(n+1)`
-/

namespace A171560.P1211532113068932020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A282518 (n + 1) : ℤ)

end

end A171560.P1211532113068932020

/-! ## A171560.P2338739055558561

`(n+2)^A282516(∑[n+3]+1)`
-/

namespace A171560.P2338739055558561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A282516 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A171560.P2338739055558561

/-! ## A171560.P17990950025579552163

`(n+2)^Δ[A230980(A000096(n))]`
-/

namespace A171560.P17990950025579552163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000096 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A171560.P17990950025579552163

/-! ## A171560.P399474154658625662

`(n+2)^A066888(A181440(n+1))`
-/

namespace A171560.P399474154658625662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A066888 (A181440 (n + 1)).toNat : ℤ)

end

end A171560.P399474154658625662

/-! ## A171560.P15560847515963274970

`∏{p}[∑[A344489(n)]+n+3, A000005(#)+n]`
-/

namespace A171560.P15560847515963274970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344489 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000005 p + (n : ℤ))

end

end A171560.P15560847515963274970

/-!
# A171561: (n-th prime number)^(n-th non-single or nonisolated number) with duplicates removed.

The programs for A171561, there is no canonical definition to state claims against.
-/

/-! ## A171561.P11971933778079505309

`lt[A366075(n+1), 2]+1`
-/

namespace A171561.P11971933778079505309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366075 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171561.P11971933778079505309

/-! ## A171561.P6284371503604125229

`eq[1, A353817(C(2, n)+n)]`
-/

namespace A171561.P6284371503604125229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353817 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171561.P6284371503604125229

/-! ## A171561.P8138404269412574074

`record[A345993(comp[(char[1]+n)²])]`
-/

namespace A171561.P8138404269412574074
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0) + n) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345993 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171561.P8138404269412574074

/-! ## A171561.P14180991274791700146

`lt[A347231(n+1)², 2]+1`
-/

namespace A171561.P14180991274791700146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347231 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A171561.P14180991274791700146

/-! ## A171561.P4353673603394821753

`record[n*A353817(n+1)+1]`
-/

namespace A171561.P4353673603394821753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353817 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171561.P4353673603394821753

/-! ## A171561.P9387103028502765633

`record[1-n*A316441(n+1)]`
-/

namespace A171561.P9387103028502765633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ) * A316441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171561.P9387103028502765633

/-! ## A171561.P2827560595242774565

`record[1-n/A114006(n+1)]`
-/

namespace A171561.P2827560595242774565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (n : ℚ) / (A114006 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171561.P2827560595242774565

/-! ## A171561.P15264004654103046779

`record[gcd(n+1, A317581(n+1))]`
-/

namespace A171561.P15264004654103046779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A317581 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171561.P15264004654103046779

/-! ## A171561.P1020200548376005582

`record[floor(acot(n)-A340901(n+1))]`
-/

namespace A171561.P1020200548376005582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A340901 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171561.P1020200548376005582

/-! ## A171561.P13755460440570687803

`eq[A010052(n), A063698(n)]`
-/

namespace A171561.P13755460440570687803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171561.P13755460440570687803

/-!
# A171562: Numbers k such that the k-th non-single or nonisolated number is prime.

The programs for A171562, there is no canonical definition to state claims against.
-/

/-! ## A171562.P3540697502031094188

`n+1+A162310(n+1)`
-/

namespace A171562.P3540697502031094188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A162310 (n + 1)

end

end A171562.P3540697502031094188

/-! ## A171562.P17911143753779684085

`comp[A162309(n+1)+n]+1`
-/

namespace A171562.P17911143753779684085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171562.P17911143753779684085

/-! ## A171562.P232344076131624405

`record[n*A167706(n+1)%2]+1`
-/

namespace A171562.P232344076131624405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A167706 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A171562.P232344076131624405

/-! ## A171562.P9608204442113035965

`record[(n+2)^and(1, A167706(n+2))]`
-/

namespace A171562.P9608204442113035965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.land 1 (A167706 (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171562.P9608204442113035965

/-! ## A171562.P6560367039641911663

`comp[A029707(n+1)-(char[1]+n)]+1`
-/

namespace A171562.P6560367039641911663
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171562.P6560367039641911663

/-! ## A171562.P6485636655574857575

`record[(n+1)*A292438(A238327(n))]`
-/

namespace A171562.P6485636655574857575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A292438 (A238327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171562.P6485636655574857575

/-! ## A171562.P4512552466429408511

`eq[1, A001065(A167706(n+1))]+1`
-/

namespace A171562.P4512552466429408511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A167706 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171562.P4512552466429408511

/-! ## A171562.P12722225117511182718

`A071538(A007510(n+1))+1+n`
-/

namespace A171562.P12722225117511182718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A007510 (n + 1)).toNat + 1 + (n : ℤ)

end

end A171562.P12722225117511182718

/-! ## A171562.P7930187843010201886

`A071538(A167277(n+1))+1+n`
-/

namespace A171562.P7930187843010201886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A167277 (n + 1)).toNat + 1 + (n : ℤ)

end

end A171562.P7930187843010201886

/-! ## A171562.P16253629983856969218

`eq[1, A001222(A167706(abs(1-n)+1))]`
-/

namespace A171562.P16253629983856969218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A167706 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171562.P16253629983856969218

/-!
# A171564: Squares in lunar arithmetic in base 5 written in base 5.

The programs for A171564, there is no canonical definition to state claims against.
-/

/-! ## A171564.P6135751639630112450

`A087019(A007091(n))`
-/

namespace A171564.P6135751639630112450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A007091 n).toNat

end

end A171564.P6135751639630112450

/-! ## A171564.P17026567163461705353

`A007091(A171558(n))`
-/

namespace A171564.P17026567163461705353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A171558 n).toNat

end

end A171564.P17026567163461705353

/-! ## A171564.P16604886120474496736

`A087019(record[A106747(n)])`
-/

namespace A171564.P16604886120474496736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171564.P16604886120474496736

/-! ## A171564.P15791359262477050690

`A087019(eq[0, A102675(n)])`
-/

namespace A171564.P15791359262477050690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171564.P15791359262477050690

/-! ## A171564.P16158155952775737095

`A087019(lt[A102675(n), 1])`
-/

namespace A171564.P16158155952775737095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A171564.P16158155952775737095

/-!
# A171565: Number of partitions of n into odd divisors of n.

The programs for A171565, there is no canonical definition to state claims against.
-/

/-! ## A171565.P17216366713249411794

`A326082(n^∑{d}[n, (#%#²)%2])`
-/

namespace A171565.P17216366713249411794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326082 (n ^ (∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 % 2))

end

end A171565.P17216366713249411794

/-! ## A171565.P7698053737467691768

`A115726(A284466(n))`
-/

namespace A171565.P7698053737467691768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115726 (A284466 n).toNat

end

end A171565.P7698053737467691768

/-! ## A171565.P7517402365434579054

`A326082(n^A069283(n))`
-/

namespace A171565.P7517402365434579054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326082 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A069283 n : ℤ))).toNat

end

end A171565.P7517402365434579054

/-! ## A171565.P18367384360925015953

`A335516(n^A069283(n))`
-/

namespace A171565.P18367384360925015953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335516 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A069283 n : ℤ))).toNat

end

end A171565.P18367384360925015953

/-! ## A171565.P912969132038674435

`A237433(A000265(∏{d}[n, #]))`
-/

namespace A171565.P912969132038674435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237433 (A000265 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A171565.P912969132038674435

/-!
# A171566: Primes p such that 2*p-3 and 2*(2*p-3)-3 are primes (First member of a primes in a 2*p-3 double progression).

The programs for A171566, there is no canonical definition to state claims against.
-/

/-! ## A171566.P12733473446621892173

`∩[A063908(n+1), A156287(n+1)+1]`
-/

namespace A171566.P12733473446621892173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171566.P12733473446621892173

/-! ## A171566.P14511327848550472025

`p?[A319702(A063908(n+1))]`
-/

namespace A171566.P14511327848550472025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A063908 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171566.P14511327848550472025

/-! ## A171566.P1483447352815150992

`record[A006530(A063908(n+1)+3)]`
-/

namespace A171566.P1483447352815150992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063908 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171566.P1483447352815150992

/-! ## A171566.P10232643649338597908

`record[A006530(A104197(n+1)+6)]`
-/

namespace A171566.P10232643649338597908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104197 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171566.P10232643649338597908

/-! ## A171566.P8319061732076088974

`p?[A319702(A241817(n+1)/2)]`
-/

namespace A171566.P8319061732076088974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (SequenceMachineLib.roundAway ((A241817 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171566.P8319061732076088974

/-! ## A171566.P15114007392311332748

`record[A006530(A092109(n+1)+9)]`
-/

namespace A171566.P15114007392311332748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A092109 (n + 1) + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171566.P15114007392311332748

/-! ## A171566.P9546177327491325184

`p?[A319702(A006530(A241817(n+1)))]`
-/

namespace A171566.P9546177327491325184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A006530 (A241817 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171566.P9546177327491325184

/-! ## A171566.P1620521698666543677

`p?[A008619(A063908(n+1)+1)]`
-/

namespace A171566.P1620521698666543677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A063908 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171566.P1620521698666543677

/-! ## A171566.P3136265562476409648

`p?[A026741(A063908(n+1)+3)]`
-/

namespace A171566.P3136265562476409648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A063908 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171566.P3136265562476409648

/-!
# A171567: Riordan array (f(x), x*f(x)) where f(x) is the g.f. of A168491.

The programs for A171567, the canonical program `A171567.P6146138832837628714` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171567 has offset 0).

The definition of A171567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171567.P12505027227373454336

`(and(2, comp[∑[n]]+n)-1)*A033184(n+1)`
-/

namespace A171567.P12505027227373454336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A033184 (n + 1)

end

end A171567.P12505027227373454336

namespace A171567

/-- `(and(2, comp[∑[n]]+n)-1)*A033184(n+1)` -/
def P12505027227373454336.Spec : Prop :=
  ∀ n, P12505027227373454336.a n = A171567 n

end A171567

/-! ## A171567.P6146138832837628714

`A033184(n+1)*A097807(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A171567

/-- `A033184(n+1)*A097807(n)` -/
def P6146138832837628714.Spec : Prop :=
  ∀ n, P6146138832837628714.a n = A171567 n

theorem P6146138832837628714.correct : P6146138832837628714.Spec := by
  intro n
  simp only [A171567]

end A171567

/-! ## A171567.P9926772785750788779

`A189675(n+1)/A193588(n)`
-/

namespace A171567.P9926772785750788779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189675 (n + 1) : ℚ) / (A193588 n : ℚ)

end

end A171567.P9926772785750788779

namespace A171567

/-- `A189675(n+1)/A193588(n)` -/
def P9926772785750788779.Spec : Prop :=
  ∀ n, P9926772785750788779.a n = (A171567 n : ℚ)

end A171567

/-! ## A171567.P17506492692319239353

`A099039(comp[∑[n]])`
-/

namespace A171567.P17506492692319239353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A171567.P17506492692319239353

namespace A171567

/-- `A099039(comp[∑[n]])` -/
def P17506492692319239353.Spec : Prop :=
  ∀ n, P17506492692319239353.a n = A171567 n

end A171567

/-! ## A171567.P13576666847332818046

`A059365(comp[∑[n]])*A097807(n)`
-/

namespace A171567.P13576666847332818046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A097807 n

end

end A171567.P13576666847332818046

namespace A171567

/-- `A059365(comp[∑[n]])*A097807(n)` -/
def P13576666847332818046.Spec : Prop :=
  ∀ n, P13576666847332818046.a n = A171567 n

end A171567

/-! ## A171567.P14482365463373567021

`or(char[1], A099039(A014132(n+1)))`
-/

namespace A171567.P14482365463373567021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A099039 (A014132 (n + 1)).toNat)

end

end A171567.P14482365463373567021

namespace A171567

/-- `or(char[1], A099039(A014132(n+1)))` -/
def P14482365463373567021.Spec : Prop :=
  ∀ n, P14482365463373567021.a n = A171567 n

end A171567

/-! ## A171567.P15409358935265760750

`A033999(n)²*A099039(A014132(n+1))`
-/

namespace A171567.P15409358935265760750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A099039 (A014132 (n + 1)).toNat

end

end A171567.P15409358935265760750

namespace A171567

/-- `A033999(n)²*A099039(A014132(n+1))` -/
def P15409358935265760750.Spec : Prop :=
  ∀ n, P15409358935265760750.a n = A171567 n

end A171567

/-! ## A171567.P14223990704314430018

`A087960(n)²*A099039(A014132(n+1))`
-/

namespace A171567.P14223990704314430018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A099039 (A014132 (n + 1)).toNat

end

end A171567.P14223990704314430018

namespace A171567

/-- `A087960(n)²*A099039(A014132(n+1))` -/
def P14223990704314430018.Spec : Prop :=
  ∀ n, P14223990704314430018.a n = A171567 n

end A171567

/-! ## A171567.P17435573522905938402

`A099039(A014132(n+1))+A008683(9*(n+1))`
-/

namespace A171567.P17435573522905938402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 (A014132 (n + 1)).toNat + A008683 (9 * (n + 1))

end

end A171567.P17435573522905938402

namespace A171567

/-- `A099039(A014132(n+1))+A008683(9*(n+1))` -/
def P17435573522905938402.Spec : Prop :=
  ∀ n, P17435573522905938402.a n = A171567 n

end A171567

/-! ## A171567.P17725248707124325002

`A099039(n)-A099039(A014132(n+1)+1)`
-/

namespace A171567.P17725248707124325002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099039 n - A099039 (A014132 (n + 1) + 1).toNat

end

end A171567.P17725248707124325002

namespace A171567

/-- `A099039(n)-A099039(A014132(n+1)+1)` -/
def P17725248707124325002.Spec : Prop :=
  ∀ n, P17725248707124325002.a n = A171567 n

end A171567

/-! ## A171567.P4783185443917412570

`A033184(n+1)*A054336(n)/A202847(n)`
-/

namespace A171567.P4783185443917412570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033184 (n + 1) * A054336 n : ℚ) / (A202847 n : ℚ)

end

end A171567.P4783185443917412570

namespace A171567

/-- `A033184(n+1)*A054336(n)/A202847(n)` -/
def P4783185443917412570.Spec : Prop :=
  ∀ n, P4783185443917412570.a n = (A171567 n : ℚ)

end A171567

/-!
# A171569: Triangular numbers T such that T-2 is a prime.

The programs for A171569, there is no canonical definition to state claims against.
-/

/-! ## A171569.P15027769565227661938

`A124199(n+1)+2`
-/

namespace A171569.P15027769565227661938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1) + 2

end

end A171569.P15027769565227661938

/-! ## A171569.P2647996554358786257

`p?[∑[n]-2]+2`
-/

namespace A171569.P2647996554358786257
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A171569.P2647996554358786257

/-! ## A171569.P11912616948712632413

`or(1, p?[C(n, 2)-2]+1)`
-/

namespace A171569.P11912616948712632413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A171569.P11912616948712632413

/-! ## A171569.P11508628888071204266

`xor(1, p?[C(n, 2)-2]+1)`
-/

namespace A171569.P11508628888071204266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1)

end

end A171569.P11508628888071204266

/-! ## A171569.P8790801763663028631

`∑{d}[p?[C(n, 2)-2], #]+1`
-/

namespace A171569.P8790801763663028631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1

end

end A171569.P8790801763663028631

/-! ## A171569.P3994924249025367550

`∩[A107986(n+1), A000217(n)]`
-/

namespace A171569.P3994924249025367550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P3994924249025367550

/-! ## A171569.P5189905150600309192

`∩[A107987(n+1), A000217(n)]`
-/

namespace A171569.P5189905150600309192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P5189905150600309192

/-! ## A171569.P6197094225964228906

`∩[A107987(n+1), A001972(n)]`
-/

namespace A171569.P6197094225964228906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P6197094225964228906

/-! ## A171569.P11216115878166031292

`∩[A107986(n+1), A253145(n)]`
-/

namespace A171569.P11216115878166031292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P11216115878166031292

/-! ## A171569.P15545939574829802348

`∩[A107987(n+1), A253145(n)]`
-/

namespace A171569.P15545939574829802348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P15545939574829802348

/-! ## A171569.P16116841825752563772

`∩[A014493(n+1), A107986(n+1)]`
-/

namespace A171569.P16116841825752563772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P16116841825752563772

/-! ## A171569.P17242624852485186677

`∩[A014493(n+1), A107987(n+1)]`
-/

namespace A171569.P17242624852485186677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P17242624852485186677

/-! ## A171569.P12102404581324848283

`∩[A082667(n+1), A107986(n+1)]`
-/

namespace A171569.P12102404581324848283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P12102404581324848283

/-! ## A171569.P17964006722472367275

`∩[A082667(n+1), A107987(n+1)]`
-/

namespace A171569.P17964006722472367275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P17964006722472367275

/-! ## A171569.P7160555109332629294

`∩[A107986(n+1), A129966(n+1)]`
-/

namespace A171569.P7160555109332629294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P7160555109332629294

/-! ## A171569.P7438434675243845902

`∩[A107987(n+1), A129966(n+1)]`
-/

namespace A171569.P7438434675243845902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P7438434675243845902

/-! ## A171569.P6379334396324290359

`∩[A107987(n+1), A134519(n+1)]`
-/

namespace A171569.P6379334396324290359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P6379334396324290359

/-! ## A171569.P13605110975607980417

`∩[A107986(n+1), A186783(n+1)]`
-/

namespace A171569.P13605110975607980417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P13605110975607980417

/-! ## A171569.P11895881055782681987

`∩[A107987(n+1), A186783(n+1)]`
-/

namespace A171569.P11895881055782681987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P11895881055782681987

/-! ## A171569.P8788912586274397566

`∩[A107986(n+1), A350295(n+3)]`
-/

namespace A171569.P8788912586274397566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171569.P8788912586274397566

/-!
# A171570: Triangular numbers T such that T+2 is a prime.

The programs for A171570, there is no canonical definition to state claims against.
-/

/-! ## A171570.P11746875317098379697

`A055472(n+2)-2`
-/

namespace A171570.P11746875317098379697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 2) - 2

end

end A171570.P11746875317098379697

/-! ## A171570.P7144745687893284383

`∑[abs(Δ[A055472(n+1)])]`
-/

namespace A171570.P7144745687893284383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171570.P7144745687893284383

/-! ## A171570.P13418813169532333101

`∑[Δ[A055472(n+1)]%A156676(n)]`
-/

namespace A171570.P13418813169532333101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A156676 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171570.P13418813169532333101

/-! ## A171570.P11674056646572073331

`∑[A009001(2*n)²*Δ[A055472(n+1)]]`
-/

namespace A171570.P11674056646572073331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171570.P11674056646572073331

/-! ## A171570.P4449703185392821903

`∑[A000027(Δ[A055472(n+1)])]`
-/

namespace A171570.P4449703185392821903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171570.P4449703185392821903

/-! ## A171570.P8463297307565514812

`∑[A052410(Δ[A055472(n+1)])]`
-/

namespace A171570.P8463297307565514812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171570.P8463297307565514812

/-! ## A171570.P8252601911674479077

`p?[∑[n+1]+2]-2`
-/

namespace A171570.P8252601911674479077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 2

end

end A171570.P8252601911674479077

/-! ## A171570.P17381201503959568853

`record[p?[A249742(2*(n+1))]-2]`
-/

namespace A171570.P17381201503959568853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171570.P17381201503959568853

/-! ## A171570.P15430507847516241644

`∩[A040976(n+1), A001972(n)]`
-/

namespace A171570.P15430507847516241644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171570.P15430507847516241644

/-! ## A171570.P16554443363993954783

`∩[A014493(n+1), A040976(n+1)]`
-/

namespace A171570.P16554443363993954783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171570.P16554443363993954783

/-!
# A171571: A050278/9, where A050278 are the pandigital numbers.

The programs for A171571, there is no canonical definition to state claims against.
-/

/-! ## A171571.P6706331459758345746

`A050278(n+1)/9`
-/

namespace A171571.P6706331459758345746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050278 (n + 1) : ℚ) / 9

end

end A171571.P6706331459758345746

/-! ## A171571.P12545346077310417664

`∪[A051018(n+1), A051264(n+1)]/9`
-/

namespace A171571.P12545346077310417664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051264 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 9

end

end A171571.P12545346077310417664

/-! ## A171571.P15659025342701799300

`record[A050278(A133310(n))/9]`
-/

namespace A171571.P15659025342701799300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050278 (A133310 n).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171571.P15659025342701799300

/-! ## A171571.P12365856168431160902

`record[A050278(A126759(n))/9]`
-/

namespace A171571.P12365856168431160902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050278 (A126759 n).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171571.P12365856168431160902

/-! ## A171571.P6332742007833727019

`record[A050278(A117910(n))/9]`
-/

namespace A171571.P6332742007833727019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050278 (A117910 n).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171571.P6332742007833727019

/-! ## A171571.P5450870710670076277

`record[A050278(A065648(n))/9]`
-/

namespace A171571.P5450870710670076277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050278 (A065648 n).toNat : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171571.P5450870710670076277

/-!
# A171572: a(n) = 0+1+2+...+n in lunar arithmetic in base 5 written in base 10.

The programs for A171572, there is no canonical definition to state claims against.
-/

/-! ## A171572.P18244686036369256208

`A140730(∑[char[A140730(n)]])-1`
-/

namespace A171572.P18244686036369256208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A171572.P18244686036369256208

/-! ## A171572.P13227556643474700647

`A028900(A171573(n))`
-/

namespace A171572.P13227556643474700647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (A171573 n).toNat

end

end A171572.P13227556643474700647

/-!
# A171573: a(n) = 0+1+2+...+n in lunar arithmetic in base 5 written in base 5.

The programs for A171573, there is no canonical definition to state claims against.
-/

/-! ## A171573.P13180870695644242875

`A007091(A171572(n))`
-/

namespace A171573.P13180870695644242875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A171572 n).toNat

end

end A171573.P13180870695644242875

/-! ## A171573.P14524698052525539660

`A222244(A087052(record[A222244(n)]))`
-/

namespace A171573.P14524698052525539660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A087052 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A171573.P14524698052525539660

/-! ## A171573.P10308342115708642462

`A000196((A179085(n+1)+1)²)-2-A004271(n)`
-/

namespace A171573.P10308342115708642462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A179085 (n + 1) + 1) ^ 2).toNat - 2 - A004271 n

end

end A171573.P10308342115708642462

/-!
# A171574: Primes of the form floor(binomial(k,2)/4).

The programs for A171574, the canonical program `A171574.P15555471439026781781` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171574 has offset 1).

The definition of A171574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171574.P15555471439026781781

`p?[floor(∑[n/4])]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171574

/-- `p?[floor(∑[n/4])]` -/
def P15555471439026781781.Spec : Prop :=
  ∀ n, P15555471439026781781.a n = A171574 (n + 1)

theorem P15555471439026781781.correct : P15555471439026781781.Spec := by
  intro n
  simp only [A171574, Nat.add_sub_cancel]

end A171574

/-! ## A171574.P17336764208513222935

`∩[A000040(n+1), A011861(n+3)]`
-/

namespace A171574.P17336764208513222935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171574.P17336764208513222935

namespace A171574

/-- `∩[A000040(n+1), A011861(n+3)]` -/
def P17336764208513222935.Spec : Prop :=
  ∀ n, (P17336764208513222935.a n : ℤ) = A171574 (n + 1)

end A171574

/-! ## A171574.P12931821239758517881

`∩[A000040(n+1), A002265(A000217(n+2))]`
-/

namespace A171574.P12931821239758517881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A000217 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171574.P12931821239758517881

namespace A171574

/-- `∩[A000040(n+1), A002265(A000217(n+2))]` -/
def P12931821239758517881.Spec : Prop :=
  ∀ n, (P12931821239758517881.a n : ℤ) = A171574 (n + 1)

end A171574

/-! ## A171574.P11564578478332081330

`record[A039634(A002378(n+1))]`
-/

namespace A171574.P11564578478332081330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A002378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171574.P11564578478332081330

namespace A171574

/-- `record[A039634(A002378(n+1))]` -/
def P11564578478332081330.Spec : Prop :=
  ∀ n, P11564578478332081330.a n = A171574 (n + 1)

end A171574

/-! ## A171574.P10965670094654908222

`record[A039634(A002620(2*n+3))]`
-/

namespace A171574.P10965670094654908222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039634 (A002620 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171574.P10965670094654908222

namespace A171574

/-- `record[A039634(A002620(2*n+3))]` -/
def P10965670094654908222.Spec : Prop :=
  ∀ n, P10965670094654908222.a n = A171574 (n + 1)

end A171574

/-!
# A171575: n-th noncomposite number plus n-th even nonprime number.

The programs for A171575, the canonical program `A171575.P2892916473500616437` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171575 has offset 1).

The definition of A171575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171575.P2892916473500616437

`A008578(n+1)+A163300(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A171575

/-- `A008578(n+1)+A163300(n+1)` -/
def P2892916473500616437.Spec : Prop :=
  ∀ n, P2892916473500616437.a n = A171575 (n + 1)

theorem P2892916473500616437.correct : P2892916473500616437.Spec := by
  intro n
  simp only [A171575, Nat.add_sub_cancel]

end A171575

/-! ## A171575.P10669201409147101067

`a(n-1)+A125266(n)+2` with `a(0)=1`
-/

namespace A171575.P10669201409147101067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A125266 n + 2)

end

end A171575.P10669201409147101067

namespace A171575

/-- `a(n-1)+A125266(n)+2` -/
def P10669201409147101067.Spec : Prop :=
  ∀ n, P10669201409147101067.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P2125271359553162956

`A000040(n*a(floor(acot(n))))+2*(n+1)` with `a(0)=1`
-/

namespace A171575.P2125271359553162956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 ((n : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat).toNat + (2 * (n + 1) : ℤ)

end

end A171575.P2125271359553162956

namespace A171575

/-- `A000040(n*a(floor(acot(n))))+2*(n+1)` -/
def P2125271359553162956.Spec : Prop :=
  ∀ n, P2125271359553162956.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P6742739582944728284

`A028815(n)%(∑[4*n]+1)+2*n+1`
-/

namespace A171575.P6742739582944728284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028815 n) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) + (2 * n + 1 : ℤ)

end

end A171575.P6742739582944728284

namespace A171575

/-- `A028815(n)%(∑[4*n]+1)+2*n+1` -/
def P6742739582944728284.Spec : Prop :=
  ∀ n, P6742739582944728284.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P17908067755161161113

`2*(n+1)+A000040(n%(2*a(n-1)))` with `a(0)=1`
-/

namespace A171575.P17908067755161161113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (n + 1) : ℤ) + A000040 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat

end

end A171575.P17908067755161161113

namespace A171575

/-- `2*(n+1)+A000040(n%(2*a(n-1)))` -/
def P17908067755161161113.Spec : Prop :=
  ∀ n, P17908067755161161113.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P6360362505039554387

`Δ[2*n+A000040(n-1)+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A171575.P6360362505039554387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (2 * n : ℤ) + (A000040 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171575.P6360362505039554387

namespace A171575

/-- `Δ[2*n+A000040(n-1)+a(n-1)]` -/
def P6360362505039554387.Spec : Prop :=
  ∀ n, P6360362505039554387.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P15491564780621931465

`A182986(n+1)+A103517(n)`
-/

namespace A171575.P15491564780621931465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) + A103517 n

end

end A171575.P15491564780621931465

namespace A171575

/-- `A182986(n+1)+A103517(n)` -/
def P15491564780621931465.Spec : Prop :=
  ∀ n, P15491564780621931465.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P16314747366590991668

`A174008(n+1)-A075526(n)`
-/

namespace A171575.P16314747366590991668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174008 (n + 1) - A075526 n

end

end A171575.P16314747366590991668

namespace A171575

/-- `A174008(n+1)-A075526(n)` -/
def P16314747366590991668.Spec : Prop :=
  ∀ n, P16314747366590991668.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P17000557744941698100

`A167136(n+1)+A114637(n+1)`
-/

namespace A171575.P17000557744941698100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167136 (n + 1) + A114637 (n + 1)

end

end A171575.P17000557744941698100

namespace A171575

/-- `A167136(n+1)+A114637(n+1)` -/
def P17000557744941698100.Spec : Prop :=
  ∀ n, P17000557744941698100.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P11370037669579209165

`A078916(n+1)-A125266(n+1)`
-/

namespace A171575.P11370037669579209165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078916 (n + 1) - A125266 (n + 1)

end

end A171575.P11370037669579209165

namespace A171575

/-- `A078916(n+1)-A125266(n+1)` -/
def P11370037669579209165.Spec : Prop :=
  ∀ n, P11370037669579209165.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P15154203123968674094

`A163300(n+1)+A158611(n+2)`
-/

namespace A171575.P15154203123968674094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + A158611 (n + 2)

end

end A171575.P15154203123968674094

namespace A171575

/-- `A163300(n+1)+A158611(n+2)` -/
def P15154203123968674094.Spec : Prop :=
  ∀ n, P15154203123968674094.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P10844341306714732288

`A065475(n+1)+A158611(A065475(n+1))+n`
-/

namespace A171575.P10844341306714732288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + (A158611 (A065475 (n + 1)).toNat + (n : ℤ))

end

end A171575.P10844341306714732288

namespace A171575

/-- `A065475(n+1)+A158611(A065475(n+1))+n` -/
def P10844341306714732288.Spec : Prop :=
  ∀ n, P10844341306714732288.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P12983842667928777984

`A141468(n+1)+A163751(n+1)+A158611(n+2)`
-/

namespace A171575.P12983842667928777984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) + (A163751 (n + 1) + A158611 (n + 2))

end

end A171575.P12983842667928777984

namespace A171575

/-- `A141468(n+1)+A163751(n+1)+A158611(n+2)` -/
def P12983842667928777984.Spec : Prop :=
  ∀ n, P12983842667928777984.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P17823093658924306288

`∑{d}[A008578(n+1), A000203(#)+n]`
-/

namespace A171575.P17823093658924306288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000203 d + (n : ℤ))

end

end A171575.P17823093658924306288

namespace A171575

/-- `∑{d}[A008578(n+1), A000203(#)+n]` -/
def P17823093658924306288.Spec : Prop :=
  ∀ n, P17823093658924306288.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P5982239749315918579

`∑{d}[record[A006530(n+1)], A000203(#)+n]`
-/

namespace A171575.P5982239749315918579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000203 d + (n : ℤ))

end

end A171575.P5982239749315918579

namespace A171575

/-- `∑{d}[record[A006530(n+1)], A000203(#)+n]` -/
def P5982239749315918579.Spec : Prop :=
  ∀ n, P5982239749315918579.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P12961688013008789249

`∑{d}[record[A020639(n+1)], A000203(#)+n]`
-/

namespace A171575.P12961688013008789249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000203 d + (n : ℤ))

end

end A171575.P12961688013008789249

namespace A171575

/-- `∑{d}[record[A020639(n+1)], A000203(#)+n]` -/
def P12961688013008789249.Spec : Prop :=
  ∀ n, P12961688013008789249.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P7896601499250397333

`A008578(n+1)+A001222(A008578(n+1))*A103517(n)`
-/

namespace A171575.P7896601499250397333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A001222 (A008578 (n + 1)).toNat * A103517 n

end

end A171575.P7896601499250397333

namespace A171575

/-- `A008578(n+1)+A001222(A008578(n+1))*A103517(n)` -/
def P7896601499250397333.Spec : Prop :=
  ∀ n, P7896601499250397333.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P3493331801370338092

`A008578(n+1)+record[A073759(n+1)]`
-/

namespace A171575.P3493331801370338092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171575.P3493331801370338092

namespace A171575

/-- `A008578(n+1)+record[A073759(n+1)]` -/
def P3493331801370338092.Spec : Prop :=
  ∀ n, P3493331801370338092.a n = A171575 (n + 1)

end A171575

/-! ## A171575.P5858854505132007960

`A103517(n)+record[A047814(n)]`
-/

namespace A171575.P5858854505132007960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171575.P5858854505132007960

namespace A171575

/-- `A103517(n)+record[A047814(n)]` -/
def P5858854505132007960.Spec : Prop :=
  ∀ n, P5858854505132007960.a n = A171575 (n + 1)

end A171575

/-!
# A171576: a(n) = abs(n-th noncomposite number minus n-th even nonprime number).

The programs for A171576, the canonical program `A171576.P12426591826192478319` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171576 has offset 1).

The definition of A171576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171576.P12426591826192478319

`abs(A008578(n+1)-A163300(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A171576

/-- `abs(A008578(n+1)-A163300(n+1))` -/
def P12426591826192478319.Spec : Prop :=
  ∀ n, P12426591826192478319.a n = A171576 (n + 1)

theorem P12426591826192478319.correct : P12426591826192478319.Spec := by
  intro n
  simp only [A171576, Nat.add_sub_cancel]

end A171576

/-! ## A171576.P13206623748544638757

`abs(1-A162177(n+1)+n)`
-/

namespace A171576.P13206623748544638757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A162177 (n + 1) + (n : ℤ)|

end

end A171576.P13206623748544638757

namespace A171576

/-- `abs(1-A162177(n+1)+n)` -/
def P13206623748544638757.Spec : Prop :=
  ∀ n, P13206623748544638757.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P17372106454063992550

`abs(A028815(n)-(2*n+3))`
-/

namespace A171576.P17372106454063992550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028815 n - (2 * n + 3 : ℤ)|

end

end A171576.P17372106454063992550

namespace A171576

/-- `abs(A028815(n)-(2*n+3))` -/
def P17372106454063992550.Spec : Prop :=
  ∀ n, P17372106454063992550.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P2291069657182487592

`abs(A065890(abs(1-n)+1)-(n+1))`
-/

namespace A171576.P2291069657182487592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A065890 (|1 - (n : ℤ)| + 1).toNat - (n + 1 : ℤ))|

end

end A171576.P2291069657182487592

namespace A171576

/-- `abs(A065890(abs(1-n)+1)-(n+1))` -/
def P2291069657182487592.Spec : Prop :=
  ∀ n, P2291069657182487592.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P18396391842755080356

`abs(A040976(abs(1-n)+1)-2*n)`
-/

namespace A171576.P18396391842755080356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A040976 (|1 - (n : ℤ)| + 1).toNat - (2 * n : ℤ))|

end

end A171576.P18396391842755080356

namespace A171576

/-- `abs(A040976(abs(1-n)+1)-2*n)` -/
def P18396391842755080356.Spec : Prop :=
  ∀ n, P18396391842755080356.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P9054241620387692495

`abs(A001747(n+1)/2-2-2*n)`
-/

namespace A171576.P9054241620387692495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A001747 (n + 1) : ℚ) / 2 - 2 - (2 * n : ℚ)|

end

end A171576.P9054241620387692495

namespace A171576

/-- `abs(A001747(n+1)/2-2-2*n)` -/
def P9054241620387692495.Spec : Prop :=
  ∀ n, P9054241620387692495.a n = (A171576 (n + 1) : ℚ)

end A171576

/-! ## A171576.P13859268532682824484

`abs(A000040(abs(1-n)+1)-2-2*n)`
-/

namespace A171576.P13859268532682824484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A000040 (|1 - (n : ℤ)| + 1).toNat - 2 - (2 * n : ℤ))|

end

end A171576.P13859268532682824484

namespace A171576

/-- `abs(A000040(abs(1-n)+1)-2-2*n)` -/
def P13859268532682824484.Spec : Prop :=
  ∀ n, P13859268532682824484.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P893154189751647662

`abs((A076274(n+1)-1)/2-1-2*n)`
-/

namespace A171576.P893154189751647662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A076274 (n + 1) - 1 : ℚ) / 2 - 1 - (2 * n : ℚ)|

end

end A171576.P893154189751647662

namespace A171576

/-- `abs((A076274(n+1)-1)/2-1-2*n)` -/
def P893154189751647662.Spec : Prop :=
  ∀ n, P893154189751647662.a n = (A171576 (n + 1) : ℚ)

end A171576

/-! ## A171576.P57439641123616730

`abs(2*(n+1)-A158611(n+2))`
-/

namespace A171576.P57439641123616730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - A158611 (n + 2)|

end

end A171576.P57439641123616730

namespace A171576

/-- `abs(2*(n+1)-A158611(n+2))` -/
def P57439641123616730.Spec : Prop :=
  ∀ n, P57439641123616730.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P8796731912311837871

`abs(2*(n+1)-record[A006530(n+1)])`
-/

namespace A171576.P8796731912311837871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A171576.P8796731912311837871

namespace A171576

/-- `abs(2*(n+1)-record[A006530(n+1)])` -/
def P8796731912311837871.Spec : Prop :=
  ∀ n, P8796731912311837871.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P15842988523277745086

`abs(2*(n+1)-record[A020639(n+1)])`
-/

namespace A171576.P15842988523277745086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A171576.P15842988523277745086

namespace A171576

/-- `abs(2*(n+1)-record[A020639(n+1)])` -/
def P15842988523277745086.Spec : Prop :=
  ∀ n, P15842988523277745086.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P16523248710722480481

`abs(lt[n, A006530(n+1)]-Δ[n²])`
-/

namespace A171576.P16523248710722480481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))|

end

end A171576.P16523248710722480481

namespace A171576

/-- `abs(lt[n, A006530(n+1)]-Δ[n²])` -/
def P16523248710722480481.Spec : Prop :=
  ∀ n, P16523248710722480481.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P13757852379896443655

`abs(lt[log(A000005(n+1)), 1]-(n+1)-n)`
-/

namespace A171576.P13757852379896443655
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A000005 (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℤ) - (n + 1 : ℤ) - (n : ℤ)|

end

end A171576.P13757852379896443655

namespace A171576

/-- `abs(lt[log(A000005(n+1)), 1]-(n+1)-n)` -/
def P13757852379896443655.Spec : Prop :=
  ∀ n, P13757852379896443655.a n = A171576 (n + 1)

end A171576

/-! ## A171576.P11457770181241671584

`abs(2*(n+1)-record[A014963(n+1)])`
-/

namespace A171576.P11457770181241671584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A171576.P11457770181241671584

namespace A171576

/-- `abs(2*(n+1)-record[A014963(n+1)])` -/
def P11457770181241671584.Spec : Prop :=
  ∀ n, P11457770181241671584.a n = A171576 (n + 1)

end A171576

/-!
# A171577: 0, 1 and primes > 3.

The programs for A171577, the canonical program `A171577.P9512469357835469912` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171577 has offset 1).

The definition of A171577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171577.P9512469357835469912

`A006005(n+1)-A130706(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171577

/-- `A006005(n+1)-A130706(n)` -/
def P9512469357835469912.Spec : Prop :=
  ∀ n, P9512469357835469912.a n = A171577 (n + 1)

theorem P9512469357835469912.correct : P9512469357835469912.Spec := by
  intro n
  simp only [A171577, Nat.add_sub_cancel]

end A171577

/-! ## A171577.P13003070541187866773

`A000040(n+1)%A002523(n)`
-/

namespace A171577.P13003070541187866773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A002523 n)

end

end A171577.P13003070541187866773

namespace A171577

/-- `A000040(n+1)%A002523(n)` -/
def P13003070541187866773.Spec : Prop :=
  ∀ n, P13003070541187866773.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P8965003084220228183

`A006005(n+1)%A002523(n)`
-/

namespace A171577.P8965003084220228183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (A002523 n)

end

end A171577.P8965003084220228183

namespace A171577

/-- `A006005(n+1)%A002523(n)` -/
def P8965003084220228183.Spec : Prop :=
  ∀ n, P8965003084220228183.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P5062883589478125801

`A001748(n+1)-A073582(n+1)`
-/

namespace A171577.P5062883589478125801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A073582 (n + 1)

end

end A171577.P5062883589478125801

namespace A171577

/-- `A001748(n+1)-A073582(n+1)` -/
def P5062883589478125801.Spec : Prop :=
  ∀ n, P5062883589478125801.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P3752494567416422831

`A046301(n+1)%A073582(n+1)`
-/

namespace A171577.P3752494567416422831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046301 (n + 1)) (A073582 (n + 1))

end

end A171577.P3752494567416422831

namespace A171577

/-- `A046301(n+1)%A073582(n+1)` -/
def P3752494567416422831.Spec : Prop :=
  ∀ n, P3752494567416422831.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P16755240550797801697

`A006450(n+1)%A168152(n+1)`
-/

namespace A171577.P16755240550797801697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006450 (n + 1)) (A168152 (n + 1))

end

end A171577.P16755240550797801697

namespace A171577

/-- `A006450(n+1)%A168152(n+1)` -/
def P16755240550797801697.Spec : Prop :=
  ∀ n, P16755240550797801697.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P6967210149952430493

`A166329(n+1)%A073582(n+1)`
-/

namespace A171577.P6967210149952430493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166329 (n + 1)) (A073582 (n + 1))

end

end A171577.P6967210149952430493

namespace A171577

/-- `A166329(n+1)%A073582(n+1)` -/
def P6967210149952430493.Spec : Prop :=
  ∀ n, P6967210149952430493.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P11706012392391968930

`A185012(n+1)+A000040(n+1)*A157928(n)`
-/

namespace A171577.P11706012392391968930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 1) + A000040 (n + 1) * A157928 n

end

end A171577.P11706012392391968930

namespace A171577

/-- `A185012(n+1)+A000040(n+1)*A157928(n)` -/
def P11706012392391968930.Spec : Prop :=
  ∀ n, P11706012392391968930.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P2000456299036561581

`A000040(n+1)+A061009(n+2)-A000720(n+2)`
-/

namespace A171577.P2000456299036561581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A061009 (n + 2) - A000720 (n + 2))

end

end A171577.P2000456299036561581

namespace A171577

/-- `A000040(n+1)+A061009(n+2)-A000720(n+2)` -/
def P2000456299036561581.Spec : Prop :=
  ∀ n, P2000456299036561581.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P16353709044325160866

`A001747(n+2)+A008578(n+2)-A073582(n+1)`
-/

namespace A171577.P16353709044325160866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) + (A008578 (n + 2) - A073582 (n + 1))

end

end A171577.P16353709044325160866

namespace A171577

/-- `A001747(n+2)+A008578(n+2)-A073582(n+1)` -/
def P16353709044325160866.Spec : Prop :=
  ∀ n, P16353709044325160866.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P13535587275387677595

`A158611(A057544(n+1))`
-/

namespace A171577.P13535587275387677595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A057544 (n + 1)).toNat

end

end A171577.P13535587275387677595

namespace A171577

/-- `A158611(A057544(n+1))` -/
def P13535587275387677595.Spec : Prop :=
  ∀ n, P13535587275387677595.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P111643329035581859

`p?[xor(1, n)]-C(3, n+2)`
-/

namespace A171577.P111643329035581859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (Nat.choose 3 (n + 2) : ℤ)

end

end A171577.P111643329035581859

namespace A171577

/-- `p?[xor(1, n)]-C(3, n+2)` -/
def P111643329035581859.Spec : Prop :=
  ∀ n, P111643329035581859.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P2472755293663945223

`p?[abs(xor(n, -2))]%(∑[n]²+1)`
-/

namespace A171577.P2472755293663945223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + 1 : ℕ) : ℤ)

end

end A171577.P2472755293663945223

namespace A171577

/-- `p?[abs(xor(n, -2))]%(∑[n]²+1)` -/
def P2472755293663945223.Spec : Prop :=
  ∀ n, P2472755293663945223.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P4874488600401500277

`p?[xor(1, n)+1]%(n^3+1)`
-/

namespace A171577.P4874488600401500277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (n ^ 3 + 1)

end

end A171577.P4874488600401500277

namespace A171577

/-- `p?[xor(1, n)+1]%(n^3+1)` -/
def P4874488600401500277.Spec : Prop :=
  ∀ n, (P4874488600401500277.a n : ℤ) = A171577 (n + 1)

end A171577

/-! ## A171577.P3626304151623531099

`p?[n%3+n]%(n^5+1)`
-/

namespace A171577.P3626304151623531099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (n ^ 5 + 1)

end

end A171577.P3626304151623531099

namespace A171577

/-- `p?[n%3+n]%(n^5+1)` -/
def P3626304151623531099.Spec : Prop :=
  ∀ n, (P3626304151623531099.a n : ℤ) = A171577 (n + 1)

end A171577

/-! ## A171577.P11986946363408583985

`and(floor(1/(γ-n)), p?[xor(1, n)+1])`
-/

namespace A171577.P11986946363408583985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A171577.P11986946363408583985

namespace A171577

/-- `and(floor(1/(γ-n)), p?[xor(1, n)+1])` -/
def P11986946363408583985.Spec : Prop :=
  ∀ n, P11986946363408583985.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P10008131590564670521

`filter[A158611(n+1), A373991(#)]`
-/

namespace A171577.P10008131590564670521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A171577.P10008131590564670521

namespace A171577

/-- `filter[A158611(n+1), A373991(#)]` -/
def P10008131590564670521.Spec : Prop :=
  ∀ n, P10008131590564670521.a n = A171577 (n + 1)

end A171577

/-! ## A171577.P8995148304001423195

`filter[A335402(n+1), A373991(#)]`
-/

namespace A171577.P8995148304001423195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373991 (f1 j).toNat = 1) n)

end

end A171577.P8995148304001423195

namespace A171577

/-- `filter[A335402(n+1), A373991(#)]` -/
def P8995148304001423195.Spec : Prop :=
  ∀ n, P8995148304001423195.a n = A171577 (n + 1)

end A171577

/-!
# A171578: Squares in lunar arithmetic in base 6 written in base 10.

The programs for A171578, there is no canonical definition to state claims against.
-/

/-! ## A171578.P13830759561823866632

`A028901(A171591(n))`
-/

namespace A171578.P13830759561823866632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A171591 n).toNat

end

end A171578.P13830759561823866632

/-! ## A171578.P7227706198643591795

`lt[A033819(n+1), A033819(2*n+5)/A227070(n+2)]`
-/

namespace A171578.P7227706198643591795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033819 (2 * n + 5) : ℚ) / (A227070 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A171578.P7227706198643591795

/-! ## A171578.P215895686339836269

`eq[A051801(A105591(n+4)), A208879(n)]`
-/

namespace A171578.P215895686339836269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A105591 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171578.P215895686339836269

/-! ## A171578.P13721570507808697328

`eq[A089209(n+1), A134627(n+1)]`
-/

namespace A171578.P13721570507808697328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171578.P13721570507808697328

/-! ## A171578.P4573702488646026351

`lt[A172264(2*(n+1)), A002852(A324699(n+1))]`
-/

namespace A171578.P4573702488646026351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A324699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171578.P4573702488646026351

/-!
# A171581: The natural numbers without primes > 3.

The programs for A171581, the canonical program `A171581.P14375995751855154974` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171581 has offset 1).

The definition of A171581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171581.P6219200688918497660

`comp[p?[2*n+5]-1]+1`
-/

namespace A171581.P6219200688918497660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A171581.P6219200688918497660

namespace A171581

/-- `comp[p?[2*n+5]-1]+1` -/
def P6219200688918497660.Spec : Prop :=
  ∀ n, (P6219200688918497660.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P5882141706896495388

`comp[xor(1, p?[2*n+5])]+1`
-/

namespace A171581.P5882141706896495388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A171581.P5882141706896495388

namespace A171581

/-- `comp[xor(1, p?[2*n+5])]+1` -/
def P5882141706896495388.Spec : Prop :=
  ∀ n, (P5882141706896495388.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P369182350131245309

`comp[p?[2*n+1]%∑[n+3]]`
-/

namespace A171581.P369182350131245309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) % (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A171581.P369182350131245309

namespace A171581

/-- `comp[p?[2*n+1]%∑[n+3]]` -/
def P369182350131245309.Spec : Prop :=
  ∀ n, (P369182350131245309.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P18320161323693409531

`record[A101513(n+1)]`
-/

namespace A171581.P18320161323693409531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171581.P18320161323693409531

namespace A171581

/-- `record[A101513(n+1)]` -/
def P18320161323693409531.Spec : Prop :=
  ∀ n, P18320161323693409531.a n = A171581 (n + 1)

end A171581

/-! ## A171581.P7194722238547539277

`comp[A159482(n+1)]`
-/

namespace A171581.P7194722238547539277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171581.P7194722238547539277

namespace A171581

/-- `comp[A159482(n+1)]` -/
def P7194722238547539277.Spec : Prop :=
  ∀ n, (P7194722238547539277.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P6568117415654956093

`comp[A075556(n+3)]`
-/

namespace A171581.P6568117415654956093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075556 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171581.P6568117415654956093

namespace A171581

/-- `comp[A075556(n+3)]` -/
def P6568117415654956093.Spec : Prop :=
  ∀ n, (P6568117415654956093.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P14375995751855154974

`A122825(n+1)-A157928(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A171581

/-- `A122825(n+1)-A157928(n)` -/
def P14375995751855154974.Spec : Prop :=
  ∀ n, P14375995751855154974.a n = A171581 (n + 1)

theorem P14375995751855154974.correct : P14375995751855154974.Spec := by
  intro n
  simp only [A171581, Nat.add_sub_cancel]

end A171581

/-! ## A171581.P10367984962894948713

`∪[A002808(n+1), A001972(n)]`
-/

namespace A171581.P10367984962894948713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171581.P10367984962894948713

namespace A171581

/-- `∪[A002808(n+1), A001972(n)]` -/
def P10367984962894948713.Spec : Prop :=
  ∀ n, (P10367984962894948713.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P13868446241190053016

`∪[A018252(n+1), A001972(n)]`
-/

namespace A171581.P13868446241190053016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171581.P13868446241190053016

namespace A171581

/-- `∪[A018252(n+1), A001972(n)]` -/
def P13868446241190053016.Spec : Prop :=
  ∀ n, (P13868446241190053016.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P4364299233884378549

`A173905(n+2)`
-/

namespace A171581.P4364299233884378549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

end

end A171581.P4364299233884378549

namespace A171581

/-- `A173905(n+2)` -/
def P4364299233884378549.Spec : Prop :=
  ∀ n, P4364299233884378549.a n = A171581 (n + 1)

end A171581

/-! ## A171581.P1427935390364751412

`comp[A085090(n+3)]`
-/

namespace A171581.P1427935390364751412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171581.P1427935390364751412

namespace A171581

/-- `comp[A085090(n+3)]` -/
def P1427935390364751412.Spec : Prop :=
  ∀ n, (P1427935390364751412.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P10927297080160391394

`lt[(1-n)², (n+2)^∑{e}[n, #]]`
-/

namespace A171581.P10927297080160391394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171581.P10927297080160391394

namespace A171581

/-- `lt[(1-n)², (n+2)^∑{e}[n, #]]` -/
def P10927297080160391394.Spec : Prop :=
  ∀ n, (P10927297080160391394.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P4065885617309611443

`lt[(1-n)², ∏{e}[n, (n+2)^#]]`
-/

namespace A171581.P4065885617309611443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (n + 2) ^ Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171581.P4065885617309611443

namespace A171581

/-- `lt[(1-n)², ∏{e}[n, (n+2)^#]]` -/
def P4065885617309611443.Spec : Prop :=
  ∀ n, (P4065885617309611443.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P10018794965220077220

`A282649(A004274(n+1))`
-/

namespace A171581.P10018794965220077220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282649 (A004274 (n + 1)).toNat

end

end A171581.P10018794965220077220

namespace A171581

/-- `A282649(A004274(n+1))` -/
def P10018794965220077220.Spec : Prop :=
  ∀ n, P10018794965220077220.a n = A171581 (n + 1)

end A171581

/-! ## A171581.P5755890567651220768

`A282649(A004280(n+1))`
-/

namespace A171581.P5755890567651220768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282649 (A004280 (n + 1)).toNat

end

end A171581.P5755890567651220768

namespace A171581

/-- `A282649(A004280(n+1))` -/
def P5755890567651220768.Spec : Prop :=
  ∀ n, P5755890567651220768.a n = A171581 (n + 1)

end A171581

/-! ## A171581.P3378801617029161264

`lt[(1-n)², ∏{d}[2*n, #]/(n+2)]`
-/

namespace A171581.P3378801617029161264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A171581.P3378801617029161264

namespace A171581

/-- `lt[(1-n)², ∏{d}[2*n, #]/(n+2)]` -/
def P3378801617029161264.Spec : Prop :=
  ∀ n, (P3378801617029161264.a n : ℤ) = A171581 (n + 1)

end A171581

/-! ## A171581.P5445415394511676088

`lt[(1-n)², ∏{d}[n, #^ϕ]]`
-/

namespace A171581.P5445415394511676088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (d : ℝ) ^ Real.goldenRatio

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A171581.P5445415394511676088

namespace A171581

/-- `lt[(1-n)², ∏{d}[n, #^ϕ]]` -/
def P5445415394511676088.Spec : Prop :=
  ∀ n, (P5445415394511676088.a n : ℤ) = A171581 (n + 1)

end A171581

/-!
# A171582: Numbers k such that 10^k*(4+3*10^k)+3 is prime.

The programs for A171582, there is no canonical definition to state claims against.
-/

/-! ## A171582.P3675635151465340242

`A074925(A071293(n))%A306365(n+1)`
-/

namespace A171582.P3675635151465340242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074925 (A071293 n).toNat) (A306365 (n + 1))

end

end A171582.P3675635151465340242

/-!
# A171583: a(n) = 10^n*(4+3*10^n)+3.

The programs for A171583, the canonical program `A171583.P9002348196884339001` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171583 has offset 0).

The definition of A171583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(4+3*10^n)+3` (program `A171583.P9002348196884339001`, by `A171583.P9002348196884339001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171583.P9002348196884339001

`10^n*(4+3*10^n)+3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171583

/-- `10^n*(4+3*10^n)+3` -/
def P9002348196884339001.Spec : Prop :=
  ∀ n, (P9002348196884339001.a n : ℤ) = A171583 n

theorem P9002348196884339001.correct : P9002348196884339001.Spec := by
  intro n
  simp only [A171583]

end A171583

/-!
# A171584: Squares such that swapping some pair of digits gives a prime.

The programs for A171584, there is no canonical definition to state claims against.
-/

/-! ## A171584.P10409270587677524087

`record[A161851(n+1)/A322391(n+1)]`
-/

namespace A171584.P10409270587677524087
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161851 (n + 1) : ℚ) / (A322391 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171584.P10409270587677524087

/-! ## A171584.P2873241490583547368

`A161851(A053501(n)*A306424(n+1))`
-/

namespace A171584.P2873241490583547368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161851 (A053501 n * A306424 (n + 1)).toNat

end

end A171584.P2873241490583547368

/-!
# A171585: Primes such that swapping some pair of digits gives a square.

The programs for A171585, there is no canonical definition to state claims against.
-/

/-! ## A171585.P11081120926774979769

`A161853(lt[A161832(n+3), A161871(3*n+4)])`
-/

namespace A171585.P11081120926774979769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161832 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161871 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161853 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A171585.P11081120926774979769

/-!
# A171586: Squares divisible by at least two of their distinct digits >1.

The programs for A171586, there is no canonical definition to state claims against.
-/

/-! ## A171586.P13000403469644588684

`∩[A187516(n+1), n²]`
-/

namespace A171586.P13000403469644588684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187516 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A171586.P13000403469644588684

/-! ## A171586.P5404413408491257254

`∩[n^2, A187516(n+2)]`
-/

namespace A171586.P5404413408491257254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187516 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171586.P5404413408491257254

/-!
# A171587: Sequence of the diagonal variant of the Fibonacci word fractal. Sequence of the Fibonacci tile.

The programs for A171587, the canonical program `A171587.P15896447707216273594` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171587 has offset 0).

The definition of A171587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171587.P9606853275742469368

`comp[floor(ϕ*n)]%2`
-/

namespace A171587.P9606853275742469368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A171587.P9606853275742469368

namespace A171587

/-- `comp[floor(ϕ*n)]%2` -/
def P9606853275742469368.Spec : Prop :=
  ∀ n, (P9606853275742469368.a n : ℤ) = A171587 n

end A171587

/-! ## A171587.P6674033391207188126

`and(1, comp[floor(ϕ*n)])`
-/

namespace A171587.P6674033391207188126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A171587.P6674033391207188126

namespace A171587

/-- `and(1, comp[floor(ϕ*n)])` -/
def P6674033391207188126.Spec : Prop :=
  ∀ n, (P6674033391207188126.a n : ℤ) = A171587 n

end A171587

/-! ## A171587.P8724027947345670516

`(floor((n+1)/ϕ)%2)²`
-/

namespace A171587.P8724027947345670516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ 2 ^ 2

end

end A171587.P8724027947345670516

namespace A171587

/-- `(floor((n+1)/ϕ)%2)²` -/
def P8724027947345670516.Spec : Prop :=
  ∀ n, P8724027947345670516.a n = A171587 n

end A171587

/-! ## A171587.P15469425792676304896

`and(1, floor((n+1)/ϕ))²`
-/

namespace A171587.P15469425792676304896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ ^ 2

end

end A171587.P15469425792676304896

namespace A171587

/-- `and(1, floor((n+1)/ϕ))²` -/
def P15469425792676304896.Spec : Prop :=
  ∀ n, P15469425792676304896.a n = A171587 n

end A171587

/-! ## A171587.P2458375052649824655

`sqrt(and(1, floor((n+1)/ϕ)))`
-/

namespace A171587.P2458375052649824655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land 1 ⌊(n + 1 : ℝ) / Real.goldenRatio⌋ : ℝ)

end

end A171587.P2458375052649824655

namespace A171587

/-- `sqrt(and(1, floor((n+1)/ϕ)))` -/
def P2458375052649824655.Spec : Prop :=
  ∀ n, P2458375052649824655.a n = (A171587 n : ℝ)

end A171587

/-! ## A171587.P5567175737751199295

`log2(gcd(2, ceil((n+1)/ϕ)))`
-/

namespace A171587.P5567175737751199295
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌈(n + 1 : ℝ) / Real.goldenRatio⌉ : ℝ)

end

end A171587.P5567175737751199295

namespace A171587

/-- `log2(gcd(2, ceil((n+1)/ϕ)))` -/
def P5567175737751199295.Spec : Prop :=
  ∀ n, P5567175737751199295.a n = (A171587 n : ℝ)

end A171587

/-! ## A171587.P13745606242750568676

`1-ceil((n+1)/ϕ)%2`
-/

namespace A171587.P13745606242750568676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ⌈(n + 1 : ℝ) / Real.goldenRatio⌉ 2

end

end A171587.P13745606242750568676

namespace A171587

/-- `1-ceil((n+1)/ϕ)%2` -/
def P13745606242750568676.Spec : Prop :=
  ∀ n, P13745606242750568676.a n = A171587 n

end A171587

/-! ## A171587.P9946168039883565780

`1-and(1, ceil((n+1)/ϕ))`
-/

namespace A171587.P9946168039883565780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

end

end A171587.P9946168039883565780

namespace A171587

/-- `1-and(1, ceil((n+1)/ϕ))` -/
def P9946168039883565780.Spec : Prop :=
  ∀ n, P9946168039883565780.a n = A171587 n

end A171587

/-! ## A171587.P11617332445332578424

`char[floor(ϕ*(n+1))-n%2]`
-/

namespace A171587.P11617332445332578424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - ((n % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A171587.P11617332445332578424

namespace A171587

/-- `char[floor(ϕ*(n+1))-n%2]` -/
def P11617332445332578424.Spec : Prop :=
  ∀ n, (P11617332445332578424.a n : ℤ) = A171587 n

end A171587

/-! ## A171587.P6374310377248043102

`(a(n-1)-Δ[floor(n/ϕ)])²` with `a(0)=0`
-/

namespace A171587.P6374310377248043102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - (f1 (n + 1) - f1 n)) ^ 2

end

end A171587.P6374310377248043102

namespace A171587

/-- `(a(n-1)-Δ[floor(n/ϕ)])²` -/
def P6374310377248043102.Spec : Prop :=
  ∀ n, P6374310377248043102.a n = A171587 n

end A171587

/-! ## A171587.P12136530021566001781

`sqrt(A005206(n)%2)`
-/

namespace A171587.P12136530021566001781
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod (A005206 n) 2 : ℝ)

end

end A171587.P12136530021566001781

namespace A171587

/-- `sqrt(A005206(n)%2)` -/
def P12136530021566001781.Spec : Prop :=
  ∀ n, P12136530021566001781.a n = (A171587 n : ℝ)

end A171587

/-! ## A171587.P15472652268189079922

`and(2, A316340(n))/2`
-/

namespace A171587.P15472652268189079922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A316340 n) : ℚ) / 2

end

end A171587.P15472652268189079922

namespace A171587

/-- `and(2, A316340(n))/2` -/
def P15472652268189079922.Spec : Prop :=
  ∀ n, P15472652268189079922.a n = (A171587 n : ℚ)

end A171587

/-! ## A171587.P15896447707216273594

`gcd(2, A003622(n+1))-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A171587

/-- `gcd(2, A003622(n+1))-1` -/
def P15896447707216273594.Spec : Prop :=
  ∀ n, P15896447707216273594.a n = A171587 n

theorem P15896447707216273594.correct : P15896447707216273594.Spec := by
  intro n
  simp only [A171587]

end A171587

/-! ## A171587.P12763114866444207627

`and(2, A001961(n+1))/2`
-/

namespace A171587.P12763114866444207627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A001961 (n + 1)) : ℚ) / 2

end

end A171587.P12763114866444207627

namespace A171587

/-- `and(2, A001961(n+1))/2` -/
def P12763114866444207627.Spec : Prop :=
  ∀ n, P12763114866444207627.a n = (A171587 n : ℚ)

end A171587

/-! ## A171587.P4042788277212674812

`and(2, A001962(n+1))/2`
-/

namespace A171587.P4042788277212674812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A001962 (n + 1)) : ℚ) / 2

end

end A171587.P4042788277212674812

namespace A171587

/-- `and(2, A001962(n+1))/2` -/
def P4042788277212674812.Spec : Prop :=
  ∀ n, P4042788277212674812.a n = (A171587 n : ℚ)

end A171587

/-! ## A171587.P11794664211977898503

`val(A020639(ceil((n+1)/ϕ)), 2)`
-/

namespace A171587.P11794664211977898503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 ⌈(n + 1 : ℝ) / Real.goldenRatio⌉.toNat).toNat 2

end

end A171587.P11794664211977898503

namespace A171587

/-- `val(A020639(ceil((n+1)/ϕ)), 2)` -/
def P11794664211977898503.Spec : Prop :=
  ∀ n, (P11794664211977898503.a n : ℤ) = A171587 n

end A171587

/-! ## A171587.P8266579150022714837

`A000045(and(1, floor((n+1)*(ϕ-1))))`
-/

namespace A171587.P8266579150022714837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 ⌊(n + 1 : ℝ) * (Real.goldenRatio - 1)⌋).toNat

end

end A171587.P8266579150022714837

namespace A171587

/-- `A000045(and(1, floor((n+1)*(ϕ-1))))` -/
def P8266579150022714837.Spec : Prop :=
  ∀ n, P8266579150022714837.a n = A171587 n

end A171587

/-! ## A171587.P3955088851594970883

`A000035(A005206(n))`
-/

namespace A171587.P3955088851594970883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005206 n).toNat

end

end A171587.P3955088851594970883

namespace A171587

/-- `A000035(A005206(n))` -/
def P3955088851594970883.Spec : Prop :=
  ∀ n, P3955088851594970883.a n = A171587 n

end A171587

/-! ## A171587.P15300361490468415434

`A000035(A060143(n+1))`
-/

namespace A171587.P15300361490468415434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A060143 (n + 1)).toNat

end

end A171587.P15300361490468415434

namespace A171587

/-- `A000035(A060143(n+1))` -/
def P15300361490468415434.Spec : Prop :=
  ∀ n, P15300361490468415434.a n = A171587 n

end A171587

/-!
# A171588: The Pell word: Fixed point of the morphism 0->001, 1->0.

The programs for A171588, the canonical program `A171588.P4513213665566256217` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171588 has offset 1).

The definition of A171588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171588.P4513213665566256217

`floor((n+2)/(2+sqrt(2)))-floor((n+1)/(2+sqrt(2)))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171588

/-- `floor((n+2)/(2+sqrt(2)))-floor((n+1)/(2+sqrt(2)))` -/
def P4513213665566256217.Spec : Prop :=
  ∀ n, P4513213665566256217.a n = A171588 (n + 1)

theorem P4513213665566256217.correct : P4513213665566256217.Spec := by
  intro n
  simp only [A171588, Nat.add_sub_cancel]

end A171588

/-! ## A171588.P6223892895175436195

`(Δ[ceil((n+1)/(2-sqrt(2)))]+2*n)%2`
-/

namespace A171588.P6223892895175436195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (2 * n : ℤ)) 2

end

end A171588.P6223892895175436195

namespace A171588

/-- `(Δ[ceil((n+1)/(2-sqrt(2)))]+2*n)%2` -/
def P6223892895175436195.Spec : Prop :=
  ∀ n, P6223892895175436195.a n = A171588 (n + 1)

end A171588

/-! ## A171588.P12741261758823943977

`and(1, Δ[ceil((n+1)/(2-sqrt(2)))]+2*n)`
-/

namespace A171588.P12741261758823943977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n + (2 * n : ℤ))

end

end A171588.P12741261758823943977

namespace A171588

/-- `and(1, Δ[ceil((n+1)/(2-sqrt(2)))]+2*n)` -/
def P12741261758823943977.Spec : Prop :=
  ∀ n, P12741261758823943977.a n = A171588 (n + 1)

end A171588

/-! ## A171588.P16207419049171836270

`A159684(A049472(n))`
-/

namespace A171588.P16207419049171836270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A049472 n).toNat

end

end A171588.P16207419049171836270

namespace A171588

/-- `A159684(A049472(n))` -/
def P16207419049171836270.Spec : Prop :=
  ∀ n, P16207419049171836270.a n = A171588 (n + 1)

end A171588

/-! ## A171588.P15099423479147923269

`A000007(A022880(n+1))`
-/

namespace A171588.P15099423479147923269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A022880 (n + 1)).toNat

end

end A171588.P15099423479147923269

namespace A171588

/-- `A000007(A022880(n+1))` -/
def P15099423479147923269.Spec : Prop :=
  ∀ n, P15099423479147923269.a n = A171588 (n + 1)

end A171588

/-! ## A171588.P6242168282879524747

`A188037(A080820(n+1))`
-/

namespace A171588.P6242168282879524747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A080820 (n + 1)).toNat

end

end A171588.P6242168282879524747

namespace A171588

/-- `A188037(A080820(n+1))` -/
def P6242168282879524747.Spec : Prop :=
  ∀ n, P6242168282879524747.a n = A171588 (n + 1)

end A171588

/-! ## A171588.P11468797324444092570

`Δ[A183138(n+1)]`
-/

namespace A171588.P11468797324444092570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171588.P11468797324444092570

namespace A171588

/-- `Δ[A183138(n+1)]` -/
def P11468797324444092570.Spec : Prop :=
  ∀ n, P11468797324444092570.a n = A171588 (n + 1)

end A171588

/-! ## A171588.P4328272596155276431

`Δ[A194920(n+1)]`
-/

namespace A171588.P4328272596155276431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171588.P4328272596155276431

namespace A171588

/-- `Δ[A194920(n+1)]` -/
def P4328272596155276431.Spec : Prop :=
  ∀ n, P4328272596155276431.a n = A171588 (n + 1)

end A171588

/-!
# A171590: a(n) = 1+4^(n+1)-4*(-2)^n.

The programs for A171590, the canonical program `A171590.P1975898645736698583` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171590 has offset 0).

The definition of A171590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+4^(n+1)-4*(-2)^n` (program `A171590.P1975898645736698583`, by `A171590.P1975898645736698583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171590.P1975898645736698583

`1+4^(n+1)-4*(-2)^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171590

/-- `1+4^(n+1)-4*(-2)^n` -/
def P1975898645736698583.Spec : Prop :=
  ∀ n, P1975898645736698583.a n = A171590 n

theorem P1975898645736698583.correct : P1975898645736698583.Spec := by
  intro n
  simp only [A171590]

end A171590

/-! ## A171590.P4262318668438304933

`A014551(n+1)²`
-/

namespace A171590.P4262318668438304933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) ^ 2

end

end A171590.P4262318668438304933

namespace A171590

/-- `A014551(n+1)²` -/
def P4262318668438304933.Spec : Prop :=
  ∀ n, P4262318668438304933.a n = A171590 n

end A171590

/-! ## A171590.P14500590244656357872

`A105951(2*n+1)`
-/

namespace A171590.P14500590244656357872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105951 (2 * n + 1)

end

end A171590.P14500590244656357872

namespace A171590

/-- `A105951(2*n+1)` -/
def P14500590244656357872.Spec : Prop :=
  ∀ n, P14500590244656357872.a n = A171590 n

end A171590

/-! ## A171590.P16482325397759739436

`(2-(a(n-1)-4^n))²` with `a(0)=1`
-/

namespace A171590.P16482325397759739436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - (a (n - 1) - (4 ^ n : ℤ))) ^ 2

end

end A171590.P16482325397759739436

namespace A171590

/-- `(2-(a(n-1)-4^n))²` -/
def P16482325397759739436.Spec : Prop :=
  ∀ n, P16482325397759739436.a n = A171590 n

end A171590

/-! ## A171590.P9202806972288237797

`Δ[A101622(n)]²`
-/

namespace A171590.P9202806972288237797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A171590.P9202806972288237797

namespace A171590

/-- `Δ[A101622(n)]²` -/
def P9202806972288237797.Spec : Prop :=
  ∀ n, P9202806972288237797.a n = A171590 n

end A171590

/-! ## A171590.P13202934686784788805

`Δ[A283506(n)]²`
-/

namespace A171590.P13202934686784788805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A171590.P13202934686784788805

namespace A171590

/-- `Δ[A283506(n)]²` -/
def P13202934686784788805.Spec : Prop :=
  ∀ n, P13202934686784788805.a n = A171590 n

end A171590

/-! ## A171590.P11216132228303149464

`A166977(n+1)²`
-/

namespace A171590.P11216132228303149464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166977 (n + 1) ^ 2

end

end A171590.P11216132228303149464

namespace A171590

/-- `A166977(n+1)²` -/
def P11216132228303149464.Spec : Prop :=
  ∀ n, P11216132228303149464.a n = A171590 n

end A171590

/-! ## A171590.P9522705549178820273

`record[A105951(n+1)]`
-/

namespace A171590.P9522705549178820273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171590.P9522705549178820273

namespace A171590

/-- `record[A105951(n+1)]` -/
def P9522705549178820273.Spec : Prop :=
  ∀ n, P9522705549178820273.a n = A171590 n

end A171590

/-! ## A171590.P12545968840771181321

`Δ[A049332(n+1)]²`
-/

namespace A171590.P12545968840771181321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A171590.P12545968840771181321

namespace A171590

/-- `Δ[A049332(n+1)]²` -/
def P12545968840771181321.Spec : Prop :=
  ∀ n, P12545968840771181321.a n = A171590 n

end A171590

/-! ## A171590.P8090482954286700415

`(Δ[A077925(n)]+1)²`
-/

namespace A171590.P8090482954286700415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A171590.P8090482954286700415

namespace A171590

/-- `(Δ[A077925(n)]+1)²` -/
def P8090482954286700415.Spec : Prop :=
  ∀ n, P8090482954286700415.a n = A171590 n

end A171590

/-! ## A171590.P9682932109353031526

`(∑[A135440(n)]+2)²`
-/

namespace A171590.P9682932109353031526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 2) ^ 2

end

end A171590.P9682932109353031526

namespace A171590

/-- `(∑[A135440(n)]+2)²` -/
def P9682932109353031526.Spec : Prop :=
  ∀ n, P9682932109353031526.a n = A171590 n

end A171590

/-! ## A171590.P2745974396689272011

`Δ[A140253(n+1)]²`
-/

namespace A171590.P2745974396689272011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A171590.P2745974396689272011

namespace A171590

/-- `Δ[A140253(n+1)]²` -/
def P2745974396689272011.Spec : Prop :=
  ∀ n, P2745974396689272011.a n = A171590 n

end A171590

/-! ## A171590.P7229137107012805505

`Δ[A166920(n+1)]²`
-/

namespace A171590.P7229137107012805505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A171590.P7229137107012805505

namespace A171590

/-- `Δ[A166920(n+1)]²` -/
def P7229137107012805505.Spec : Prop :=
  ∀ n, P7229137107012805505.a n = A171590 n

end A171590

/-! ## A171590.P3722901620145583259

`Δ[A052950(n+2)]²`
-/

namespace A171590.P3722901620145583259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052950 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A171590.P3722901620145583259

namespace A171590

/-- `Δ[A052950(n+2)]²` -/
def P3722901620145583259.Spec : Prop :=
  ∀ n, P3722901620145583259.a n = A171590 n

end A171590

/-! ## A171590.P8190108154368612901

`(A099430(n+1)+1)²`
-/

namespace A171590.P8190108154368612901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099430 (n + 1) + 1) ^ 2

end

end A171590.P8190108154368612901

namespace A171590

/-- `(A099430(n+1)+1)²` -/
def P8190108154368612901.Spec : Prop :=
  ∀ n, P8190108154368612901.a n = A171590 n

end A171590

/-! ## A171590.P15839997005511774933

`(A122803(n+1)+1)²`
-/

namespace A171590.P15839997005511774933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122803 (n + 1) + 1) ^ 2

end

end A171590.P15839997005511774933

namespace A171590

/-- `(A122803(n+1)+1)²` -/
def P15839997005511774933.Spec : Prop :=
  ∀ n, P15839997005511774933.a n = A171590 n

end A171590

/-! ## A171590.P5774598618675111204

`(A166956(n+1)+2)²`
-/

namespace A171590.P5774598618675111204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166956 (n + 1) + 2) ^ 2

end

end A171590.P5774598618675111204

namespace A171590

/-- `(A166956(n+1)+2)²` -/
def P5774598618675111204.Spec : Prop :=
  ∀ n, P5774598618675111204.a n = A171590 n

end A171590

/-! ## A171590.P16612491619699825825

`(Δ[A084247(n+1)]+1)²`
-/

namespace A171590.P16612491619699825825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A171590.P16612491619699825825

namespace A171590

/-- `(Δ[A084247(n+1)]+1)²` -/
def P16612491619699825825.Spec : Prop :=
  ∀ n, P16612491619699825825.a n = A171590 n

end A171590

/-! ## A171590.P6352697872774127698

`(Δ[A268741(n+1)]+1)²`
-/

namespace A171590.P6352697872774127698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) ^ 2

end

end A171590.P6352697872774127698

namespace A171590

/-- `(Δ[A268741(n+1)]+1)²` -/
def P6352697872774127698.Spec : Prop :=
  ∀ n, P6352697872774127698.a n = A171590 n

end A171590

/-! ## A171590.P10308039774031235696

`record[(A077959(n+1)+1)²]`
-/

namespace A171590.P10308039774031235696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077959 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171590.P10308039774031235696

namespace A171590

/-- `record[(A077959(n+1)+1)²]` -/
def P10308039774031235696.Spec : Prop :=
  ∀ n, P10308039774031235696.a n = A171590 n

end A171590

/-!
# A171591: Squares in lunar arithmetic in base 6 written in base 6.

The programs for A171591, there is no canonical definition to state claims against.
-/

/-! ## A171591.P17821695685709847643

`A087019(A007092(n))`
-/

namespace A171591.P17821695685709847643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A007092 n).toNat

end

end A171591.P17821695685709847643

/-! ## A171591.P6087801293947581490

`A007092(A171578(n))`
-/

namespace A171591.P6087801293947581490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A171578 n).toNat

end

end A171591.P6087801293947581490

/-! ## A171591.P9277693035653447782

`A087019(lt[A054055(n), 6])`
-/

namespace A171591.P9277693035653447782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A171591.P9277693035653447782

/-! ## A171591.P1347643571176770698

`A087019(lt[A086066(n), 63])`
-/

namespace A171591.P1347643571176770698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  63

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A171591.P1347643571176770698

/-! ## A171591.P7382111132042018150

`A087019(record[n-A106747(n)])`
-/

namespace A171591.P7382111132042018150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171591.P7382111132042018150

/-!
# A171592: a(n) = 0+1+2+...+n in lunar arithmetic in base 6 written in base 10.

The programs for A171592, there is no canonical definition to state claims against.
-/

/-! ## A171592.P17972805538688066254

`A028901(A171593(n))`
-/

namespace A171592.P17972805538688066254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028901 (A171593 n).toNat

end

end A171592.P17972805538688066254

/-! ## A171592.P3714997726030480956

`∑[A349991(A055116(n))%7]`
-/

namespace A171592.P3714997726030480956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349991 (A055116 n).toNat) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171592.P3714997726030480956

/-! ## A171592.P10789370220805451358

`∑[A001222(2^A351784(n))%7]`
-/

namespace A171592.P10789370220805451358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351784 n : ℤ))).toNat) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171592.P10789370220805451358

/-! ## A171592.P13430091854169855445

`∑[(A000005(2^A351784(n))-1)%7]`
-/

namespace A171592.P13430091854169855445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351784 n : ℤ))).toNat - 1) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171592.P13430091854169855445

/-!
# A171593: a(n) = 0+1+2+...+n in lunar arithmetic in base 6 written in base 6.

The programs for A171593, there is no canonical definition to state claims against.
-/

/-! ## A171593.P3317814821983339227

`A007092(A171592(n))`
-/

namespace A171593.P3317814821983339227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A171592 n).toNat

end

end A171593.P3317814821983339227

/-! ## A171593.P10553844764878652670

`A171610(A171592(n)+1)-1`
-/

namespace A171593.P10553844764878652670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171610 (A171592 n + 1).toNat - 1

end

end A171593.P10553844764878652670

/-!
# A171594: Squares in lunar arithmetic in base 7 written in base 10.

The programs for A171594, there is no canonical definition to state claims against.
-/

/-! ## A171594.P9888927996618023485

`A028902(A171596(n))`
-/

namespace A171594.P9888927996618023485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A171596 n).toNat

end

end A171594.P9888927996618023485

/-! ## A171594.P12213921483785404447

`eq[A133877(n), A138902(A233972(n+1))]`
-/

namespace A171594.P12213921483785404447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138902 (A233972 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171594.P12213921483785404447

/-! ## A171594.P13113727650093260641

`∑[A348980(3^A306709(n+1))]`
-/

namespace A171594.P13113727650093260641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348980 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A306709 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171594.P13113727650093260641

/-! ## A171594.P7409920387764856589

`lt[A337604(A165288(n+1)), A133687(n+1)]`
-/

namespace A171594.P7409920387764856589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337604 (A165288 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A171594.P7409920387764856589

/-! ## A171594.P15063458477961673274

`eq[A028898(n), A228730(n)]`
-/

namespace A171594.P15063458477961673274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228730 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171594.P15063458477961673274

/-!
# A171595: Primes of the form p=floor(T/6), T are triangular numbers.

The programs for A171595, the canonical program `A171595.P15178275605110057348` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171595 has offset 1).

The definition of A171595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171595.P15178275605110057348

`p?[floor(∑[n/6])]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A171595

/-- `p?[floor(∑[n/6])]` -/
def P15178275605110057348.Spec : Prop :=
  ∀ n, P15178275605110057348.a n = A171595 (n + 1)

theorem P15178275605110057348.correct : P15178275605110057348.Spec := by
  intro n
  simp only [A171595, Nat.add_sub_cancel]

end A171595

/-! ## A171595.P15981273515837415601

`∑{p}[p?[A011865(n)], #]`
-/

namespace A171595.P15981273515837415601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A171595.P15981273515837415601

namespace A171595

/-- `∑{p}[p?[A011865(n)], #]` -/
def P15981273515837415601.Spec : Prop :=
  ∀ n, (P15981273515837415601.a n : ℤ) = A171595 (n + 1)

end A171595

/-! ## A171595.P5029596252624108754

`p?[A011865(n)]%A005701(n)`
-/

namespace A171595.P5029596252624108754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A005701 n)

end

end A171595.P5029596252624108754

namespace A171595

/-- `p?[A011865(n)]%A005701(n)` -/
def P5029596252624108754.Spec : Prop :=
  ∀ n, P5029596252624108754.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P767526545851971707

`gcd(p?[A011865(n)], A000038(n))`
-/

namespace A171595.P767526545851971707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A171595.P767526545851971707

namespace A171595

/-- `gcd(p?[A011865(n)], A000038(n))` -/
def P767526545851971707.Spec : Prop :=
  ∀ n, (P767526545851971707.a n : ℤ) = A171595 (n + 1)

end A171595

/-! ## A171595.P7074375852948716787

`or(p?[A011865(n)], A000035(n))`
-/

namespace A171595.P7074375852948716787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000035 n)

end

end A171595.P7074375852948716787

namespace A171595

/-- `or(p?[A011865(n)], A000035(n))` -/
def P7074375852948716787.Spec : Prop :=
  ∀ n, P7074375852948716787.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P3592304916200635296

`or(p?[A011865(n)], A011655(n))`
-/

namespace A171595.P3592304916200635296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A011655 n)

end

end A171595.P3592304916200635296

namespace A171595

/-- `or(p?[A011865(n)], A011655(n))` -/
def P3592304916200635296.Spec : Prop :=
  ∀ n, P3592304916200635296.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P9978185666136311087

`or(p?[A011865(n)], A014306(n))`
-/

namespace A171595.P9978185666136311087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014306 n)

end

end A171595.P9978185666136311087

namespace A171595

/-- `or(p?[A011865(n)], A014306(n))` -/
def P9978185666136311087.Spec : Prop :=
  ∀ n, P9978185666136311087.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P13355651764230563663

`A000007(n+1)+p?[A011865(n)]`
-/

namespace A171595.P13355651764230563663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171595.P13355651764230563663

namespace A171595

/-- `A000007(n+1)+p?[A011865(n)]` -/
def P13355651764230563663.Spec : Prop :=
  ∀ n, P13355651764230563663.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P15150702874453989576

`p?[A011865(n)]*A000034(2*n)`
-/

namespace A171595.P15150702874453989576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000034 (2 * n)

end

end A171595.P15150702874453989576

namespace A171595

/-- `p?[A011865(n)]*A000034(2*n)` -/
def P15150702874453989576.Spec : Prop :=
  ∀ n, P15150702874453989576.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P14867685084105310421

`or(p?[A011865(n)], A070109(n+1))`
-/

namespace A171595.P14867685084105310421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A070109 (n + 1))

end

end A171595.P14867685084105310421

namespace A171595

/-- `or(p?[A011865(n)], A070109(n+1))` -/
def P14867685084105310421.Spec : Prop :=
  ∀ n, P14867685084105310421.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P8069363072123458878

`or(p?[A011865(n)], A304571(n+1))`
-/

namespace A171595.P8069363072123458878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A304571 (n + 1))

end

end A171595.P8069363072123458878

namespace A171595

/-- `or(p?[A011865(n)], A304571(n+1))` -/
def P8069363072123458878.Spec : Prop :=
  ∀ n, P8069363072123458878.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P7498346408981980384

`or(p?[A011865(n)], A021913(2*n))`
-/

namespace A171595.P7498346408981980384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A021913 (2 * n))

end

end A171595.P7498346408981980384

namespace A171595

/-- `or(p?[A011865(n)], A021913(2*n))` -/
def P7498346408981980384.Spec : Prop :=
  ∀ n, P7498346408981980384.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P1520998983751870861

`p?[A011865(n)]+C(2, A000203(n+2))`
-/

namespace A171595.P1520998983751870861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A171595.P1520998983751870861

namespace A171595

/-- `p?[A011865(n)]+C(2, A000203(n+2))` -/
def P1520998983751870861.Spec : Prop :=
  ∀ n, P1520998983751870861.a n = A171595 (n + 1)

end A171595

/-! ## A171595.P4619584226017713182

`A000035(A082075(n+1))+p?[A011865(n)]`
-/

namespace A171595.P4619584226017713182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A082075 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171595.P4619584226017713182

namespace A171595

/-- `A000035(A082075(n+1))+p?[A011865(n)]` -/
def P4619584226017713182.Spec : Prop :=
  ∀ n, P4619584226017713182.a n = A171595 (n + 1)

end A171595

/-!
# A171596: Squares in lunar arithmetic in base 7 written in base 7.

The programs for A171596, there is no canonical definition to state claims against.
-/

/-! ## A171596.P9818607986713211898

`A087019(A007093(n))`
-/

namespace A171596.P9818607986713211898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A007093 n).toNat

end

end A171596.P9818607986713211898

/-! ## A171596.P9551752984679879210

`A007093(A171594(n))`
-/

namespace A171596.P9551752984679879210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A171594 n).toNat

end

end A171596.P9551752984679879210

/-! ## A171596.P10618651013621881104

`A087019(eq[0, A102679(n)])`
-/

namespace A171596.P10618651013621881104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171596.P10618651013621881104

/-! ## A171596.P18360137204866153752

`A087019(lt[A054055(n), 7])`
-/

namespace A171596.P18360137204866153752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A171596.P18360137204866153752

/-! ## A171596.P14532496965175398547

`A087019(lt[A086066(n), 99])`
-/

namespace A171596.P14532496965175398547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A171596.P14532496965175398547

/-! ## A171596.P5235065785710825427

`A087019(record[n-A064770(n)])`
-/

namespace A171596.P5235065785710825427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171596.P5235065785710825427

/-! ## A171596.P3759038719061026969

`record[or(-A102679(n), A087019(n))]`
-/

namespace A171596.P3759038719061026969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A102679 n) (A087019 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171596.P3759038719061026969

/-! ## A171596.P8863317782329303974

`A087019(eq[A102677(n), A316867(n)])`
-/

namespace A171596.P8863317782329303974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A171596.P8863317782329303974

/-!
# A171597: a(n) = 0+1+2+...+n in lunar arithmetic in base 7 written in base 10.

The programs for A171597, there is no canonical definition to state claims against.
-/

/-! ## A171597.P10834793588013211361

`A181303(∑[char[A181303(n+1)+1]]+1)`
-/

namespace A171597.P10834793588013211361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A171597.P10834793588013211361

/-! ## A171597.P7790052819380827409

`A028902(A171610(n))`
-/

namespace A171597.P7790052819380827409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028902 (A171610 n).toNat

end

end A171597.P7790052819380827409

/-!
# A171598: Record values of A175047.

The programs for A171598, there is no canonical definition to state claims against.
-/

/-! ## A171598.P1335715342486082364

`record[A175047(n+1)]`
-/

namespace A171598.P1335715342486082364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171598.P1335715342486082364

/-! ## A171598.P4314842318697022504

`A175047(A171599(n+1))`
-/

namespace A171598.P4314842318697022504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (A171599 (n + 1)).toNat

end

end A171598.P4314842318697022504

/-! ## A171598.P1224555056408008975

`record[(n%2+1)*A048735(A175048(n+1))]`
-/

namespace A171598.P1224555056408008975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A048735 (A175048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171598.P1224555056408008975

/-! ## A171598.P4076066626504356584

`record[A000034(n)*A048735(A175048(n+1))]`
-/

namespace A171598.P4076066626504356584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A048735 (A175048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171598.P4076066626504356584

/-! ## A171598.P17824807706141578688

`record[(A000035(n)+1)*A048735(A175048(n+1))]`
-/

namespace A171598.P17824807706141578688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A048735 (A175048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171598.P17824807706141578688

/-!
# A171599: Where record values occur in A175047.

The programs for A171599, there is no canonical definition to state claims against.
-/

/-! ## A171599.P8683073407106450146

`A106151(record[A175047(n+1)])`
-/

namespace A171599.P8683073407106450146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171599.P8683073407106450146

/-! ## A171599.P14024515100736856364

`record[A008619(n)%A090079(2*(n+2))]`
-/

namespace A171599.P14024515100736856364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n) (A090079 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171599.P14024515100736856364

/-! ## A171599.P17291101872058292249

`record[A065033(n)%A090079(2*(n+2))]`
-/

namespace A171599.P17291101872058292249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 n) (A090079 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171599.P17291101872058292249

/-! ## A171599.P8748320849928694176

`record[(A004524(n)+1)%A090079(2*(n+2))]`
-/

namespace A171599.P8748320849928694176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004524 n + 1) (A090079 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171599.P8748320849928694176

/-! ## A171599.P8235439367497768434

`record[((A093178(n)+1)/2)%A090079(2*(n+2))]`
-/

namespace A171599.P8235439367497768434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A093178 n + 1 : ℚ) / 2)) (A090079 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171599.P8235439367497768434

/-! ## A171599.P1934233939233111205

`A106151(A171598(n+1))`
-/

namespace A171599.P1934233939233111205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (A171598 (n + 1)).toNat

end

end A171599.P1934233939233111205

